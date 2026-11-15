
#include "moving_max.h"

#include <algorithm>
#include <array>
#include <cstdint>
#include <iostream>
#include <random>

using Data = std::array<int, N_SAMPLES>;

// Reference implementation
Data moving_max_reference(const Data& input)
{
    Data output{};

    for (int n = 0; n < N_SAMPLES; ++n)
    {
        const int first = std::max(0, n - WINDOW + 1);

        int max_value = input[first];

        for (int i = first + 1; i <= n; ++i)
            max_value = std::max(max_value, input[i]);

        output[n] = max_value;
    }

    return output;
}

// Generate random input
Data generate_input(std::mt19937& rng, int min = 1, int max = 300)
{
    Data input{};
    std::uniform_int_distribution<int> dist(min, max);

    for (auto& value : input)
        value = dist(rng);

    return input;
}

// Run one test
bool run_test(int test_id, const Data& input)
{
    const Data expected = moving_max_reference(input);
    Data actual{};

    Data input_copy = input;

    moving_max(input_copy.data(), actual.data());

    bool passed = true;
    int errors = 0;

    for (int i = 0; i < N_SAMPLES; ++i)
    {
        if (expected[i] != actual[i])
        {
            if (errors < 10)
            {
                std::cout
                    << "Mismatch: test=" << test_id
                    << ", index=" << i
                    << ", expected=" << expected[i]
                    << ", actual=" << actual[i]
                    << '\n';
            }

            ++errors;
            passed = false;
        }
    }

    std::cout << "Test " << test_id << ": "
              << (passed ? "PASSED" : "FAILED");

    if (!passed)
        std::cout << " (" << errors << " errors)";

    std::cout << '\n';

    return passed;
}

int main()
{
    constexpr int NUM_RANDOM_TESTS = 5;

    std::mt19937 rng(42);

    int failed_tests = 0;

    // Test 1: Random values
    for (int i = 0; i < NUM_RANDOM_TESTS; ++i)
    {
        const Data input = generate_input(rng);

        if (!run_test(i + 1, input))
            ++failed_tests;
    }

    // Test 2: All zeros
    {
        const Data input{};

        if (!run_test(6, input))
            ++failed_tests;
    }

    // Test 3: All maximum values
    {
        Data input{};
        input.fill(1000);

        if (!run_test(7, input))
            ++failed_tests;
    }

    // Test 4: Increasing values
    {
        Data input{};

        for (int i = 0; i < N_SAMPLES; ++i)
            input[i] = i;

        if (!run_test(8, input))
            ++failed_tests;
    }

    // Test 5: Decreasing values
    {
        Data input{};

        for (int i = 0; i < N_SAMPLES; ++i)
            input[i] = N_SAMPLES - i;

        if (!run_test(9, input))
            ++failed_tests;
    }

    std::cout << "\n-------------------------\n";

    if (failed_tests == 0)
    {
        std::cout << "All tests passed!\n";
        return 0;
    }

    std::cout << failed_tests << " tests failed!\n";
    return 1;
}
