#include<stdio.h>
#include<stdlib.h>

extern int _fill(int *a,char b,int c);
//arm-linux-gnueabihf-gcc -o len len.c len.o -static

int main(){
    char cc[1024];
    _fill(cc,'\0',240);
    _fill(cc,'*',200);
    printf("%s.....\n",cc);
    return 0;

}

