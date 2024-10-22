.text
.global main
.extern printf 
.extern strlen
@ arm-linux-gnueabihf-as -o len.o len.s
@ arm-linux-gnueabihf-gcc -o len len.o -static
@ ./my
main:
        push {fp,lr}
	ldr r0,_adds
	blx strlen
	mov r1,r0
	ldr r0,_adds
	
	blx printf
	pop {fp,pc}                  
            

_adds:
.word _string
_string:
.asciz "\033[40;37m\nHello world %d\n\0"    
