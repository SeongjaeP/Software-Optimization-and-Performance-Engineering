import torch
import torch.nn as nn
import math
import numpy as np

class Transformer(nn.Module):

    def __init__(self, src_embed, tgt_embed, encoder, decoder, generator):
        super(Transformer, self).__init__()
        self.src_embed = src_embed
        self.tgt_embed = tgt_embed
        self.encoder = encoder
        self.decoder = decoder
        self.generator = generator

    def encode(self, src, src_mask):
        return self.encoder(self.src_embed(src), src_mask)
    
    def decode(self, tgt, encoder_out, tgt_mask, src_tgt_mask):
        return self.decoder(self.tgt_embed(tgt), encoder_out, tgt_mask, src_tgt_mask)
    
    def forward(self, src, tgt):
        src_mask = self.make_src_mask(src)
        tgt_mask = self.make_tgt_mask(tgt)
        src_tgt_mask = self.make_src_tgt_mask(src, tgt)
        encoder_out = self.encode(src, src_mask)
        decoder_out = self.decode(tgt, encoder_out, tgt_mask, src_tgt_mask)
        out = self.generator(decoder_out)
        out = F.log_softmax(out, dim=-1)
        return out, decoder_out
    

class Encoder(nn.Module):
    def __init__(self, encoder_block, n_layer):
        super(Encoder, self).__init__()
        self.layers = []
        for i in range(n_layer):
            self.layers.append(copy.deepcopy(encoder_block))

    def forward(self, src, src_mask):
        out = src
        for layer in self.layers:
            out = layer(out, src_mask)
        return out

class Decoder(nn.Module):
    def __init__(self, decoder_block, n_layer):
        super(Decoder, self).__init__()
        self.n_layer = n_layer
        self.layers = nn.ModuleList([copy.deepcopy(decoder_block) for _ in range(self.n_layer)])
    
    def forward(self, tgt, encoder_out, tgt_mask, src_tgt_mask):
        out = tgt
        for layer in self.layers:
            out = layer(out, encoder_out, tgt_mask, src_tgt_mask)
        return out

class EncoderBlock(nn.Module):
    def __init__(self, self_attention, position_ff):
        super(EncoderBlock, self).__init__()
        self.self_attention = self_attention
        self.position_ff = position_ff
        self.residuals = [ResidualConnectionLayer() for _ in range(2)]

    def forward(self, src, src_mask):
        out = src
        out = self.residuals[0](out, lambda out: self.self_attention(query=out, key=out, value=out, mask=src_mask))
        out = self.residuals[1](out, self.position_ff)
        return out
    
class DecoderBlock(nn.Module):
    def __init__(self, self_attention, cross_attention, position_ff):
        super(DecoderBlock).__init__()
        self.self_attention = self.self_attention
        self.cross_attention = cross_attention
        self.position_ff = position_ff
        self.rediduals = [ResidualConnectionLayer() for _ in range(3)]
    
    def forward(self, tgt, encoder_out, tgt_mask, src_tgt_mask):
        out = tgt
        out = self.residuals[0](out, lambda out: self.self_attention(query=out, key=out, value=out, mask=tgt_mask))
        out = self.residuals[1](out, lambda out: self.cross_attention(query=out, key=encoder_out, value=encoder_out, mask=src_tgt_mask))
        out = self.residuals[2](out, self.position_ff)
        return out
    

def calculate_attention(query, key, value, mask):
    # query, key, value = (n_batch, seq_len, d_k)
    # mask: (n_batch, seq_len, seq_len)
    d_k = key.shape[-1]
    attention_score = torch.matmul(query, key.transpose(-2, -1)) # Q x K^T (n_batch, seq_len, seq_len)
    attention_score = attention_score / math.sqrt(d_k)

    if mask is not None:
        attention_score = attention_score.masked_fill(mask==0, -1e9)
    attention_prob = F.softmax(attention_score, dim=-1) # (n_batch, h, seq_len, seq_len)
    out = torch.matmul(attention_prob, value) # (n_batch, h, seq_len, d_k)
    return out
        

class MultiHeadAttentionLayer(nn.Module):
    def __init__(self, d_model, h, qkv_fc, out_fc):
        super(MultiHeadAttentionLayer, self).__init__()
        self.d_model = d_model
        self.h = h
        self.q_fc = copy.deepcopy(qkv_fc)
        self.k_fc = copy.deepcopy(qkv_fc)
        self.v_fc = copy.deepcopy(qkv_fc)
        self.out_fc = out_fc

    
    def forward(self, *args, query, key, value, mask=None):
        # query, key, value = (n_batch, seq_len, d_embed)
        # mask: (n_batch, seq_len, seq_len)
        # return value: (n_batch, h, seq_len, d_k)
        n_batch = query.size(0)

        def transform(x, fc):
            out = fc(x)
            out = out.view(n_batch, -1, self_h, self.d_model // self.h) # 
            out = out.transpose(1, 2) # (n_batcj, h, seq_len, d_k)
            return out
    
        query = transform(query, self.q_fc)
        key = transform(key, self.k_fc)
        value = transform(value, self.v_fc)

        out = self.calculate_attention(query, key, value)
        out = out.transpose(1, 2)
        out = out.contiguous().view(n_batch, -1, self.d_model)
        out = self.out_fc(out)
        return out
    

def make_pad_mask(self, query, key, pad_idx=1):
    # query: (n_batch, query_seq_len)
    # key: (n_batch, key_seq_len)
    query_seq_len, key_seq_len = query.size(1), key_size(1)

    key_mask = key.ne(pad_idx).unsqueeze(1).unsqueeze(2)  # (n_batch, 1, 1, key_seq_len)
    key_mask = key.mask.repeat(1, 1, query_seq_len, 1)

    query_mask = query.ne(pad_idx).unsqueeze(1).unsqueeze(3)
    query_mask = query_mask.repeat(1, 1, 1, key_seq_len)

    mask = key_mask & query_mask
    mask.requires_grad = False
    return mask

def make_src_mask(self, src):
    pad_mask = self.make_pad_mask(src, src)
    return pad_mask


class PositionWiseFeedForwardLayer(nn.Module):

    def __init__(self, fc1, fc2):
        super(PositionWiseFeedForwardLayer, self).__init__()
        self.fc1 = fc1 # (d_embed, d_ff)
        self.relu = nn.ReLU()
        self.fc2 = fc2 # (d_ff, d_embed)

    
    def forward(self, x):
        out = x
        out = self.fc1(out)
        out = self.relu(out)
        out = self.fc2(out)
        return out
    

class ResidualConnectionLayer(nn.Module):
    
    def __init__(self):
        super(ResidualConnectionLayer, self).__init__()

    def forward(self, x, sub_layer):
        out = x
        out = sub_layer(x)
        out = out + x
        return out
    

def make_subsequent_mask(query, key):
    # query: (n_batch, query_seq_len)
    # key: (n_batch, key_seq_len)
    query_seq_len, key_seq_len = query.size(1), key.size(1)

    tril = np.tril(np.ones((query_seq_len, key_seq_len)), k = 0).astype('uint8')
    mask = torch.tensor(tril, dtype=torch.bool, requires_grad = False, device = query.device)
    return mask

def make_tgt_mask(self, tgt):
    pad_mask = self.make_pad_mask(tgt, tgt)
    seq_mask = self.make_subsequent_mask(tgt, tgt)
    mask = pad_mask & seq_mask
    return pad_mask & seq_mask

class TransformerEmbedding(nn.Module):

    def __init__(self, token_embed, pos_embed):
        super(TransformerEmbedding, self).__init__()
        self.embedding = nn.Sequential(token_embed, pos_embed)


    def forward(self, x):
        out = self.embedding(x)
        return out
    

class TokenEmbedding(nn.Module):

    def __init__(self, d_embed, vocab_size):
        super(TokenEmbedding, self).__init__()
        self.embedding = nn.Embedding(vocab_size, d_embed)
        self.d_embed = d_embed


    def forward(self, x):
        out = self.embedding(x) * math.sqrt(self.d_embed)
        return out
    

class PositionalEncoding(nn.Module):

    def __init__(self, d_embed, max_len=256, device=torch.device("cpu")):
        super(PositionalEncoding, self).__init__()
        encoding = torch.zeros(max_len, d_embed)
        encoding.requires_grad = False
        position = torch.arange(0, max_len).float().unsqueeze(1)
        div_term = torch.exp(torch.arange(0, d_embed, 2) * -(math.log(10000.0) / d_embed))
        encoding[:, 0::2] = torch.sin(position * div_term)
        encoding[:, 1::2] = torch.cos(position * div_term)
        self.encoding = encoding.unsqueeze(0).to(device)

    def forward(self, x):
        _, seq_len, _ = x.size()
        pos_embed = self.encoding[:, :seq_len, :]
        out = x + pos_embed
        return out
    

def build_model(src_vocab_size, tgt_vocab_size, device=torch.device("cpu"), max_len=256, d_embed=512, n_layer=6, d_model=512, h=8, d_ff=2048):
    import copy
    copy = copy.deepcopy

    src_token_embed = TokenEmbedding(d_embed = d_embed, vocab_size = src_vocab_size)
    tgt_token_embed = TokenEmbedding(d_embed = d_embed, vocab_size = tgt_vocab_size)
    pos_embed = PositionalEncoding(d_embed = d_embed,max_len = max_len, device = device)

    src_embed = TransformerEmbedding(token_embed = src_token_embed, pos_embed = copy(pos_embed))
    tgt_embed = TransformerEmbedding(token_embed = tgt_token_embed, pos_embed = copy(pos_embed))

    attention = MultiHeadAttentionLayer(d_model = d_model, h = h, qkv_fc = nn.Linear(d_embed, d_model), out_fc = nn.Linear(d_model, d_embed))
    position_ff = PositionWiseFeedForwardLayer(fc1 = nn.Linear(d_embed, d_ff), fc2 = nn.Linear(d_ff, d_embed))

    encoder_block = EncoderBlock(self_attention = copy(attention), position_ff = copy(position_ff))
    decoder_block = DecoderBlock(self_attention = copy(attention), cross_attention = copy(attention), position_ff = copy(position_ff))

    encoder = Encoder(encoder_block = encoder_block, n_layer = n_layer)
    decoder = Decoder(decoder_block = decoder_block, n_layer = n_layer)
    generator = nn.Linear(d_model, tgt_vocab_size)

    model = Transformer(src_embed = src_embed, tgt_embed = tgt_embed, encoder = encoder, decoder = decoder, generator = generator).to(device)
    model.device = device

    return model