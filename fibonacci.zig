const std = @import("std");

fn fibonaci(n: usize) i32 {
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;
    return fibonaci(n - 1) + fibonaci(n - 2);
}

pub fn main() void {
    const one = fibonaci(1);
    const two = fibonaci(2);
    const three = fibonaci(3);
    const four = fibonaci(47);

    std.debug.print("{} {} {} {}\n", .{ one, two, three, four });
}
