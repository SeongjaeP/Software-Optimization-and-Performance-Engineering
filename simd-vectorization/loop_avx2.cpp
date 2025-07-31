// loop_avx2.cpp
#include <iostream>
#include <immintrin.h>
#include <chrono>

constexpr int N = 1024 * 1024;
float a[N], b[N], c[N];

int main() {
    for (int i = 0; i < N; ++i) {
        a[i] = i * 1.0f;
        b[i] = (N - i) * 1.0f;
    }

    auto start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < N; i += 8) {
        __m256 va = _mm256_loadu_ps(&a[i]);
        __m256 vb = _mm256_loadu_ps(&b[i]);
        __m256 vc = _mm256_add_ps(va, vb);
        _mm256_storeu_ps(&c[i], vc);
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "AVX2 Loop Time: " << diff.count() << " s\n";

    return 0;
}
