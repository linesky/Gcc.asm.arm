#include<stdio.h>
#include<stdlib.h>

extern int _putss(int *a);
//arm-linux-gnueabihf-gcc -o len len.c len.o -static

int main(){
    char *cc="hello world...\n";
    putss(cc);
    return 0;

}

