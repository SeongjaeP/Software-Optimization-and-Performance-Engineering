#include <iostream>

void add_array(float *a, float *b, float *c, int N) {
    for (int i = 0; i < N; i++) {
        c[i] = a[i] + b[i];
    }
}

int main() {
    const int N = 1024;
    float a[N], b[N], c[N];

    for (int i = 0; i < N; i++){
        a[i] = i;
        b[i] = 2 * i;
    }

    add_array(a, b, c, N);

    std::cout << "c[0] = " << c[0] << ", c[1023] = " << c[1023] << std::endl;
    return 0;
}