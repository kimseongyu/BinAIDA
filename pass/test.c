#include <stdio.h>

int add(int* a, char b){
    return *a + (int)b;
}

int main(){
    int a[100];
    char b = 2;
    for(int i = 0; i < 100; i++){
        a[i] = i*i;
        int c = add(a+i, b);
        printf("%d\n", c);
    }
    return 0;
}