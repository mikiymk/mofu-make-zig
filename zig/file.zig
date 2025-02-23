const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __intmax_t = c_long;
const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __suseconds_t = c_long;

const __clockid_t = c_int;

const __syscall_slong_t = c_long;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

const clockid_t = __clockid_t;
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
const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};

const sig_atomic_t = __sig_atomic_t;

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

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern fn unlink(__name: [*c]const u8) c_int;

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

extern fn putchar(__c: c_int) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

extern fn gettimeofday(noalias __tv: [*c]struct_timeval, noalias __tz: ?*anyopaque) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn time(__timer: [*c]time_t) time_t;

extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;

extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;

extern var daylight: c_int;
extern var timezone: c_long;

extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;

extern var getdate_err: c_int;

extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

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

const us_none: c_int = 1;

const enum_update_status_36 = c_uint;

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

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

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

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn end_of_token([*c]const u8) [*c]u8;

extern fn find_percent([*c]u8) [*c]u8;

extern fn strcache_iscached(str: [*c]const u8) c_int;

extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

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

extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;
const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;

extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;
extern fn hash_delete(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;

extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;

extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
export fn lookup_file(arg_name: [*c]const u8) [*c]struct_file {
    var name = arg_name;
    _ = &name;
    var f: [*c]struct_file = undefined;
    _ = &f;
    var file_key: struct_file = undefined;
    _ = &file_key;
    _ = @as(c_int, 0);
    while (((@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.')) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(name[@as(c_uint, @intCast(@as(c_int, 1)))]))]))) & @as(c_int, 32768)) != @as(c_int, 0))) and (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 2)))]))) != @as(c_int, '\x00'))) {
        name += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(name.*))]))) & @as(c_int, 32768)) != @as(c_int, 0)) {
            name += 1;
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, name.*))) == @as(c_int, '\x00')) {
        name = "./";
    }
    file_key.hname = name;
    f = @as([*c]struct_file, @ptrCast(@alignCast(hash_find_item(&files, @as(?*const anyopaque, @ptrCast(&file_key))))));
    return f;
}
export fn enter_file(arg_name: [*c]const u8) [*c]struct_file {
    var name = arg_name;
    _ = &name;
    var f: [*c]struct_file = undefined;
    _ = &f;
    var new: [*c]struct_file = undefined;
    _ = &new;
    var file_slot: [*c][*c]struct_file = undefined;
    _ = &file_slot;
    var file_key: struct_file = undefined;
    _ = &file_key;
    _ = @as(c_int, 0);
    _ = @as(c_int, 0);
    file_key.hname = name;
    file_slot = @as([*c][*c]struct_file, @ptrCast(@alignCast(hash_find_slot(&files, @as(?*const anyopaque, @ptrCast(&file_key))))));
    f = file_slot.*;
    if (!((f == null) or (@as(?*anyopaque, @ptrCast(f)) == hash_deleted_item)) and !(f.*.double_colon != null)) {
        f.*.builtin = 0;
        return f;
    }
    new = @as([*c]struct_file, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_file)))));
    new.*.name = blk: {
        const tmp = name;
        new.*.hname = tmp;
        break :blk tmp;
    };
    new.*.update_status = @as(c_uint, @bitCast(us_none));
    if ((f == null) or (@as(?*anyopaque, @ptrCast(f)) == hash_deleted_item)) {
        new.*.last = new;
        _ = hash_insert_at(&files, @as(?*const anyopaque, @ptrCast(new)), @as(?*const anyopaque, @ptrCast(file_slot)));
    } else {
        new.*.double_colon = f;
        f.*.last.*.prev = new;
        f.*.last = new;
    }
    return new;
}
export fn split_prereqs(arg_p: [*c]u8) [*c]struct_dep {
    var p = arg_p;
    _ = &p;
    var new: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_dep), @as(c_int, 256), null, @as(c_int, 64)))));
    _ = &new;
    if (p.* != 0) {
        var ood: [*c]struct_dep = undefined;
        _ = &ood;
        p += 1;
        ood = @as([*c]struct_dep, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_dep), @as(c_int, 1), null, @as(c_int, 64)))));
        if (!(new != null)) {
            new = ood;
        } else {
            var dp: [*c]struct_dep = undefined;
            _ = &dp;
            {
                dp = new;
                while (dp.*.next != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (dp = dp.*.next) {}
            }
            dp.*.next = ood;
        }
        while (ood != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (ood = ood.*.next) {
            ood.*.ignore_mtime = 1;
        }
    }
    return new;
}
export fn enter_prereqs(arg_deps: [*c]struct_dep, arg_stem: [*c]const u8) [*c]struct_dep {
    var deps = arg_deps;
    _ = &deps;
    var stem = arg_stem;
    _ = &stem;
    var d1: [*c]struct_dep = undefined;
    _ = &d1;
    if (deps == null) return null;
    if (stem != null) {
        var pattern: [*c]const u8 = "%";
        _ = &pattern;
        var dp: [*c]struct_dep = deps;
        _ = &dp;
        var dl: [*c]struct_dep = null;
        _ = &dl;
        while (dp != null) {
            var percent: [*c]u8 = undefined;
            _ = &percent;
            var nl: usize = strlen(dp.*.name) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
            _ = &nl;
            var nm: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(nl))));
            _ = &nm;
            _ = memcpy(@as(?*anyopaque, @ptrCast(nm)), @as(?*const anyopaque, @ptrCast(dp.*.name)), nl);
            percent = find_percent(nm);
            if (percent != null) {
                var o: [*c]u8 = undefined;
                _ = &o;
                if (@as(c_int, @bitCast(@as(c_uint, stem[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
                    _ = memmove(@as(?*anyopaque, @ptrCast(percent)), @as(?*const anyopaque, @ptrCast(percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))), strlen(percent));
                    o = variable_buffer_output(variable_buffer, nm, strlen(nm) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
                } else {
                    o = patsubst_expand_pat(variable_buffer, stem, pattern, nm, pattern + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
                }
                if (@as(c_int, @bitCast(@as(c_uint, variable_buffer[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
                    var df: [*c]struct_dep = dp;
                    _ = &df;
                    if (dp == deps) {
                        dp = blk: {
                            const tmp = deps.*.next;
                            deps = tmp;
                            break :blk tmp;
                        };
                    } else {
                        dp = blk: {
                            const tmp = dp.*.next;
                            dl.*.next = tmp;
                            break :blk tmp;
                        };
                    }
                    free(@as(?*anyopaque, @ptrCast(df)));
                    continue;
                }
                dp.*.name = strcache_add_len(variable_buffer, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(o) -% @intFromPtr(variable_buffer))), @sizeOf(u8)))));
            }
            dp.*.stem = stem;
            dp.*.staticpattern = 1;
            dl = dp;
            dp = dp.*.next;
        }
    }
    {
        d1 = deps;
        while (d1 != null) : (d1 = d1.*.next) {
            if (d1.*.need_2nd_expansion != 0) continue;
            d1.*.file = lookup_file(d1.*.name);
            if (d1.*.file == null) {
                d1.*.file = enter_file(d1.*.name);
            }
            d1.*.staticpattern = 0;
            d1.*.name = null;
            if (!(stem != null)) {
                d1.*.file.*.is_explicit = 1;
            }
        }
    }
    return deps;
}
export fn expand_deps(arg_f: [*c]struct_file) void {
    var f = arg_f;
    _ = &f;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var dp: [*c][*c]struct_dep = undefined;
    _ = &dp;
    var fstem: [*c]const u8 = undefined;
    _ = &fstem;
    var initialized: c_int = 0;
    _ = &initialized;
    var changed_dep: c_int = 0;
    _ = &changed_dep;
    if (f.*.snapped != 0) return;
    f.*.snapped = 1;
    dp = &f.*.deps;
    d = f.*.deps;
    while (d != null) {
        var p: [*c]u8 = undefined;
        _ = &p;
        var new: [*c]struct_dep = undefined;
        _ = &new;
        var next: [*c]struct_dep = undefined;
        _ = &next;
        if (!(d.*.name != null) or !(d.*.need_2nd_expansion != 0)) {
            dp = &d.*.next;
            d = d.*.next;
            continue;
        }
        if (d.*.staticpattern != 0) {
            var cs: [*c]const u8 = d.*.name;
            _ = &cs;
            var nperc: usize = 0;
            _ = &nperc;
            while ((blk: {
                const tmp = strchr(cs, @as(c_int, '%'));
                cs = tmp;
                break :blk tmp;
            }) != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                nperc +%= 1;
                cs += 1;
            }
            if (nperc != 0) {
                var slen: usize = (strlen(d.*.name) +% nperc) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
                _ = &slen;
                var pcs: [*c]const u8 = d.*.name;
                _ = &pcs;
                var name: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(slen))));
                _ = &name;
                var s: [*c]u8 = name;
                _ = &s;
                cs = strchr(pcs, @as(c_int, '%'));
                while (cs != null) {
                    s = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(s)), @as(?*const anyopaque, @ptrCast(pcs)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cs) -% @intFromPtr(pcs))), @sizeOf(u8))))))));
                    (blk: {
                        const ref = &s;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '$';
                    (blk: {
                        const ref = &s;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '*';
                    pcs = blk: {
                        const ref = &cs;
                        ref.* += 1;
                        break :blk ref.*;
                    };
                    cs = strchr(end_of_token(cs), @as(c_int, '%'));
                }
                _ = strcpy(s, pcs);
                free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(d.*.name)))))));
                d.*.name = name;
            }
        }
        if (!(initialized != 0)) {
            initialize_file_variables(f, @as(c_int, 0));
            initialized = 1;
        }
        set_file_variables(f, if (d.*.stem != null) d.*.stem else f.*.stem);
        p = variable_expand_for_file(d.*.name, f);
        free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(d.*.name)))))));
        new = split_prereqs(p);
        if (new == null) {
            dp.* = d.*.next;
            changed_dep = 1;
            free(@as(?*anyopaque, @ptrCast(d)));
            d = dp.*;
            continue;
        }
        fstem = d.*.stem;
        next = d.*.next;
        changed_dep = 1;
        free(@as(?*anyopaque, @ptrCast(d)));
        dp.* = new;
        {
            _ = blk: {
                dp = &new;
                break :blk blk_1: {
                    const tmp = new;
                    d = tmp;
                    break :blk_1 tmp;
                };
            };
            while (d != null) : (_ = blk: {
                dp = &d.*.next;
                break :blk blk_1: {
                    const tmp = d.*.next;
                    d = tmp;
                    break :blk_1 tmp;
                };
            }) {
                d.*.file = lookup_file(d.*.name);
                if (d.*.file == null) {
                    d.*.file = enter_file(d.*.name);
                }
                d.*.name = null;
                d.*.stem = fstem;
                if (!(fstem != null)) {
                    d.*.file.*.is_explicit = 1;
                }
            }
        }
        dp.* = next;
        d = dp.*;
    }
    if (changed_dep != 0) {
        shuffle_deps_recursive(f.*.deps);
    }
}
export fn expand_extra_prereqs(arg_extra: [*c]const struct_variable) [*c]struct_dep {
    var extra = arg_extra;
    _ = &extra;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var prereqs: [*c]struct_dep = if (extra != null) split_prereqs(variable_expand(extra.*.value)) else null;
    _ = &prereqs;
    {
        d = prereqs;
        while (d != null) : (d = d.*.next) {
            d.*.file = lookup_file(d.*.name);
            if (!(d.*.file != null)) {
                d.*.file = enter_file(d.*.name);
            }
            d.*.name = null;
            d.*.ignore_automatic_vars = 1;
        }
    }
    return prereqs;
}
export fn remove_intermediates(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    var file_slot: [*c][*c]struct_file = undefined;
    _ = &file_slot;
    var file_end: [*c][*c]struct_file = undefined;
    _ = &file_end;
    var doneany: c_int = 0;
    _ = &doneany;
    if ((((question_flag != 0) or (touch_flag != 0)) or (all_secondary != 0)) or (no_intermediates != 0)) return;
    if ((sig != 0) and (just_print_flag != 0)) return;
    file_slot = @as([*c][*c]struct_file, @ptrCast(@alignCast(files.ht_vec)));
    file_end = file_slot + files.ht_size;
    while (file_slot < file_end) : (file_slot += 1) if (!((file_slot.* == null) or (@as(?*anyopaque, @ptrCast(file_slot.*)) == hash_deleted_item))) {
        var f: [*c]struct_file = file_slot.*;
        _ = &f;
        if (((((f.*.intermediate != 0) and ((f.*.dontcare != 0) or !(f.*.precious != 0))) and !(f.*.secondary != 0)) and !(f.*.notintermediate != 0)) and !(f.*.cmd_target != 0)) {
            var status: c_int = undefined;
            _ = &status;
            if (f.*.update_status == @as(c_uint, @bitCast(us_none))) continue;
            if (just_print_flag != 0) {
                status = 0;
            } else {
                status = unlink(f.*.name);
                if ((status < @as(c_int, 0)) and (__errno_location().* == @as(c_int, 2))) continue;
            }
            if (!(f.*.dontcare != 0)) {
                if (sig != 0) {
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f.*.name), gettext("*** Deleting intermediate file '%s'"), f.*.name);
                } else {
                    if (!(doneany != 0)) while (true) {
                        if ((@as(c_int, 1) & db_level) != 0) {
                            _ = printf(gettext("Removing intermediate files...\n"));
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    };
                    if (!(run_silent != 0)) {
                        if (!(doneany != 0)) {
                            _ = fputs("rm ", stdout);
                            doneany = 1;
                        } else {
                            _ = putchar(@as(c_int, ' '));
                        }
                        _ = fputs(f.*.name, stdout);
                        _ = fflush(stdout);
                    }
                }
                if (status < @as(c_int, 0)) {
                    perror_with_name("\nunlink: ", f.*.name);
                    doneany = 0;
                }
            }
        }
    };
    if ((doneany != 0) and !(sig != 0)) {
        _ = putchar(@as(c_int, '\n'));
        _ = fflush(stdout);
    }
}
const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
export fn snap_deps() void {
    var f: [*c]struct_file = undefined;
    _ = &f;
    var f2: [*c]struct_file = undefined;
    _ = &f2;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    snapped_deps = 1;
    {
        f = lookup_file(".PRECIOUS");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.precious = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".LOW_RESOLUTION_TIME");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.low_resolution_time = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".PHONY");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.phony = 1;
                    f2.*.is_target = 1;
                    f2.*.last_mtime = 1;
                    f2.*.mtime_before_update = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".NOTINTERMEDIATE");
        while (f != null) : (f = f.*.prev) if (f.*.deps != null) {
            {
                d = f.*.deps;
                while (d != null) : (d = d.*.next) {
                    f2 = d.*.file;
                    while (f2 != null) : (f2 = f2.*.prev) {
                        f2.*.notintermediate = 1;
                    }
                }
            }
        } else {
            no_intermediates = 1;
        };
    }
    {
        f = lookup_file(".INTERMEDIATE");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) if (f2.*.notintermediate != 0) {
                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f2.*.name), gettext("%s cannot be both .NOTINTERMEDIATE and .INTERMEDIATE"), f2.*.name);
                } else {
                    f2.*.intermediate = 1;
                };
            }
        }
    }
    {
        f = lookup_file(".SECONDARY");
        while (f != null) : (f = f.*.prev) if (f.*.deps != null) {
            {
                d = f.*.deps;
                while (d != null) : (d = d.*.next) {
                    f2 = d.*.file;
                    while (f2 != null) : (f2 = f2.*.prev) if (f2.*.notintermediate != 0) {
                        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f2.*.name), gettext("%s cannot be both .NOTINTERMEDIATE and .SECONDARY"), f2.*.name);
                    } else {
                        f2.*.intermediate = blk: {
                            const tmp = @as(c_uint, @bitCast(@as(c_int, 1)));
                            f2.*.secondary = tmp;
                            break :blk tmp;
                        };
                    };
                }
            }
        } else {
            all_secondary = 1;
        };
    }
    if ((no_intermediates != 0) and (all_secondary != 0)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".NOTINTERMEDIATE and .SECONDARY are mutually exclusive"));
    }
    f = lookup_file(".EXPORT_ALL_VARIABLES");
    if ((f != null) and (f.*.is_target != 0)) {
        export_all_variables = 1;
    }
    f = lookup_file(".IGNORE");
    if ((f != null) and (f.*.is_target != 0)) {
        if (f.*.deps == null) {
            ignore_errors_flag = 1;
        } else {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.command_flags |= @as(c_int, 4);
                }
            }
        }
    }
    f = lookup_file(".SILENT");
    if ((f != null) and (f.*.is_target != 0)) {
        if (f.*.deps == null) {
            run_silent = 1;
        } else {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.command_flags |= @as(c_int, 2);
                }
            }
        }
    }
    f = lookup_file(".NOTPARALLEL");
    if ((f != null) and (f.*.is_target != 0)) {
        var d2: [*c]struct_dep = undefined;
        _ = &d2;
        if (!(f.*.deps != null)) {
            not_parallel = 1;
        } else {
            d = f.*.deps;
            while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (f2 = f2.*.prev) if (f2.*.deps != null) {
                    d2 = f2.*.deps.*.next;
                    while (d2 != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d2 = d2.*.next) {
                        d2.*.wait_here = 1;
                    }
                };
            }
        }
    }
    {
        var prereqs: [*c]struct_dep = expand_extra_prereqs(lookup_variable(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
        _ = &prereqs;
        hash_map_arg(&files, &snap_file, @as(?*anyopaque, @ptrCast(prereqs)));
        free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(prereqs))));
    }
}
export fn rename_file(arg_from_file: [*c]struct_file, arg_to_hname: [*c]const u8) void {
    var from_file = arg_from_file;
    _ = &from_file;
    var to_hname = arg_to_hname;
    _ = &to_hname;
    rehash_file(from_file, to_hname);
    while (from_file != null) {
        from_file.*.name = from_file.*.hname;
        from_file = from_file.*.prev;
    }
}
export fn rehash_file(arg_from_file: [*c]struct_file, arg_to_hname: [*c]const u8) void {
    var from_file = arg_from_file;
    _ = &from_file;
    var to_hname = arg_to_hname;
    _ = &to_hname;
    var file_key: struct_file = undefined;
    _ = &file_key;
    var file_slot: [*c][*c]struct_file = undefined;
    _ = &file_slot;
    var to_file: [*c]struct_file = undefined;
    _ = &to_file;
    var deleted_file: [*c]struct_file = undefined;
    _ = &deleted_file;
    var f: [*c]struct_file = undefined;
    _ = &f;
    from_file.*.builtin = 0;
    file_key.hname = to_hname;
    if (!(file_hash_cmp(@as(?*const anyopaque, @ptrCast(from_file)), @as(?*const anyopaque, @ptrCast(&file_key))) != 0)) return;
    file_key.hname = from_file.*.hname;
    while (from_file.*.renamed != null) {
        from_file = from_file.*.renamed;
    }
    if (file_hash_cmp(@as(?*const anyopaque, @ptrCast(from_file)), @as(?*const anyopaque, @ptrCast(&file_key))) != 0) {
        abort();
    }
    deleted_file = @as([*c]struct_file, @ptrCast(@alignCast(hash_delete(&files, @as(?*const anyopaque, @ptrCast(from_file))))));
    if (deleted_file != from_file) {
        abort();
    }
    file_key.hname = to_hname;
    file_slot = @as([*c][*c]struct_file, @ptrCast(@alignCast(hash_find_slot(&files, @as(?*const anyopaque, @ptrCast(&file_key))))));
    to_file = file_slot.*;
    from_file.*.hname = to_hname;
    {
        f = from_file.*.double_colon;
        while (f != null) : (f = f.*.prev) {
            f.*.hname = to_hname;
        }
    }
    if ((to_file == null) or (@as(?*anyopaque, @ptrCast(to_file)) == hash_deleted_item)) {
        _ = hash_insert_at(&files, @as(?*const anyopaque, @ptrCast(from_file)), @as(?*const anyopaque, @ptrCast(file_slot)));
        return;
    }
    if (from_file.*.cmds != null) {
        if (to_file.*.cmds == null) {
            to_file.*.cmds = from_file.*.cmds;
        } else if (from_file.*.cmds != to_file.*.cmds) {
            var l: usize = strlen(from_file.*.name);
            _ = &l;
            if (to_file.*.cmds.*.fileinfo.filenm != null) {
                @"error"(&from_file.*.cmds.*.fileinfo, (l +% strlen(to_file.*.cmds.*.fileinfo.filenm)) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))), gettext("Recipe was specified for file '%s' at %s:%lu,"), from_file.*.name, from_file.*.cmds.*.fileinfo.filenm, from_file.*.cmds.*.fileinfo.lineno);
            } else {
                @"error"(&from_file.*.cmds.*.fileinfo, l, gettext("Recipe for file '%s' was found by implicit rule search,"), from_file.*.name);
            }
            l +%= @as(usize, @bitCast(strlen(to_hname)));
            @"error"(&from_file.*.cmds.*.fileinfo, l, gettext("but '%s' is now considered the same file as '%s'."), from_file.*.name, to_hname);
            @"error"(&from_file.*.cmds.*.fileinfo, l, gettext("Recipe for '%s' will be ignored in favor of the one for '%s'."), from_file.*.name, to_hname);
        }
    }
    if (to_file.*.deps == null) {
        to_file.*.deps = from_file.*.deps;
    } else {
        var deps: [*c]struct_dep = to_file.*.deps;
        _ = &deps;
        while (deps.*.next != null) {
            deps = deps.*.next;
        }
        deps.*.next = from_file.*.deps;
    }
    merge_variable_set_lists(&to_file.*.variables, from_file.*.variables);
    if (((to_file.*.double_colon != null) and (from_file.*.is_target != 0)) and !(from_file.*.double_colon != null)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(from_file.*.name) +% strlen(to_hname), gettext("can't rename single-colon '%s' to double-colon '%s'"), from_file.*.name, to_hname);
    }
    if (!(to_file.*.double_colon != null) and (from_file.*.double_colon != null)) {
        if (to_file.*.is_target != 0) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(from_file.*.name) +% strlen(to_hname), gettext("can't rename double-colon '%s' to single-colon '%s'"), from_file.*.name, to_hname);
        } else {
            to_file.*.double_colon = from_file.*.double_colon;
        }
    }
    if (from_file.*.last_mtime > to_file.*.last_mtime) {
        to_file.*.last_mtime = from_file.*.last_mtime;
    }
    to_file.*.mtime_before_update = from_file.*.mtime_before_update;
    to_file.*.precious |= from_file.*.precious;
    to_file.*.loaded |= from_file.*.loaded;
    to_file.*.tried_implicit |= from_file.*.tried_implicit;
    to_file.*.updating |= from_file.*.updating;
    to_file.*.updated |= from_file.*.updated;
    to_file.*.is_target |= from_file.*.is_target;
    to_file.*.cmd_target |= from_file.*.cmd_target;
    to_file.*.phony |= from_file.*.phony;
    to_file.*.is_explicit |= from_file.*.is_explicit;
    to_file.*.secondary |= from_file.*.secondary;
    to_file.*.notintermediate |= from_file.*.notintermediate;
    to_file.*.ignore_vpath |= from_file.*.ignore_vpath;
    to_file.*.snapped |= from_file.*.snapped;
    to_file.*.builtin = 0;
    from_file.*.renamed = to_file;
}
export fn set_command_state(arg_file_1: [*c]struct_file, arg_state: enum_cmd_state_37) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var state = arg_state;
    _ = &state;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    file_1.*.command_state = state;
    {
        d = file_1.*.also_make;
        while (d != null) : (d = d.*.next) if (state > d.*.file.*.command_state) {
            d.*.file.*.command_state = state;
        };
    }
}

export fn init_hash_files() void {
    hash_init(&files, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1000)))), &file_hash_1, &file_hash_2, &file_hash_cmp);
}
export fn verify_file_data_base() void {
    hash_map(&files, &verify_file);
}
export fn build_target_list(arg_value: [*c]u8) [*c]u8 {
    var value = arg_value;
    _ = &value;
    const last_targ_count = struct {
        var static: c_ulong = 0;
    };
    _ = &last_targ_count;
    if (files.ht_fill != last_targ_count.static) {
        var max: usize = ((strlen(value) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))));
        _ = &max;
        var len: usize = undefined;
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var fp: [*c][*c]struct_file = @as([*c][*c]struct_file, @ptrCast(@alignCast(files.ht_vec)));
        _ = &fp;
        var end: [*c][*c]struct_file = &fp[files.ht_size];
        _ = &end;
        value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(value)), max))));
        p = value;
        len = 0;
        while (fp < end) : (fp += 1) if (!((fp.* == null) or (@as(?*anyopaque, @ptrCast(fp.*)) == hash_deleted_item)) and (fp.*.*.is_target != 0)) {
            var f: [*c]struct_file = fp.*;
            _ = &f;
            var l: usize = strlen(f.*.name);
            _ = &l;
            len +%= l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            if (len > max) {
                var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(value))), @sizeOf(u8))));
                _ = &off;
                max +%= (((l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) / @as(usize, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 500))));
                value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(value)), max))));
                p = &value[off];
            }
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(f.*.name)), l))));
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        };
        (p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* = '\x00';
        last_targ_count.static = files.ht_fill;
    }
    return value;
}
export fn print_prereqs(arg_deps: [*c]const struct_dep) void {
    var deps = arg_deps;
    _ = &deps;
    var ood: [*c]const struct_dep = null;
    _ = &ood;
    while (deps != null) : (deps = deps.*.next) if (!(deps.*.ignore_mtime != 0)) {
        _ = printf(" %s%s", if (deps.*.wait_here != 0) ".WAIT " else "", if (deps.*.name != null) deps.*.name else deps.*.file.*.name);
    } else if (!(ood != null)) {
        ood = deps;
    };
    if (ood != null) {
        _ = printf(" | %s%s", if (ood.*.wait_here != 0) ".WAIT " else "", if (ood.*.name != null) ood.*.name else ood.*.file.*.name);
        {
            ood = ood.*.next;
            while (ood != null) : (ood = ood.*.next) if (ood.*.ignore_mtime != 0) {
                _ = printf(" %s%s", if (ood.*.wait_here != 0) ".WAIT " else "", if (ood.*.name != null) ood.*.name else ood.*.file.*.name);
            };
        }
    }
    _ = putchar(@as(c_int, '\n'));
}
export fn print_file_data_base() void {
    _ = puts(gettext("\n# Files"));
    hash_map(&files, &print_file);
    _ = fputs(gettext("\n# files hash-table stats:\n# "), stdout);
    hash_print_stats(&files, stdout);
}

export fn file_timestamp_cons(arg_fname: [*c]const u8, arg_stamp: time_t, arg_ns: c_long) uintmax_t {
    var fname = arg_fname;
    _ = &fname;
    var stamp = arg_stamp;
    _ = &stamp;
    var ns = arg_ns;
    _ = &ns;
    var offset: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(@as(c_long, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1)))) + (if (true) ns else @as(c_long, @bitCast(@as(c_long, @as(c_int, 0)))))))));
    _ = &offset;
    var s: uintmax_t = @as(uintmax_t, @bitCast(stamp));
    _ = &s;
    var product: uintmax_t = s << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0));
    _ = &product;
    var ts: uintmax_t = product +% @as(uintmax_t, @bitCast(@as(c_long, offset)));
    _ = &ts;
    if (!(((s <= (((((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0)))) and (product <= ts)) and (ts <= (((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1)))))))) {
        var buf: [43]u8 = undefined;
        _ = &buf;
        var f: [*c]const u8 = if (fname != null) fname else @as([*c]const u8, @ptrCast(@alignCast(gettext("Current time"))));
        _ = &f;
        ts = if (s <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1)))) else ((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))));
        file_timestamp_sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), ts);
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f) +% strlen(@as([*c]u8, @ptrCast(@alignCast(&buf)))), gettext("%s: Timestamp out of range; substituting %s"), f, @as([*c]u8, @ptrCast(@alignCast(&buf))));
    }
    return ts;
}
export fn file_timestamp_now(arg_resolution: [*c]c_int) uintmax_t {
    var resolution = arg_resolution;
    _ = &resolution;
    var r: c_int = undefined;
    _ = &r;
    var s: time_t = undefined;
    _ = &s;
    var ns: c_int = undefined;
    _ = &ns;
    {
        var timespec_1: struct_timespec = undefined;
        _ = &timespec_1;
        if (clock_gettime(@as(c_int, 0), &timespec_1) == @as(c_int, 0)) {
            r = 1;
            s = timespec_1.tv_sec;
            ns = @as(c_int, @bitCast(@as(c_int, @truncate(timespec_1.tv_nsec))));
            {
                resolution.* = r;
                return file_timestamp_cons(null, s, @as(c_long, @bitCast(@as(c_long, ns))));
            }
        }
    }
    {
        var timeval_1: struct_timeval = undefined;
        _ = &timeval_1;
        if (gettimeofday(&timeval_1, null) == @as(c_int, 0)) {
            r = 1000;
            s = timeval_1.tv_sec;
            ns = @as(c_int, @bitCast(@as(c_int, @truncate(timeval_1.tv_usec * @as(__suseconds_t, @bitCast(@as(c_long, @as(c_int, 1000))))))));
            {
                resolution.* = r;
                return file_timestamp_cons(null, s, @as(c_long, @bitCast(@as(c_long, ns))));
            }
        }
    }
    r = 1000000000;
    s = time(@as([*c]time_t, @ptrFromInt(@as(c_int, 0))));
    ns = 0;
    resolution.* = r;
    return file_timestamp_cons(null, s, @as(c_long, @bitCast(@as(c_long, ns))));
}
export fn file_timestamp_sprintf(arg_p: [*c]u8, arg_ts: uintmax_t) void {
    var p = arg_p;
    _ = &p;
    var ts = arg_ts;
    _ = &ts;
    var t: time_t = @as(time_t, @bitCast((ts -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))));
    _ = &t;
    var tm_1: [*c]struct_tm = localtime(&t);
    _ = &tm_1;
    if (tm_1 != null) {
        var year: intmax_t = @as(intmax_t, @bitCast(@as(c_long, tm_1.*.tm_year)));
        _ = &year;
        _ = sprintf(p, "%04ld-%02d-%02d %02d:%02d:%02d", year + @as(intmax_t, @bitCast(@as(c_long, @as(c_int, 1900)))), tm_1.*.tm_mon + @as(c_int, 1), tm_1.*.tm_mday, tm_1.*.tm_hour, tm_1.*.tm_min, tm_1.*.tm_sec);
    } else if (t < @as(time_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        _ = sprintf(p, "%ld", @as(intmax_t, @bitCast(t)));
    } else {
        _ = sprintf(p, "%lu", @as(uintmax_t, @bitCast(t)));
    }
    p += @as([*c]u8, @ptrFromInt(strlen(p)));
    _ = sprintf(p, ".%09d", @as(c_int, @bitCast(@as(c_uint, @truncate((ts -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) & @as(uintmax_t, @bitCast(@as(c_long, (@as(c_int, 1) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) - @as(c_int, 1)))))))));
    p += @as([*c]u8, @ptrFromInt(strlen(p) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '0')) {
        p -= 1;
    }
    p += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '.')))));
    p.* = '\x00';
}

extern var snapped_deps: c_int;
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
extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: [*c]const struct_dep) [*c]struct_dep;

const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

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

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;

extern fn print_commands(cmds: [*c]const struct_commands) void;

extern fn set_file_variables(file: [*c]struct_file, stem: [*c]const u8) void;
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
extern fn variable_buffer_output(ptr: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;
extern fn variable_expand(line: [*c]const u8) [*c]u8;
extern fn variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;

extern fn patsubst_expand_pat(o: [*c]u8, text: [*c]const u8, pattern: [*c]const u8, replace: [*c]const u8, pattern_percent: [*c]const u8, replace_percent: [*c]const u8) [*c]u8;

extern fn initialize_file_variables(file: [*c]struct_file, reading: c_int) void;
extern fn print_file_variables(file: [*c]const struct_file) void;
extern fn print_target_variables(file: [*c]const struct_file) void;
extern fn merge_variable_set_lists(to_list: [*c][*c]struct_variable_set_list, from_list: [*c]struct_variable_set_list) void;

extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) [*c]struct_variable;

extern var export_all_variables: c_int;
extern var db_level: c_int;

extern fn shuffle_deps_recursive(g: [*c]struct_dep) void;
fn file_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const struct_file, @ptrCast(@alignCast(key))).*.hname)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn file_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const struct_file, @ptrCast(@alignCast(key))).*.hname;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn file_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    while (true) {
        return if (@as([*c]const struct_file, @ptrCast(@alignCast(x))).*.hname == @as([*c]const struct_file, @ptrCast(@alignCast(y))).*.hname) @as(c_int, 0) else strcmp(@as([*c]const struct_file, @ptrCast(@alignCast(x))).*.hname, @as([*c]const struct_file, @ptrCast(@alignCast(y))).*.hname);
    }
    return 0;
}
var files: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);
var all_secondary: c_int = 0;
fn snap_file(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var f: [*c]struct_file = @as([*c]struct_file, @ptrCast(@volatileCast(@constCast(item))));
    _ = &f;
    var prereqs: [*c]struct_dep = null;
    _ = &prereqs;
    if (!(second_expansion != 0)) {
        f.*.updating = 0;
    }
    if ((all_secondary != 0) and !(f.*.notintermediate != 0)) {
        f.*.intermediate = 1;
    }
    if (((no_intermediates != 0) and !(f.*.intermediate != 0)) and !(f.*.secondary != 0)) {
        f.*.notintermediate = 1;
    }
    if (f.*.variables != null) {
        prereqs = expand_extra_prereqs(lookup_variable_in_set(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), f.*.variables.*.set));
    } else if (f.*.is_target != 0) {
        prereqs = copy_dep_chain(@as([*c]const struct_dep, @ptrCast(@alignCast(arg))));
    }
    if (prereqs != null) {
        var d: [*c]struct_dep = undefined;
        _ = &d;
        {
            d = prereqs;
            while (d != null) : (d = d.*.next) if ((f.*.name == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, f.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, f.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(f.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) break;
        }
        if (d != null) {
            free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(prereqs))));
        } else if (!(f.*.deps != null)) {
            f.*.deps = prereqs;
        } else {
            d = f.*.deps;
            while (d.*.next != null) {
                d = d.*.next;
            }
            d.*.next = prereqs;
        }
    }
}
fn print_file(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var f: [*c]const struct_file = @as([*c]const struct_file, @ptrCast(@alignCast(item)));
    _ = &f;
    if ((no_builtin_rules_flag != 0) and (f.*.builtin != 0)) return;
    _ = putchar(@as(c_int, '\n'));
    if ((f.*.cmds != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.cmds.*.recipe_prefix))) != @as(c_int, @bitCast(@as(c_uint, cmd_prefix))))) {
        _ = fputs(".RECIPEPREFIX = ", stdout);
        cmd_prefix = f.*.cmds.*.recipe_prefix;
        if (@as(c_int, @bitCast(@as(c_uint, cmd_prefix))) != @as(c_int, '\t')) {
            _ = putchar(@as(c_int, @bitCast(@as(c_uint, cmd_prefix))));
        }
        _ = putchar(@as(c_int, '\n'));
    }
    if (f.*.variables != null) {
        print_target_variables(f);
    }
    if (!(f.*.is_target != 0)) {
        _ = puts(gettext("# Not a target:"));
    }
    _ = printf("%s:%s", f.*.name, if (f.*.double_colon != null) ":" else "");
    print_prereqs(f.*.deps);
    if (f.*.precious != 0) {
        _ = puts(gettext("#  Precious file (prerequisite of .PRECIOUS)."));
    }
    if (f.*.phony != 0) {
        _ = puts(gettext("#  Phony target (prerequisite of .PHONY)."));
    }
    if (f.*.cmd_target != 0) {
        _ = puts(gettext("#  Command line target."));
    }
    if (f.*.dontcare != 0) {
        _ = puts(gettext("#  A default, MAKEFILES, or -include/sinclude makefile."));
    }
    if (f.*.builtin != 0) {
        _ = puts(gettext("#  Builtin rule"));
    }
    _ = puts(if (f.*.tried_implicit != 0) gettext("#  Implicit rule search has been done.") else gettext("#  Implicit rule search has not been done."));
    if (f.*.stem != null) {
        _ = printf(gettext("#  Implicit/static pattern stem: '%s'\n"), f.*.stem);
    }
    if (f.*.intermediate != 0) {
        _ = puts(gettext("#  File is an intermediate prerequisite."));
    }
    if (f.*.notintermediate != 0) {
        _ = puts(gettext("#  File is a prerequisite of .NOTINTERMEDIATE."));
    }
    if (f.*.secondary != 0) {
        _ = puts(gettext("#  File is secondary (prerequisite of .SECONDARY)."));
    }
    if (f.*.also_make != null) {
        var d: [*c]const struct_dep = undefined;
        _ = &d;
        _ = fputs(gettext("#  Also makes:"), stdout);
        {
            d = f.*.also_make;
            while (d != null) : (d = d.*.next) {
                _ = printf(" %s", if (d.*.name != null) d.*.name else d.*.file.*.name);
            }
        }
        _ = putchar(@as(c_int, '\n'));
    }
    if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        _ = puts(gettext("#  Modification time never checked."));
    } else if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
        _ = puts(gettext("#  File does not exist."));
    } else if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2))))) {
        _ = puts(gettext("#  File is very old."));
    } else {
        var buf: [43]u8 = undefined;
        _ = &buf;
        file_timestamp_sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), f.*.last_mtime);
        _ = printf(gettext("#  Last modified %s\n"), @as([*c]u8, @ptrCast(@alignCast(&buf))));
    }
    _ = puts(if (f.*.updated != 0) gettext("#  File has been updated.") else gettext("#  File has not been updated."));
    while (true) {
        switch (f.*.command_state) {
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                _ = puts(gettext("#  Recipe currently running (THIS IS A BUG)."));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                _ = puts(gettext("#  Dependencies recipe running (THIS IS A BUG)."));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 3))) => {
                while (true) {
                    switch (f.*.update_status) {
                        @as(c_uint, @bitCast(@as(c_int, 1))) => break,
                        @as(c_uint, @bitCast(@as(c_int, 0))) => {
                            _ = puts(gettext("#  Successfully updated."));
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 2))) => {
                            _ = @as(c_int, 0);
                            _ = puts(gettext("#  Needs to be updated (-q is set)."));
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 3))) => {
                            _ = puts(gettext("#  Failed to be updated."));
                            break;
                        },
                        else => {},
                    }
                    break;
                }
                break;
            },
            else => {
                _ = puts(gettext("#  Invalid value in 'command_state' member!"));
                _ = fflush(stdout);
                _ = fflush(stderr);
                abort();
            },
        }
        break;
    }
    if (f.*.variables != null) {
        print_file_variables(f);
    }
    if (f.*.cmds != null) {
        print_commands(f.*.cmds);
    }
    if (f.*.prev != null) {
        print_file(@as(?*const anyopaque, @ptrCast(f.*.prev)));
    }
}
fn verify_file(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var f: [*c]const struct_file = @as([*c]const struct_file, @ptrCast(@alignCast(item)));
    _ = &f;
    var d: [*c]const struct_dep = undefined;
    _ = &d;
    while (true) {
        if (((f.*.name != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.name[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.name) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.name), gettext("%s: Field '%s' not cached: %s"), f.*.name, "name", f.*.name);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.hname != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.hname[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.hname) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.hname), gettext("%s: Field '%s' not cached: %s"), f.*.name, "hname", f.*.hname);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.vpath != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.vpath[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.vpath) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.vpath), gettext("%s: Field '%s' not cached: %s"), f.*.name, "vpath", f.*.vpath);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.stem != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.stem[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.stem) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.stem), gettext("%s: Field '%s' not cached: %s"), f.*.name, "stem", f.*.stem);
        }
        if (!false) break;
    }
    {
        d = f.*.deps;
        while (d != null) : (d = d.*.next) {
            if (!(d.*.need_2nd_expansion != 0)) while (true) {
                if (((d.*.name != null) and (@as(c_int, @bitCast(@as(c_uint, d.*.name[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(d.*.name) != 0)) {
                    @"error"(null, (strlen(d.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(d.*.name), gettext("%s: Field '%s' not cached: %s"), d.*.name, "name", d.*.name);
                }
                if (!false) break;
            };
            while (true) {
                if (((d.*.stem != null) and (@as(c_int, @bitCast(@as(c_uint, d.*.stem[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(d.*.stem) != 0)) {
                    @"error"(null, (strlen(d.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(d.*.stem), gettext("%s: Field '%s' not cached: %s"), d.*.name, "stem", d.*.stem);
                }
                if (!false) break;
            }
        }
    }
}
