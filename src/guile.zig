pub const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

pub export fn guile_gmake_setup(arg_flocp: [*c]const floc) c_int {
    var flocp = arg_flocp;
    _ = &flocp;
    return 1;
}
