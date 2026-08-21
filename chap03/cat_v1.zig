const std = @import("std");
const Io = std.Io;
pub fn main(init: std.process.Init) !void {
    const filepath = "meow.txt";
    var gpa = std.heap.DebugAllocator(.{}).init;
    defer _ = gpa.deinit();
    const ally = gpa.allocator();
    const io = init.io;
    const cwd = Io.Dir.cwd();
    const max_bytes = Io.Limit.limited(16 * 1024 * 1024);
    const text = try cwd.readFileAlloc(io, filepath, ally, max_bytes);
    defer _ = ally.free(text);

    const stdout_file = Io.File.stdout();
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = stdout_file.writer(io, &stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.writeAll(text);
    try stdout.flush();
}
