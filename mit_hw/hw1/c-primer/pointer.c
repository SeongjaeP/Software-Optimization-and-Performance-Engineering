// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[]) {  // What is the type of argv?
  int i = 5;
  // The & operator here gets the address of i and stores it into pi
  int *pi = &i;
  // The * operator here dereferences pi and stores the value -- 5 --
  // into j.
  int j = *pi;

  char c[] = "6.172";
  char *pc = c;  // Valid assignment: c acts like a pointer to c[0] here.
  char d = *pc;
  printf("char d = %c\n", d);  // What does this print?  -> 6

  // compound types are read right to left in C.
  // pcp is a pointer to a pointer to a char, meaning that
  // pcp stores the address of a char pointer.
  char **pcp;
  pcp = argv;  // Why is this assignment valid? -> argv is of type 'char **', same as pcp

  const char *pcc = c;  // pcc is a pointer to char constant. real only, not write
  char const *pcc2 = c;  // What is the type of pcc2? pcc is also pointer to const char

  // For each of the following, why is the assignment:
  //*pcc = '7';  // invalid: pcc points to read-only data; cannot modify the content
  pcc = *pcp;  // valid: assigning a `char *` to a `const char *` (safe conversion)
  pcc = argv[0];  // valid: argv[0] is `char *` → convertible to `const char *`

  char *const cp = c;  // cp is a const pointer to char
  // For each of the following, why is the assignment:
  //cp = *pcp;  // invalid: cp is a constant pointer; cannot change its address
  //cp = *argv;  // invalid: same as above
  *cp = '!';  // valid: cp points to non-const char → content can be modified

  const char *const cpc = c;  // cpc is a const pointer to char const
  // For each of the following, why is the assignment:
  //cpc = *pcp;  // invalid: cpc is a constant pointer; cannot assign new address
  //cpc = argv[0];  // invalid: same reason as above
  //*cpc = '@';  // invalid: cpc points to constant data; content cannot be modified

  return 0;
}
