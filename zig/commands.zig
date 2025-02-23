const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

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

const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};

extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

const sig_atomic_t = __sig_atomic_t;

const __sighandler_t = ?*const fn (c_int) callconv(.C) void;

extern fn signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn kill(__pid: __pid_t, __sig: c_int) c_int;

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

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

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

extern fn exit(__status: c_int) noreturn;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

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

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

const o_automatic: c_int = 6;

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

extern fn temp_stdin_unlink() void;

extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn make_pid() pid_t;
extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;

extern fn ar_name([*c]const u8) c_int;

extern fn ar_member_date([*c]const u8) time_t;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

extern fn unload_file(name: [*c]const u8) c_int;
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

extern fn remote_kill(id: pid_t, sig: c_int) c_int;

extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;

extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;

extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;

extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern fn enter_file(name: [*c]const u8) [*c]struct_file;

extern fn remove_intermediates(sig: c_int) void;

extern fn set_command_state(file: [*c]struct_file, state: enum_cmd_state_37) void;
extern fn notice_finished_file(file: [*c]struct_file) void;

extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;

extern var snapped_deps: c_int;

extern fn jobserver_clear() void;

extern fn osync_clear() void;

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

extern fn initialize_file_variables(file: [*c]struct_file, reading: c_int) void;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;

extern var export_all_variables: c_int;
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

extern fn new_job(file: [*c]struct_file) void;
extern fn reap_children(block: c_int, err: c_int) void;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
export fn fatal_error_signal(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    handling_fatal_signal = 1;
    _ = signal(sig, @as(__sighandler_t, @ptrFromInt(@as(c_int, 0))));
    temp_stdin_unlink();
    osync_clear();
    jobserver_clear();
    if (sig == @as(c_int, 15)) {
        var c: [*c]struct_child = undefined;
        _ = &c;
        {
            c = children;
            while (c != null) : (c = c.*.next) if (!(c.*.remote != 0) and (c.*.pid > @as(c_int, 0))) {
                _ = kill(c.*.pid, @as(c_int, 15));
            };
        }
    }
    if ((((sig == @as(c_int, 15)) or (sig == @as(c_int, 2))) or (sig == @as(c_int, 1))) or (sig == @as(c_int, 3))) {
        var c: [*c]struct_child = undefined;
        _ = &c;
        {
            c = children;
            while (c != null) : (c = c.*.next) if ((c.*.remote != 0) and (c.*.pid > @as(c_int, 0))) {
                _ = remote_kill(c.*.pid, sig);
            };
        }
        {
            c = children;
            while (c != null) : (c = c.*.next) {
                delete_child_targets(c);
            }
        }
        while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
            reap_children(@as(c_int, 1), @as(c_int, 0));
        }
    } else while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        reap_children(@as(c_int, 1), @as(c_int, 1));
    }
    remove_intermediates(@as(c_int, 1));
    if (sig == @as(c_int, 3)) {
        exit(@as(c_int, 1));
    }
    if (kill(make_pid(), sig) < @as(c_int, 0)) {
        pfatal_with_name("kill");
    }
}
export fn execute_file_commands(arg_file_1: [*c]struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var p: [*c]const u8 = undefined;
    _ = &p;
    {
        p = file_1.*.cmds.*.commands;
        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) if (((!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '-'))) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '@'))) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '+'))) break;
    }
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
        set_command_state(file_1, @as(c_uint, @bitCast(cs_running)));
        file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        notice_finished_file(file_1);
        return;
    }
    initialize_file_variables(file_1, @as(c_int, 0));
    set_file_variables(file_1, file_1.*.stem);
    if ((file_1.*.loaded != 0) and (unload_file(file_1.*.name) == @as(c_int, 0))) {
        file_1.*.loaded = 0;
        file_1.*.unloaded = 1;
    }
    new_job(file_1);
}
export fn print_commands(arg_cmds: [*c]const struct_commands) void {
    var cmds = arg_cmds;
    _ = &cmds;
    var s: [*c]const u8 = undefined;
    _ = &s;
    _ = fputs(gettext("#  recipe to execute"), stdout);
    if (cmds.*.fileinfo.filenm == null) {
        _ = puts(gettext(" (built-in):"));
    } else {
        _ = printf(gettext(" (from '%s', line %lu):\n"), cmds.*.fileinfo.filenm, cmds.*.fileinfo.lineno);
    }
    s = cmds.*.commands;
    while (@as(c_int, @bitCast(@as(c_uint, s.*))) != @as(c_int, '\x00')) {
        var end: [*c]const u8 = undefined;
        _ = &end;
        var bs: c_int = undefined;
        _ = &bs;
        {
            _ = blk: {
                end = s;
                break :blk blk_1: {
                    const tmp = @as(c_int, 0);
                    bs = tmp;
                    break :blk_1 tmp;
                };
            };
            while (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) : (end += 1) {
                if ((@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, '\n')) and !(bs != 0)) break;
                bs = if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, '\\')) @intFromBool(!(bs != 0)) else @as(c_int, 0);
            }
        }
        _ = printf("%c%.*s\n", @as(c_int, @bitCast(@as(c_uint, cmd_prefix))), @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(s))), @sizeOf(u8)))))), s);
        s = end + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, end[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\n')))));
    }
}
export fn delete_child_targets(arg_child_1: [*c]struct_child) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    if ((child_1.*.deleted != 0) or (child_1.*.pid < @as(c_int, 0))) return;
    delete_target(child_1.*.file, null);
    {
        d = child_1.*.file.*.also_make;
        while (d != null) : (d = d.*.next) {
            delete_target(d.*.file, child_1.*.file.*.name);
        }
    }
    child_1.*.deleted = 1;
}
export fn chop_commands(arg_cmds: [*c]struct_commands) void {
    var cmds = arg_cmds;
    _ = &cmds;
    var nlines: c_ushort = undefined;
    _ = &nlines;
    var i: c_ushort = undefined;
    _ = &i;
    var lines: [*c][*c]u8 = undefined;
    _ = &lines;
    if (!(cmds != null) or (cmds.*.command_lines != @as([*c][*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return;
    if (one_shell != 0) {
        var l: usize = strlen(cmds.*.commands);
        _ = &l;
        nlines = 1;
        lines = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, nlines))) *% @sizeOf([*c]u8)))));
        lines[@as(c_uint, @intCast(@as(c_int, 0)))] = xstrdup(cmds.*.commands);
        if ((l > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and (@as(c_int, @bitCast(@as(c_uint, lines[@as(c_uint, @intCast(@as(c_int, 0)))][l -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '\n'))) {
            lines[@as(c_uint, @intCast(@as(c_int, 0)))][l -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
        }
    } else {
        var p: [*c]const u8 = cmds.*.commands;
        _ = &p;
        var max: usize = 5;
        _ = &max;
        nlines = 0;
        lines = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(max *% @sizeOf([*c]u8)))));
        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
            var end: [*c]const u8 = p;
            _ = &end;
            while (true) {
                end = strchr(end, @as(c_int, '\n'));
                if (end == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    end = p + strlen(p);
                } else if ((end > p) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = -@as(c_int, 1);
                    if (tmp >= 0) break :blk end + @as(usize, @intCast(tmp)) else break :blk end - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) == @as(c_int, '\\'))) {
                    var backslash: c_int = 1;
                    _ = &backslash;
                    if (end > (p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))) {
                        var b: [*c]const u8 = undefined;
                        _ = &b;
                        {
                            b = end - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
                            while ((b >= p) and (@as(c_int, @bitCast(@as(c_uint, b.*))) == @as(c_int, '\\'))) : (b -= 1) {
                                backslash = @intFromBool(!(backslash != 0));
                            }
                        }
                    }
                    if (backslash != 0) {
                        end += 1;
                        continue;
                    }
                }
                break;
            }
            if (@as(c_int, @bitCast(@as(c_uint, nlines))) == ((@as(c_int, 32767) * @as(c_int, 2)) + @as(c_int, 1))) {
                fatal(&cmds.*.fileinfo, ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))), gettext("Recipe has too many lines (limit %hu)"), @as(c_int, @bitCast(@as(c_uint, nlines))));
            }
            if (@as(usize, @bitCast(@as(c_ulong, nlines))) == max) {
                max +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                lines = @as([*c][*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(lines)), max *% @sizeOf([*c]u8)))));
            }
            lines[
                blk: {
                    const ref = &nlines;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = xstrndup(p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(p))), @sizeOf(u8)))));
            p = end;
            if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
                p += 1;
            }
        }
    }
    cmds.*.ncommand_lines = nlines;
    cmds.*.command_lines = lines;
    cmds.*.any_recurse = 0;
    cmds.*.lines_flags = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_ulong, nlines)))))));
    {
        i = 0;
        while (@as(c_int, @bitCast(@as(c_uint, i))) < @as(c_int, @bitCast(@as(c_uint, nlines)))) : (i +%= 1) {
            var flags: u8 = 0;
            _ = &flags;
            var p: [*c]const u8 = lines[i];
            _ = &p;
            while (((((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0)) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '-'))) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '@'))) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '+'))) {
                while (true) {
                    switch (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const ref = &p;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).*)))) {
                        @as(c_int, 43) => {
                            flags |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1)))));
                            break;
                        },
                        @as(c_int, 64) => {
                            flags |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2)))));
                            break;
                        },
                        @as(c_int, 45) => {
                            flags |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4)))));
                            break;
                        },
                        else => {},
                    }
                    break;
                }
            }
            if (!((@as(c_int, @bitCast(@as(c_uint, flags))) & @as(c_int, 1)) != @as(c_int, 0)) and ((strstr(p, "$(MAKE)") != null) or (strstr(p, "${MAKE}") != null))) {
                flags |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1)))));
            }
            cmds.*.lines_flags[i] = flags;
            cmds.*.any_recurse |= @as(c_uint, @bitCast(if ((@as(c_int, @bitCast(@as(c_uint, flags))) & @as(c_int, 1)) != @as(c_int, 0)) @as(c_int, 1) else @as(c_int, 0)));
        }
    }
}
export fn set_file_variables(arg_file_1: [*c]struct_file, arg_stem: [*c]const u8) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var stem = arg_stem;
    _ = &stem;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var at: [*c]const u8 = undefined;
    _ = &at;
    var percent: [*c]const u8 = undefined;
    _ = &percent;
    var star: [*c]const u8 = undefined;
    _ = &star;
    var less: [*c]const u8 = undefined;
    _ = &less;
    if (ar_name(file_1.*.name) != 0) {
        var len: usize = undefined;
        _ = &len;
        var cp: [*c]const u8 = undefined;
        _ = &cp;
        var p: [*c]u8 = undefined;
        _ = &p;
        cp = strchr(file_1.*.name, @as(c_int, '('));
        p = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cp) -% @intFromPtr(file_1.*.name))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(file_1.*.name)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cp) -% @intFromPtr(file_1.*.name))), @sizeOf(u8)))));
        (blk: {
            const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(cp) -% @intFromPtr(file_1.*.name))), @sizeOf(u8));
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        at = p;
        len = strlen(cp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        p = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(cp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))), len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        p[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
        percent = p;
    } else {
        at = file_1.*.name;
        percent = "";
    }
    if (stem == null) {
        var name: [*c]const u8 = undefined;
        _ = &name;
        var len: usize = undefined;
        _ = &len;
        if (ar_name(file_1.*.name) != 0) {
            name = strchr(file_1.*.name, @as(c_int, '(')) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            len = strlen(name) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
        } else {
            name = file_1.*.name;
            len = strlen(name);
        }
        {
            d = enter_file(strcache_add(".SUFFIXES")).*.deps;
            while (d != null) : (d = d.*.next) {
                var dn: [*c]const u8 = if (d.*.name != null) d.*.name else d.*.file.*.name;
                _ = &dn;
                var slen: usize = strlen(dn);
                _ = &slen;
                if ((len > slen) and (memcmp(@as(?*const anyopaque, @ptrCast(dn)), @as(?*const anyopaque, @ptrCast(name + (len -% slen))), slen) == @as(c_int, 0))) {
                    file_1.*.stem = blk: {
                        const tmp = strcache_add_len(name, len -% slen);
                        stem = tmp;
                        break :blk tmp;
                    };
                    break;
                }
            }
        }
        if (d == null) {
            file_1.*.stem = blk: {
                const tmp = "";
                stem = tmp;
                break :blk tmp;
            };
        }
    }
    star = stem;
    less = "";
    {
        d = file_1.*.deps;
        while (d != null) : (d = d.*.next) if ((!(d.*.ignore_mtime != 0) and !(d.*.ignore_automatic_vars != 0)) and !(d.*.need_2nd_expansion != 0)) {
            less = if (d.*.name != null) d.*.name else d.*.file.*.name;
            break;
        };
    }
    if ((file_1.*.cmds != null) and (file_1.*.cmds == default_file.*.cmds)) {
        less = at;
    }
    _ = define_variable_in_set("<", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), less, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("*", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), star, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("@", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), at, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("%", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), percent, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    {
        const plus_value = struct {
            var static: [*c]u8 = null;
        };
        _ = &plus_value;
        const bar_value = struct {
            var static: [*c]u8 = null;
        };
        _ = &bar_value;
        const qmark_value = struct {
            var static: [*c]u8 = null;
        };
        _ = &qmark_value;
        const plus_max = struct {
            var static: usize = 0;
        };
        _ = &plus_max;
        const bar_max = struct {
            var static: usize = 0;
        };
        _ = &bar_max;
        const qmark_max = struct {
            var static: usize = 0;
        };
        _ = &qmark_max;
        var qmark_len: usize = undefined;
        _ = &qmark_len;
        var plus_len: usize = undefined;
        _ = &plus_len;
        var bar_len: usize = undefined;
        _ = &bar_len;
        var cp: [*c]u8 = undefined;
        _ = &cp;
        var caret_value: [*c]u8 = undefined;
        _ = &caret_value;
        var qp: [*c]u8 = undefined;
        _ = &qp;
        var bp: [*c]u8 = undefined;
        _ = &bp;
        var len: usize = undefined;
        _ = &len;
        var dep_hash: struct_hash_table = undefined;
        _ = &dep_hash;
        var slot: [*c]?*anyopaque = undefined;
        _ = &slot;
        plus_len = 0;
        bar_len = 0;
        {
            d = file_1.*.deps;
            while (d != null) : (d = d.*.next) {
                if (!(d.*.need_2nd_expansion != 0) and !(d.*.ignore_automatic_vars != 0)) {
                    if (d.*.ignore_mtime != 0) {
                        bar_len +%= @as(usize, @bitCast(strlen(if (d.*.name != null) d.*.name else d.*.file.*.name) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
                    } else {
                        plus_len +%= @as(usize, @bitCast(strlen(if (d.*.name != null) d.*.name else d.*.file.*.name) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
                    }
                }
            }
        }
        if (bar_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            bar_len +%= 1;
        }
        if (plus_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            plus_len +%= 1;
        }
        if (plus_len > plus_max.static) {
            plus_value.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(plus_value.static)), blk: {
                const tmp = plus_len;
                plus_max.static = tmp;
                break :blk tmp;
            }))));
        }
        cp = plus_value.static;
        qmark_len = plus_len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
        {
            d = file_1.*.deps;
            while (d != null) : (d = d.*.next) if ((!(d.*.ignore_mtime != 0) and !(d.*.need_2nd_expansion != 0)) and !(d.*.ignore_automatic_vars != 0)) {
                var c: [*c]const u8 = if (d.*.name != null) d.*.name else d.*.file.*.name;
                _ = &c;
                if (ar_name(c) != 0) {
                    c = strchr(c, @as(c_int, '(')) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                    len = strlen(c) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
                } else {
                    len = strlen(c);
                }
                cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(c)), len))));
                (blk: {
                    const ref = &cp;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = ' ';
                if (!((d.*.changed != 0) or (always_make_flag != 0))) {
                    qmark_len -%= len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
                }
            };
        }
        (blk: {
            const tmp = if (cp > plus_value.static) -@as(c_int, 1) else @as(c_int, 0);
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("+", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), plus_value.static, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        cp = blk: {
            const tmp = plus_value.static;
            caret_value = tmp;
            break :blk tmp;
        };
        if (qmark_len > qmark_max.static) {
            qmark_value.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(qmark_value.static)), blk: {
                const tmp = qmark_len;
                qmark_max.static = tmp;
                break :blk tmp;
            }))));
        }
        qp = qmark_value.static;
        if (bar_len > bar_max.static) {
            bar_value.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(bar_value.static)), blk: {
                const tmp = bar_len;
                bar_max.static = tmp;
                break :blk tmp;
            }))));
        }
        bp = bar_value.static;
        hash_init(&dep_hash, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500)))), &dep_hash_1, &dep_hash_2, &dep_hash_cmp);
        {
            d = file_1.*.deps;
            while (d != null) : (d = d.*.next) {
                if ((d.*.need_2nd_expansion != 0) or (d.*.ignore_automatic_vars != 0)) continue;
                slot = hash_find_slot(&dep_hash, @as(?*const anyopaque, @ptrCast(d)));
                if ((slot.* == null) or (slot.* == hash_deleted_item)) {
                    _ = hash_insert_at(&dep_hash, @as(?*const anyopaque, @ptrCast(d)), @as(?*const anyopaque, @ptrCast(slot)));
                } else {
                    var hd: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(slot.*)));
                    _ = &hd;
                    if (d.*.ignore_mtime != hd.*.ignore_mtime) {
                        d.*.ignore_mtime = blk: {
                            const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
                            hd.*.ignore_mtime = tmp;
                            break :blk tmp;
                        };
                    }
                }
            }
        }
        {
            d = file_1.*.deps;
            while (d != null) : (d = d.*.next) {
                var c: [*c]const u8 = undefined;
                _ = &c;
                if (((d.*.need_2nd_expansion != 0) or (d.*.ignore_automatic_vars != 0)) or (hash_find_item(&dep_hash, @as(?*const anyopaque, @ptrCast(d))) != @as(?*anyopaque, @ptrCast(d)))) continue;
                c = if (d.*.name != null) d.*.name else d.*.file.*.name;
                if (ar_name(c) != 0) {
                    c = strchr(c, @as(c_int, '(')) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                    len = strlen(c) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
                } else {
                    len = strlen(c);
                }
                if (d.*.ignore_mtime != 0) {
                    bp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(bp)), @as(?*const anyopaque, @ptrCast(c)), len))));
                    (blk: {
                        const ref = &bp;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = ' ';
                } else {
                    cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(c)), len))));
                    (blk: {
                        const ref = &cp;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = ' ';
                    if ((d.*.changed != 0) or (always_make_flag != 0)) {
                        qp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(qp)), @as(?*const anyopaque, @ptrCast(c)), len))));
                        (blk: {
                            const ref = &qp;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).* = ' ';
                    }
                }
            }
        }
        hash_free(&dep_hash, @as(c_int, 0));
        (blk: {
            const tmp = if (cp > caret_value) -@as(c_int, 1) else @as(c_int, 0);
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("^", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), caret_value, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        (blk: {
            const tmp = if (qp > qmark_value.static) -@as(c_int, 1) else @as(c_int, 0);
            if (tmp >= 0) break :blk qp + @as(usize, @intCast(tmp)) else break :blk qp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("?", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), qmark_value.static, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        (blk: {
            const tmp = if (bp > bar_value.static) -@as(c_int, 1) else @as(c_int, 0);
            if (tmp >= 0) break :blk bp + @as(usize, @intCast(tmp)) else break :blk bp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("|", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), bar_value.static, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
}
fn dep_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    var d: [*c]const struct_dep = @as([*c]const struct_dep, @ptrCast(@alignCast(key)));
    _ = &d;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(if (d.*.name != null) d.*.name else d.*.file.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn dep_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    var d: [*c]const struct_dep = @as([*c]const struct_dep, @ptrCast(@alignCast(key)));
    _ = &d;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = if (d.*.name != null) d.*.name else d.*.file.*.name;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn dep_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var dx: [*c]const struct_dep = @as([*c]const struct_dep, @ptrCast(@alignCast(x)));
    _ = &dx;
    var dy: [*c]const struct_dep = @as([*c]const struct_dep, @ptrCast(@alignCast(y)));
    _ = &dy;
    return strcmp(if (dx.*.name != null) dx.*.name else dx.*.file.*.name, if (dy.*.name != null) dy.*.name else dy.*.file.*.name);
}
fn delete_target(arg_file_1: [*c]struct_file, arg_on_behalf_of: [*c]const u8) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var on_behalf_of = arg_on_behalf_of;
    _ = &on_behalf_of;
    var st: struct_stat = undefined;
    _ = &st;
    var e: c_int = undefined;
    _ = &e;
    if ((file_1.*.precious != 0) or (file_1.*.phony != 0)) return;
    if (ar_name(file_1.*.name) != 0) {
        var file_date: time_t = if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))) else @as(time_t, @bitCast((file_1.*.last_mtime -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))));
        _ = &file_date;
        if (ar_member_date(file_1.*.name) != file_date) {
            if (on_behalf_of != null) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(on_behalf_of) +% strlen(file_1.*.name), gettext("*** [%s] Archive member '%s' may be bogus; not deleted"), on_behalf_of, file_1.*.name);
            } else {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(file_1.*.name), gettext("*** Archive member '%s' may be bogus; not deleted"), file_1.*.name);
            }
        }
        return;
    }
    while (((blk: {
        const tmp = stat(file_1.*.name, &st);
        e = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (((e == @as(c_int, 0)) and ((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 32768))))) and (file_timestamp_cons(file_1.*.name, st.st_mtim.tv_sec, st.st_mtim.tv_nsec) != file_1.*.last_mtime)) {
        if (on_behalf_of != null) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(on_behalf_of) +% strlen(file_1.*.name), gettext("*** [%s] Deleting file '%s'"), on_behalf_of, file_1.*.name);
        } else {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(file_1.*.name), gettext("*** Deleting file '%s'"), file_1.*.name);
        }
        if ((unlink(file_1.*.name) < @as(c_int, 0)) and (__errno_location().* != @as(c_int, 2))) {
            perror_with_name("unlink: ", file_1.*.name);
        }
    }
}
