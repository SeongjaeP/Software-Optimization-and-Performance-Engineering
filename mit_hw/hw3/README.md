## Write - up 1
    In the assembly code, the compiler chooses to adjust the base pointer to point to the end of the array (i.e., a - SIZE) and then use positive offsets to access each element. This allows the memory accesses to remain within a fixed, small signed offset range, which can be encoded efficiently in instructions.

    If the compiler had kept the base pointer unchanged (i.e., a[0] corresponds to offset 0), then accessing a[i] for i up to SIZE - 1 would require larger immediate values as the index increases. Many architectures (including x86 and ARM) restrict the range of immediate values in memory access instructions (e.g., 8-bit or 12-bit signed offset). By shifting the base pointer lower, all offsets become small and positive (or at least within a small signed range), allowing more efficient instruction encoding.

    Therefore, the compiler rewrites the loop using a negative start index to reduce the instruction size and improve performance by avoiding large offset constants or additional address computation instructions.



## Wrtie - up 3
    The compiler generates dramatically different assembly because the use of __builtin_assume_aligned() allows it to assume that the input arrays are aligned in memory. This assumption enables the compiler to apply more aggressive optimizations such as loop vectorization using SIMD instructions like AVX2, and to use aligned memory operations (vmovdqa) instead of unaligned ones (vmovdqu). Without this hint, the compiler must conservatively assume the pointers may not be aligned, which inhibits many low-level optimizations.