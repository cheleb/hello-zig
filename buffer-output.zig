const std = @import("std");

pub fn main() !void {
    const stdout_file = std.fs.File.stdout();
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.writer(stdout_file, &stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.writeAll("All your code belong to us!");
    try stdout.flush();
}
