# Answer

## Write - up 2:
    printf("char d = %c\n", d);  // What does this print?  -> "6"

    // compound types are read right to left in C.
    // pcp is a pointer to a pointer to a char, meaning that
    // pcp stores the address of a char pointer.
    char **pcp;
    pcp = argv;  // Why is this assignment valid? -> argv is of type 'char **', same as pcp

    const char *pcc = c;  // pcc is a pointer to char constant. real only, not write
    char const *pcc2 = c;  // What is the type of pcc2? pcc is also pointer to const char

    // For each of the following, why is the assignment:
    *pcc = '7';  // invalid: pcc points to read-only data; cannot modify the content
    pcc = *pcp;  // valid: assigning a `char *` to a `const char *` (safe conversion)
    pcc = argv[0];  // valid: argv[0] is `char *` → convertible to `const char *`

    char *const cp = c;  // cp is a const pointer to char
    // For each of the following, why is the assignment:
    cp = *pcp;  // invalid: cp is a constant pointer; cannot change its address
    cp = *argv;  // invalid: same as above
    *cp = '!';  // valid: cp points to non-const char → content can be modified

    const char *const cpc = c;  // cpc is a const pointer to char const
    // For each of the following, why is the assignment:
    cpc = *pcp;  // invalid: cpc is a constant pointer; cannot assign new address
    cpc = argv[0];  // invalid: same reason as above
    *cpc = '@';  // invalid: cpc points to constant data; content cannot be modified
    

## Write - up 3:
    size of int : 4 bytes 
    size of int : 4 bytes 
    size of int* : 8 bytes 
    size of short : 2 bytes 
    size of short* : 8 bytes 
    size of long : 8 bytes 
    size of long* : 8 bytes 
    size of char : 1 bytes 
    size of char* : 8 bytes 
    size of float : 4 bytes 
    size of float* : 8 bytes 
    size of double : 8 bytes 
    size of double* : 8 bytes 
    size of unsigned int : 4 bytes 
    size of unsigned int* : 8 bytes 
    size of long long : 8 bytes 
    size of long long* : 8 bytes 
    size of int8_t : 1 bytes 
    size of int8_t* : 8 bytes 
    size of int16_t : 2 bytes 
    size of int16_t* : 8 bytes 
    size of int32_t : 4 bytes 
    size of int32_t* : 8 bytes 
    size of int64_t : 8 bytes 
    size of int64_t* : 8 bytes 
    size of int_fast8_t : 1 bytes 
    size of int_fast8_t* : 8 bytes 
    size of int_fast16_t : 8 bytes 
    size of int_fast16_t* : 8 bytes 
    size of int_fast32_t : 8 bytes 
    size of int_fast32_t* : 8 bytes 
    size of int_fast64_t : 8 bytes 
    size of int_fast64_t* : 8 bytes 
    size of uint8_t : 1 bytes 
    size of uint8_t* : 8 bytes 
    size of uint16_t : 2 bytes 
    size of uint16_t* : 8 bytes 
    size of uint32_t : 4 bytes 
    size of uint32_t* : 8 bytes 
    size of uint64_t : 8 bytes 
    size of uint64_t* : 8 bytes 
    size of uint_fast8_t : 1 bytes 
    size of uint_fast8_t* : 8 bytes 
    size of uint_fast16_t : 8 bytes 
    size of uint_fast16_t* : 8 bytes 
    size of uint_fast32_t : 8 bytes 
    size of uint_fast32_t* : 8 bytes 
    size of uint_fast64_t : 8 bytes 
    size of uint_fast64_t* : 8 bytes 
    size of student : 8 bytes 
    size of student* : 8 bytes 
    size of int array 4 : 20 bytes 
    size of student : 8 bytes


## Write - up 4:
    k = 1 -> address: 0x100
    m = 2 -> address: 0x104

    swap(&k, &m)
    *i -> 0x100 -> value: 1
    *j -> 0x104 -> value: 2

    temp = *i = 1
    *i = *j = 2
    *j = temp = 1


## Write - up 6:
Direct leak of 32 byte(s) in 2 object(s) allocated from:
    #0 0x5928a991dfc3 in malloc (./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply+0xcafc3) (BuildId: b8b811aa8eca1c4c87d490d1ae00bbe00b4b0115)
    #1 0x5928a995d159 in make_matrix ./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply.c:39:24

Indirect leak of 144 byte(s) in 8 object(s) allocated from:
    #0 0x5928a991dfc3 in malloc (./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply+0xcafc3) (BuildId: b8b811aa8eca1c4c87d490d1ae00bbe00b4b0115)
    #1 0x5928a995d1e7 in make_matrix ./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply.c:48:35

Indirect leak of 64 byte(s) in 2 object(s) allocated from:
    #0 0x5928a991dfc3 in malloc (./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply+0xcafc3) (BuildId: b8b811aa8eca1c4c87d490d1ae00bbe00b4b0115)
    #1 0x5928a995d1a2 in make_matrix ./Software-Optimization-and-Performance-Engineering/mit_hw/hw1/matrix-multiply/matrix_multiply.c:46:31

SUMMARY: AddressSanitizer: 240 byte(s) leaked in 12 allocation(s).


## Write - up 7:

Matrix A: 
------------
    3      7      8      1  
    7      9      8      3  
    1      2      6      7  
    9      8      1      9  
------------
Matrix B: 
------------
    1      3      0      1  
    5      5      7      8  
    0      1      9      8  
    9      3      1      7  
------------
Running matrix_multiply_run()...
---- RESULTS ----
Result: 
------------
   47     55    122    130  
   79     83    138    164  
   74     40     75    114  
  130     95     74    144  
------------
---- END RESULTS ----
Elapsed execution time: 0.002174 se

## Write - up 8:

---- END RESULTS ----
Elapsed execution time: 0.001168 sec
==6846== 
==6846== HEAP SUMMARY:
==6846==     in use at exit: 0 bytes in 0 blocks
==6846==   total heap usage: 39 allocs, 39 frees, 1,680 bytes allocated
==6846== 
==6846== All heap blocks were freed -- no leaks are possible
==6846== 
==6846== For lists of detected and suppressed errors, rerun with: -s
==6846== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)


## Write - up 9:
1000x1000 matrix takes:
1.879619 sec sec (naive)
0.670240 sec (loops reversed)

## Write - up 10:
3.097378 sec
0.644552 sec