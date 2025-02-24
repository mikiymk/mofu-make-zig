const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

const time_t = __time_t;

fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
const sigset_t = __sigset_t;

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};

const sig_atomic_t = __sig_atomic_t;

extern fn sigemptyset(__set: [*c]sigset_t) c_int;

extern fn sigprocmask(__how: c_int, noalias __set: [*c]const sigset_t, noalias __oset: [*c]sigset_t) c_int;

const stack_t = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
    ss_size: usize = @import("std").mem.zeroes(usize),
};
const greg_t = c_longlong;
const gregset_t = [23]greg_t;

const struct__libc_fpxreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
};
const struct__libc_xmmreg = extern struct {
    element: [4]__uint32_t = @import("std").mem.zeroes([4]__uint32_t),
};
const struct__libc_fpstate = extern struct {
    cwd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    swd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    ftw: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    fop: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    rip: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rdp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    mxcsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    mxcr_mask: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    _st: [8]struct__libc_fpxreg = @import("std").mem.zeroes([8]struct__libc_fpxreg),
    _xmm: [16]struct__libc_xmmreg = @import("std").mem.zeroes([16]struct__libc_xmmreg),
    __glibc_reserved1: [24]__uint32_t = @import("std").mem.zeroes([24]__uint32_t),
};
const fpregset_t = [*c]struct__libc_fpstate;
const mcontext_t = extern struct {
    gregs: gregset_t = @import("std").mem.zeroes(gregset_t),
    fpregs: fpregset_t = @import("std").mem.zeroes(fpregset_t),
    __reserved1: [8]c_ulonglong = @import("std").mem.zeroes([8]c_ulonglong),
};
const struct_ucontext_t = extern struct {
    uc_flags: c_ulong = @import("std").mem.zeroes(c_ulong),
    uc_link: [*c]struct_ucontext_t = @import("std").mem.zeroes([*c]struct_ucontext_t),
    uc_stack: stack_t = @import("std").mem.zeroes(stack_t),
    uc_mcontext: mcontext_t = @import("std").mem.zeroes(mcontext_t),
    uc_sigmask: sigset_t = @import("std").mem.zeroes(sigset_t),
    __fpregs_mem: struct__libc_fpstate = @import("std").mem.zeroes(struct__libc_fpstate),
    __ssp: [4]c_ulonglong = @import("std").mem.zeroes([4]c_ulonglong),
};

extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;

extern fn close(__fd: c_int) c_int;

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;

const struct__IO_marker = opaque {};
const _IO_lock_t = anyopaque;
const struct__IO_codecvt = opaque {};
const struct__IO_wide_data = opaque {};
const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};

const FILE = struct__IO_FILE;

extern var stdin: [*c]FILE;
extern var stdout: [*c]FILE;
extern var stderr: [*c]FILE;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

extern fn time(__timer: [*c]time_t) time_t;

extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;

extern var daylight: c_int;
extern var timezone: c_long;

extern var getdate_err: c_int;

extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn getenv(__name: [*c]const u8) [*c]u8;

extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;

extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

extern fn strsignal(__sig: c_int) [*c]u8;

extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

const uintmax_t = __uintmax_t;

const gettext = root.cstd.gettext;

const struct_dep = extern struct {
    next: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    shuf: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_mtime: c_uint = @import("std").mem.zeroes(c_uint),
    staticpattern: c_uint = @import("std").mem.zeroes(c_uint),
    need_2nd_expansion: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_automatic_vars: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    wait_here: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_commands = extern struct {
    fileinfo: floc = @import("std").mem.zeroes(floc),
    commands: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_lines: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    lines_flags: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    ncommand_lines: c_ushort = @import("std").mem.zeroes(c_ushort),
    recipe_prefix: u8 = @import("std").mem.zeroes(u8),
    any_recurse: c_uint = @import("std").mem.zeroes(c_uint),
};
const hash_func_t = ?*const fn (?*const anyopaque) callconv(.C) c_ulong;
const hash_cmp_func_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
const struct_hash_table = extern struct {
    ht_vec: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
    ht_hash_1: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_hash_2: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_compare: hash_cmp_func_t = @import("std").mem.zeroes(hash_cmp_func_t),
    ht_size: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_capacity: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_fill: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_empty_slots: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_collisions: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_lookups: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_rehashes: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_variable_set = extern struct {
    table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table),
};
const struct_variable_set_list = extern struct {
    next: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    set: [*c]struct_variable_set = @import("std").mem.zeroes([*c]struct_variable_set),
    next_is_parent: c_int = @import("std").mem.zeroes(c_int),
};
const us_success: c_int = 0;

const enum_update_status_36 = c_uint;

const cs_running: c_int = 2;

const enum_cmd_state_37 = c_uint;
const struct_file = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    hname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    vpath: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    also_make: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    prev: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    renamed: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    variables: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    pat_variables: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    parent: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    double_colon: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last_mtime: uintmax_t = @import("std").mem.zeroes(uintmax_t),
    mtime_before_update: uintmax_t = @import("std").mem.zeroes(uintmax_t),
    considered: c_uint = @import("std").mem.zeroes(c_uint),
    command_flags: c_int = @import("std").mem.zeroes(c_int),
    update_status: enum_update_status_36 = @import("std").mem.zeroes(enum_update_status_36),
    command_state: enum_cmd_state_37 = @import("std").mem.zeroes(enum_cmd_state_37),
    builtin: c_uint = @import("std").mem.zeroes(c_uint),
    precious: c_uint = @import("std").mem.zeroes(c_uint),
    loaded: c_uint = @import("std").mem.zeroes(c_uint),
    unloaded: c_uint = @import("std").mem.zeroes(c_uint),
    low_resolution_time: c_uint = @import("std").mem.zeroes(c_uint),
    tried_implicit: c_uint = @import("std").mem.zeroes(c_uint),
    updating: c_uint = @import("std").mem.zeroes(c_uint),
    updated: c_uint = @import("std").mem.zeroes(c_uint),
    is_target: c_uint = @import("std").mem.zeroes(c_uint),
    cmd_target: c_uint = @import("std").mem.zeroes(c_uint),
    phony: c_uint = @import("std").mem.zeroes(c_uint),
    intermediate: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    secondary: c_uint = @import("std").mem.zeroes(c_uint),
    notintermediate: c_uint = @import("std").mem.zeroes(c_uint),
    dontcare: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_vpath: c_uint = @import("std").mem.zeroes(c_uint),
    pat_searched: c_uint = @import("std").mem.zeroes(c_uint),
    no_diag: c_uint = @import("std").mem.zeroes(c_uint),
    was_shuffled: c_uint = @import("std").mem.zeroes(c_uint),
    snapped: c_uint = @import("std").mem.zeroes(c_uint),
};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

const message = @import("output.zig").message;
const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

const o_default: c_int = 0;

const enum_variable_origin = c_int;

const enum_variable_flavor = c_uint;

const enum_variable_export = c_uint;
const struct_variable = extern struct {
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    value: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    fileinfo: floc = @import("std").mem.zeroes(floc),
    length: c_uint = @import("std").mem.zeroes(c_uint),
    recursive: c_uint = @import("std").mem.zeroes(c_uint),
    append: c_uint = @import("std").mem.zeroes(c_uint),
    conditional: c_uint = @import("std").mem.zeroes(c_uint),
    per_target: c_uint = @import("std").mem.zeroes(c_uint),
    special: c_uint = @import("std").mem.zeroes(c_uint),
    exportable: c_uint = @import("std").mem.zeroes(c_uint),
    expanding: c_uint = @import("std").mem.zeroes(c_uint),
    private_var: c_uint = @import("std").mem.zeroes(c_uint),
    exp_count: c_uint = @import("std").mem.zeroes(c_uint),
    flavor: enum_variable_flavor = @import("std").mem.zeroes(enum_variable_flavor),
    origin: enum_variable_origin = @import("std").mem.zeroes(enum_variable_origin),
    @"export": enum_variable_export = @import("std").mem.zeroes(enum_variable_export),
};

extern fn perror_with_name([*c]const u8, [*c]const u8) void;
extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

extern fn show_goal_error() void;

extern var reading_file: [*c]const floc;
extern var expanding_var: [*c][*c]const floc;
const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});
extern var just_print_flag: c_int;
extern var run_silent: c_int;
extern var ignore_errors_flag: c_int;
extern var keep_going_flag: c_int;
extern var print_data_base_flag: c_int;
extern var question_flag: c_int;
extern var touch_flag: c_int;
extern var always_make_flag: c_int;
extern var env_overrides: c_int;
extern var no_builtin_rules_flag: c_int;
extern var no_builtin_variables_flag: c_int;
extern var print_version_flag: c_int;
extern var check_symlink_flag: c_int;
extern var warn_undefined_variables_flag: c_int;
extern var posix_pedantic: c_int;
extern var not_parallel: c_int;
extern var second_expansion: c_int;
extern var clock_skew_detected: c_int;
extern var rebuilding_makefiles: c_int;
extern var one_shell: c_int;
extern var output_sync: c_int;
extern var verify_flag: c_int;
extern var command_count: c_ulong;
extern var default_shell: [*c]const u8;
extern var batch_mode_shell: c_int;
extern var cmd_prefix: u8;
extern var no_intermediates: c_uint;
extern var jobserver_auth: [*c]u8;
extern var job_slots: c_uint;
extern var max_load_average: f64;
extern var program: [*c]const u8;

extern fn start_remote_job_p(c_int) c_int;

extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

extern fn output_init(out: [*c]struct_output) void;
extern fn output_close(out: [*c]struct_output) void;

const struct_childbase = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
};
const struct_child = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
    next: [*c]struct_child = @import("std").mem.zeroes([*c]struct_child),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    sh_batch_file: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_lines: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    command_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_line: c_uint = @import("std").mem.zeroes(c_uint),
    pid: pid_t = @import("std").mem.zeroes(pid_t),
    remote: c_uint = @import("std").mem.zeroes(c_uint),
    noerror: c_uint = @import("std").mem.zeroes(c_uint),
    good_stdin: c_uint = @import("std").mem.zeroes(c_uint),
    deleted: c_uint = @import("std").mem.zeroes(c_uint),
    recursive: c_uint = @import("std").mem.zeroes(c_uint),
    jobslot: c_uint = @import("std").mem.zeroes(c_uint),
    dontcare: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var children: [*c]struct_child;
export fn child_handler(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    dead_children +%= 1;
    jobserver_signal();
}
export fn is_bourne_compatible_shell(arg_path: [*c]const u8) c_int {
    var path = arg_path;
    _ = &path;
    const unix_shells = struct {
        var static: [8][*c]const u8 = [8][*c]const u8{
            "sh",
            "bash",
            "dash",
            "ksh",
            "rksh",
            "zsh",
            "ash",
            null,
        };
    };
    _ = &unix_shells;
    var s: [*c][*c]const u8 = undefined;
    _ = &s;
    var cp: [*c]const u8 = path + strlen(path);
    _ = &cp;
    while ((cp > path) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != 0)) {
        cp -= 1;
    }
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&unix_shells.static)));
        while (s.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (s += 1) {
            if (strcmp(cp, s.*) == 0) return 1;
        }
    }
    return 0;
}
export fn new_job(arg_file_1: [*c]struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var cmds: [*c]struct_commands = file_1.*.cmds;
    _ = &cmds;
    var c: [*c]struct_child = undefined;
    _ = &c;
    var lines: [*c][*c]u8 = undefined;
    _ = &lines;
    var i: c_uint = undefined;
    _ = &i;
    start_waiting_jobs();
    reap_children(0, 0);
    chop_commands(cmds);
    c = @as([*c]struct_child, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_child)))));
    output_init(&c.*.output);
    c.*.file = file_1;
    c.*.sh_batch_file = null;
    c.*.dontcare = file_1.*.dontcare;
    while (true) {
        output_context = if ((&c.*.output).*.syncout != 0) &c.*.output else null;
        if (!false) break;
    }
    lines = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, cmds.*.ncommand_lines))) *% @sizeOf([*c]u8)))));
    {
        i = 0;
        while (i < @as(c_uint, @bitCast(@as(c_uint, cmds.*.ncommand_lines)))) : (i +%= 1) {
            var in: [*c]u8 = undefined;
            _ = &in;
            var out: [*c]u8 = undefined;
            _ = &out;
            var ref: [*c]u8 = undefined;
            _ = &ref;
            in = blk: {
                const tmp = cmds.*.command_lines[i];
                out = tmp;
                break :blk tmp;
            };
            while ((blk: {
                const tmp = strchr(in, @as(c_int, '$'));
                ref = tmp;
                break :blk tmp;
            }) != null) {
                ref += 1;
                if (out != in) {
                    _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ref) -% @intFromPtr(in))), @sizeOf(u8)))));
                }
                out += @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ref) -% @intFromPtr(in))), @sizeOf(u8))))));
                in = ref;
                if ((@as(c_int, @bitCast(@as(c_uint, ref.*))) == @as(c_int, '(')) or (@as(c_int, @bitCast(@as(c_uint, ref.*))) == @as(c_int, '{'))) {
                    var openparen: u8 = ref.*;
                    _ = &openparen;
                    var closeparen: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) @as(c_int, ')') else @as(c_int, '}')))));
                    _ = &closeparen;
                    var outref: [*c]u8 = undefined;
                    _ = &outref;
                    var count: c_int = undefined;
                    _ = &count;
                    var p: [*c]u8 = undefined;
                    _ = &p;
                    (blk: {
                        const ref_1 = &out;
                        const tmp = ref_1.*;
                        ref_1.* += 1;
                        break :blk tmp;
                    }).* = (blk: {
                        const ref_1 = &in;
                        const tmp = ref_1.*;
                        ref_1.* += 1;
                        break :blk tmp;
                    }).*;
                    outref = out;
                    count = 0;
                    while (@as(c_int, @bitCast(@as(c_uint, in.*))) != @as(c_int, '\x00')) {
                        if ((@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                            const ref_1 = &count;
                            ref_1.* -= 1;
                            break :blk ref_1.*;
                        }) < 0)) break else if ((@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '\\')) and (@as(c_int, @bitCast(@as(c_uint, in[1]))) == @as(c_int, '\n'))) {
                            var quoted: c_int = 0;
                            _ = &quoted;
                            {
                                p = in - @as(usize, @bitCast(@as(isize, @intCast(1))));
                                while ((p > ref) and (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\\'))) : (p -= 1) {
                                    quoted = @intFromBool(!(quoted != 0));
                                }
                            }
                            if (quoted != 0) {
                                (blk: {
                                    const ref_1 = &out;
                                    const tmp = ref_1.*;
                                    ref_1.* += 1;
                                    break :blk tmp;
                                }).* = (blk: {
                                    const ref_1 = &in;
                                    const tmp = ref_1.*;
                                    ref_1.* += 1;
                                    break :blk tmp;
                                }).*;
                            } else {
                                in += @as(usize, @bitCast(@as(isize, @intCast(2))));
                                while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & (2 | 4)) != 0) {
                                    in += 1;
                                }
                                while ((out > outref) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                                    @as(u8, @bitCast((blk: {
                                        const tmp = -1;
                                        if (tmp >= 0) break :blk out + @as(usize, @intCast(tmp)) else break :blk out - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*))
                                ]))) & 2) != 0)) {
                                    out -= 1;
                                }
                                (blk: {
                                    const ref_1 = &out;
                                    const tmp = ref_1.*;
                                    ref_1.* += 1;
                                    break :blk tmp;
                                }).* = ' ';
                            }
                        } else {
                            if (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
                                count += 1;
                            }
                            (blk: {
                                const ref_1 = &out;
                                const tmp = ref_1.*;
                                ref_1.* += 1;
                                break :blk tmp;
                            }).* = (blk: {
                                const ref_1 = &in;
                                const tmp = ref_1.*;
                                ref_1.* += 1;
                                break :blk tmp;
                            }).*;
                        }
                    }
                }
            }
            if (out != in) {
                _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), strlen(in) +% @as(c_ulong, 1));
            }
            cmds.*.fileinfo.offset = @as(c_ulong, @bitCast(@as(c_ulong, i)));
            lines[i] = allocated_variable_expand_for_file(cmds.*.command_lines[i], file_1);
        }
    }
    cmds.*.fileinfo.offset = 0;
    c.*.command_lines = lines;
    _ = job_next_command(c);
    if (job_slots != @as(c_uint, 0)) {
        while (job_slots_used == job_slots) {
            reap_children(1, 0);
        }
    } else if (jobserver_enabled() != 0) while (true) {
        var got_token: c_int = undefined;
        _ = &got_token;
        while (true) {
            if ((4 & db_level) != 0) {
                _ = printf("Need a job token; we %shave children\n", if (children != null) "" else "don't ");
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        if (!(jobserver_tokens != 0)) break;
        jobserver_pre_acquire();
        reap_children(0, 0);
        start_waiting_jobs();
        if (!(jobserver_tokens != 0)) break;
        if (!(children != null)) {
            fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), "INTERNAL: no children as we go to sleep on read");
        }
        got_token = @as(c_int, @bitCast(jobserver_acquire(@intFromBool(waiting_jobs != @as([*c]struct_child, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))))));
        if (got_token == 1) {
            while (true) {
                if ((4 & db_level) != 0) {
                    _ = printf(gettext("Obtained token for child %p (%s).\n"), c, c.*.file.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            break;
        }
    };
    jobserver_tokens +%= 1;
    if ((@as(c_int, 32) & db_level) != 0) {
        var nm: [*c]const u8 = undefined;
        _ = &nm;
        if (!(cmds.*.fileinfo.filenm != null)) {
            nm = gettext("<builtin>");
        } else {
            var n: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((strlen(cmds.*.fileinfo.filenm) +% @as(c_ulong, 1)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 11))))) +% @as(c_ulong, 1)))));
            _ = &n;
            _ = sprintf(n, "%s:%lu", cmds.*.fileinfo.filenm, cmds.*.fileinfo.lineno);
            nm = n;
        }
        if (c.*.file.*.phony != 0) {
            message(0, strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: target is .PHONY"), nm, c.*.file.*.name);
        } else if (c.*.file.*.last_mtime == @as(uintmax_t, 1)) {
            message(0, strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: target does not exist"), nm, c.*.file.*.name);
        } else {
            var newer: [*c]u8 = allocated_variable_expand_for_file("$?", c.*.file);
            _ = &newer;
            if (@as(c_int, @bitCast(@as(c_uint, newer[0]))) != @as(c_int, '\x00')) {
                message(0, (strlen(nm) +% strlen(c.*.file.*.name)) +% strlen(newer), gettext("%s: update target '%s' due to: %s"), nm, c.*.file.*.name, newer);
                free(@as(?*anyopaque, @ptrCast(newer)));
            } else {
                var len: usize = 0;
                _ = &len;
                var d: [*c]struct_dep = undefined;
                _ = &d;
                {
                    d = c.*.file.*.deps;
                    while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (d = d.*.next) if (d.*.file.*.last_mtime == @as(uintmax_t, 1)) {
                        len +%= @as(usize, @bitCast(strlen(d.*.file.*.name) +% @as(c_ulong, 1)));
                    };
                }
                if (!(len != 0)) {
                    message(0, strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: unknown reasons"), nm, c.*.file.*.name);
                } else {
                    var cp: [*c]u8 = blk: {
                        const tmp = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
                        newer = tmp;
                        break :blk tmp;
                    };
                    _ = &cp;
                    {
                        d = c.*.file.*.deps;
                        while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (d = d.*.next) if (d.*.file.*.last_mtime == @as(uintmax_t, 1)) {
                            if (cp > newer) {
                                (blk: {
                                    const ref = &cp;
                                    const tmp = ref.*;
                                    ref.* += 1;
                                    break :blk tmp;
                                }).* = ' ';
                            }
                            cp = stpcpy(cp, d.*.file.*.name);
                        };
                    }
                    message(0, (strlen(nm) +% strlen(c.*.file.*.name)) +% strlen(newer), gettext("%s: update target '%s' due to: %s"), nm, c.*.file.*.name, newer);
                }
            }
        }
    }
    _ = start_waiting_job(c);
    if ((job_slots == @as(c_uint, 1)) or (not_parallel != 0)) while (file_1.*.command_state == @as(c_uint, @bitCast(cs_running))) {
        reap_children(1, 0);
    };
    while (true) {
        output_context = null;
        if (!false) break;
    }
    return;
}
// src/job.c:713:15: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:633:1: warning: unable to translate function, demoted to extern
extern fn reap_children(arg_block: c_int, arg_err: c_int) void;
export fn start_waiting_jobs() void {
    var job: [*c]struct_child = undefined;
    _ = &job;
    if (waiting_jobs == null) return;
    while (true) {
        reap_children(0, 0);
        job = waiting_jobs;
        waiting_jobs = job.*.next;
        if (!((start_waiting_job(job) != 0) and (waiting_jobs != null))) break;
    }
    return;
}
export fn free_childbase(arg_child_1: [*c]struct_childbase) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    if (child_1.*.environment != null) {
        var ep: [*c][*c]u8 = child_1.*.environment;
        _ = &ep;
        while (ep.* != null) {
            free(@as(?*anyopaque, @ptrCast((blk: {
                const ref = &ep;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
        }
        free(@as(?*anyopaque, @ptrCast(child_1.*.environment)));
    }
    free(@as(?*anyopaque, @ptrCast(child_1.*.cmd_name)));
}
export fn construct_command_argv(arg_line: [*c]u8, arg_restp: [*c][*c]u8, arg_file_1: [*c]struct_file, arg_cmd_flags: c_int, arg_batch_filename: [*c][*c]u8) [*c][*c]u8 {
    var line = arg_line;
    _ = &line;
    var restp = arg_restp;
    _ = &restp;
    var file_1 = arg_file_1;
    _ = &file_1;
    var cmd_flags = arg_cmd_flags;
    _ = &cmd_flags;
    var batch_filename = arg_batch_filename;
    _ = &batch_filename;
    var shell: [*c]u8 = undefined;
    _ = &shell;
    var ifs: [*c]u8 = undefined;
    _ = &ifs;
    var shellflags: [*c]u8 = undefined;
    _ = &shellflags;
    var argv: [*c][*c]u8 = undefined;
    _ = &argv;
    {
        var @"var": [*c]struct_variable = undefined;
        _ = &@"var";
        var save: c_int = warn_undefined_variables_flag;
        _ = &save;
        warn_undefined_variables_flag = 0;
        shell = allocated_variable_expand_for_file("$(SHELL)", file_1);
        @"var" = lookup_variable_for_file(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, 1), file_1);
        if (!(@"var" != null)) {
            shellflags = xstrdup("");
        } else if ((posix_pedantic != 0) and (@"var".*.origin == @as(c_uint, @bitCast(o_default)))) {
            shellflags = xstrdup(if ((cmd_flags & 4) != 0) "-c" else "-ec");
        } else {
            shellflags = allocated_variable_expand_for_file(@"var".*.value, file_1);
        }
        ifs = allocated_variable_expand_for_file("$(IFS)", file_1);
        warn_undefined_variables_flag = save;
    }
    argv = construct_command_argv_internal(line, restp, shell, shellflags, ifs, cmd_flags, batch_filename);
    free(@as(?*anyopaque, @ptrCast(shell)));
    free(@as(?*anyopaque, @ptrCast(shellflags)));
    free(@as(?*anyopaque, @ptrCast(ifs)));
    return argv;
}
// src/job.c:2430:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:2354:1: warning: unable to translate function, demoted to extern
extern fn child_execute_job(arg_child_1: [*c]struct_childbase, arg_good_stdin: c_int, arg_argv: [*c][*c]u8) pid_t;
export fn exec_command(arg_argv: [*c][*c]u8, arg_envp: [*c][*c]u8) pid_t {
    var argv = arg_argv;
    _ = &argv;
    var envp = arg_envp;
    _ = &envp;
    var pid: pid_t = -1;
    _ = &pid;
    environ = envp;
    _ = execvp(argv[0], argv);
    while (true) {
        switch (__errno_location().*) {
            2 => {
                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(argv[0]) +% strlen(strerror(__errno_location().*)), "%s: %s", argv[0], strerror(__errno_location().*));
                break;
            },
            8 => {
                {
                    var shell: [*c]const u8 = undefined;
                    _ = &shell;
                    var new_argv: [*c][*c]u8 = undefined;
                    _ = &new_argv;
                    var argc: c_int = undefined;
                    _ = &argc;
                    var i: c_int = 1;
                    _ = &i;
                    shell = getenv("SHELL");
                    if (shell == null) {
                        shell = default_shell;
                    }
                    argc = 1;
                    while ((blk: {
                        const tmp = argc;
                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* != null) {
                        argc += 1;
                    }
                    new_argv = @as([*c][*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, (1 + argc) + 1))) *% @sizeOf([*c]u8)))));
                    new_argv[0] = @as([*c]u8, @ptrCast(@volatileCast(@constCast(shell))));
                    (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk new_argv + @as(usize, @intCast(tmp)) else break :blk new_argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* = argv[0];
                    while (argc > 0) {
                        (blk: {
                            const tmp = i + argc;
                            if (tmp >= 0) break :blk new_argv + @as(usize, @intCast(tmp)) else break :blk new_argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = argc;
                            if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                        argc -= 1;
                    }
                    _ = execvp(shell, new_argv);
                    @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(new_argv[0]) +% strlen(strerror(__errno_location().*)), "%s: %s", new_argv[0], strerror(__errno_location().*));
                    break;
                }
            },
            else => {
                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(argv[0]) +% strlen(strerror(__errno_location().*)), "%s: %s", argv[0], strerror(__errno_location().*));
                break;
            },
        }
        break;
    }
    return pid;
}
export fn unblock_all_sigs() void {
    var empty: sigset_t = undefined;
    _ = &empty;
    _ = sigemptyset(&empty);
    _ = sigprocmask(2, &empty, @as([*c]sigset_t, @ptrFromInt(0)));
}
extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
extern var db_level: c_int;

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern fn set_command_state(file: [*c]struct_file, state: enum_cmd_state_37) void;
extern fn notice_finished_file(file: [*c]struct_file) void;

extern var snapped_deps: c_int;

extern fn chop_commands(cmds: [*c]struct_commands) void;

const struct_pattern_var = extern struct {
    next: [*c]struct_pattern_var = @import("std").mem.zeroes([*c]struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};
extern var env_recursion: c_ulonglong;
extern var variable_buffer: [*c]u8;
extern var current_variable_set_list: [*c]struct_variable_set_list;
extern var default_goal_var: [*c]struct_variable;
extern var shell_var: struct_variable;

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;

extern fn lookup_variable_for_file(name: [*c]const u8, length: usize, file: [*c]struct_file) [*c]struct_variable;

extern var export_all_variables: c_int;

extern fn fd_noinherit(c_int) void;

extern fn jobserver_enabled() c_uint;

extern fn jobserver_release(is_fatal: c_int) void;
extern fn jobserver_signal() void;

extern fn jobserver_pre_acquire() void;
extern fn jobserver_acquire(timeout: c_int) c_uint;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
const struct_goaldep = extern struct {
    next: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    shuf: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_mtime: c_uint = @import("std").mem.zeroes(c_uint),
    staticpattern: c_uint = @import("std").mem.zeroes(c_uint),
    need_2nd_expansion: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_automatic_vars: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    wait_here: c_uint = @import("std").mem.zeroes(c_uint),
    @"error": c_int = @import("std").mem.zeroes(c_int),
    floc: floc = @import("std").mem.zeroes(floc),
};

extern fn shuffle_get_mode() [*c]const u8;

extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;

fn pid2str(arg_pid: pid_t) callconv(.C) [*c]const u8 {
    var pid = arg_pid;
    _ = &pid;
    const pidstring = struct {
        var static: [100]u8 = @import("std").mem.zeroes([100]u8);
    };
    _ = &pidstring;
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&pidstring.static))), "%lu", @as(c_ulong, @bitCast(@as(c_long, pid))));
    return @as([*c]u8, @ptrCast(@alignCast(&pidstring.static)));
}
fn free_child(arg_child_1: [*c]struct_child) callconv(.C) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    output_close(&child_1.*.output);
    if (!(jobserver_tokens != 0)) {
        fatal(@as([*c]floc, @ptrFromInt(0)), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)) +% strlen(child_1.*.file.*.name), "INTERNAL: Freeing child %p (%s) but no tokens left", child_1, child_1.*.file.*.name);
    }
    if ((jobserver_enabled() != 0) and (jobserver_tokens > @as(c_uint, 1))) {
        jobserver_release(1);
        while (true) {
            if ((4 & db_level) != 0) {
                _ = printf(gettext("Released token for child %p (%s).\n"), child_1, child_1.*.file.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    }
    jobserver_tokens -%= 1;
    if (handling_fatal_signal != 0) return;
    if (child_1.*.command_lines != null) {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (i < @as(c_uint, @bitCast(@as(c_uint, child_1.*.file.*.cmds.*.ncommand_lines)))) : (i +%= 1) {
                free(@as(?*anyopaque, @ptrCast(child_1.*.command_lines[i])));
            }
        }
        free(@as(?*anyopaque, @ptrCast(child_1.*.command_lines)));
    }
    free_childbase(@as([*c]struct_childbase, @ptrCast(@alignCast(child_1))));
    free(@as(?*anyopaque, @ptrCast(child_1)));
}
// src/job.c:1490:9: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:1174:1: warning: unable to translate function, demoted to extern
extern fn start_job_command(arg_child_1: [*c]struct_child) callconv(.C) void;
fn load_too_high() callconv(.C) c_int {
    const last_sec = struct {
        var static: f64 = @import("std").mem.zeroes(f64);
    };
    _ = &last_sec;
    const last_now = struct {
        var static: time_t = @import("std").mem.zeroes(time_t);
    };
    _ = &last_now;
    const proc_fd = struct {
        var static: c_int = -2;
    };
    _ = &proc_fd;
    var load: f64 = undefined;
    _ = &load;
    var guess: f64 = undefined;
    _ = &guess;
    var now: time_t = undefined;
    _ = &now;
    if (max_load_average < @as(f64, @floatFromInt(0))) return 0;
    if (proc_fd.static == -2) {
        while (((blk: {
            const tmp = open("/proc/loadavg", 0);
            proc_fd.static = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (proc_fd.static < 0) {
            while (true) {
                if ((4 & db_level) != 0) {
                    _ = printf("Using system load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
        } else {
            while (true) {
                if ((4 & db_level) != 0) {
                    _ = printf("Using /proc/loadavg load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            fd_noinherit(proc_fd.static);
        }
    }
    if (proc_fd.static >= 0) {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(lseek(proc_fd.static, @as(__off_t, 0), 0)))));
            r = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (r >= 0) {
            var avg: [65]u8 = undefined;
            _ = &avg;
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(proc_fd.static, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&avg))))), @as(usize, @bitCast(@as(c_long, @as(c_int, 64)))))))));
                r = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            if (r >= 0) {
                var p: [*c]const u8 = undefined;
                _ = &p;
                avg[@as(c_uint, @intCast(r))] = '\x00';
                p = strchr(@as([*c]u8, @ptrCast(@alignCast(&avg))), @as(c_int, ' '));
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(1)))), @as(c_int, ' '));
                }
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(1)))), @as(c_int, ' '));
                }
                if ((p != null) and ((@as(c_uint, @bitCast(@as(c_uint, p[1]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, 9))) {
                    var cnt: c_uint = make_toui(p + @as(usize, @bitCast(@as(isize, @intCast(1)))), null);
                    _ = &cnt;
                    while (true) {
                        if ((4 & db_level) != 0) {
                            _ = printf("Running: system = %u / make = %u (max requested = %f)\n", cnt, job_slots_used, max_load_average);
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    return @intFromBool(@as(f64, @floatFromInt(cnt)) > max_load_average);
                }
                while (true) {
                    if ((4 & db_level) != 0) {
                        _ = printf("Failed to parse /proc/loadavg: %s\n", @as([*c]u8, @ptrCast(@alignCast(&avg))));
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            }
        }
        if (r < 0) while (true) {
            if ((4 & db_level) != 0) {
                _ = printf("Failed to read /proc/loadavg: %s\n", strerror(__errno_location().*));
                _ = fflush(stdout);
            }
            if (!false) break;
        };
        _ = close(proc_fd.static);
        proc_fd.static = -1;
    }
    __errno_location().* = 0;
    if (getloadavg(&load, 1) != 1) {
        const lossage = struct {
            var static: c_int = -1;
        };
        _ = &lossage;
        if ((lossage.static == -1) or (__errno_location().* != lossage.static)) {
            if (__errno_location().* == 0) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("cannot enforce load limits on this operating system"));
            } else {
                perror_with_name(gettext("cannot enforce load limit: "), "getloadavg");
            }
        }
        lossage.static = __errno_location().*;
        load = 0;
    }
    now = time(null);
    if (last_now.static < now) {
        if (last_now.static == (now - @as(time_t, 1))) {
            last_sec.static = 0.25 * @as(f64, @floatFromInt(job_counter));
        } else {
            last_sec.static = 0.0;
        }
        job_counter = 0;
        last_now.static = now;
    }
    guess = load + (0.25 * (@as(f64, @floatFromInt(job_counter)) + last_sec.static));
    while (true) {
        if ((4 & db_level) != 0) {
            _ = printf("Estimated system load = %f (actual = %f) (max requested = %f)\n", guess, load, max_load_average);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    return @intFromBool(guess >= max_load_average);
}
fn job_next_command(arg_child_1: [*c]struct_child) callconv(.C) c_int {
    var child_1 = arg_child_1;
    _ = &child_1;
    while ((child_1.*.command_ptr == null) or (@as(c_int, @bitCast(@as(c_uint, child_1.*.command_ptr.*))) == @as(c_int, '\x00'))) {
        if (child_1.*.command_line == @as(c_uint, @bitCast(@as(c_uint, child_1.*.file.*.cmds.*.ncommand_lines)))) {
            child_1.*.command_ptr = null;
            child_1.*.file.*.cmds.*.fileinfo.offset = 0;
            return 0;
        } else {
            child_1.*.command_ptr = child_1.*.command_lines[
                blk: {
                    const ref = &child_1.*.command_line;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ];
        }
    }
    child_1.*.file.*.cmds.*.fileinfo.offset = @as(c_ulong, @bitCast(@as(c_ulong, child_1.*.command_line -% @as(c_uint, 1))));
    return 1;
}
fn start_waiting_job(arg_c: [*c]struct_child) callconv(.C) c_int {
    var c = arg_c;
    _ = &c;
    var f: [*c]struct_file = c.*.file;
    _ = &f;
    c.*.remote = @as(c_uint, @bitCast(start_remote_job_p(1)));
    if (!(c.*.remote != 0) and ((job_slots_used > @as(c_uint, 0)) and (load_too_high() != 0))) {
        set_command_state(f, @as(c_uint, @bitCast(cs_running)));
        c.*.next = waiting_jobs;
        waiting_jobs = c;
        return 0;
    }
    start_job_command(c);
    while (true) {
        switch (f.*.command_state) {
            @as(c_uint, 2) => {
                c.*.next = children;
                if (c.*.pid > 0) {
                    while (true) {
                        if ((4 & db_level) != 0) {
                            _ = printf(gettext("Putting child %p (%s) PID %s%s on the chain.\n"), c, c.*.file.*.name, pid2str(c.*.pid), if (c.*.remote != 0) gettext(" (remote)") else "");
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    job_slots_used +%= 1;
                    _ = 0;
                    c.*.jobslot = 1;
                }
                children = c;
                unblock_sigs();
                break;
            },
            @as(c_uint, 0) => {
                f.*.update_status = @as(c_uint, @bitCast(us_success));
                notice_finished_file(f);
                free_child(c);
                break;
            },
            @as(c_uint, 3) => {
                notice_finished_file(f);
                free_child(c);
                break;
            },
            else => {
                _ = 0;
                break;
            },
        }
        break;
    }
    return 1;
}
var good_stdin_used: c_int = 0;
var waiting_jobs: [*c]struct_child = null;
pub export var unixy_shell: c_int = 1;
pub export var job_counter: c_ulong = 0;
extern var fatal_signal_set: sigset_t;
fn block_sigs() callconv(.C) void {
    _ = sigprocmask(0, &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(0)));
}
fn unblock_sigs() callconv(.C) void {
    _ = sigprocmask(1, &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(0)));
}
fn child_error(arg_child_1: [*c]struct_child, arg_exit_code: c_int, arg_exit_sig: c_int, arg_coredump: c_int, arg_ignored: c_int) callconv(.C) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    var exit_code = arg_exit_code;
    _ = &exit_code;
    var exit_sig = arg_exit_sig;
    _ = &exit_sig;
    var coredump = arg_coredump;
    _ = &coredump;
    var ignored = arg_ignored;
    _ = &ignored;
    var pre: [*c]const u8 = "*** ";
    _ = &pre;
    var post: [*c]const u8 = "";
    _ = &post;
    var dump: [*c]const u8 = "";
    _ = &dump;
    var f: [*c]const struct_file = child_1.*.file;
    _ = &f;
    var flocp: [*c]const floc = &f.*.cmds.*.fileinfo;
    _ = &flocp;
    var nm: [*c]const u8 = undefined;
    _ = &nm;
    var smode: [*c]const u8 = undefined;
    _ = &smode;
    var l: usize = undefined;
    _ = &l;
    if ((ignored != 0) and (run_silent != 0)) return;
    if ((exit_sig != 0) and (coredump != 0)) {
        dump = gettext(" (core dumped)");
    }
    if (ignored != 0) {
        pre = "";
        post = gettext(" (ignored)");
    }
    if (!(flocp.*.filenm != null)) {
        nm = gettext("<builtin>");
    } else {
        var a: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((strlen(flocp.*.filenm) +% @as(c_ulong, 6)) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3))) +% @as(c_ulong, 1)))));
        _ = &a;
        _ = sprintf(a, "%s:%lu", flocp.*.filenm, flocp.*.lineno +% flocp.*.offset);
        nm = a;
    }
    l = ((strlen(pre) +% strlen(nm)) +% strlen(f.*.name)) +% strlen(post);
    smode = shuffle_get_mode();
    if (smode != null) {
        var a: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([10]u8) -% @as(c_ulong, 1)) +% strlen(smode)) +% @as(c_ulong, 1)))));
        _ = &a;
        _ = sprintf(a, " shuffle=%s", smode);
        smode = a;
        l +%= @as(usize, @bitCast(strlen(smode)));
    }
    while (true) {
        output_context = if ((&child_1.*.output).*.syncout != 0) &child_1.*.output else null;
        if (!false) break;
    }
    show_goal_error();
    if (exit_sig == 0) {
        @"error"(@as([*c]floc, @ptrFromInt(0)), l +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)), gettext("%s[%s: %s] Error %d%s%s"), pre, nm, f.*.name, exit_code, post, if (smode != null) smode else "");
    } else {
        var s: [*c]const u8 = strsignal(exit_sig);
        _ = &s;
        @"error"(@as([*c]floc, @ptrFromInt(0)), (l +% strlen(s)) +% strlen(dump), "%s[%s: %s] %s%s%s%s", pre, nm, f.*.name, s, dump, post, if (smode != null) smode else "");
    }
    while (true) {
        output_context = null;
        if (!false) break;
    }
}
var dead_children: c_uint = 0;
extern var shell_function_pid: pid_t;
// src/job.c:2988:5: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:2774:1: warning: unable to translate function, demoted to extern
extern fn construct_command_argv_internal(arg_line: [*c]u8, arg_restp: [*c][*c]u8, arg_shell: [*c]const u8, arg_shellflags: [*c]const u8, arg_ifs: [*c]const u8, arg_flags: c_int, arg_batch_filename: [*c][*c]u8) callconv(.C) [*c][*c]u8;
