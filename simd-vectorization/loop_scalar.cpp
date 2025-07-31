#include <iostream>
#include <chrono>


constexpr int N = 1024 * 1024;
float a[N], b[N], c[N];

int main(){
    for (int i = 0; i < N; i++){
        a[i] = i * 1.0f;
        b[i] = (N - i) * 1.0f;
    }

    auto start = std::chrono::high_resolution_clock::now();
    
    for (int i = 0; i < N; i++){
        c[i] = a[i] + b[i];
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Scalar Loop Time: " << diff.count() << " s\n";

    return 0;
}