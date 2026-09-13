const std = @import("std");

const Io = std.Io;
pub fn main(init: std.process.Init) !void {
    const io = init.io;
    const arena = init.arena.allocator();

    const args = try init.minimal.args.toSlice(arena);
    const cwd = Io.Dir.cwd();

    const stdout_file = Io.File.stdout();
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = stdout_file.writer(io, &stdout_buffer);

    const stdout = &stdout_writer.interface;

    for (args[1..]) |filepath| {
        const text = try cwd.readFileAlloc(io, filepath, arena, .unlimited);
        try stdout.writeAll(text);
    }

    try stdout.flush();
}
