const std = @import("std");

const fibo = @import("fibo.zig");

pub fn main() void {
    if (fibo.fibonacci(100)) |n| {
        std.debug.print("fibonacci({}) = {}", .{ 100, n });
    } else |err| std.debug.print("fibonacci({}) error: {}", .{ 100, err });
}
