const std = @import("std");

const Rectangle = struct {
    width: u32,
    height: u32,

    fn area(self: Rectangle) u32 {
        return self.width * self.height;
    }

    fn double(self: *Rectangle) void {
        self.width = self.width * 2;
        self.height = self.height * 2;
    }
};

pub fn main() void {
    var rect = Rectangle{ .width = 10, .height = 5 };
    std.debug.print("Area: {}\n", .{rect.area()});
    rect.double();
    std.debug.print("New Area: {}\n", .{rect.area()});
}
