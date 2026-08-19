const std = @import("std");

pub fn main() void {
    const arr = [3]u8{ 1, 2, 3 };
    var arr_copy = arr;
    arr_copy[0] = 10;
    std.debug.print("arr: {any}\n", .{arr});
    std.debug.print("arr_copy: {any}\n", .{arr_copy});

    const slice = &arr;
    std.debug.print("slice: {any}\n", .{slice});
    std.debug.print("slice ptr: {*}, len: {}\n", .{ slice.ptr, slice.len });
}
