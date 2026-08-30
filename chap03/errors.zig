const std = @import("std");

const fibo = @import("fibo.zig");
pub fn main() !void {
    const fib = try fibo.fibonacci(3); //
    std.debug.print("fibonacci(31) = {}\n", .{fib});
}
