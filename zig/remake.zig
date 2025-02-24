const std = @import("std");
const root = @import("root.zig");

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

const off_t = __off_t;

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
extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;

extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

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

extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;

extern fn close(__fd: c_int) c_int;

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;

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

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

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
const us_none: c_int = 1;
const us_question: c_int = 2;
const us_failed: c_int = 3;
const enum_update_status_36 = c_uint;
const cs_not_started: c_int = 0;
const cs_deps_running: c_int = 1;
const cs_running: c_int = 2;
const cs_finished: c_int = 3;
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

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;

extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;

extern fn print_spaces(c_uint) void;
extern fn find_percent([*c]u8) [*c]u8;

extern fn ar_name([*c]const u8) c_int;
extern fn ar_parse_name([*c]const u8, [*c][*c]u8, [*c][*c]u8) void;
extern fn ar_touch([*c]const u8) c_int;
extern fn ar_member_date([*c]const u8) time_t;

const vpath_search = @import("vpath.zig").vpath_search;
const gpath_search = @import("vpath.zig").gpath_search;

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
export fn show_goal_error() void {
    var goal: [*c]struct_goaldep = undefined;
    _ = &goal;
    if ((goal_dep.*.flags & @as(c_uint, @bitCast((1 << @intCast(1)) | (1 << @intCast(2))))) != @as(c_uint, @bitCast(1 << @intCast(1)))) return;
    {
        goal = goal_list;
        while (goal != null) : (goal = goal.*.next) if (goal_dep.*.file == goal.*.file) {
            if (goal.*.@"error" != 0) {
                @"error"(&goal.*.floc, strlen(goal.*.file.*.name) +% strlen(strerror(goal.*.@"error")), "%s: %s", goal.*.file.*.name, strerror(goal.*.@"error"));
                goal.*.@"error" = 0;
            }
            return;
        };
    }
}

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

extern var reading_file: [*c]const floc;
extern var expanding_var: [*c][*c]const floc;

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

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
extern fn lookup_file(name: [*c]const u8) [*c]struct_file;
extern fn enter_file(name: [*c]const u8) [*c]struct_file;

extern fn expand_deps(f: [*c]struct_file) void;

extern fn rename_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn rehash_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn set_command_state(file: [*c]struct_file, state: enum_cmd_state_37) void;
export fn notice_finished_file(arg_file_1: [*c]struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var ran: c_int = @intFromBool(file_1.*.command_state == @as(c_uint, @bitCast(cs_running)));
    _ = &ran;
    var touched: c_int = 0;
    _ = &touched;
    file_1.*.command_state = @as(c_uint, @bitCast(cs_finished));
    file_1.*.updated = 1;
    if ((touch_flag != 0) and (file_1.*.update_status == @as(c_uint, @bitCast(us_success)))) {
        var flag_957: c_int = 0;
        _ = &flag_957;
        if ((file_1.*.cmds != null) and (file_1.*.cmds.*.any_recurse != 0)) {
            var i: c_uint = undefined;
            _ = &i;
            {
                i = 0;
                while (i < @as(c_uint, @bitCast(@as(c_uint, file_1.*.cmds.*.ncommand_lines)))) : (i +%= 1) if (!((@as(c_int, @bitCast(@as(c_uint, file_1.*.cmds.*.lines_flags[i]))) & 1) != 0)) {
                    flag_957 = 1;
                };
            }
        } else {
            flag_957 = 1;
        }
        if (flag_957 == 1) {
            if (file_1.*.phony != 0) {
                file_1.*.update_status = @as(c_uint, @bitCast(us_success));
            } else if (file_1.*.cmds != null) {
                file_1.*.update_status = touch_file(file_1);
                commands_started +%= 1;
                touched = 1;
            }
        }
    }
    if (file_1.*.mtime_before_update == @as(uintmax_t, 0)) {
        file_1.*.mtime_before_update = file_1.*.last_mtime;
    }
    if (((ran != 0) and !(file_1.*.phony != 0)) or (touched != 0)) {
        var i: c_int = 0;
        _ = &i;
        if ((((question_flag != 0) or (just_print_flag != 0)) or (touch_flag != 0)) and (file_1.*.cmds != null)) {
            {
                i = @as(c_int, @bitCast(@as(c_uint, file_1.*.cmds.*.ncommand_lines)));
                while (i > 0) : (i -= 1) if (!((@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i - 1;
                    if (tmp >= 0) break :blk file_1.*.cmds.*.lines_flags + @as(usize, @intCast(tmp)) else break :blk file_1.*.cmds.*.lines_flags - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) & 1) != 0)) break;
            }
        } else if ((file_1.*.is_target != 0) and (file_1.*.cmds == null)) {
            i = 1;
        }
        file_1.*.last_mtime = if (i == 0) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)));
    }
    if (file_1.*.double_colon != null) {
        var f: [*c]struct_file = undefined;
        _ = &f;
        var max_mtime: uintmax_t = file_1.*.last_mtime;
        _ = &max_mtime;
        {
            f = file_1.*.double_colon;
            while ((f != null) and (f.*.updated != 0)) : (f = f.*.prev) if ((max_mtime != @as(uintmax_t, 0)) and ((f.*.last_mtime == @as(uintmax_t, 0)) or (f.*.last_mtime > max_mtime))) {
                max_mtime = f.*.last_mtime;
            };
        }
        if (f == null) {
            f = file_1.*.double_colon;
            while (f != null) : (f = f.*.prev) {
                f.*.last_mtime = max_mtime;
            }
        }
    }
    if ((ran != 0) and (file_1.*.update_status != @as(c_uint, @bitCast(us_none)))) {
        {
            d = file_1.*.also_make;
            while (d != null) : (d = d.*.next) {
                d.*.file.*.command_state = @as(c_uint, @bitCast(cs_finished));
                d.*.file.*.updated = 1;
                d.*.file.*.update_status = file_1.*.update_status;
                if ((ran != 0) and !(d.*.file.*.phony != 0)) {
                    _ = f_mtime(d.*.file, 0);
                }
            }
        }
        if ((file_1.*.tried_implicit != 0) and (file_1.*.also_make != null)) {
            check_also_make(file_1);
        }
    } else if (file_1.*.update_status == @as(c_uint, @bitCast(us_none))) {
        file_1.*.update_status = @as(c_uint, @bitCast(us_success));
    }
}

extern fn try_implicit_rule(file: [*c]struct_file, depth: c_uint) c_int;

extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;
extern fn file_timestamp_now([*c]c_int) uintmax_t;

export fn f_mtime(arg_file_1: [*c]struct_file, arg_search: c_int) uintmax_t {
    var file_1 = arg_file_1;
    _ = &file_1;
    var search = arg_search;
    _ = &search;
    var mtime: uintmax_t = undefined;
    _ = &mtime;
    var propagate_timestamp: c_uint = undefined;
    _ = &propagate_timestamp;
    if (ar_name(file_1.*.name) != 0) {
        var memmtime: uintmax_t = undefined;
        _ = &memmtime;
        var arname: [*c]u8 = undefined;
        _ = &arname;
        var memname: [*c]u8 = undefined;
        _ = &memname;
        var arfile: [*c]struct_file = undefined;
        _ = &arfile;
        var member_date: time_t = undefined;
        _ = &member_date;
        ar_parse_name(file_1.*.name, &arname, &memname);
        memmtime = name_mtime(memname);
        arfile = lookup_file(arname);
        if (arfile == null) {
            arfile = enter_file(strcache_add(arname));
        }
        mtime = f_mtime(arfile, search);
        while (arfile.*.renamed != null) {
            arfile = arfile.*.renamed;
        }
        if ((search != 0) and (strcmp(arfile.*.hname, arname) != 0)) {
            var name: [*c]u8 = undefined;
            _ = &name;
            var arlen: usize = undefined;
            _ = &arlen;
            var memlen: usize = undefined;
            _ = &memlen;
            arlen = strlen(arfile.*.hname);
            memlen = strlen(memname);
            name = @as([*c]u8, @ptrCast(@alignCast(malloc(((arlen +% @as(usize, 1)) +% memlen) +% @as(usize, 2)))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(name)), @as(?*const anyopaque, @ptrCast(arfile.*.hname)), arlen);
            name[arlen] = '(';
            _ = memcpy(@as(?*anyopaque, @ptrCast((name + arlen) + @as(usize, @bitCast(@as(isize, @intCast(1)))))), @as(?*const anyopaque, @ptrCast(memname)), memlen);
            name[(arlen +% @as(usize, 1)) +% memlen] = ')';
            name[((arlen +% @as(usize, 1)) +% memlen) +% @as(usize, 1)] = '\x00';
            if (arfile.*.name == arfile.*.hname) {
                rename_file(file_1, strcache_add(name));
            } else {
                rehash_file(file_1, strcache_add(name));
            }
            while (file_1.*.renamed != null) {
                file_1 = file_1.*.renamed;
            }
        }
        free(@as(?*anyopaque, @ptrCast(arname)));
        file_1.*.low_resolution_time = 1;
        if (mtime == @as(uintmax_t, 1)) return 1;
        member_date = ar_member_date(file_1.*.hname);
        if ((member_date == @as(time_t, @bitCast(@as(c_long, -1)))) or ((memmtime != @as(uintmax_t, 1)) and (@as(time_t, @bitCast((memmtime -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) >> @intCast(if (true) @as(c_int, 30) else 0))) > member_date))) {
            mtime = 1;
        } else {
            mtime = file_timestamp_cons(file_1.*.hname, member_date, @as(c_long, 0));
        }
    } else {
        mtime = name_mtime(file_1.*.name);
        if (((mtime == @as(uintmax_t, 1)) and (search != 0)) and !(file_1.*.ignore_vpath != 0)) {
            var name: [*c]const u8 = vpath_search(file_1.*.name, &mtime, null, null);
            _ = &name;
            if ((name != null) or (((@as(c_int, @bitCast(@as(c_uint, file_1.*.name[0]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, file_1.*.name[1]))) == @as(c_int, 'l'))) and ((blk: {
                const tmp = library_search(file_1.*.name, &mtime);
                name = tmp;
                break :blk tmp;
            }) != null))) {
                var name_len: usize = undefined;
                _ = &name_len;
                if (mtime != @as(uintmax_t, 0)) {
                    file_1.*.last_mtime = mtime;
                }
                name_len = (strlen(name) -% strlen(file_1.*.name)) -% @as(c_ulong, 1);
                if (gpath_search(name, name_len) != 0) {
                    rename_file(file_1, name);
                    while (file_1.*.renamed != null) {
                        file_1 = file_1.*.renamed;
                    }
                    return if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 1) else file_1.*.last_mtime;
                }
                rehash_file(file_1, name);
                while (file_1.*.renamed != null) {
                    file_1 = file_1.*.renamed;
                }
                if ((mtime != @as(uintmax_t, 2)) and (mtime != (~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)))))) {
                    mtime = name_mtime(name);
                }
            }
        }
    }
    if (((!(clock_skew_detected != 0) and (mtime != @as(uintmax_t, 1))) and (mtime != (~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)))))) and !(file_1.*.updated != 0)) {
        const adjusted_now = struct {
            var static: uintmax_t = @import("std").mem.zeroes(uintmax_t);
        };
        _ = &adjusted_now;
        var adjusted_mtime: uintmax_t = mtime;
        _ = &adjusted_mtime;
        if (adjusted_now.static < adjusted_mtime) {
            var resolution: c_int = undefined;
            _ = &resolution;
            var now: uintmax_t = file_timestamp_now(&resolution);
            _ = &now;
            adjusted_now.static = now +% @as(uintmax_t, @bitCast(@as(c_long, resolution - 1)));
            if (adjusted_now.static < adjusted_mtime) {
                var from_now: f64 = @as(f64, @floatFromInt(((mtime -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) >> @intCast(if (true) @as(c_int, 30) else 0)) -% ((now -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) >> @intCast(if (true) @as(c_int, 30) else 0)))) + (@as(f64, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, @truncate((mtime -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) & @as(uintmax_t, @bitCast(@as(c_long, (1 << @intCast(if (true) @as(c_int, 30) else 0)) - 1))))))) - @as(c_int, @bitCast(@as(c_uint, @truncate((now -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) & @as(uintmax_t, @bitCast(@as(c_long, (1 << @intCast(if (true) @as(c_int, 30) else 0)) - 1))))))))) / 1000000000.0);
                _ = &from_now;
                var from_now_string: [100]u8 = undefined;
                _ = &from_now_string;
                if ((from_now >= 100.0) and (from_now < @as(f64, @floatFromInt((@as(c_ulong, @bitCast(@as(c_long, 9223372036854775807))) *% @as(c_ulong, 2)) +% @as(c_ulong, 1))))) {
                    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&from_now_string))), "%lu", @as(c_ulong, @intFromFloat(from_now)));
                } else {
                    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&from_now_string))), "%.2g", from_now);
                }
                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(file_1.*.name) +% strlen(@as([*c]u8, @ptrCast(@alignCast(&from_now_string)))), gettext("Warning: File '%s' has modification time %s s in the future"), file_1.*.name, @as([*c]u8, @ptrCast(@alignCast(&from_now_string))));
                clock_skew_detected = 1;
            }
        }
    }
    if (file_1.*.double_colon != null) {
        file_1 = file_1.*.double_colon;
    }
    propagate_timestamp = file_1.*.updated;
    while (true) {
        if ((((mtime != @as(uintmax_t, 1)) and (file_1.*.command_state == @as(c_uint, @bitCast(cs_not_started)))) and !(file_1.*.tried_implicit != 0)) and (file_1.*.intermediate != 0)) {
            file_1.*.intermediate = 0;
        }
        if (file_1.*.updated == propagate_timestamp) {
            file_1.*.last_mtime = mtime;
        }
        file_1 = file_1.*.prev;
        if (!(file_1 != null)) break;
    }
    return mtime;
}
extern var snapped_deps: c_int;
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

extern fn reap_children(block: c_int, err: c_int) void;
extern fn start_waiting_jobs() void;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;

extern fn execute_file_commands(file: [*c]struct_file) void;

extern fn chop_commands(cmds: [*c]struct_commands) void;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: [*c]const struct_dep) [*c]struct_dep;

export fn update_goal_chain(arg_goaldeps: [*c]struct_goaldep) enum_update_status_36 {
    var goaldeps = arg_goaldeps;
    _ = &goaldeps;
    var last_cmd_count: c_ulong = 0;
    _ = &last_cmd_count;
    var t: c_int = touch_flag;
    _ = &t;
    var q: c_int = question_flag;
    _ = &q;
    var n: c_int = just_print_flag;
    _ = &n;
    var status: enum_update_status_36 = @as(c_uint, @bitCast(us_none));
    _ = &status;
    var goals_orig: [*c]struct_dep = copy_dep_chain(@as([*c]struct_dep, @ptrCast(@alignCast(goaldeps))));
    _ = &goals_orig;
    var goals: [*c]struct_dep = goals_orig;
    _ = &goals;
    goal_list = if (rebuilding_makefiles != 0) goaldeps else null;
    considered +%= 1;
    while (goals != null) {
        var gu: [*c]struct_dep = undefined;
        _ = &gu;
        var g: [*c]struct_dep = undefined;
        _ = &g;
        var lastgoal: [*c]struct_dep = undefined;
        _ = &lastgoal;
        start_waiting_jobs();
        reap_children(@intFromBool(last_cmd_count == command_count), 0);
        last_cmd_count = command_count;
        lastgoal = null;
        gu = goals;
        while (gu != null) {
            var file_1: [*c]struct_file = undefined;
            _ = &file_1;
            var stop: c_int = 0;
            _ = &stop;
            var any_not_updated: c_int = 0;
            _ = &any_not_updated;
            g = if (gu.*.shuf != null) gu.*.shuf else gu;
            goal_dep = g;
            {
                file_1 = if (g.*.file.*.double_colon != null) g.*.file.*.double_colon else g.*.file;
                while (file_1 != @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (file_1 = file_1.*.prev) {
                    var ocommands_started: c_uint = undefined;
                    _ = &ocommands_started;
                    var fail: enum_update_status_36 = undefined;
                    _ = &fail;
                    file_1.*.dontcare = @as(c_uint, @intFromBool((g.*.flags & @as(c_uint, @bitCast(1 << @intCast(2)))) != @as(c_uint, 0)));
                    while (file_1.*.renamed != null) {
                        file_1 = file_1.*.renamed;
                    }
                    if (rebuilding_makefiles != 0) {
                        if (file_1.*.cmd_target != 0) {
                            touch_flag = t;
                            question_flag = q;
                            just_print_flag = n;
                        } else {
                            touch_flag = blk: {
                                const tmp = blk_1: {
                                    const tmp_2 = 0;
                                    just_print_flag = tmp_2;
                                    break :blk_1 tmp_2;
                                };
                                question_flag = tmp;
                                break :blk tmp;
                            };
                        }
                    }
                    ocommands_started = commands_started;
                    fail = update_file(file_1, @as(c_uint, @bitCast(if (rebuilding_makefiles != 0) 1 else 0)));
                    while (file_1.*.renamed != null) {
                        file_1 = file_1.*.renamed;
                    }
                    if (commands_started > ocommands_started) {
                        g.*.changed = 1;
                    }
                    stop = 0;
                    if (((fail != 0) or (file_1.*.updated != 0)) and (status < @as(c_uint, @bitCast(us_question)))) {
                        if (file_1.*.update_status != 0) {
                            status = file_1.*.update_status;
                            stop = @intFromBool(((question_flag != 0) and !(keep_going_flag != 0)) and !(rebuilding_makefiles != 0));
                        } else {
                            var mtime: uintmax_t = if (rebuilding_makefiles != 0) if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 0) else file_1.*.last_mtime else if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 1) else file_1.*.last_mtime;
                            _ = &mtime;
                            while (file_1.*.renamed != null) {
                                file_1 = file_1.*.renamed;
                            }
                            if ((file_1.*.updated != 0) and (mtime != file_1.*.mtime_before_update)) {
                                if (!(rebuilding_makefiles != 0) or (!(just_print_flag != 0) and !(question_flag != 0))) {
                                    status = @as(c_uint, @bitCast(us_success));
                                }
                                if ((rebuilding_makefiles != 0) and (file_1.*.dontcare != 0)) {
                                    stop = 1;
                                }
                            }
                        }
                    }
                    any_not_updated |= !(file_1.*.updated != 0);
                    file_1.*.dontcare = 0;
                    if (stop != 0) break;
                }
            }
            file_1 = g.*.file;
            if ((stop != 0) or !(any_not_updated != 0)) {
                if ((((!(rebuilding_makefiles != 0) and (file_1.*.update_status == @as(c_uint, @bitCast(us_success)))) and !(g.*.changed != 0)) and !(run_silent != 0)) and !(question_flag != 0)) {
                    message(1, strlen(file_1.*.name), if ((file_1.*.phony != 0) or (file_1.*.cmds == null)) gettext("Nothing to be done for '%s'.") else gettext("'%s' is up to date."), file_1.*.name);
                }
                if (lastgoal == null) {
                    goals = gu.*.next;
                } else {
                    lastgoal.*.next = gu.*.next;
                }
                gu = if (lastgoal == null) goals else lastgoal.*.next;
                if (stop != 0) break;
            } else {
                lastgoal = gu;
                gu = gu.*.next;
            }
        }
        if (gu == null) {
            considered +%= 1;
        }
    }
    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(goals_orig))));
    if (rebuilding_makefiles != 0) {
        touch_flag = t;
        question_flag = q;
        just_print_flag = n;
    }
    return status;
}
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

extern var export_all_variables: c_int;
extern var db_level: c_int;

extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;

var goal_list: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep);
var goal_dep: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep);
var considered: c_uint = 0;
fn update_file(arg_file_1: [*c]struct_file, arg_depth: c_uint) callconv(.C) enum_update_status_36 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    var status: enum_update_status_36 = @as(c_uint, @bitCast(us_success));
    _ = &status;
    var f: [*c]struct_file = undefined;
    _ = &f;
    f = if (file_1.*.double_colon != null) file_1.*.double_colon else file_1;
    if (f.*.considered == considered) {
        if (!((((f.*.updated != 0) and (f.*.update_status > @as(c_uint, @bitCast(us_none)))) and !(f.*.dontcare != 0)) and (f.*.no_diag != 0))) {
            while (true) {
                if ((2 & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Pruning file '%s'.\n"), file_1.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            return if (f.*.command_state == @as(c_uint, @bitCast(cs_finished))) f.*.update_status else @as(c_uint, @bitCast(us_success));
        }
    }
    while (f != null) : (f = f.*.prev) {
        var new: enum_update_status_36 = undefined;
        _ = &new;
        f.*.considered = considered;
        new = update_file_1(f, depth);
        while (f.*.renamed != null) {
            f = f.*.renamed;
        }
        if ((new != 0) and !(keep_going_flag != 0)) return new;
        if ((f.*.command_state == @as(c_uint, @bitCast(cs_running))) or (f.*.command_state == @as(c_uint, @bitCast(cs_deps_running)))) return @as(c_uint, @bitCast(us_success));
        if (new > status) {
            status = new;
        }
    }
    return status;
}
fn update_file_1(arg_file_1: [*c]struct_file, arg_depth: c_uint) callconv(.C) enum_update_status_36 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    var dep_status: enum_update_status_36 = @as(c_uint, @bitCast(us_success));
    _ = &dep_status;
    var this_mtime: uintmax_t = undefined;
    _ = &this_mtime;
    var noexist: c_int = undefined;
    _ = &noexist;
    var must_make: c_int = undefined;
    _ = &must_make;
    var deps_changed: c_int = undefined;
    _ = &deps_changed;
    var ofile: [*c]struct_file = undefined;
    _ = &ofile;
    var du: [*c]struct_dep = undefined;
    _ = &du;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var ad: [*c]struct_dep = undefined;
    _ = &ad;
    var amake: struct_dep = undefined;
    _ = &amake;
    var running: c_int = 0;
    _ = &running;
    while (true) {
        if ((2 & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("Considering target file '%s'.\n"), file_1.*.name);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    if (file_1.*.updated != 0) {
        if (file_1.*.update_status > @as(c_uint, @bitCast(us_none))) {
            while (true) {
                if ((2 & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Recently tried and failed to update file '%s'.\n"), file_1.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            if ((file_1.*.no_diag != 0) and !(file_1.*.dontcare != 0)) {
                complain(file_1);
            }
            return file_1.*.update_status;
        }
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("File '%s' was considered already.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return @as(c_uint, @bitCast(us_success));
    }
    while (true) {
        switch (file_1.*.command_state) {
            @as(c_uint, 0), @as(c_uint, 1) => break,
            @as(c_uint, 2) => {
                while (true) {
                    if ((2 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Still updating file '%s'.\n"), file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                return @as(c_uint, @bitCast(us_success));
            },
            @as(c_uint, 3) => {
                while (true) {
                    if ((2 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Finished updating file '%s'.\n"), file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                return file_1.*.update_status;
            },
            else => {
                abort();
            },
        }
        break;
    }
    file_1.*.no_diag = file_1.*.dontcare;
    _ = blk: {
        const tmp = @as(c_uint, 1);
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    ofile = file_1;
    depth +%= 1;
    this_mtime = if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 1) else file_1.*.last_mtime;
    while (file_1.*.renamed != null) {
        file_1 = file_1.*.renamed;
    }
    noexist = @intFromBool(this_mtime == @as(uintmax_t, 1));
    if (noexist != 0) {
        while (true) {
            if ((1 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("File '%s' does not exist.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    } else if (((this_mtime >= @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) and (this_mtime <= (((((((~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)))) -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) >> @intCast(if (true) @as(c_int, 30) else 0)) << @intCast(if (true) @as(c_int, 30) else 0)) +% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else 1)))) -% @as(uintmax_t, 1)))) and (file_1.*.low_resolution_time != 0)) {
        var ns: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate((this_mtime -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) & @as(uintmax_t, @bitCast(@as(c_long, (1 << @intCast(if (true) @as(c_int, 30) else 0)) - 1)))))));
        _ = &ns;
        if (ns != 0) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(file_1.*.name), gettext("*** Warning: .LOW_RESOLUTION_TIME file '%s' has a high resolution time stamp"), file_1.*.name);
        }
        this_mtime +%= @as(uintmax_t, @bitCast(@as(c_long, ((if (true) @as(c_int, 1000000000) else 1) - 1) - ns)));
    }
    {
        ad = file_1.*.also_make;
        while ((ad != null) and !(noexist != 0)) : (ad = ad.*.next) {
            var adfile: [*c]struct_file = ad.*.file;
            _ = &adfile;
            var fmtime: uintmax_t = if (adfile.*.last_mtime == @as(uintmax_t, 0)) f_mtime(adfile, 1) else adfile.*.last_mtime;
            _ = &fmtime;
            noexist = @intFromBool(fmtime == @as(uintmax_t, 1));
            if (noexist != 0) {
                while (adfile.*.renamed != null) {
                    adfile = adfile.*.renamed;
                }
                while (true) {
                    if ((1 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Grouped target peer '%s' of file '%s' does not exist.\n"), adfile.*.name, file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            } else if (fmtime < this_mtime) {
                this_mtime = fmtime;
            }
        }
    }
    must_make = noexist;
    if ((!(file_1.*.phony != 0) and (file_1.*.cmds == null)) and !(file_1.*.tried_implicit != 0)) {
        _ = try_implicit_rule(file_1, depth);
        file_1.*.tried_implicit = 1;
    }
    if ((((file_1.*.cmds == null) and !(file_1.*.is_target != 0)) and (default_file != null)) and (default_file.*.cmds != null)) {
        while (true) {
            if ((8 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Using default recipe for '%s'.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        file_1.*.cmds = default_file.*.cmds;
    }
    amake.file = file_1;
    amake.next = file_1.*.also_make;
    ad = &amake;
    while (ad != null) {
        var lastd: [*c]struct_dep = null;
        _ = &lastd;
        if (second_expansion != 0) {
            expand_deps(ad.*.file);
        }
        du = ad.*.file.*.deps;
        ad = ad.*.next;
        while (du != null) {
            var new: enum_update_status_36 = undefined;
            _ = &new;
            var mtime: uintmax_t = undefined;
            _ = &mtime;
            var maybe_make: c_int = undefined;
            _ = &maybe_make;
            var dontcare: c_int = 0;
            _ = &dontcare;
            d = if (du.*.shuf != null) du.*.shuf else du;
            if ((d.*.wait_here != 0) and (running != 0)) break;
            while (d.*.file.*.renamed != null) {
                d.*.file = d.*.file.*.renamed;
            }
            mtime = if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 1) else d.*.file.*.last_mtime;
            while (d.*.file.*.renamed != null) {
                d.*.file = d.*.file.*.renamed;
            }
            if ((if (d.*.file.*.double_colon != null) d.*.file.*.double_colon else d.*.file).*.updating != 0) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(file_1.*.name) +% strlen(d.*.file.*.name), gettext("Circular %s <- %s dependency dropped."), file_1.*.name, d.*.file.*.name);
                if (lastd == null) {
                    file_1.*.deps = du.*.next;
                } else {
                    lastd.*.next = du.*.next;
                }
                du = du.*.next;
                continue;
            }
            d.*.file.*.parent = file_1;
            maybe_make = must_make;
            if (rebuilding_makefiles != 0) {
                dontcare = @as(c_int, @bitCast(d.*.file.*.dontcare));
                d.*.file.*.dontcare = file_1.*.dontcare;
            }
            new = check_dep(d.*.file, depth, this_mtime, &maybe_make);
            if (new > dep_status) {
                dep_status = new;
            }
            if (rebuilding_makefiles != 0) {
                d.*.file.*.dontcare = @as(c_uint, @bitCast(dontcare));
            }
            if (!(d.*.ignore_mtime != 0)) {
                must_make = maybe_make;
            }
            while (d.*.file.*.renamed != null) {
                d.*.file = d.*.file.*.renamed;
            }
            {
                var f: [*c]struct_file = d.*.file;
                _ = &f;
                if (f.*.double_colon != null) {
                    f = f.*.double_colon;
                }
                while (true) {
                    running |= (f.*.command_state == @as(c_uint, @bitCast(cs_running))) or (f.*.command_state == @as(c_uint, @bitCast(cs_deps_running)));
                    f = f.*.prev;
                    if (!(f != null)) break;
                }
            }
            if ((dep_status != 0) and !(keep_going_flag != 0)) break;
            if (!(running != 0)) {
                d.*.changed = @as(c_uint, @intFromBool(((if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 1) else d.*.file.*.last_mtime) != mtime) or (mtime == @as(uintmax_t, 1))));
            }
            lastd = du;
            du = du.*.next;
        }
    }
    if ((must_make != 0) or (always_make_flag != 0)) {
        {
            du = file_1.*.deps;
            while (du != null) : (du = du.*.next) {
                d = if (du.*.shuf != null) du.*.shuf else du;
                if ((d.*.wait_here != 0) and (running != 0)) break;
                if (d.*.file.*.intermediate != 0) {
                    var new: enum_update_status_36 = undefined;
                    _ = &new;
                    var dontcare: c_int = 0;
                    _ = &dontcare;
                    var mtime: uintmax_t = if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 1) else d.*.file.*.last_mtime;
                    _ = &mtime;
                    while (d.*.file.*.renamed != null) {
                        d.*.file = d.*.file.*.renamed;
                    }
                    d.*.file.*.parent = file_1;
                    if (rebuilding_makefiles != 0) {
                        dontcare = @as(c_int, @bitCast(d.*.file.*.dontcare));
                        d.*.file.*.dontcare = file_1.*.dontcare;
                    }
                    d.*.file.*.considered = 0;
                    new = update_file(d.*.file, depth);
                    if (new > dep_status) {
                        dep_status = new;
                    }
                    if (rebuilding_makefiles != 0) {
                        d.*.file.*.dontcare = @as(c_uint, @bitCast(dontcare));
                    }
                    while (d.*.file.*.renamed != null) {
                        d.*.file = d.*.file.*.renamed;
                    }
                    {
                        var f: [*c]struct_file = d.*.file;
                        _ = &f;
                        if (f.*.double_colon != null) {
                            f = f.*.double_colon;
                        }
                        while (true) {
                            running |= (f.*.command_state == @as(c_uint, @bitCast(cs_running))) or (f.*.command_state == @as(c_uint, @bitCast(cs_deps_running)));
                            f = f.*.prev;
                            if (!(f != null)) break;
                        }
                    }
                    if ((dep_status != 0) and !(keep_going_flag != 0)) break;
                    if (!(running != 0)) {
                        d.*.changed = @as(c_uint, @intFromBool(((file_1.*.phony != 0) and (file_1.*.cmds != null)) or ((if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 1) else d.*.file.*.last_mtime) != mtime)));
                    }
                }
            }
        }
    }
    _ = blk: {
        const tmp = @as(c_uint, 0);
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = @as(c_uint, 0);
        (if (ofile.*.double_colon != null) ofile.*.double_colon else ofile).*.updating = tmp;
        break :blk tmp;
    };
    depth -%= 1;
    if (running != 0) {
        set_command_state(file_1, @as(c_uint, @bitCast(cs_deps_running)));
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("The prerequisites of '%s' are being made.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return @as(c_uint, @bitCast(us_success));
    }
    while (true) {
        if ((2 & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("Finished prerequisites of target file '%s'.\n"), file_1.*.name);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    if (dep_status != 0) {
        file_1.*.update_status = if (dep_status == @as(c_uint, @bitCast(us_none))) @as(c_uint, @bitCast(us_failed)) else dep_status;
        notice_finished_file(file_1);
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Giving up on target file '%s'.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        if ((((depth == @as(c_uint, 0)) and (keep_going_flag != 0)) and !(just_print_flag != 0)) and !(question_flag != 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(file_1.*.name), gettext("Target '%s' not remade because of errors."), file_1.*.name);
        }
        return dep_status;
    }
    if (file_1.*.command_state == @as(c_uint, @bitCast(cs_deps_running))) {
        set_command_state(file_1, @as(c_uint, @bitCast(cs_not_started)));
    }
    deps_changed = 0;
    {
        d = file_1.*.deps;
        while (d != null) : (d = d.*.next) {
            var d_mtime: uintmax_t = if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 1) else d.*.file.*.last_mtime;
            _ = &d_mtime;
            while (d.*.file.*.renamed != null) {
                d.*.file = d.*.file.*.renamed;
            }
            if (!(d.*.ignore_mtime != 0)) {
                if ((d_mtime == @as(uintmax_t, 1)) and !(d.*.file.*.intermediate != 0)) {
                    must_make = 1;
                }
                deps_changed |= @as(c_int, @bitCast(d.*.changed));
            }
            d.*.changed |= @as(c_uint, @intFromBool((noexist != 0) or (d_mtime > this_mtime)));
            if (!(noexist != 0) and (((1 | 2) & db_level) != 0)) {
                var fmt: [*c]const u8 = null;
                _ = &fmt;
                if (d.*.ignore_mtime != 0) {
                    if ((2 & db_level) != 0) {
                        fmt = gettext("Prerequisite '%s' is order-only for target '%s'.\n");
                    }
                } else if (d_mtime == @as(uintmax_t, 1)) {
                    if ((1 & db_level) != 0) {
                        fmt = gettext("Prerequisite '%s' of target '%s' does not exist.\n");
                    }
                } else if (d.*.changed != 0) {
                    if ((1 & db_level) != 0) {
                        fmt = gettext("Prerequisite '%s' is newer than target '%s'.\n");
                    }
                } else if ((2 & db_level) != 0) {
                    fmt = gettext("Prerequisite '%s' is older than target '%s'.\n");
                }
                if (fmt != null) {
                    print_spaces(depth +% @as(c_uint, 1));
                    _ = printf(fmt, if (d.*.name != null) d.*.name else d.*.file.*.name, file_1.*.name);
                    _ = fflush(stdout);
                }
            }
        }
    }
    if ((file_1.*.double_colon != null) and (file_1.*.deps == null)) {
        must_make = 1;
        while (true) {
            if ((1 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Target '%s' is double-colon and has no prerequisites.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    } else if ((((!(noexist != 0) and (file_1.*.is_target != 0)) and !(deps_changed != 0)) and (file_1.*.cmds == null)) and !(always_make_flag != 0)) {
        must_make = 0;
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("No recipe for '%s' and no prerequisites actually changed.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    } else if ((!(must_make != 0) and (file_1.*.cmds != null)) and (always_make_flag != 0)) {
        must_make = 1;
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Making '%s' due to always-make flag.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    }
    if (!(must_make != 0)) {
        if ((2 & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("No need to remake target '%s'"), file_1.*.name);
            if (!((file_1.*.name == file_1.*.hname) or ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, file_1.*.hname.*)))) and ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(file_1.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), file_1.*.hname + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
                _ = printf(gettext("; using VPATH name '%s'"), file_1.*.hname);
            }
            _ = puts(".");
            _ = fflush(stdout);
        }
        if (!(file_1.*.notintermediate != 0) and (no_intermediates == @as(c_uint, 0))) {
            file_1.*.secondary = 1;
        }
        notice_finished_file(file_1);
        while (file_1 != null) {
            file_1.*.name = file_1.*.hname;
            file_1 = file_1.*.prev;
        }
        return @as(c_uint, @bitCast(us_success));
    }
    while (true) {
        if ((1 & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("Must remake target '%s'.\n"), file_1.*.name);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    if (!((file_1.*.name == file_1.*.hname) or ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, file_1.*.hname.*)))) and ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(file_1.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), file_1.*.hname + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
        while (true) {
            if ((1 & db_level) != 0) {
                _ = printf(gettext("  Ignoring VPATH name '%s'.\n"), file_1.*.hname);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        file_1.*.ignore_vpath = 1;
    }
    remake_file(file_1);
    if (file_1.*.command_state != @as(c_uint, @bitCast(cs_finished))) {
        while (true) {
            if ((2 & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Recipe of '%s' is being run.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return @as(c_uint, @bitCast(us_success));
    }
    while (true) {
        switch (file_1.*.update_status) {
            @as(c_uint, 3) => {
                while (true) {
                    if ((1 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Failed to remake target file '%s'.\n"), file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                break;
            },
            @as(c_uint, 0) => {
                while (true) {
                    if ((1 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Successfully remade target file '%s'.\n"), file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                break;
            },
            @as(c_uint, 2) => {
                while (true) {
                    if ((1 & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Target file '%s' needs to be remade under -q.\n"), file_1.*.name);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                break;
            },
            @as(c_uint, 1) => break,
            else => {},
        }
        break;
    }
    file_1.*.updated = 1;
    return file_1.*.update_status;
}
fn check_dep(arg_file_1: [*c]struct_file, arg_depth: c_uint, arg_this_mtime: uintmax_t, arg_must_make_ptr: [*c]c_int) callconv(.C) enum_update_status_36 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    var this_mtime = arg_this_mtime;
    _ = &this_mtime;
    var must_make_ptr = arg_must_make_ptr;
    _ = &must_make_ptr;
    var ofile: [*c]struct_file = undefined;
    _ = &ofile;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var dep_status: enum_update_status_36 = @as(c_uint, @bitCast(us_success));
    _ = &dep_status;
    _ = blk: {
        const tmp = @as(c_uint, 1);
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    ofile = file_1;
    if ((file_1.*.phony != 0) or !(file_1.*.intermediate != 0)) {
        var mtime: uintmax_t = undefined;
        _ = &mtime;
        dep_status = update_file(file_1, depth);
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        mtime = if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 1) else file_1.*.last_mtime;
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        if ((mtime == @as(uintmax_t, 1)) or (mtime > this_mtime)) {
            must_make_ptr.* = 1;
        }
    } else {
        var mtime: uintmax_t = undefined;
        _ = &mtime;
        if ((!(file_1.*.phony != 0) and (file_1.*.cmds == null)) and !(file_1.*.tried_implicit != 0)) {
            _ = try_implicit_rule(file_1, depth);
            file_1.*.tried_implicit = 1;
        }
        if ((((file_1.*.cmds == null) and !(file_1.*.is_target != 0)) and (default_file != null)) and (default_file.*.cmds != null)) {
            while (true) {
                if ((8 & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Using default commands for '%s'.\n"), file_1.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            file_1.*.cmds = default_file.*.cmds;
        }
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        mtime = if (file_1.*.last_mtime == @as(uintmax_t, 0)) f_mtime(file_1, 1) else file_1.*.last_mtime;
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        if ((mtime != @as(uintmax_t, 1)) and (mtime > this_mtime)) {
            must_make_ptr.* = 1;
        } else {
            var ld: [*c]struct_dep = undefined;
            _ = &ld;
            var deps_running: c_int = 0;
            _ = &deps_running;
            if (file_1.*.command_state != @as(c_uint, @bitCast(cs_running))) {
                if (file_1.*.command_state == @as(c_uint, @bitCast(cs_deps_running))) {
                    file_1.*.considered = 0;
                }
                set_command_state(file_1, @as(c_uint, @bitCast(cs_not_started)));
            }
            ld = null;
            if (second_expansion != 0) {
                expand_deps(file_1);
            }
            d = file_1.*.deps;
            while (d != null) {
                var new: enum_update_status_36 = undefined;
                _ = &new;
                var maybe_make: c_int = undefined;
                _ = &maybe_make;
                if ((if (d.*.file.*.double_colon != null) d.*.file.*.double_colon else d.*.file).*.updating != 0) {
                    @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(file_1.*.name) +% strlen(d.*.file.*.name), gettext("Circular %s <- %s dependency dropped."), file_1.*.name, d.*.file.*.name);
                    if (ld == null) {
                        file_1.*.deps = d.*.next;
                        free(@as(?*anyopaque, @ptrCast(d)));
                        d = file_1.*.deps;
                    } else {
                        ld.*.next = d.*.next;
                        free(@as(?*anyopaque, @ptrCast(d)));
                        d = ld.*.next;
                    }
                    continue;
                }
                d.*.file.*.parent = file_1;
                maybe_make = must_make_ptr.*;
                new = check_dep(d.*.file, depth +% @as(c_uint, 1), this_mtime, &maybe_make);
                if (new > dep_status) {
                    dep_status = new;
                }
                if (!(d.*.ignore_mtime != 0)) {
                    must_make_ptr.* = maybe_make;
                }
                while (d.*.file.*.renamed != null) {
                    d.*.file = d.*.file.*.renamed;
                }
                if ((dep_status != 0) and !(keep_going_flag != 0)) break;
                if ((d.*.file.*.command_state == @as(c_uint, @bitCast(cs_running))) or (d.*.file.*.command_state == @as(c_uint, @bitCast(cs_deps_running)))) {
                    deps_running = 1;
                }
                ld = d;
                d = d.*.next;
            }
            if (deps_running != 0) {
                set_command_state(file_1, @as(c_uint, @bitCast(cs_deps_running)));
            }
        }
    }
    _ = blk: {
        const tmp = @as(c_uint, 0);
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = @as(c_uint, 0);
        (if (ofile.*.double_colon != null) ofile.*.double_colon else ofile).*.updating = tmp;
        break :blk tmp;
    };
    return dep_status;
}
fn touch_file(arg_file_1: [*c]struct_file) callconv(.C) enum_update_status_36 {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (!(run_silent != 0)) {
        message(0, strlen(file_1.*.name), "touch %s", file_1.*.name);
    }
    if (just_print_flag != 0) return @as(c_uint, @bitCast(us_success));
    if (ar_name(file_1.*.name) != 0) return @as(c_uint, @bitCast(if (ar_touch(file_1.*.name) != 0) us_failed else us_success)) else {
        var fd: c_int = undefined;
        _ = &fd;
        while (((blk: {
            const tmp = open(file_1.*.name, 2 | @as(c_int, 64), @as(c_int, 438));
            fd = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (fd < 0) {
            while (true) {
                perror_with_name("touch: open: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            }
        } else {
            var statbuf: struct_stat = undefined;
            _ = &statbuf;
            var buf: u8 = 'x';
            _ = &buf;
            var e: c_int = undefined;
            _ = &e;
            while (((blk: {
                const tmp = fstat(fd, &statbuf);
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            if (e < 0) while (true) {
                perror_with_name("touch: fstat: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(fd, @as(?*anyopaque, @ptrCast(&buf)), @as(usize, 1))))));
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            if (e < 0) while (true) {
                perror_with_name("touch: read: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            {
                var o: off_t = undefined;
                _ = &o;
                while (((blk: {
                    const tmp = lseek(fd, 0, 0);
                    o = tmp;
                    break :blk tmp;
                }) == @as(off_t, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
                if (o < 0) while (true) {
                    perror_with_name("touch: lseek: ", file_1.*.name);
                    return @as(c_uint, @bitCast(us_failed));
                };
            }
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(write(fd, @as(?*const anyopaque, @ptrCast(&buf)), @as(usize, 1))))));
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            if (e < 0) while (true) {
                perror_with_name("touch: write: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            if (statbuf.st_size == @as(__off_t, 0)) {
                _ = close(fd);
                while (((blk: {
                    const tmp = open(file_1.*.name, 2 | @as(c_int, 512), @as(c_int, 438));
                    fd = tmp;
                    break :blk tmp;
                }) == -1) and (__errno_location().* == 4)) {}
                if (fd < 0) while (true) {
                    perror_with_name("touch: open: ", file_1.*.name);
                    return @as(c_uint, @bitCast(us_failed));
                };
            }
            _ = close(fd);
        }
    }
    return @as(c_uint, @bitCast(us_success));
}
fn remake_file(arg_file_1: [*c]struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (file_1.*.cmds == null) {
        if (file_1.*.phony != 0) {
            file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        } else if (file_1.*.is_target != 0) {
            file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        } else {
            if (!(rebuilding_makefiles != 0) or !(file_1.*.dontcare != 0)) {
                complain(file_1);
            }
            file_1.*.update_status = @as(c_uint, @bitCast(us_failed));
        }
    } else {
        chop_commands(file_1.*.cmds);
        if (!(touch_flag != 0) or (file_1.*.cmds.*.any_recurse != 0)) {
            execute_file_commands(file_1);
            return;
        }
        file_1.*.update_status = @as(c_uint, @bitCast(us_success));
    }
    notice_finished_file(file_1);
}
fn name_mtime(arg_name: [*c]const u8) callconv(.C) uintmax_t {
    var name = arg_name;
    _ = &name;
    var mtime: uintmax_t = undefined;
    _ = &mtime;
    var st: struct_stat = undefined;
    _ = &st;
    var e: c_int = undefined;
    _ = &e;
    while (((blk: {
        const tmp = stat(name, &st);
        e = tmp;
        break :blk tmp;
    }) == -1) and (__errno_location().* == 4)) {}
    if (e == 0) {
        mtime = file_timestamp_cons(name, st.st_mtim.tv_sec, st.st_mtim.tv_nsec);
    } else if ((__errno_location().* == 2) or (__errno_location().* == @as(c_int, 20))) {
        mtime = 1;
    } else {
        perror_with_name("stat: ", name);
        return 1;
    }
    if ((check_symlink_flag != 0) and (strlen(name) <= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4096)))))) {
        var lpath: [4097]u8 = undefined;
        _ = &lpath;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&lpath))), name);
        while (true) {
            var ltime: uintmax_t = undefined;
            _ = &ltime;
            var lbuf: [4097]u8 = undefined;
            _ = &lbuf;
            var llen: c_long = undefined;
            _ = &llen;
            var p: [*c]u8 = undefined;
            _ = &p;
            while (((blk: {
                const tmp = lstat(@as([*c]u8, @ptrCast(@alignCast(&lpath))), &st);
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            if (e != 0) {
                if ((__errno_location().* != 2) and (__errno_location().* != @as(c_int, 20))) {
                    perror_with_name("lstat: ", @as([*c]u8, @ptrCast(@alignCast(&lpath))));
                }
                break;
            }
            if (!((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 40960))))) break;
            ltime = file_timestamp_cons(@as([*c]u8, @ptrCast(@alignCast(&lpath))), st.st_mtim.tv_sec, st.st_mtim.tv_nsec);
            if (ltime > mtime) {
                mtime = ltime;
            }
            while (((blk: {
                const tmp = readlink(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))), @as(usize, @bitCast(@as(c_long, @as(c_int, 4096) - 1))));
                llen = tmp;
                break :blk tmp;
            }) == @as(c_long, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
            if (llen < @as(c_long, 0)) {
                perror_with_name("readlink: ", @as([*c]u8, @ptrCast(@alignCast(&lpath))));
                break;
            }
            lbuf[@as(c_ulong, @intCast(llen))] = '\x00';
            if ((@as(c_int, @bitCast(@as(c_uint, lbuf[0]))) == @as(c_int, '/')) or ((blk: {
                const tmp = strrchr(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as(c_int, '/'));
                p = tmp;
                break :blk tmp;
            }) == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) {
                _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))));
            } else if (((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@as([*c]u8, @ptrCast(@alignCast(&lpath)))))), @sizeOf(u8)) + llen) + @as(c_long, 2)) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 4096))))) break else {
                _ = strcpy(p + @as(usize, @bitCast(@as(isize, @intCast(1)))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))));
            }
        }
    }
    return mtime;
}
fn library_search(arg_lib: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t) callconv(.C) [*c]const u8 {
    var lib = arg_lib;
    _ = &lib;
    var mtime_ptr = arg_mtime_ptr;
    _ = &mtime_ptr;
    const dirs = struct {
        var static: [4][*c]const u8 = [4][*c]const u8{
            "/lib",
            "/usr/lib",
            "/usr/local/lib",
            null,
        };
    };
    _ = &dirs;
    var file_1: [*c]const u8 = null;
    _ = &file_1;
    var libpatterns: [*c]u8 = undefined;
    _ = &libpatterns;
    var mtime: uintmax_t = undefined;
    _ = &mtime;
    var p: [*c]u8 = undefined;
    _ = &p;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var len: usize = undefined;
    _ = &len;
    var liblen: usize = undefined;
    _ = &liblen;
    var best_vpath: c_uint = 0;
    _ = &best_vpath;
    var best_path: c_uint = 0;
    _ = &best_path;
    var dp: [*c][*c]const u8 = undefined;
    _ = &dp;
    libpatterns = xstrdup(variable_expand("$(.LIBPATTERNS)"));
    lib += @as(usize, @bitCast(@as(isize, @intCast(2))));
    liblen = strlen(lib);
    p2 = libpatterns;
    while ((blk: {
        const tmp = find_next_token(&p2, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        const buf = struct {
            var static: [*c]u8 = null;
        };
        _ = &buf;
        const buflen = struct {
            var static: usize = 0;
        };
        _ = &buflen;
        const libdir_maxlen = struct {
            var static: usize = 0;
        };
        _ = &libdir_maxlen;
        const std_dirs = struct {
            var static: c_uint = 0;
        };
        _ = &std_dirs;
        var libbuf: [*c]u8 = undefined;
        _ = &libbuf;
        {
            var c: u8 = p[len];
            _ = &c;
            var p3: [*c]u8 = undefined;
            _ = &p3;
            var p4: [*c]u8 = undefined;
            _ = &p4;
            p[len] = '\x00';
            p3 = find_percent(p);
            if (!(p3 != null)) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(p), gettext(".LIBPATTERNS element '%s' is not a pattern"), p);
                p[len] = c;
                continue;
            }
            p4 = variable_buffer_output(variable_buffer, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p3) -% @intFromPtr(p))), @sizeOf(u8)))));
            p4 = variable_buffer_output(p4, lib, liblen);
            p4 = variable_buffer_output(p4, p3 + @as(usize, @bitCast(@as(isize, @intCast(1)))), len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p3) -% @intFromPtr(p))), @sizeOf(u8)))));
            p[len] = c;
            libbuf = variable_buffer;
        }
        mtime = name_mtime(libbuf);
        if (mtime != @as(uintmax_t, 1)) {
            if (mtime_ptr != null) {
                mtime_ptr.* = mtime;
            }
            file_1 = strcache_add(libbuf);
            break;
        }
        {
            var vpath_index: c_uint = undefined;
            _ = &vpath_index;
            var path_index: c_uint = undefined;
            _ = &path_index;
            var f: [*c]const u8 = vpath_search(libbuf, if (mtime_ptr != null) &mtime else null, &vpath_index, &path_index);
            _ = &f;
            if (f != null) {
                if (((file_1 == null) or (vpath_index < best_vpath)) or ((vpath_index == best_vpath) and (path_index < best_path))) {
                    file_1 = f;
                    best_vpath = vpath_index;
                    best_path = path_index;
                    if (mtime_ptr != null) {
                        mtime_ptr.* = mtime;
                    }
                }
            }
        }
        if (!(buflen.static != 0)) {
            {
                dp = @as([*c][*c]const u8, @ptrCast(@alignCast(&dirs.static)));
                while (dp.* != null) : (dp += 1) {
                    var l: usize = strlen(dp.*);
                    _ = &l;
                    if (l > libdir_maxlen.static) {
                        libdir_maxlen.static = l;
                    }
                    std_dirs.static +%= 1;
                }
            }
            buflen.static = strlen(libbuf);
            buf.static = @as([*c]u8, @ptrCast(@alignCast(xmalloc((libdir_maxlen.static +% buflen.static) +% @as(usize, 2)))));
        } else if (buflen.static < strlen(libbuf)) {
            buflen.static = strlen(libbuf);
            buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), (libdir_maxlen.static +% buflen.static) +% @as(usize, 2)))));
        }
        {
            var vpath_index: c_uint = ~@as(c_uint, 0) -% std_dirs.static;
            _ = &vpath_index;
            {
                dp = @as([*c][*c]const u8, @ptrCast(@alignCast(&dirs.static)));
                while (dp.* != null) : (dp += 1) {
                    _ = sprintf(buf.static, "%s/%s", dp.*, libbuf);
                    mtime = name_mtime(buf.static);
                    if (mtime != @as(uintmax_t, 1)) {
                        if ((file_1 == null) or (vpath_index < best_vpath)) {
                            file_1 = strcache_add(buf.static);
                            best_vpath = vpath_index;
                            if (mtime_ptr != null) {
                                mtime_ptr.* = mtime;
                            }
                        }
                    }
                    vpath_index +%= 1;
                }
            }
        }
    }
    free(@as(?*anyopaque, @ptrCast(libpatterns)));
    return file_1;
}
fn check_also_make(arg_file_1: [*c]const struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var ad: [*c]struct_dep = undefined;
    _ = &ad;
    var mtime: uintmax_t = file_1.*.last_mtime;
    _ = &mtime;
    if (mtime == @as(uintmax_t, 0)) {
        mtime = name_mtime(file_1.*.name);
    }
    if (((mtime >= @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) and (mtime <= (((((((~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)))) -% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) >> @intCast(if (true) @as(c_int, 30) else 0)) << @intCast(if (true) @as(c_int, 30) else 0)) +% @as(uintmax_t, @bitCast(@as(c_long, 2 + 1)))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else 1)))) -% @as(uintmax_t, 1)))) and (mtime > file_1.*.mtime_before_update)) {
        ad = file_1.*.also_make;
        while (ad != null) : (ad = ad.*.next) if (ad.*.file.*.last_mtime == @as(uintmax_t, 1)) {
            @"error"(if (file_1.*.cmds != null) &file_1.*.cmds.*.fileinfo else @as([*c]floc, @ptrFromInt(0)), strlen(ad.*.file.*.name), gettext("warning: pattern recipe did not update peer target '%s'."), ad.*.file.*.name);
        };
    }
}
fn complain(arg_file_1: [*c]struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var d: [*c]struct_dep = undefined;
    _ = &d;
    {
        d = file_1.*.deps;
        while (d != null) : (d = d.*.next) {
            if (((d.*.file.*.updated != 0) and (d.*.file.*.update_status > @as(c_uint, @bitCast(us_none)))) and (file_1.*.no_diag != 0)) {
                complain(d.*.file);
                break;
            }
        }
    }
    if (d == null) {
        show_goal_error();
        if (file_1.*.parent != null) {
            var l: usize = (strlen(file_1.*.name) +% strlen(file_1.*.parent.*.name)) +% @as(c_ulong, 4);
            _ = &l;
            var m: [*c]const u8 = gettext("%sNo rule to make target '%s', needed by '%s'%s");
            _ = &m;
            if (!(keep_going_flag != 0)) {
                fatal(@as([*c]floc, @ptrFromInt(0)), l, m, "", file_1.*.name, file_1.*.parent.*.name, "");
            }
            @"error"(@as([*c]floc, @ptrFromInt(0)), l, m, "*** ", file_1.*.name, file_1.*.parent.*.name, ".");
        } else {
            var l: usize = strlen(file_1.*.name) +% @as(c_ulong, 4);
            _ = &l;
            var m: [*c]const u8 = gettext("%sNo rule to make target '%s'%s");
            _ = &m;
            if (!(keep_going_flag != 0)) {
                fatal(@as([*c]floc, @ptrFromInt(0)), l, m, "", file_1.*.name, "");
            }
            @"error"(@as([*c]floc, @ptrFromInt(0)), l, m, "*** ", file_1.*.name, ".");
        }
        file_1.*.no_diag = 0;
    }
}
