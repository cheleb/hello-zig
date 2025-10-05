const std = @import("std");

pub fn main() void {
    // try std.fs.File.stdout().writeAll("Hello, World!\n");
    std.debug.print("Hello, {s}!\n", .{"World"});
}
