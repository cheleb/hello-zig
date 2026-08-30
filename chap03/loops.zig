const std = @import("std");

pub fn main(init: std.process.Init) !void {
    std.debug.print("{} parameters", .{init.environ_map});
    const fruits = [_][]const u8{ "banana", "oranges", "apple", "cherry" };
    const prices = [_]i32{ 12, 16, 4, 1 };

    std.debug.print("\n\n--- Raw loops\n\n", .{});

    for (0..fruits.len) |i| {
        std.debug.print("{s}: {}\n", .{ fruits[i], prices[i] });
    }

    std.debug.print("\n\n--- Twin loops\n\n", .{});

    // fruits and prices must have the same length.
    for (fruits, prices, 0..) |fruit, price, i| {
        std.debug.print("{}: {s} {}\n", .{ i, fruit, price });
    }
}
