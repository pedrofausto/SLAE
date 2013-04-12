#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
  int i;
  i = (int) *argv[1];
  printf("%s\n", argv[1]);
  printf("%d\n", i);
  return 0;
}