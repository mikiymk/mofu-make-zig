const root = @import("root.zig");

const floc = @import("makeint.zig").floc;

pub export fn guile_gmake_setup(arg_flocp: [*c]const floc) c_int {
    var flocp = arg_flocp;
    _ = &flocp;
    return 1;
}
