test "integer overflow at compile time" {
    var x: u8 = 255;
    x += 1;
}