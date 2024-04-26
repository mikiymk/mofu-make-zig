const std = @import("std");

const makeint = @import("makeint.zig");

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const makefile_status: c_int = makeint.MAKE_SUCCESS;

    _ = makefile_status;
}
