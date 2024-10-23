.global _strcpy
@ arm-linux-gnueabihf-as -o strcpy.o strcpy.s
_strcpy:
	@ r0=string
	@ r1=string2
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#16
	mov r3,r0
	mov r2,r1
	_strcpyss:
		ldrb r1,[r3]
		strb r1,[r2]
		cmp r1,#0
		beq _strcpysss
		add r3,r3,#1
		add r2,r2,#1
		b _strcpyss
	_strcpysss:
	sub sp,fp,#4
	pop {fp,pc}

