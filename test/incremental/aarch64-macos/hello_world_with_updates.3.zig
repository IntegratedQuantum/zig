extern "c" fn write(usize, usize, usize) usize;

pub fn main() void {
    print();
}

fn print() void {
    const msg = @ptrToInt("Hello, World!\n");
    const len = 14;
    _ = write(1, msg, len);
}

// run
//
// Hello, World!
//
