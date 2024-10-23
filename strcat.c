#include<stdio.h>
#include<stdlib.h>

extern int _strcpy(char *a,char *b);
extern int _strcats(char *a,char *b);
//arm-linux-gnueabihf-gcc -o len len.c len.o -static

int main(){
    char *c="01234567890";
    char cc[1024];
    _strcpy(cc,c);
    _strcats(cc,c);
    printf("%s.....\n",cc);
    return 0;

}

