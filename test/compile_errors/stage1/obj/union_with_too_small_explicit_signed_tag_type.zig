const U = union(enum(i2)) {
    A: u8,
    B: u8,
    C: u8,
    D: u8,
};
export fn entry() void {
    _ = U{ .D = 1 };
}

// error
// backend=stage1
// target=native
//
// tmp.zig:1:22: error: specified integer tag type cannot represent every field
// tmp.zig:1:22: note: type i2 cannot fit values in range 0...3
