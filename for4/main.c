#include <stdio.h>

double get_pi(double pi) {
    for (double i = 2.0; i < 3000000; i += 4) {
        pi += 4.0 / (i * (i + 1) * (i + 2));
        pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
    }
    return pi;
}


int main(int argc, char *argv[]) {
    double pi = 3.0;
    printf("%.14f", get_pi(pi));
    return 0;
}
