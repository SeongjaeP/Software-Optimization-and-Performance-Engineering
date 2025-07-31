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