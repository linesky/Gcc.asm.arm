.global putsss
._lens:
	@ r1=string
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#16
	mov r0,#0
	mov r3,r1
	lenss:
		ldrb r1,[r3]
		cmp r1,#0
		beq lensss
		add r3,r3,#1
		add r0,r0,#1
		b lenss 
	lensss:
	sub sp,fp,#4
	pop {fp,pc}
_putsss:
	@ r0=string
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#16
	mov r7,r0
	mov r1,r0	
	ldr r3,_lens
	blx r3
	mov r2,r0
	mov r0, #1            
	mov r1,r7
	mov r7, #4              
	swi #0                  
	sub sp,fp,#4
	pop {fp,pc}
_strcpys:
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
_strcats:
	@ r0=string
	@ r1=string2
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#16
	mov r7,r0
	mov r5,r1
	ldr r6,_len
	blx r6
	add r1,r5,r0
	mov r0,r7
	ldr r6,_strcpy
	blx r6
	sub sp,fp,#4
	pop {fp,pc}
_fills:
	@ r0=address
	@ r1=char
	@ r2=size
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
_fill:
.word _fills
_strcat:
.word _strcats
_strcpy:
.word _strcpys
_puts:
.word _putss 
_len:
.word _lens 
_adds:
.word _string
_adds2:
.word _string2
.data
_string:
.asciz "%d\n\0"         
_string2:
.asciz "\033[47;30m\n0123456789001234567890012345678900123456789001234567890\0"
