.global _fills
_fills: 
        @ r0=string
	@ r1=char
	@ r2=cont
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#16
	mov r3,r0
	fillss:
		strb r1,[r3]
		add r3,r3,#1
		sub r2,r2,#1
		cmp r2,#0
		bne fillss
	fillsss:
	sub sp,fp,#4
	pop {fp,pc}
