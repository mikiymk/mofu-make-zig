const root = @import("root.zig");

const __pid_t = c_int;
const pid_t = __pid_t;

extern fn __errno_location() [*c]c_int;

pub extern var remote_description: [*c]u8 = 0;

pub export fn remote_setup() void {}

pub export fn remote_cleanup() void {}

pub export fn start_remote_job_p(arg_first_p: c_int) c_int {
    var first_p = arg_first_p;
    _ = &first_p;
    return 0;
}

pub export fn start_remote_job(arg_argv: [*c][*c]u8, arg_envp: [*c][*c]u8, arg_stdin_fd: c_int, arg_is_remote: [*c]c_int, arg_id_ptr: [*c]pid_t, arg_used_stdin: [*c]c_int) c_int {
    var argv = arg_argv;
    _ = &argv;
    var envp = arg_envp;
    _ = &envp;
    var stdin_fd = arg_stdin_fd;
    _ = &stdin_fd;
    var is_remote = arg_is_remote;
    _ = &is_remote;
    var id_ptr = arg_id_ptr;
    _ = &id_ptr;
    var used_stdin = arg_used_stdin;
    _ = &used_stdin;
    return -@as(c_int, 1);
}

pub export fn remote_status(arg_exit_code_ptr: [*c]c_int, arg_signal_ptr: [*c]c_int, arg_coredump_ptr: [*c]c_int, arg_block: c_int) c_int {
    var exit_code_ptr = arg_exit_code_ptr;
    _ = &exit_code_ptr;
    var signal_ptr = arg_signal_ptr;
    _ = &signal_ptr;
    var coredump_ptr = arg_coredump_ptr;
    _ = &coredump_ptr;
    var block = arg_block;
    _ = &block;
    __errno_location().* = 10;
    return -@as(c_int, 1);
}

pub export fn block_remote_children() void {
    return;
}

pub export fn unblock_remote_children() void {
    return;
}

pub export fn remote_kill(arg_id: pid_t, arg_sig: c_int) c_int {
    var id = arg_id;
    _ = &id;
    var sig = arg_sig;
    _ = &sig;
    return -@as(c_int, 1);
}
