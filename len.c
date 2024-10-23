#include<stdio.h>
#include<stdlib.h>
extern int _lens();
//arm-linux-gnueabihf-gcc -o len len.c len.o -static

int main(){
    char *c="01234567890";

    printf("%d.....\n",_lens(c));
    return 0;

}

