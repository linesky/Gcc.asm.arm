#include<stdio.h>
#include<stdlib.h>

extern int _fills(char *a,char b,int c);
//arm-linux-gnueabihf-gcc -o len len.c len.o -static

int main(){
    char cc[1024];
    _fills(cc,'\0',240);
    _fills(cc,'*',200);
    printf("%s.....\n",cc);
    return 0;

}

