#include "sum.h" // current에 있는 건 double-quote 사용

int sum(int n){
    int sum = 0;

    for(int i; i <= 10; i++){
        sum += i;
    }

    return sum;
}
