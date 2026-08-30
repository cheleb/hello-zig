const std = @import("std");

const FibonacciError = error{OverFibonacciLimit};

const fibonacci_limit = 30;

pub fn fibonacci(n: usize) FibonacciError!i32 { //
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else if (n > fibonacci_limit) {
        return error.OverFibonacciLimit; //
    }
    return try fibonacci(n - 1) + try fibonacci(n - 2); //
}
