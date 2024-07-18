const root = @import("root.zig");

pub const struct_option = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    has_arg: c_int = @import("std").mem.zeroes(c_int),
    flag: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    val: c_int = @import("std").mem.zeroes(c_int),
};

pub const GETOPT_INTERFACE_VERSION = @as(c_int, 2);
pub const ELIDE_CODE = "";

pub extern fn getopt_long(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
pub extern fn getopt_long_only(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
