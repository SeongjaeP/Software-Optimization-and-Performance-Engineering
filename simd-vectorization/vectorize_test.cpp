// vectorize_test.cpp
#include <iostream>
#include <chrono>

void saxpy(float *x, float *y, float a, int n) {
    for (int i = 0; i < n; i++) {
        y[i] = a * x[i] + y[i];
    }
}

int main() {
    const int N = 1 << 20;
    float *x = new float[N];
    float *y = new float[N];
    float a = 2.0f;

    for (int i = 0; i < N; ++i) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    auto start = std::chrono::high_resolution_clock::now();
    saxpy(x, y, a, N);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Elapsed: " << diff.count() << " s\n";

    std::cout << "y[0] = " << y[0] << std::endl;
    delete[] x;
    delete[] y;
    return 0;
}
