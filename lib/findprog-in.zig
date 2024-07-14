pub const NATIVE_SLASH = '/';
pub const PATH_SEPARATOR = ':';

pub const suffixes: [1][*c]const u8 = [1][*c]const u8{
    "",
};

// findprog-in.c:74:1: warning: unable to translate function, demoted to extern
pub extern fn find_in_given_path(arg_progname: [*c]const u8, arg_path: [*c]const u8, arg_directory: [*c]const u8, arg_optimize_for_exec: bool) [*c]const u8;
