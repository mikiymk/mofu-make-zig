const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

const __uid_t = c_uint;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __clock_t = c_long;

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
const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
const __sigval_t = union_sigval;
const struct_unnamed_3 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
};
const struct_unnamed_4 = extern struct {
    si_tid: c_int = @import("std").mem.zeroes(c_int),
    si_overrun: c_int = @import("std").mem.zeroes(c_int),
    si_sigval: __sigval_t = @import("std").mem.zeroes(__sigval_t),
};
const struct_unnamed_5 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    si_sigval: __sigval_t = @import("std").mem.zeroes(__sigval_t),
};
const struct_unnamed_6 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    si_status: c_int = @import("std").mem.zeroes(c_int),
    si_utime: __clock_t = @import("std").mem.zeroes(__clock_t),
    si_stime: __clock_t = @import("std").mem.zeroes(__clock_t),
};
const struct_unnamed_9 = extern struct {
    _lower: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _upper: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
const union_unnamed_8 = extern union {
    _addr_bnd: struct_unnamed_9,
    _pkey: __uint32_t,
};
const struct_unnamed_7 = extern struct {
    si_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    si_addr_lsb: c_short = @import("std").mem.zeroes(c_short),
    _bounds: union_unnamed_8 = @import("std").mem.zeroes(union_unnamed_8),
};
const struct_unnamed_10 = extern struct {
    si_band: c_long = @import("std").mem.zeroes(c_long),
    si_fd: c_int = @import("std").mem.zeroes(c_int),
};
const struct_unnamed_11 = extern struct {
    _call_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _syscall: c_int = @import("std").mem.zeroes(c_int),
    _arch: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_2 = extern union {
    _pad: [28]c_int,
    _kill: struct_unnamed_3,
    _timer: struct_unnamed_4,
    _rt: struct_unnamed_5,
    _sigchld: struct_unnamed_6,
    _sigfault: struct_unnamed_7,
    _sigpoll: struct_unnamed_10,
    _sigsys: struct_unnamed_11,
};
const siginfo_t = extern struct {
    si_signo: c_int = @import("std").mem.zeroes(c_int),
    si_errno: c_int = @import("std").mem.zeroes(c_int),
    si_code: c_int = @import("std").mem.zeroes(c_int),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    _sifields: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};

const __sighandler_t = ?*const fn (c_int) callconv(.C) void;

extern fn sigemptyset(__set: [*c]sigset_t) c_int;

extern fn sigaddset(__set: [*c]sigset_t, __signo: c_int) c_int;

const union_unnamed_23 = extern union {
    sa_handler: __sighandler_t,
    sa_sigaction: ?*const fn (c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void,
};
const struct_sigaction = extern struct {
    __sigaction_handler: union_unnamed_23 = @import("std").mem.zeroes(union_unnamed_23),
    sa_mask: __sigset_t = @import("std").mem.zeroes(__sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
    sa_restorer: ?*const fn () callconv(.C) void = @import("std").mem.zeroes(?*const fn () callconv(.C) void),
};
extern fn sigprocmask(__how: c_int, noalias __set: [*c]const sigset_t, noalias __oset: [*c]sigset_t) c_int;

extern fn sigaction(__sig: c_int, noalias __act: [*c]const struct_sigaction, noalias __oact: [*c]struct_sigaction) c_int;

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

extern fn chdir(__path: [*c]const u8) c_int;

extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;

extern var environ: [*c][*c]u8;

extern fn _exit(__status: c_int) noreturn;

extern fn ttyname(__fd: c_int) [*c]u8;

extern fn isatty(__fd: c_int) c_int;

extern fn unlink(__name: [*c]const u8) c_int;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;

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

extern fn fclose(__stream: [*c]FILE) c_int;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;

extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putchar(__c: c_int) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;

extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;

extern fn feof(__stream: [*c]FILE) c_int;
extern fn ferror(__stream: [*c]FILE) c_int;

extern fn fileno(__stream: [*c]FILE) c_int;

const _ISspace: c_int = 8192;

const _ISalnum: c_int = 8;

extern fn __ctype_b_loc() [*c][*c]const c_ushort;

extern fn tolower(__c: c_int) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

extern fn time(__timer: [*c]time_t) time_t;

extern fn ctime(__timer: [*c]const time_t) [*c]u8;

extern fn __errno_location() [*c]c_int;

extern fn atof(__nptr: [*c]const u8) f64;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;
extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;

extern fn exit(__status: c_int) noreturn;

extern fn putenv(__string: [*c]u8) c_int;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn setlocale(__category: c_int, __locale: [*c]const u8) [*c]u8;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

extern fn textdomain(__domainname: [*c]const u8) [*c]u8;
extern fn bindtextdomain(__domainname: [*c]const u8, __dirname: [*c]const u8) [*c]u8;

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

const us_failed: c_int = 3;
const enum_update_status_36 = c_uint;

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
extern fn concat(c_uint, ...) [*c]const u8;
const message = @import("output.zig").message;
const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

const o_default: c_int = 0;
const o_env: c_int = 1;
const o_file: c_int = 2;
const o_env_override: c_int = 3;
const o_command: c_int = 4;
const o_override: c_int = 5;
const o_automatic: c_int = 6;

const enum_variable_origin = c_int;

const enum_variable_flavor = c_uint;

const v_export: c_int = 1;
const v_noexport: c_int = 2;

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
export fn reset_makeflags(arg_origin: enum_variable_origin) void {
    var origin = arg_origin;
    _ = &origin;
    decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, 1), origin);
    construct_include_path(if (include_dirs != null) include_dirs.*.list else null);
    _ = define_makeflags(rebuilding_makefiles);
}
const flag: c_int = 0;
const flag_off: c_int = 1;
const string: c_int = 2;
const strlist: c_int = 3;
const filename: c_int = 4;
const positive_int: c_int = 5;
const floating: c_int = 6;
const ignore: c_int = 7;
const enum_unnamed_38 = c_uint;
const struct_command_switch = extern struct {
    c: c_int = @import("std").mem.zeroes(c_int),
    type: enum_unnamed_38 = @import("std").mem.zeroes(enum_unnamed_38),
    value_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    env: c_uint = @import("std").mem.zeroes(c_uint),
    toenv: c_uint = @import("std").mem.zeroes(c_uint),
    no_makefile: c_uint = @import("std").mem.zeroes(c_uint),
    specified: c_uint = @import("std").mem.zeroes(c_uint),
    noarg_value: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    default_value: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    long_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    origin: [*c]enum_variable_origin = @import("std").mem.zeroes([*c]enum_variable_origin),
};
const struct_stringlist = extern struct {
    list: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    idx: c_uint = @import("std").mem.zeroes(c_uint),
    max: c_uint = @import("std").mem.zeroes(c_uint),
};
export fn define_makeflags(arg_makefile: c_int) [*c]struct_variable {
    var makefile = arg_makefile;
    _ = &makefile;
    const ref: [13:0]u8 = "MAKEOVERRIDES".*;
    _ = &ref;
    const posixref: [23:0]u8 = "-*-command-variables-*-".*;
    _ = &posixref;
    const evalref: [19:0]u8 = "$(-*-eval-flags-*-)".*;
    _ = &evalref;
    var cs: [*c]const struct_command_switch = undefined;
    _ = &cs;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var flagstring: [*c]u8 = undefined;
    _ = &flagstring;
    var p: [*c]u8 = undefined;
    _ = &p;
    const struct_flag = extern struct {
        next: [*c]@This() = @import("std").mem.zeroes([*c]@This()),
        cs: [*c]const struct_command_switch = @import("std").mem.zeroes([*c]const struct_command_switch),
        arg: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    };
    _ = &struct_flag;
    var flags: [*c]struct_flag = null;
    _ = &flags;
    var last: [*c]struct_flag = null;
    _ = &last;
    var flagslen: usize = 0;
    _ = &flagslen;
    {
        cs = @as([*c]struct_command_switch, @ptrCast(@alignCast(&switches)));
        while (cs.*.c != @as(c_int, '\x00')) : (cs += 1) if ((cs.*.toenv != 0) and (!(makefile != 0) or !(cs.*.no_makefile != 0))) {
            while (true) {
                switch (cs.*.type) {
                    @as(c_uint, 7) => break,
                    @as(c_uint, 0), @as(c_uint, 1) => {
                        if ((@intFromBool(!(@as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* != 0)) == @intFromBool(cs.*.type == @as(c_uint, @bitCast(flag_off)))) and (((cs.*.default_value == @as(?*const anyopaque, @ptrCast(@as(?*anyopaque, @ptrFromInt(0))))) or (cs.*.specified != 0)) or (@as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* != @as([*c]c_int, @ptrCast(@volatileCast(@constCast(cs.*.default_value)))).*))) while (true) {
                            var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                            _ = &new;
                            new.*.cs = cs;
                            new.*.arg = null;
                            new.*.next = null;
                            if (!(flags != null)) {
                                flags = new;
                            } else {
                                last.*.next = new;
                            }
                            last = new;
                            if (new.*.arg == null) {
                                flagslen +%= @as(usize, 3);
                            } else {
                                flagslen +%= @as(usize, @bitCast(@as(c_long, ((1 + 1) + 1) + (3 * 0))));
                            }
                            if (!(cs.*.c <= @as(c_int, 127))) {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                            }
                            if (!false) break;
                        };
                        break;
                    },
                    @as(c_uint, 5) => {
                        if ((cs.*.default_value != null) and (@as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* == @as([*c]c_uint, @ptrCast(@volatileCast(@constCast(cs.*.default_value)))).*)) break;
                        if ((cs.*.noarg_value != null) and (@as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* == @as([*c]c_uint, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*)) {
                            while (true) {
                                var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                                _ = &new;
                                new.*.cs = cs;
                                new.*.arg = "";
                                new.*.next = null;
                                if (!(flags != null)) {
                                    flags = new;
                                } else {
                                    last.*.next = new;
                                }
                                last = new;
                                if (new.*.arg == null) {
                                    flagslen +%= @as(usize, 3);
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, ((1 + 1) + 1) + (3 * 0))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        } else {
                            var buf: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 30))))))));
                            _ = &buf;
                            _ = sprintf(buf, "%u", @as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).*);
                            while (true) {
                                var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                                _ = &new;
                                new.*.cs = cs;
                                new.*.arg = buf;
                                new.*.next = null;
                                if (!(flags != null)) {
                                    flags = new;
                                } else {
                                    last.*.next = new;
                                }
                                last = new;
                                if (new.*.arg == null) {
                                    flagslen +%= @as(usize, 3);
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (1 + 1) + 1))) +% (@as(c_ulong, 3) *% strlen(buf))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        }
                        break;
                    },
                    @as(c_uint, 6) => {
                        if ((cs.*.default_value != null) and (@as([*c]f64, @ptrCast(@alignCast(cs.*.value_ptr))).* == @as([*c]f64, @ptrCast(@volatileCast(@constCast(cs.*.default_value)))).*)) break;
                        if ((cs.*.noarg_value != null) and (@as([*c]f64, @ptrCast(@alignCast(cs.*.value_ptr))).* == @as([*c]f64, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*)) {
                            while (true) {
                                var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                                _ = &new;
                                new.*.cs = cs;
                                new.*.arg = "";
                                new.*.next = null;
                                if (!(flags != null)) {
                                    flags = new;
                                } else {
                                    last.*.next = new;
                                }
                                last = new;
                                if (new.*.arg == null) {
                                    flagslen +%= @as(usize, 3);
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, ((1 + 1) + 1) + (3 * 0))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        } else {
                            var buf: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 100))))))));
                            _ = &buf;
                            _ = sprintf(buf, "%g", @as([*c]f64, @ptrCast(@alignCast(cs.*.value_ptr))).*);
                            while (true) {
                                var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                                _ = &new;
                                new.*.cs = cs;
                                new.*.arg = buf;
                                new.*.next = null;
                                if (!(flags != null)) {
                                    flags = new;
                                } else {
                                    last.*.next = new;
                                }
                                last = new;
                                if (new.*.arg == null) {
                                    flagslen +%= @as(usize, 3);
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (1 + 1) + 1))) +% (@as(c_ulong, 3) *% strlen(buf))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        }
                        break;
                    },
                    @as(c_uint, 2) => {
                        p = @as([*c][*c]u8, @ptrCast(@alignCast(cs.*.value_ptr))).*;
                        if (p != null) while (true) {
                            var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                            _ = &new;
                            new.*.cs = cs;
                            new.*.arg = p;
                            new.*.next = null;
                            if (!(flags != null)) {
                                flags = new;
                            } else {
                                last.*.next = new;
                            }
                            last = new;
                            if (new.*.arg == null) {
                                flagslen +%= @as(usize, 3);
                            } else {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (1 + 1) + 1))) +% (@as(c_ulong, 3) *% strlen(p))));
                            }
                            if (!(cs.*.c <= @as(c_int, 127))) {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                            }
                            if (!false) break;
                        };
                        break;
                    },
                    @as(c_uint, 4), @as(c_uint, 3) => {
                        {
                            var sl: [*c]struct_stringlist = @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).*;
                            _ = &sl;
                            if (sl != null) {
                                var i: c_uint = undefined;
                                _ = &i;
                                {
                                    i = 0;
                                    while (i < sl.*.idx) : (i +%= 1) while (true) {
                                        var new: [*c]struct_flag = @as([*c]struct_flag, @ptrCast(@alignCast(malloc(@sizeOf(struct_flag)))));
                                        _ = &new;
                                        new.*.cs = cs;
                                        new.*.arg = sl.*.list[i];
                                        new.*.next = null;
                                        if (!(flags != null)) {
                                            flags = new;
                                        } else {
                                            last.*.next = new;
                                        }
                                        last = new;
                                        if (new.*.arg == null) {
                                            flagslen +%= @as(usize, 3);
                                        } else {
                                            flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (1 + 1) + 1))) +% (@as(c_ulong, 3) *% strlen(sl.*.list[i]))));
                                        }
                                        if (!(cs.*.c <= @as(c_int, 127))) {
                                            flagslen +%= @as(usize, @bitCast(@as(c_ulong, 2) +% strlen(cs.*.long_name)));
                                        }
                                        if (!false) break;
                                    };
                                }
                            }
                        }
                        break;
                    },
                    else => {
                        abort();
                    },
                }
                break;
            }
        };
    }
    flagslen +%= @as(usize, @bitCast((((@as(c_ulong, 4) +% (@sizeOf([24]u8) -% @as(c_ulong, 1))) +% @as(c_ulong, 4)) +% (@sizeOf([20]u8) -% @as(c_ulong, 1))) +% @as(c_ulong, 4)));
    flagstring = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, 1) +% flagslen) +% @as(usize, 1)))));
    _ = memset(@as(?*anyopaque, @ptrCast(flagstring)), @as(c_int, '\x00'), (@as(usize, 1) +% flagslen) +% @as(usize, 1));
    p = flagstring;
    (blk: {
        const ref_1 = &p;
        const tmp = ref_1.*;
        ref_1.* += 1;
        break :blk tmp;
    }).* = '-';
    while (((flags != null) and !(flags.*.arg != null)) and (flags.*.cs.*.c <= @as(c_int, 127))) {
        (blk: {
            const ref_1 = &p;
            const tmp = ref_1.*;
            ref_1.* += 1;
            break :blk tmp;
        }).* = @as(u8, @bitCast(@as(i8, @truncate(flags.*.cs.*.c))));
        flags = flags.*.next;
    }
    while (flags != null) {
        (blk: {
            const ref_1 = &p;
            const tmp = ref_1.*;
            ref_1.* += 1;
            break :blk tmp;
        }).* = ' ';
        (blk: {
            const ref_1 = &p;
            const tmp = ref_1.*;
            ref_1.* += 1;
            break :blk tmp;
        }).* = '-';
        if (flags.*.cs.*.c <= @as(c_int, 127)) {
            (blk: {
                const ref_1 = &p;
                const tmp = ref_1.*;
                ref_1.* += 1;
                break :blk tmp;
            }).* = @as(u8, @bitCast(@as(i8, @truncate(flags.*.cs.*.c))));
        } else {
            (blk: {
                const ref_1 = &p;
                const tmp = ref_1.*;
                ref_1.* += 1;
                break :blk tmp;
            }).* = '-';
            p = stpcpy(p, flags.*.cs.*.long_name);
        }
        if ((flags.*.arg != null) and (@as(c_int, @bitCast(@as(c_uint, flags.*.arg[0]))) != @as(c_int, '\x00'))) {
            if (!(flags.*.cs.*.c <= @as(c_int, 127))) {
                (blk: {
                    const ref_1 = &p;
                    const tmp = ref_1.*;
                    ref_1.* += 1;
                    break :blk tmp;
                }).* = '=';
            }
            p = quote_for_env(p, flags.*.arg);
        }
        flags = flags.*.next;
    }
    if (p == (&flagstring[1])) {
        flagstring[0] = '\x00';
        p = flagstring;
    }
    _ = define_variable_in_set("MFLAGS", @sizeOf([7]u8) -% @as(c_ulong, 1), flagstring + @as(usize, @bitCast(@as(isize, @intCast(if ((@as(c_int, @bitCast(@as(c_uint, flagstring[0]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, flagstring[1]))) == @as(c_int, ' '))) 2 else 0)))), @as(c_uint, @bitCast(o_env)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    if (eval_strings != null) {
        (blk: {
            const ref_1 = &p;
            const tmp = ref_1.*;
            ref_1.* += 1;
            break :blk tmp;
        }).* = ' ';
        p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(@as([*c]const u8, @ptrCast(@alignCast(&evalref))))), @sizeOf([20]u8) -% @as(c_ulong, 1)))));
    }
    {
        var r: [*c]const u8 = if (posix_pedantic != 0) @as([*c]const u8, @ptrCast(@alignCast(&posixref))) else @as([*c]const u8, @ptrCast(@alignCast(&ref)));
        _ = &r;
        var l: usize = strlen(r);
        _ = &l;
        v = lookup_variable(r, l);
        if (((v != null) and (v.*.value != null)) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[0]))) != @as(c_int, '\x00'))) {
            p = stpcpy(p, " -- ");
            (blk: {
                const ref_1 = &p;
                const tmp = ref_1.*;
                ref_1.* += 1;
                break :blk tmp;
            }).* = '$';
            (blk: {
                const ref_1 = &p;
                const tmp = ref_1.*;
                ref_1.* += 1;
                break :blk tmp;
            }).* = '(';
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(r)), l))));
            (blk: {
                const ref_1 = &p;
                const tmp = ref_1.*;
                ref_1.* += 1;
                break :blk tmp;
            }).* = ')';
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, flagstring[0]))) == @as(c_int, '-')) {
        flagstring += 1;
    }
    v = define_variable_in_set("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, 1), flagstring, @as(c_uint, @bitCast(if (env_overrides != 0) o_env_override else o_file)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    v.*.special = 1;
    return v;
}
export fn should_print_dir() c_int {
    if (print_directory_flag >= 0) return print_directory_flag;
    return @intFromBool(!(silent_flag != 0) and ((makelevel > @as(c_uint, 0)) or (directories != @as([*c]struct_stringlist, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))));
}
export fn temp_stdin_unlink() void {
    if (stdin_offset >= 0) {
        var nm: [*c]const u8 = (blk: {
            const tmp = stdin_offset;
            if (tmp >= 0) break :blk makefiles.*.list + @as(usize, @intCast(tmp)) else break :blk makefiles.*.list - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*;
        _ = &nm;
        var r: c_int = 0;
        _ = &r;
        stdin_offset = -1;
        while (((blk: {
            const tmp = unlink(nm);
            r = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (((r < 0) and (__errno_location().* != 2)) and !(handling_fatal_signal != 0)) {
            perror_with_name(gettext("unlink (temporary file): "), nm);
        }
    }
}
export fn die(arg_status: c_int) noreturn {
    var status = arg_status;
    _ = &status;
    const dying = struct {
        var static: u8 = 0;
    };
    _ = &dying;
    if (!(dying.static != 0)) {
        var err: c_int = undefined;
        _ = &err;
        dying.static = 1;
        if (print_version_flag != 0) {
            print_version();
        }
        temp_stdin_unlink();
        err = @intFromBool(status != 0);
        while (job_slots_used > @as(c_uint, 0)) {
            reap_children(1, err);
        }
        remote_cleanup();
        remove_intermediates(0);
        if (print_data_base_flag != 0) {
            print_data_base();
        }
        if (verify_flag != 0) {
            verify_file_data_base();
        }
        clean_jobserver(status);
        if (output_context != null) {
            output_close(output_context);
            if (output_context != (&make_sync)) {
                output_close(&make_sync);
            }
            while (true) {
                output_context = null;
                if (!false) break;
            }
        }
        output_close(null);
        osync_clear();
        if (directory_before_chdir != null) {
            var _x: c_int = undefined;
            _ = &_x;
            _x = chdir(directory_before_chdir);
        }
    }
    exit(status);
}
extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;
extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;

extern fn get_tmpdir() [*c]const u8;

extern fn get_tmpfile([*c][*c]u8) [*c]FILE;

extern fn print_dir_data_base() void;

extern fn hash_init_directories() void;
extern fn define_default_variables() void;
extern fn undefine_default_variables() void;
extern fn set_default_suffixes() void;
extern fn install_default_suffix_rules() void;
extern fn install_default_implicit_rules() void;
const build_vpath_lists = @import("vpath.zig").build_vpath_lists;

extern fn construct_include_path(arg_dirs: [*c][*c]const u8) void;

extern fn strcache_init() void;
extern fn strcache_print_stats(prefix: [*c]const u8) void;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

extern fn guile_gmake_setup(flocp: [*c]const floc) c_int;

extern fn load_file(flocp: [*c]const floc, file: [*c]struct_file, noerror: c_int) c_int;

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
extern fn remote_setup() void;
extern fn remote_cleanup() void;

const print_variable_data_base = @import("variable.zig").print_variable_data_base;
const print_vpath_data_base = @import("vpath.zig").print_vpath_data_base;
extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
const version_string = @import("version.zig").version_string;
extern var remote_description: [*c]u8;
const make_host = @import("version.zig").make_host;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;
extern fn check_io_state() c_uint;

extern fn jobserver_enabled() c_uint;
extern fn jobserver_setup(job_slots: c_int, style: [*c]const u8) c_uint;
extern fn jobserver_parse_auth(auth: [*c]const u8) c_uint;
extern fn jobserver_get_auth() [*c]u8;

extern fn jobserver_clear() void;
extern fn jobserver_acquire_all() c_uint;
extern fn jobserver_release(is_fatal: c_int) void;

extern fn jobserver_pre_child(c_int) void;
extern fn jobserver_post_child(c_int) void;

extern fn osync_setup() void;
extern fn osync_get_mutex() [*c]u8;
extern fn osync_parse_mutex(mutex: [*c]const u8) c_uint;
extern fn osync_clear() void;

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
extern fn lookup_file(name: [*c]const u8) [*c]struct_file;
extern fn enter_file(name: [*c]const u8) [*c]struct_file;

extern fn remove_intermediates(sig: c_int) void;
extern fn snap_deps() void;

extern fn init_hash_files() void;
extern fn verify_file_data_base() void;

extern fn print_file_data_base() void;

extern fn f_mtime(file: [*c]struct_file, search: c_int) uintmax_t;
extern var snapped_deps: c_int;
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
extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;
extern fn tilde_expand(name: [*c]const u8) [*c]u8;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;

extern fn read_all_makefiles(makefiles: [*c][*c]const u8) [*c]struct_goaldep;
extern fn eval_buffer(buffer: [*c]u8, floc: [*c]const floc) void;
extern fn update_goal_chain(goals: [*c]struct_goaldep) enum_update_status_36;
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

const initialize_variable_output = @import("expand.zig").initialize_variable_output;

const define_automatic_variables = @import("variable.zig").define_automatic_variables;

extern fn try_variable_definition(flocp: [*c]const floc, line: [*c]const u8, origin: enum_variable_origin, target_var: c_int) [*c]struct_variable;
extern fn init_hash_global_variable_set() void;
extern fn hash_init_function_table() void;

extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;

extern var export_all_variables: c_int;
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

extern fn output_init(out: [*c]struct_output) void;
extern fn output_close(out: [*c]struct_output) void;

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
extern fn child_handler(sig: c_int) void;

extern fn reap_children(block: c_int, err: c_int) void;

extern fn exec_command(argv: [*c][*c]u8, envp: [*c][*c]u8) pid_t;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
extern fn fatal_error_signal(sig: c_int) void;

const struct_rule = extern struct {
    next: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    targets: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    lens: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    suffixes: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
    _defn: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num: c_ushort = @import("std").mem.zeroes(c_ushort),
    terminal: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
};

extern var pattern_rules: [*c]struct_rule;
extern var last_pattern_rule: [*c]struct_rule;
extern var num_pattern_rules: c_uint;
extern var max_pattern_deps: c_uint;
extern var max_pattern_targets: c_uint;
extern var max_pattern_dep_length: usize;
extern var suffix_file: [*c]struct_file;
extern fn snap_implicit_rules() void;
extern fn convert_to_pattern() void;

extern fn print_rule_data_base() void;
extern var db_level: c_int;
const struct_option = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    has_arg: c_int = @import("std").mem.zeroes(c_int),
    flag: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    val: c_int = @import("std").mem.zeroes(c_int),
};
extern fn getopt_long(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;

extern fn shuffle_set_mode(cmdarg: [*c]const u8) void;
extern fn shuffle_get_mode() [*c]const u8;
extern fn shuffle_deps_recursive(g: [*c]struct_dep) void;

fn clean_jobserver(arg_status: c_int) callconv(.C) void {
    var status = arg_status;
    _ = &status;
    if ((jobserver_enabled() != 0) and (jobserver_tokens != 0)) {
        if (status != 2) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3), "INTERNAL: Exiting with %u jobserver tokens (should be 0)!", jobserver_tokens);
        } else while ((blk: {
            const ref = &jobserver_tokens;
            ref.* -%= 1;
            break :blk ref.*;
        }) != 0) {
            jobserver_release(0);
        }
    }
    if (master_job_slots != 0) {
        var tokens: c_uint = @as(c_uint, 1) +% jobserver_acquire_all();
        _ = &tokens;
        if (tokens != master_job_slots) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)) *% @as(c_ulong, 2), "INTERNAL: Exiting with %u jobserver tokens available; should be %u!", tokens, master_job_slots);
        }
        reset_jobserver();
    }
}
fn print_data_base() callconv(.C) void {
    var when: time_t = time(@as([*c]time_t, @ptrFromInt(0)));
    _ = &when;
    print_version();
    _ = printf(gettext("\n# Make data base, printed on %s"), ctime(&when));
    print_variable_data_base();
    print_dir_data_base();
    print_rule_data_base();
    print_file_data_base();
    print_vpath_data_base();
    strcache_print_stats("#");
    when = time(@as([*c]time_t, @ptrFromInt(0)));
    _ = printf(gettext("\n# Finished Make data base on %s\n"), ctime(&when));
}
fn print_version() callconv(.C) void {
    const printed_version = struct {
        var static: c_int = 0;
    };
    _ = &printed_version;
    var precede: [*c]const u8 = if (print_data_base_flag != 0) "# " else "";
    _ = &precede;
    if (printed_version.static != 0) return;
    _ = printf("%sGNU Make %s\n", precede, version_string);
    if (!(remote_description != null) or (@as(c_int, @bitCast(@as(c_uint, remote_description.*))) == @as(c_int, '\x00'))) {
        _ = printf(gettext("%sBuilt for %s\n"), precede, make_host);
    } else {
        _ = printf(gettext("%sBuilt for %s (%s)\n"), precede, make_host, remote_description);
    }
    _ = printf("%sCopyright (C) 1988-2023 Free Software Foundation, Inc.\n", precede);
    _ = printf(gettext("%sLicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>\n%sThis is free software: you are free to change and redistribute it.\n%sThere is NO WARRANTY, to the extent permitted by law.\n"), precede, precede, precede);
    printed_version.static = 1;
}
fn decode_switches(arg_argc: c_int, arg_argv: [*c][*c]const u8, arg_origin: enum_variable_origin) callconv(.C) void {
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    var origin = arg_origin;
    _ = &origin;
    var bad: c_int = 0;
    _ = &bad;
    var cs: [*c]struct_command_switch = undefined;
    _ = &cs;
    var sl: [*c]struct_stringlist = undefined;
    _ = &sl;
    var c: c_int = undefined;
    _ = &c;
    init_switches();
    opterr = @intFromBool(origin == @as(c_uint, @bitCast(o_command)));
    optind = 0;
    while (optind < argc) {
        var coptarg: [*c]const u8 = undefined;
        _ = &coptarg;
        c = getopt_long(argc, @as([*c]const [*c]u8, @ptrCast(@alignCast(argv))), @as([*c]u8, @ptrCast(@alignCast(&options))), @as([*c]struct_option, @ptrCast(@alignCast(&long_options))), null);
        coptarg = optarg;
        if (c == -1) break else if (c == 1) {
            handle_non_switch_argument(coptarg, origin);
        } else if (c == @as(c_int, '?')) {
            bad = 1;
        } else {
            cs = @as([*c]struct_command_switch, @ptrCast(@alignCast(&switches)));
            while (cs.*.c != @as(c_int, '\x00')) : (cs += 1) if (cs.*.c == c) {
                var doit: c_int = @intFromBool((origin == @as(c_uint, @bitCast(o_command))) or ((cs.*.env != 0) and ((cs.*.origin == @as([*c]enum_variable_origin, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) or (origin >= cs.*.origin.*))));
                _ = &doit;
                if (doit != 0) {
                    cs.*.specified = 1;
                }
                while (true) {
                    switch (cs.*.type) {
                        else => {
                            abort();
                            break;
                        },
                        @as(c_uint, 7) => break,
                        @as(c_uint, 0), @as(c_uint, 1) => {
                            if (doit != 0) {
                                @as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* = @intFromBool(cs.*.type == @as(c_uint, @bitCast(flag)));
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                        @as(c_uint, 2), @as(c_uint, 3), @as(c_uint, 4) => {
                            if (!(doit != 0)) break;
                            if (!(coptarg != null)) {
                                coptarg = @as([*c]const u8, @ptrCast(@alignCast(cs.*.noarg_value)));
                            } else if (@as(c_int, @bitCast(@as(c_uint, coptarg.*))) == @as(c_int, '\x00')) {
                                var opt: [2]u8 = "c"[0..1].* ++ [1]u8{0} ** 1;
                                _ = &opt;
                                var op: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(&opt)));
                                _ = &op;
                                if (cs.*.c <= @as(c_int, 127)) {
                                    opt[0] = @as(u8, @bitCast(@as(i8, @truncate(cs.*.c))));
                                } else {
                                    op = cs.*.long_name;
                                }
                                @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(op), gettext("the '%s%s' option requires a non-empty string argument"), if (cs.*.c <= @as(c_int, 127)) "-" else "--", op);
                                bad = 1;
                                break;
                            }
                            if (cs.*.type == @as(c_uint, @bitCast(string))) {
                                var val: [*c][*c]u8 = @as([*c][*c]u8, @ptrCast(@alignCast(cs.*.value_ptr)));
                                _ = &val;
                                free(@as(?*anyopaque, @ptrCast(val.*)));
                                val.* = xstrdup(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                                break;
                            }
                            sl = @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).*;
                            if (sl == null) {
                                sl = @as([*c]struct_stringlist, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_stringlist)))));
                                sl.*.max = 5;
                                sl.*.idx = 0;
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, 5) *% @sizeOf([*c]u8)))));
                                @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).* = sl;
                            } else if (sl.*.idx == (sl.*.max -% @as(c_uint, 1))) {
                                sl.*.max +%= @as(c_uint, 5);
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(sl.*.list)), @as(c_ulong, @bitCast(@as(c_ulong, sl.*.max))) *% @sizeOf([*c]u8)))));
                            }
                            if (cs.*.c != @as(c_int, 'f')) {
                                var k: c_uint = undefined;
                                _ = &k;
                                {
                                    k = 0;
                                    while (k < sl.*.idx) : (k +%= 1) if ((sl.*.list[k] == coptarg) or ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, @bitCast(@as(c_uint, coptarg.*)))) and ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, '\x00')) or !(strcmp(sl.*.list[k] + @as(usize, @bitCast(@as(isize, @intCast(1)))), coptarg + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) break;
                                }
                                if (k < sl.*.idx) break;
                            }
                            if (cs.*.type == @as(c_uint, @bitCast(strlist))) {
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = xstrdup(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            } else if (cs.*.c == (@as(c_int, 127) + @as(c_int, 10))) {
                                if (stdin_offset > 0) {
                                    fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), "INTERNAL: multiple --temp-stdin options provided!");
                                }
                                stdin_offset = @as(c_int, @bitCast(sl.*.idx));
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = strcache_add(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            } else {
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = expand_command_line_file(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            sl.*.list[sl.*.idx] = null;
                            break;
                        },
                        @as(c_uint, 5) => {
                            if ((coptarg == null) and (argc > optind)) {
                                var cp: [*c]const u8 = undefined;
                                _ = &cp;
                                {
                                    cp = (blk: {
                                        const tmp = optind;
                                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*;
                                    while ((@as(c_uint, @bitCast(@as(c_uint, cp[0]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, 9)) : (cp += 1) {}
                                }
                                if (@as(c_int, @bitCast(@as(c_uint, cp[0]))) == @as(c_int, '\x00')) {
                                    coptarg = (blk: {
                                        const tmp = blk_1: {
                                            const ref = &optind;
                                            const tmp_2 = ref.*;
                                            ref.* += 1;
                                            break :blk_1 tmp_2;
                                        };
                                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*;
                                }
                            }
                            if (!(doit != 0)) break;
                            if (coptarg != null) {
                                var err: [*c]const u8 = undefined;
                                _ = &err;
                                var i: c_uint = make_toui(coptarg, &err);
                                _ = &i;
                                if ((err != null) or (i == @as(c_uint, 0))) {
                                    @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("the '-%c' option requires a positive integer argument"), cs.*.c);
                                    bad = 1;
                                } else {
                                    @as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* = i;
                                    if (cs.*.origin != null) {
                                        cs.*.origin.* = origin;
                                    }
                                }
                            } else {
                                @as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* = @as([*c]c_uint, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*;
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                        @as(c_uint, 6) => {
                            if (((coptarg == null) and (optind < argc)) and (((@as(c_uint, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[0]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, 9)) or (@as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[0]))) == @as(c_int, '.')))) {
                                coptarg = (blk: {
                                    const tmp = blk_1: {
                                        const ref = &optind;
                                        const tmp_2 = ref.*;
                                        ref.* += 1;
                                        break :blk_1 tmp_2;
                                    };
                                    if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                }).*;
                            }
                            if (doit != 0) {
                                @as([*c]f64, @ptrCast(@alignCast(cs.*.value_ptr))).* = if (coptarg != null) atof(coptarg) else @as([*c]f64, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*;
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                    }
                    break;
                }
                break;
            };
        }
    }
    while (optind < argc) {
        handle_non_switch_argument((blk: {
            const tmp = blk_1: {
                const ref = &optind;
                const tmp_2 = ref.*;
                ref.* += 1;
                break :blk_1 tmp_2;
            };
            if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*, origin);
    }
    if ((bad != 0) and (origin == @as(c_uint, @bitCast(o_command)))) {
        print_usage(bad);
    }
    decode_debug_flags();
    decode_output_sync_flags();
    run_silent = silent_flag;
}
fn decode_env_switches(arg_envar: [*c]const u8, arg_len: usize, arg_origin: enum_variable_origin) callconv(.C) void {
    var envar = arg_envar;
    _ = &envar;
    var len = arg_len;
    _ = &len;
    var origin = arg_origin;
    _ = &origin;
    var varref: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, 2) +% len) +% @as(usize, 2)))));
    _ = &varref;
    var value: [*c]u8 = undefined;
    _ = &value;
    var p: [*c]u8 = undefined;
    _ = &p;
    var buf: [*c]u8 = undefined;
    _ = &buf;
    var argc: c_int = undefined;
    _ = &argc;
    var argv: [*c][*c]const u8 = undefined;
    _ = &argv;
    p = varref;
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '$';
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '(';
    p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(envar)), len))));
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = ')';
    p.* = '\x00';
    value = variable_expand(varref);
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & (2 | 4)) != 0) {
        value += 1;
    }
    len = strlen(value);
    if (len == @as(usize, 0)) return;
    argv = @as([*c][*c]const u8, @ptrCast(@alignCast(malloc(((@as(usize, 1) +% len) +% @as(usize, 1)) *% @sizeOf([*c]u8)))));
    argv[0] = "";
    argc = 1;
    buf = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, 1) +% len) +% @as(usize, 1)))));
    buf[0] = '-';
    p = buf + @as(usize, @bitCast(@as(isize, @intCast(1))));
    (blk: {
        const tmp = argc;
        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = p;
    while (@as(c_int, @bitCast(@as(c_uint, value.*))) != @as(c_int, '\x00')) {
        if ((@as(c_int, @bitCast(@as(c_uint, value.*))) == @as(c_int, '\\')) and (@as(c_int, @bitCast(@as(c_uint, value[1]))) != @as(c_int, '\x00'))) {
            value += 1;
        } else if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & 2) != 0) {
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\x00';
            (blk: {
                const tmp = blk_1: {
                    const ref = &argc;
                    ref.* += 1;
                    break :blk_1 ref.*;
                };
                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = p;
            while (true) {
                value += 1;
                if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & 2) != 0)) break;
            }
            continue;
        }
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &value;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    p.* = '\x00';
    (blk: {
        const tmp = blk_1: {
            const ref = &argc;
            ref.* += 1;
            break :blk_1 ref.*;
        };
        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = null;
    _ = 0;
    if ((@as(c_int, @bitCast(@as(c_uint, argv[1][0]))) != @as(c_int, '-')) and (strchr(argv[1], @as(c_int, '=')) == null)) {
        argv[1] = buf;
    }
    decode_switches(argc, argv, origin);
}
fn quote_for_env(arg_out: [*c]u8, arg_in: [*c]const u8) callconv(.C) [*c]u8 {
    var out = arg_out;
    _ = &out;
    var in = arg_in;
    _ = &in;
    while (@as(c_int, @bitCast(@as(c_uint, in.*))) != @as(c_int, '\x00')) {
        if (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '$')) {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '$';
        } else if (((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & 2) != 0) or (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '\\'))) {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\\';
        }
        (blk: {
            const ref = &out;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &in;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    return out;
}
fn initialize_global_hash_tables() callconv(.C) void {
    init_hash_global_variable_set();
    strcache_init();
    init_hash_files();
    hash_init_directories();
    hash_init_function_table();
}
var silent_flag: c_int = @import("std").mem.zeroes(c_int);
const default_silent_flag: c_int = 0;
var silent_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));
var db_flags: [*c]struct_stringlist = null;
var debug_flag: c_int = 0;
pub export var output_sync_option: [*c]u8 = null;
const default_keep_going_flag: c_int = 0;
var keep_going_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));
var print_directory_flag: c_int = -1;
const default_print_directory_flag: c_int = -1;
var print_directory_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));
var makefiles: [*c]struct_stringlist = null;
var master_job_slots: c_uint = 0;
var arg_job_slots: c_int = -1;
const default_job_slots: c_int = -1;
const inf_jobs: c_int = 0;
var jobserver_style: [*c]u8 = null;
var shuffle_mode: [*c]u8 = null;
var sync_mutex: [*c]u8 = null;
pub export var default_load_average: f64 = -1.0;
var directories: [*c]struct_stringlist = null;
var include_dirs: [*c]struct_stringlist = null;
var old_files: [*c]struct_stringlist = null;
var new_files: [*c]struct_stringlist = null;
var eval_strings: [*c]struct_stringlist = null;
var print_usage_flag: c_int = 0;
var always_make_set: c_int = 0;
var stdin_offset: c_int = -1;
const usage: [36][*c]const u8 = [36][*c]const u8{
    "Options:\n",
    "  -b, -m                      Ignored for compatibility.\n",
    "  -B, --always-make           Unconditionally make all targets.\n",
    "  -C DIRECTORY, --directory=DIRECTORY\n                              Change to DIRECTORY before doing anything.\n",
    "  -d                          Print lots of debugging information.\n",
    "  --debug[=FLAGS]             Print various types of debugging information.\n",
    "  -e, --environment-overrides\n                              Environment variables override makefiles.\n",
    "  -E STRING, --eval=STRING    Evaluate STRING as a makefile statement.\n",
    "  -f FILE, --file=FILE, --makefile=FILE\n                              Read FILE as a makefile.\n",
    "  -h, --help                  Print this message and exit.\n",
    "  -i, --ignore-errors         Ignore errors from recipes.\n",
    "  -I DIRECTORY, --include-dir=DIRECTORY\n                              Search DIRECTORY for included makefiles.\n",
    "  -j [N], --jobs[=N]          Allow N jobs at once; infinite jobs with no arg.\n",
    "  --jobserver-style=STYLE     Select the style of jobserver to use.\n",
    "  -k, --keep-going            Keep going when some targets can't be made.\n",
    "  -l [N], --load-average[=N], --max-load[=N]\n                              Don't start multiple jobs unless load is below N.\n",
    "  -L, --check-symlink-times   Use the latest mtime between symlinks and target.\n",
    "  -n, --just-print, --dry-run, --recon\n                              Don't actually run any recipe; just print them.\n",
    "  -o FILE, --old-file=FILE, --assume-old=FILE\n                              Consider FILE to be very old and don't remake it.\n",
    "  -O[TYPE], --output-sync[=TYPE]\n                              Synchronize output of parallel jobs by TYPE.\n",
    "  -p, --print-data-base       Print make's internal database.\n",
    "  -q, --question              Run no recipe; exit status says if up to date.\n",
    "  -r, --no-builtin-rules      Disable the built-in implicit rules.\n",
    "  -R, --no-builtin-variables  Disable the built-in variable settings.\n",
    "  --shuffle[={SEED|random|reverse|none}]\n                              Perform shuffle of prerequisites and goals.\n",
    "  -s, --silent, --quiet       Don't echo recipes.\n",
    "  --no-silent                 Echo recipes (disable --silent mode).\n",
    "  -S, --no-keep-going, --stop\n                              Turns off -k.\n",
    "  -t, --touch                 Touch targets instead of remaking them.\n",
    "  --trace                     Print tracing information.\n",
    "  -v, --version               Print the version number of make and exit.\n",
    "  -w, --print-directory       Print the current directory.\n",
    "  --no-print-directory        Turn off -w, even if it was turned on implicitly.\n",
    "  -W FILE, --what-if=FILE, --new-file=FILE, --assume-new=FILE\n                              Consider FILE to be infinitely new.\n",
    "  --warn-undefined-variables  Warn when an undefined variable is referenced.\n",
    null,
};
var trace_flag: c_int = 0;
var switches: [40]struct_command_switch = [40]struct_command_switch{
    struct_command_switch{
        .c = @as(c_int, 'b'),
        .type = @as(c_uint, @bitCast(ignore)),
        .value_ptr = null,
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'B'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&always_make_set)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "always-make",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'd'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&debug_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'e'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&env_overrides)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "environment-overrides",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'E'),
        .type = @as(c_uint, @bitCast(strlist)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&eval_strings)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "eval",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'h'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_usage_flag)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "help",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'i'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&ignore_errors_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "ignore-errors",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'k'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&keep_going_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_keep_going_flag)),
        .long_name = "keep-going",
        .origin = &keep_going_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'L'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&check_symlink_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "check-symlink-times",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'm'),
        .type = @as(c_uint, @bitCast(ignore)),
        .value_ptr = null,
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'n'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&just_print_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 1),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "just-print",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'p'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_data_base_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "print-data-base",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'q'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&question_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 1),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "question",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'r'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&no_builtin_rules_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "no-builtin-rules",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'R'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&no_builtin_variables_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "no-builtin-variables",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 's'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&silent_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_silent_flag)),
        .long_name = "silent",
        .origin = &silent_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'S'),
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&keep_going_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_keep_going_flag)),
        .long_name = "no-keep-going",
        .origin = &keep_going_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 't'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&touch_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 1),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "touch",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'v'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_version_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "version",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'w'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_directory_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_print_directory_flag)),
        .long_name = "print-directory",
        .origin = &print_directory_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'C'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&directories)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "directory",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'f'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&makefiles)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "file",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'I'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&include_dirs)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "include-dir",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'j'),
        .type = @as(c_uint, @bitCast(positive_int)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&arg_job_slots)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = @as(?*const anyopaque, @ptrCast(&inf_jobs)),
        .default_value = @as(?*const anyopaque, @ptrCast(&default_job_slots)),
        .long_name = "jobs",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'l'),
        .type = @as(c_uint, @bitCast(floating)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&max_load_average)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = @as(?*const anyopaque, @ptrCast(&default_load_average)),
        .default_value = @as(?*const anyopaque, @ptrCast(&default_load_average)),
        .long_name = "load-average",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'o'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&old_files)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "old-file",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'O'),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&output_sync_option)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = @as(?*const anyopaque, @ptrCast("target")),
        .default_value = null,
        .long_name = "output-sync",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'W'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&new_files)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "what-if",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 1,
        .type = @as(c_uint, @bitCast(strlist)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&db_flags)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = @as(?*const anyopaque, @ptrCast("basic")),
        .default_value = null,
        .long_name = "debug",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 2,
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_auth)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-auth",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 3,
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&trace_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "trace",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 4,
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_directory_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_print_directory_flag)),
        .long_name = "no-print-directory",
        .origin = &print_directory_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 5,
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&warn_undefined_variables_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "warn-undefined-variables",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 7,
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&sync_mutex)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "sync-mutex",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 8,
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&silent_flag)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_silent_flag)),
        .long_name = "no-silent",
        .origin = &silent_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + 9,
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_auth)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-fds",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 10),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&makefiles)),
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "temp-stdin",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 11),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&shuffle_mode)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 1),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = @as(?*const anyopaque, @ptrCast("random")),
        .default_value = null,
        .long_name = "shuffle",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 12),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_style)),
        .env = @as(c_uint, 1),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-style",
        .origin = null,
    },
    struct_command_switch{
        .c = 0,
        .type = @as(c_uint, 0),
        .value_ptr = null,
        .env = @as(c_uint, 0),
        .toenv = @as(c_uint, 0),
        .no_makefile = @as(c_uint, 0),
        .specified = @as(c_uint, 0),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
};
var long_option_aliases: [9]struct_option = [9]struct_option{
    struct_option{
        .name = "quiet",
        .has_arg = 0,
        .flag = null,
        .val = @as(c_int, 's'),
    },
    struct_option{
        .name = "stop",
        .has_arg = 0,
        .flag = null,
        .val = @as(c_int, 'S'),
    },
    struct_option{
        .name = "new-file",
        .has_arg = 1,
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-new",
        .has_arg = 1,
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-old",
        .has_arg = 1,
        .flag = null,
        .val = @as(c_int, 'o'),
    },
    struct_option{
        .name = "max-load",
        .has_arg = 2,
        .flag = null,
        .val = @as(c_int, 'l'),
    },
    struct_option{
        .name = "dry-run",
        .has_arg = 0,
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "recon",
        .has_arg = 0,
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "makefile",
        .has_arg = 1,
        .flag = null,
        .val = @as(c_int, 'f'),
    },
};
var goals: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep);
var lastgoal: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep);
const struct_command_variable = extern struct {
    next: [*c]struct_command_variable = @import("std").mem.zeroes([*c]struct_command_variable),
    variable: [*c]struct_variable = @import("std").mem.zeroes([*c]struct_variable),
};
var command_variables: [*c]struct_command_variable = @import("std").mem.zeroes([*c]struct_command_variable);
pub export var directory_before_chdir: [*c]u8 = @import("std").mem.zeroes([*c]u8);
pub export var make_sync: struct_output = @import("std").mem.zeroes(struct_output);
pub export var fatal_signal_set: sigset_t = @import("std").mem.zeroes(sigset_t);
const bsd_signal_ret_t = ?*const fn (c_int) callconv(.C) void;
fn bsd_signal(arg_sig: c_int, arg_func: bsd_signal_ret_t) callconv(.C) bsd_signal_ret_t {
    var sig = arg_sig;
    _ = &sig;
    var func = arg_func;
    _ = &func;
    var act: struct_sigaction = undefined;
    _ = &act;
    var oact: struct_sigaction = undefined;
    _ = &oact;
    act.__sigaction_handler.sa_handler = func;
    act.sa_flags = 268435456;
    _ = sigemptyset(&act.sa_mask);
    _ = sigaddset(&act.sa_mask, sig);
    if (sigaction(sig, &act, &oact) != 0) return @as(__sighandler_t, @ptrFromInt(-1));
    return oact.__sigaction_handler.sa_handler;
}
fn initialize_stopchar_map() callconv(.C) void {
    var i: c_int = undefined;
    _ = &i;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '\x00')))] = 1;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '#')))] = 8;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ';')))] = 16;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '=')))] = 32;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ':')))] = 64;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '|')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 256)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '.')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 512) | @as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ',')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 1024)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '(')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '{')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '}')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ')')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '$')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 16384)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '-')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '_')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ' ')))] = 2;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '\t')))] = 2;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '/')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 32768)))));
    {
        i = 1;
        while (i <= ((@as(c_int, 127) * 2) + 1)) : (i += 1) {
            if (((@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISspace)))))))) != 0) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(c_uint, @intCast(i))]))) & 2) != 0)) {
                stopchar_map[@as(c_uint, @intCast(i))] |= @as(c_ushort, @bitCast(@as(c_short, @truncate(4))));
            } else if ((@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISalnum)))))))) != 0) {
                stopchar_map[@as(c_uint, @intCast(i))] |= @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
            }
        }
    }
}
fn close_stdout() callconv(.C) void {
    var prev_fail: c_int = ferror(stdout);
    _ = &prev_fail;
    var fclose_fail: c_int = fclose(stdout);
    _ = &fclose_fail;
    if ((prev_fail != 0) or (fclose_fail != 0)) {
        if (fclose_fail != 0) {
            perror_with_name(gettext("write error: stdout"), "");
        } else {
            @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("write error: stdout"));
        }
        exit(1);
    }
}
fn expand_command_line_file(arg_name: [*c]const u8) callconv(.C) [*c]const u8 {
    var name = arg_name;
    _ = &name;
    var cp: [*c]const u8 = undefined;
    _ = &cp;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    if (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '\x00')) {
        fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("empty string invalid as file name"));
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '~')) {
        expanded = tilde_expand(name);
        if ((expanded != null) and (@as(c_int, @bitCast(@as(c_uint, expanded[0]))) != @as(c_int, '\x00'))) {
            name = expanded;
        }
    }
    while ((@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '.')) and (@as(c_int, @bitCast(@as(c_uint, name[1]))) == @as(c_int, '/'))) {
        name += @as(usize, @bitCast(@as(isize, @intCast(2))));
        while (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '/')) {
            name += 1;
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '\x00')) {
        name = "./";
    }
    cp = strcache_add(name);
    free(@as(?*anyopaque, @ptrCast(expanded)));
    return cp;
}
fn debug_signal_handler(arg_sig: c_int) callconv(.C) void {
    var sig = arg_sig;
    _ = &sig;
    db_level = if (db_level != 0) 0 else 1;
}
fn decode_debug_flags() callconv(.C) void {
    var pp: [*c][*c]const u8 = undefined;
    _ = &pp;
    if (debug_flag != 0) {
        db_level = @as(c_int, 4095);
    }
    if (trace_flag != 0) {
        db_level |= @as(c_int, 16) | @as(c_int, 32);
    }
    if (db_flags != null) {
        pp = db_flags.*.list;
        while (pp.* != null) : (pp += 1) {
            var p: [*c]const u8 = pp.*;
            _ = &p;
            while (true) {
                while (true) {
                    switch (tolower(@as(c_int, @bitCast(@as(c_uint, p[0]))))) {
                        @as(c_int, 97) => {
                            db_level |= @as(c_int, 4095);
                            break;
                        },
                        @as(c_int, 98) => {
                            db_level |= 1;
                            break;
                        },
                        @as(c_int, 105) => {
                            db_level |= 1 | 8;
                            break;
                        },
                        @as(c_int, 106) => {
                            db_level |= 4;
                            break;
                        },
                        @as(c_int, 109) => {
                            db_level |= 1 | @as(c_int, 256);
                            break;
                        },
                        @as(c_int, 110) => {
                            db_level = 0;
                            break;
                        },
                        @as(c_int, 112) => {
                            db_level |= @as(c_int, 16);
                            break;
                        },
                        @as(c_int, 118) => {
                            db_level |= 1 | 2;
                            break;
                        },
                        @as(c_int, 119) => {
                            db_level |= @as(c_int, 32);
                            break;
                        },
                        else => {
                            fatal(@as([*c]floc, @ptrFromInt(0)), strlen(p), gettext("unknown debug level specification '%s'"), p);
                        },
                    }
                    break;
                }
                while (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    ref.* += 1;
                    break :blk ref.*;
                }).*))) != @as(c_int, '\x00')) if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ',')) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ' '))) {
                    p += 1;
                    break;
                };
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) break;
            }
        }
    }
    if (db_level != 0) {
        verify_flag = 1;
    }
    if (!(db_level != 0)) {
        debug_flag = 0;
    }
}
fn decode_output_sync_flags() callconv(.C) void {
    if (output_sync_option != null) {
        if ((output_sync_option == ("none")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "none".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(1)))), "none" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
            output_sync = 0;
        } else if ((output_sync_option == ("line")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "line".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(1)))), "line" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
            output_sync = 1;
        } else if ((output_sync_option == ("target")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "target".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(1)))), "target" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
            output_sync = 2;
        } else if ((output_sync_option == ("recurse")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "recurse".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(1)))), "recurse" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
            output_sync = 3;
        } else {
            fatal(@as([*c]floc, @ptrFromInt(0)), strlen(output_sync_option), gettext("unknown output-sync type '%s'"), output_sync_option);
        }
    }
    if (sync_mutex != null) {
        _ = osync_parse_mutex(sync_mutex);
    }
}
fn print_usage(arg_bad: c_int) callconv(.C) noreturn {
    var bad = arg_bad;
    _ = &bad;
    var cpp: [*c]const [*c]const u8 = undefined;
    _ = &cpp;
    var usageto: [*c]FILE = undefined;
    _ = &usageto;
    if (print_version_flag != 0) {
        print_version();
        _ = fputs("\n", stdout);
    }
    usageto = if (bad != 0) stderr else stdout;
    _ = fprintf(usageto, gettext("Usage: %s [options] [target] ...\n"), program);
    {
        cpp = @as([*c]const [*c]const u8, @ptrCast(@alignCast(&usage)));
        while (cpp.* != null) : (cpp += 1) {
            _ = fputs(gettext(cpp.*), usageto);
        }
    }
    if (!(remote_description != null) or (@as(c_int, @bitCast(@as(c_uint, remote_description.*))) == @as(c_int, '\x00'))) {
        _ = fprintf(usageto, gettext("\nThis program built for %s\n"), make_host);
    } else {
        _ = fprintf(usageto, gettext("\nThis program built for %s (%s)\n"), make_host, remote_description);
    }
    _ = fprintf(usageto, gettext("Report bugs to <bug-make@gnu.org>\n"));
    die(if (bad != 0) 2 else 0);
}
fn reset_jobserver() callconv(.C) void {
    jobserver_clear();
    free(@as(?*anyopaque, @ptrCast(jobserver_auth)));
    jobserver_auth = null;
}

pub fn main(argc: usize, argv: [][]u8, envp: [][]u8) c_int {
    var makefile_status: c_int = 0;
    var read_files: [*c]struct_goaldep = undefined;
    var current_directory: [4097]u8 = undefined;
    var restarts: c_uint = 0;
    var syncing: c_uint = 0;
    var argv_slots: c_int = undefined;

    _ = initialize_variable_output();
    if ((check_io_state() & @as(c_uint, 8)) != @as(c_uint, 0)) {
        _ = atexit(&close_stdout);
    }
    output_init(&make_sync);
    initialize_stopchar_map();
    _ = setlocale(6, "");
    _ = bindtextdomain("make", "/usr/local/share/locale");
    _ = textdomain("make");
    _ = sigemptyset(&fatal_signal_set);
    if (bsd_signal(1, &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(1, @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, 1);
    }
    if (bsd_signal(3, &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(3, @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, 3);
    }
    if (bsd_signal(@as(c_int, 13), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(@as(c_int, 13), @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 13));
    }
    if (bsd_signal(2, &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(2, @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, 2);
    }
    if (bsd_signal(@as(c_int, 15), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(@as(c_int, 15), @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 15));
    }
    if (bsd_signal(@as(c_int, 24), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(@as(c_int, 24), @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 24));
    }
    if (bsd_signal(@as(c_int, 25), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(1))) {
        _ = bsd_signal(@as(c_int, 25), @as(__sighandler_t, @ptrFromInt(1)));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 25));
    }
    _ = bsd_signal(@as(c_int, 17), @as(__sighandler_t, @ptrFromInt(0)));
    output_init(null);
    if (argv[0] == null) {
        argv[0] = "";
    }
    if (@as(c_int, @bitCast(@as(c_uint, argv[0][0]))) == @as(c_int, '\x00')) {
        program = "make";
    } else {
        program = strrchr(argv[0], @as(c_int, '/'));
        if (program == null) {
            program = argv[0];
        } else {
            program += 1;
        }
    }
    initialize_global_hash_tables();
    _ = get_tmpdir();
    if (getcwd(@as([*c]u8, @ptrCast(@alignCast(&current_directory))), @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) == null) {
        perror_with_name("getcwd", "");
        current_directory[0] = '\x00';
        directory_before_chdir = null;
    } else {
        directory_before_chdir = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&current_directory))));
    }
    define_variable_in_set(".VARIABLES", @sizeOf([11]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0))).*.special = 1;
    define_variable_in_set(".RECIPEPREFIX", @sizeOf([14]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0))).*.special = 1;
    _ = define_variable_in_set(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, 1), "-c", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set(".LOADED", @sizeOf([8]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    {
        var features: [*c]const u8 = "target-specific order-only second-expansion else-if shortest-stem undefine oneshell nocomment grouped-target extra-prereqs notintermediate shell-export archives jobserver jobserver-fifo output-sync check-symlink load";
        _ = &features;
        _ = define_variable_in_set(".FEATURES", @sizeOf([10]u8) -% @as(c_ulong, 1), features, @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    _ = guile_gmake_setup(@as([*c]floc, @ptrFromInt(0)));
    {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (envp[i] != null) : (i +%= 1) {
                var v: [*c]struct_variable = undefined;
                _ = &v;
                var ep: [*c]const u8 = envp[i];
                _ = &ep;
                var @"export": enum_variable_export = @as(c_uint, @bitCast(v_export));
                _ = &@"export";
                var len: usize = undefined;
                _ = &len;
                while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(ep.*))]))) & (@as(c_int, 32) | 1)) != 0)) {
                    ep += 1;
                }
                if (@as(c_int, @bitCast(@as(c_uint, ep.*))) == @as(c_int, '\x00')) continue;
                len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(blk: {
                    const ref = &ep;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }) -% @intFromPtr(envp[i]))), @sizeOf(u8))));
                if ((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 13))))) and (memcmp(@as(?*const anyopaque, @ptrCast(envp[i])), @as(?*const anyopaque, @ptrCast("MAKE_RESTARTS")), @sizeOf([14]u8) -% @as(c_ulong, 1)) == 0)) {
                    if (@as(c_int, @bitCast(@as(c_uint, ep.*))) == @as(c_int, '-')) {
                        while (true) {
                            stdio_traced = 1;
                            if (!false) break;
                        }
                        ep += 1;
                    }
                    restarts = make_toui(ep, null);
                    @"export" = @as(c_uint, @bitCast(v_noexport));
                }
                v = define_variable_in_set(envp[i], len, ep, @as(c_uint, @bitCast(o_env)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
                if ((v.*.name == ("SHELL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "SHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "SHELL" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
                    @"export" = @as(c_uint, @bitCast(v_noexport));
                    shell_var.name = xstrdup("SHELL");
                    shell_var.length = 5;
                    shell_var.value = xstrdup(ep);
                }
                v.*.@"export" = @"export";
            }
        }
    }
    if (lookup_variable("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, 1)) != null) {
        decode_env_switches("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, 1), @as(c_uint, @bitCast(o_command)));
        _ = define_variable_in_set("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_env)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, 1), @as(c_uint, @bitCast(o_command)));
    syncing = blk: {
        const tmp = @as(c_uint, @intFromBool((output_sync == 1) or (output_sync == 2)));
        make_sync.syncout = tmp;
        break :blk tmp;
    };
    while (true) {
        output_context = if ((&make_sync).*.syncout != 0) &make_sync else null;
        if (!false) break;
    }
    {
        var env_slots: c_int = arg_job_slots;
        _ = &env_slots;
        arg_job_slots = -1;
        decode_switches(argc, @as([*c][*c]const u8, @ptrCast(@alignCast(argv))), @as(c_uint, @bitCast(o_command)));
        argv_slots = arg_job_slots;
        if (arg_job_slots == -1) {
            arg_job_slots = env_slots;
        }
    }
    if (print_usage_flag != 0) {
        print_usage(0);
    }
    if (print_version_flag != 0) {
        print_version();
        die(0);
    }
    _ = setvbuf(stdout, null, 1, @as(usize, @bitCast(@as(c_long, @as(c_int, 8192)))));
    if (shuffle_mode != null) {
        var effective_mode: [*c]const u8 = undefined;
        _ = &effective_mode;
        shuffle_set_mode(shuffle_mode);
        free(@as(?*anyopaque, @ptrCast(shuffle_mode)));
        effective_mode = shuffle_get_mode();
        if (effective_mode != null) {
            shuffle_mode = xstrdup(effective_mode);
        } else {
            shuffle_mode = null;
        }
    }
    if (isatty(fileno(stdout)) != 0) if (!(lookup_variable("MAKE_TERMOUT", @sizeOf([13]u8) -% @as(c_ulong, 1)) != null)) {
        var tty: [*c]const u8 = ttyname(fileno(stdout));
        _ = &tty;
        define_variable_in_set("MAKE_TERMOUT", @sizeOf([13]u8) -% @as(c_ulong, 1), if (tty != null) tty else "true", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0))).*.@"export" = @as(c_uint, @bitCast(v_export));
    };
    if (isatty(fileno(stderr)) != 0) if (!(lookup_variable("MAKE_TERMERR", @sizeOf([13]u8) -% @as(c_ulong, 1)) != null)) {
        var tty: [*c]const u8 = ttyname(fileno(stderr));
        _ = &tty;
        define_variable_in_set("MAKE_TERMERR", @sizeOf([13]u8) -% @as(c_ulong, 1), if (tty != null) tty else "true", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0))).*.@"export" = @as(c_uint, @bitCast(v_export));
    };
    syncing = @as(c_uint, @intFromBool((output_sync == 1) or (output_sync == 2)));
    if ((make_sync.syncout != 0) and !(syncing != 0)) {
        output_close(&make_sync);
    }
    make_sync.syncout = syncing;
    while (true) {
        output_context = if ((&make_sync).*.syncout != 0) &make_sync else null;
        if (!false) break;
    }
    {
        var v: [*c]struct_variable = lookup_variable("MAKELEVEL", @sizeOf([10]u8) -% @as(c_ulong, 1));
        _ = &v;
        if (((v != null) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[0]))) != @as(c_int, '\x00'))) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[0]))) != @as(c_int, '-'))) {
            makelevel = make_toui(v.*.value, null);
        } else {
            makelevel = 0;
        }
    }
    always_make_flag = @intFromBool((always_make_set != 0) and (restarts == @as(c_uint, 0)));
    if (no_builtin_variables_flag != 0) {
        no_builtin_rules_flag = 1;
    }
    if ((1 & db_level) != 0) {
        print_version();
        _ = fflush(stdout);
    }
    if ((((@as(c_int, @bitCast(@as(c_uint, current_directory[0]))) != @as(c_int, '\x00')) and (argv[0] != null)) and (@as(c_int, @bitCast(@as(c_uint, argv[0][0]))) != @as(c_int, '/'))) and (strchr(argv[0], @as(c_int, '/')) != null)) {
        argv[0] = xstrdup(concat(@as(c_uint, 3), @as([*c]u8, @ptrCast(@alignCast(&current_directory))), "/", argv[0]));
    }
    starting_directory = @as([*c]u8, @ptrCast(@alignCast(&current_directory)));
    if (directories != null) {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (directories.*.list[i] != null) : (i +%= 1) {
                var dir: [*c]const u8 = directories.*.list[i];
                _ = &dir;
                if (chdir(dir) < 0) {
                    pfatal_with_name(dir);
                }
            }
        }
    }
    if (directories != null) {
        if (getcwd(@as([*c]u8, @ptrCast(@alignCast(&current_directory))), @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) == null) {
            perror_with_name("getcwd", "");
            starting_directory = null;
        } else {
            starting_directory = @as([*c]u8, @ptrCast(@alignCast(&current_directory)));
        }
    }
    _ = define_variable_in_set("CURDIR", @sizeOf([7]u8) -% @as(c_ulong, 1), @as([*c]u8, @ptrCast(@alignCast(&current_directory))), @as(c_uint, @bitCast(o_file)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    construct_include_path(if (include_dirs != null) include_dirs.*.list else null);
    while (true) {
        if (jobserver_auth != null) {
            if (argv_slots == -1) {
                if (jobserver_parse_auth(jobserver_auth) != 0) break;
                @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("warning: jobserver unavailable: using -j1.  Add '+' to parent make rule."));
                arg_job_slots = 1;
            } else if (!(restarts != 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3), gettext("warning: -j%d forced in submake: resetting jobserver mode."), argv_slots);
            }
            reset_jobserver();
        }
    }
    _ = define_variable_in_set("MAKE_COMMAND", @sizeOf([13]u8) -% @as(c_ulong, 1), argv[0], @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("MAKE", @sizeOf([5]u8) -% @as(c_ulong, 1), "$(MAKE_COMMAND)", @as(c_uint, @bitCast(o_default)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    if (command_variables != null) {
        var cv: [*c]struct_command_variable = undefined;
        _ = &cv;
        var v: [*c]struct_variable = undefined;
        _ = &v;
        var len: usize = 0;
        _ = &len;
        var value: [*c]u8 = undefined;
        _ = &value;
        var p: [*c]u8 = undefined;
        _ = &p;
        {
            cv = command_variables;
            while (cv != null) : (cv = cv.*.next) {
                v = cv.*.variable;
                len +%= @as(usize, @bitCast(@as(c_ulong, 2) *% strlen(v.*.name)));
                if (!(v.*.recursive != 0)) {
                    len +%= 1;
                }
                len +%= 1;
                len +%= @as(usize, @bitCast(@as(c_ulong, 2) *% strlen(v.*.value)));
                len +%= 1;
            }
        }
        p = blk: {
            const tmp = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
            value = tmp;
            break :blk tmp;
        };
        {
            cv = command_variables;
            while (cv != null) : (cv = cv.*.next) {
                v = cv.*.variable;
                p = quote_for_env(p, v.*.name);
                if (!(v.*.recursive != 0)) {
                    (blk: {
                        const ref = &p;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = ':';
                }
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = '=';
                p = quote_for_env(p, v.*.value);
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = ' ';
            }
        }
        (blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("-*-command-variables-*-", @sizeOf([24]u8) -% @as(c_ulong, 1), value, @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        _ = define_variable_in_set("MAKEOVERRIDES", @sizeOf([14]u8) -% @as(c_ulong, 1), "${-*-command-variables-*-}", @as(c_uint, @bitCast(o_default)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    if (makefiles != null) {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (i < makefiles.*.idx) : (i +%= 1) if ((@as(c_int, @bitCast(@as(c_uint, makefiles.*.list[i][0]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, makefiles.*.list[i][1]))) == @as(c_int, '\x00'))) {
                var outfile: [*c]FILE = undefined;
                _ = &outfile;
                var newnm: [*c]u8 = undefined;
                _ = &newnm;
                if (stdin_offset >= 0) {
                    fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("Makefile from standard input specified twice"));
                }
                outfile = get_tmpfile(&newnm);
                if (!(outfile != null)) {
                    fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("cannot store makefile from stdin to a temporary file"));
                }
                while (!(feof(stdin) != 0) and !(ferror(stdin) != 0)) {
                    var buf: [2048]u8 = undefined;
                    _ = &buf;
                    var n: usize = fread(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, 1), @sizeOf([2048]u8), stdin);
                    _ = &n;
                    if ((n > @as(usize, 0)) and (fwrite(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, 1), n, outfile) != n)) {
                        fatal(@as([*c]floc, @ptrFromInt(0)), strlen(newnm) +% strlen(strerror(__errno_location().*)), gettext("fwrite: temporary file %s: %s"), newnm, strerror(__errno_location().*));
                    }
                }
                _ = fclose(outfile);
                makefiles.*.list[i] = strcache_add(newnm);
                stdin_offset = @as(c_int, @bitCast(i));
                free(@as(?*anyopaque, @ptrCast(newnm)));
            };
        }
    }
    if (stdin_offset >= 0) {
        var f: [*c]struct_file = enter_file((blk: {
            const tmp = stdin_offset;
            if (tmp >= 0) break :blk makefiles.*.list + @as(usize, @intCast(tmp)) else break :blk makefiles.*.list - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*);
        _ = &f;
        f.*.updated = 1;
        f.*.update_status = @as(c_uint, @bitCast(us_success));
        f.*.command_state = @as(c_uint, @bitCast(cs_finished));
        f.*.intermediate = 0;
        f.*.dontcare = 0;
        f.*.last_mtime = blk: {
            const tmp = f_mtime(f, 0);
            f.*.mtime_before_update = tmp;
            break :blk tmp;
        };
    }
    {
        _ = bsd_signal(@as(c_int, 17), &child_handler);
    }
    {
        var block: sigset_t = undefined;
        _ = &block;
        _ = sigemptyset(&block);
        _ = sigaddset(&block, @as(c_int, 17));
        if (sigprocmask(2, &block, null) < 0) {
            pfatal_with_name("sigprocmask(SIG_SETMASK, SIGCHLD)");
        }
    }
    _ = bsd_signal(@as(c_int, 10), &debug_signal_handler);
    set_default_suffixes();
    define_automatic_variables();
    define_makeflags(0).*.@"export" = @as(c_uint, @bitCast(v_export));
    define_default_variables();
    default_file = enter_file(strcache_add(".DEFAULT"));
    default_goal_var = define_variable_in_set(".DEFAULT_GOAL", @sizeOf([14]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_file)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    if (eval_strings != null) {
        var p: [*c]u8 = undefined;
        _ = &p;
        var endp: [*c]u8 = undefined;
        _ = &endp;
        var value: [*c]u8 = undefined;
        _ = &value;
        var i: c_uint = undefined;
        _ = &i;
        var len: usize = ((@sizeOf([8]u8) -% @as(c_ulong, 1)) +% @as(c_ulong, 1)) *% @as(c_ulong, @bitCast(@as(c_ulong, eval_strings.*.idx)));
        _ = &len;
        {
            i = 0;
            while (i < eval_strings.*.idx) : (i +%= 1) {
                p = xstrdup(eval_strings.*.list[i]);
                len +%= @as(usize, @bitCast(@as(c_ulong, 2) *% strlen(p)));
                eval_buffer(p, null);
                free(@as(?*anyopaque, @ptrCast(p)));
            }
        }
        p = blk: {
            const tmp = blk_1: {
                const tmp_2 = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
                value = tmp_2;
                break :blk_1 tmp_2;
            };
            endp = tmp;
            break :blk tmp;
        };
        {
            i = 0;
            while (i < eval_strings.*.idx) : (i +%= 1) {
                p = stpcpy(p, "--eval=");
                p = quote_for_env(p, eval_strings.*.list[i]);
                endp = blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                };
                endp.* = ' ';
            }
        }
        endp.* = '\x00';
        _ = define_variable_in_set("-*-eval-flags-*-", @sizeOf([17]u8) -% @as(c_ulong, 1), value, @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    {
        var old_builtin_rules_flag: c_int = no_builtin_rules_flag;
        _ = &old_builtin_rules_flag;
        var old_builtin_variables_flag: c_int = no_builtin_variables_flag;
        _ = &old_builtin_variables_flag;
        var old_arg_job_slots: c_int = arg_job_slots;
        _ = &old_arg_job_slots;
        read_files = read_all_makefiles(if (makefiles == null) null else makefiles.*.list);
        arg_job_slots = -1;
        decode_env_switches("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, 1), @as(c_uint, @bitCast(o_env)));
        _ = define_variable_in_set("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_override)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, 1), @as(c_uint, @bitCast(o_env)));
        if ((arg_job_slots == -1) or (argv_slots != -1)) {
            arg_job_slots = old_arg_job_slots;
        } else if ((jobserver_auth != null) and (arg_job_slots != old_arg_job_slots)) {
            if (!(restarts != 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3), gettext("warning: -j%d forced in makefile: resetting jobserver mode."), arg_job_slots);
            }
            reset_jobserver();
        }
        syncing = @as(c_uint, @intFromBool((output_sync == 1) or (output_sync == 2)));
        if ((make_sync.syncout != 0) and !(syncing != 0)) {
            output_close(&make_sync);
        }
        make_sync.syncout = syncing;
        while (true) {
            output_context = if ((&make_sync).*.syncout != 0) &make_sync else null;
            if (!false) break;
        }
        if (no_builtin_variables_flag != 0) {
            no_builtin_rules_flag = 1;
        }
        if ((no_builtin_rules_flag != 0) and !(old_builtin_rules_flag != 0)) {
            if (suffix_file.*.builtin != 0) {
                free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(suffix_file.*.deps))));
                suffix_file.*.deps = null;
            }
            _ = define_variable_in_set("SUFFIXES", @sizeOf([9]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        }
        if ((no_builtin_variables_flag != 0) and !(old_builtin_variables_flag != 0)) {
            undefine_default_variables();
        }
    }
    if (jobserver_auth != null) {
        job_slots = 0;
    } else if (arg_job_slots == -1) {
        job_slots = 1;
    } else {
        job_slots = @as(c_uint, @bitCast(arg_job_slots));
    }
    if ((job_slots > @as(c_uint, 1)) and (jobserver_setup(@as(c_int, @bitCast(job_slots -% @as(c_uint, 1))), jobserver_style) != 0)) {
        jobserver_auth = jobserver_get_auth();
        if (jobserver_auth != null) {
            master_job_slots = job_slots;
            job_slots = 0;
        }
    }
    if ((syncing != 0) and (job_slots == @as(c_uint, 1))) {
        while (true) {
            output_context = null;
            if (!false) break;
        }
        output_close(&make_sync);
        syncing = 0;
        output_sync = 0;
    }
    if (syncing != 0) {
        if (!(sync_mutex != null)) {
            osync_setup();
            sync_mutex = osync_get_mutex();
        } else if (!(osync_parse_mutex(sync_mutex) != 0)) {
            osync_clear();
            free(@as(?*anyopaque, @ptrCast(sync_mutex)));
            sync_mutex = null;
            syncing = 0;
        }
    }
    if (jobserver_auth != null) while (true) {
        if (((2 | 4) & db_level) != 0) {
            _ = printf(gettext("Using jobserver controller %s\n"), jobserver_auth);
            _ = fflush(stdout);
        }
        if (!false) break;
    };
    if (sync_mutex != null) while (true) {
        if ((2 & db_level) != 0) {
            _ = printf(gettext("Using output-sync mutex %s\n"), sync_mutex);
            _ = fflush(stdout);
        }
        if (!false) break;
    };
    _ = define_makeflags(0);
    snap_deps();
    install_default_suffix_rules();
    convert_to_pattern();
    install_default_implicit_rules();
    snap_implicit_rules();
    build_vpath_lists();
    if (old_files != null) {
        var p: [*c][*c]const u8 = undefined;
        _ = &p;
        {
            p = old_files.*.list;
            while (p.* != null) : (p += 1) {
                var f: [*c]struct_file = enter_file(p.*);
                _ = &f;
                f.*.last_mtime = blk: {
                    const tmp = @as(uintmax_t, 2);
                    f.*.mtime_before_update = tmp;
                    break :blk tmp;
                };
                f.*.updated = 1;
                f.*.update_status = @as(c_uint, @bitCast(us_success));
                f.*.command_state = @as(c_uint, @bitCast(cs_finished));
            }
        }
    }
    if (!(restarts != 0) and (new_files != null)) {
        var p: [*c][*c]const u8 = undefined;
        _ = &p;
        {
            p = new_files.*.list;
            while (p.* != null) : (p += 1) {
                var f: [*c]struct_file = enter_file(p.*);
                _ = &f;
                f.*.last_mtime = blk: {
                    const tmp = ~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)));
                    f.*.mtime_before_update = tmp;
                    break :blk tmp;
                };
            }
        }
    }
    remote_setup();
    while (true) {
        output_context = null;
        if (!false) break;
    }
    output_close(&make_sync);
    if (shuffle_mode != null) while (true) {
        if ((1 & db_level) != 0) {
            _ = printf(gettext("Enabled shuffle mode: %s\n"), shuffle_mode);
            _ = fflush(stdout);
        }
        if (!false) break;
    };
    if (read_files != null) {
        var makefile_mtimes: [*c]uintmax_t = undefined;
        _ = &makefile_mtimes;
        var skipped_makefiles: [*c]struct_goaldep = null;
        _ = &skipped_makefiles;
        var nargv: [*c][*c]const u8 = @as([*c][*c]const u8, @ptrCast(@alignCast(argv)));
        _ = &nargv;
        var any_failed: c_int = 0;
        _ = &any_failed;
        var status: enum_update_status_36 = undefined;
        _ = &status;
        while (true) {
            if ((1 & db_level) != 0) {
                _ = printf(gettext("Updating makefiles....\n"));
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        {
            var num_mkfiles: c_uint = 0;
            _ = &num_mkfiles;
            var d: [*c]struct_goaldep = read_files;
            _ = &d;
            read_files = null;
            while (d != @as([*c]struct_goaldep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
                var t: [*c]struct_goaldep = d;
                _ = &t;
                d = d.*.next;
                t.*.next = read_files;
                read_files = t;
                num_mkfiles +%= 1;
            }
            makefile_mtimes = @as([*c]uintmax_t, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_ulong, num_mkfiles))) *% @sizeOf(uintmax_t)))));
        }
        {
            var d: [*c]struct_goaldep = read_files;
            _ = &d;
            var last: [*c]struct_goaldep = null;
            _ = &last;
            var mm_idx: c_uint = 0;
            _ = &mm_idx;
            while (d != null) {
                var skip: c_int = 0;
                _ = &skip;
                var f: [*c]struct_file = d.*.file;
                _ = &f;
                if (f.*.phony != 0) {
                    skip = 1;
                } else {
                    f = f.*.double_colon;
                    while (f != @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (f = f.*.prev) if ((f.*.deps == @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) and (f.*.cmds != @as([*c]struct_commands, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) {
                        skip = 1;
                        break;
                    };
                }
                if (!(skip != 0)) {
                    makefile_mtimes[
                        blk: {
                            const ref = &mm_idx;
                            const tmp = ref.*;
                            ref.* +%= 1;
                            break :blk tmp;
                        }
                    ] = if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 0) else d.*.file.*.last_mtime;
                    last = d;
                    d = d.*.next;
                } else {
                    while (true) {
                        if ((2 & db_level) != 0) {
                            _ = printf(gettext("Makefile '%s' might loop; not remaking it.\n"), f.*.name);
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    if (last != null) {
                        last.*.next = d.*.next;
                    } else {
                        read_files = d.*.next;
                    }
                    if ((d.*.@"error" != 0) and !((d.*.flags & @as(c_uint, @bitCast(1 << @intCast(2)))) != 0)) {
                        d.*.next = skipped_makefiles;
                        skipped_makefiles = d;
                        any_failed = 1;
                    } else {
                        free(@as(?*anyopaque, @ptrCast(d)));
                    }
                    d = if (last != null) last.*.next else read_files;
                }
            }
        }
        _ = define_makeflags(1);
        {
            var orig_db_level: c_int = db_level;
            _ = &orig_db_level;
            if (!((@as(c_int, 256) & db_level) != 0)) {
                db_level = 0;
            }
            rebuilding_makefiles = 1;
            status = update_goal_chain(read_files);
            rebuilding_makefiles = 0;
            db_level = orig_db_level;
        }
        while (skipped_makefiles != @as([*c]struct_goaldep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
            var d: [*c]struct_goaldep = skipped_makefiles;
            _ = &d;
            var err: [*c]const u8 = strerror(d.*.@"error");
            _ = &err;
            @"error"(&d.*.floc, strlen(if (d.*.name != null) d.*.name else d.*.file.*.name) +% strlen(err), gettext("%s: %s"), if (d.*.name != null) d.*.name else d.*.file.*.name, err);
            skipped_makefiles = skipped_makefiles.*.next;
            free(@as(?*anyopaque, @ptrCast(d)));
        }
        if ((any_failed != 0) and (status == @as(c_uint, @bitCast(us_success)))) {
            status = @as(c_uint, @bitCast(us_none));
        }
        while (true) {
            switch (status) {
                @as(c_uint, 2) => break,
                @as(c_uint, 1) => {
                    {
                        var d: [*c]struct_goaldep = undefined;
                        _ = &d;
                        {
                            d = read_files;
                            while (d != null) : (d = d.*.next) if (d.*.file.*.unloaded != 0) {
                                var f: [*c]struct_file = d.*.file;
                                _ = &f;
                                if (load_file(&d.*.floc, f, 0) == 0) {
                                    fatal(&d.*.floc, strlen(f.*.name), gettext("%s: failed to load"), f.*.name);
                                }
                                f.*.unloaded = 0;
                                f.*.loaded = 1;
                            };
                        }
                    }
                    if (false) {
                        var d: [*c]struct_goaldep = undefined;
                        _ = &d;
                        {
                            d = read_files;
                            while (d != null) : (d = d.*.next) if ((d.*.@"error" != 0) and !((d.*.flags & @as(c_uint, @bitCast(1 << @intCast(2)))) != 0)) {
                                var err: [*c]const u8 = strerror(d.*.@"error");
                                _ = &err;
                                @"error"(&d.*.floc, strlen(if (d.*.name != null) d.*.name else d.*.file.*.name) +% strlen(err), gettext("%s: %s"), if (d.*.name != null) d.*.name else d.*.file.*.name, err);
                                any_failed = 1;
                            };
                        }
                    }
                    break;
                },
                @as(c_uint, 3), @as(c_uint, 0) => {
                    if (status == @as(c_uint, @bitCast(us_failed))) {
                        var any_remade: c_int = 0;
                        _ = &any_remade;
                        var i: c_uint = undefined;
                        _ = &i;
                        var d: [*c]struct_goaldep = undefined;
                        _ = &d;
                        {
                            _ = blk: {
                                i = 0;
                                break :blk blk_1: {
                                    const tmp = read_files;
                                    d = tmp;
                                    break :blk_1 tmp;
                                };
                            };
                            while (d != null) : (_ = blk: {
                                i +%= 1;
                                break :blk blk_1: {
                                    const tmp = d.*.next;
                                    d = tmp;
                                    break :blk_1 tmp;
                                };
                            }) {
                                if (d.*.file.*.updated != 0) {
                                    if (d.*.file.*.update_status == @as(c_uint, @bitCast(us_success))) {
                                        any_remade |= (if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 0) else d.*.file.*.last_mtime) != makefile_mtimes[i];
                                    } else if (!((d.*.flags & @as(c_uint, @bitCast(1 << @intCast(2)))) != 0)) {
                                        var mtime: uintmax_t = undefined;
                                        _ = &mtime;
                                        @"error"(&d.*.floc, strlen(d.*.file.*.name), gettext("Failed to remake makefile '%s'."), d.*.file.*.name);
                                        mtime = if (d.*.file.*.last_mtime == @as(uintmax_t, 0)) f_mtime(d.*.file, 0) else d.*.file.*.last_mtime;
                                        any_remade |= (mtime != @as(uintmax_t, 1)) and (mtime != makefile_mtimes[i]);
                                        makefile_status = 2;
                                        any_failed = 1;
                                    }
                                } else if (!((d.*.flags & @as(c_uint, @bitCast(1 << @intCast(2)))) != 0)) {
                                    var dnm: [*c]const u8 = if (d.*.name != null) d.*.name else d.*.file.*.name;
                                    _ = &dnm;
                                    if ((d.*.flags & @as(c_uint, @bitCast(1 << @intCast(1)))) != 0) {
                                        @"error"(&d.*.floc, strlen(dnm), gettext("Included makefile '%s' was not found."), dnm);
                                    } else {
                                        @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(dnm), gettext("Makefile '%s' was not found"), dnm);
                                        any_failed = 1;
                                    }
                                }
                            }
                        }
                        if (!(any_remade != 0)) break;
                    }
                    remove_intermediates(0);
                    if (print_data_base_flag != 0) {
                        print_data_base();
                    }
                    clean_jobserver(0);
                    if (makefiles != null) {
                        var mfidx: c_int = 0;
                        _ = &mfidx;
                        var av: [*c][*c]u8 = argv;
                        _ = &av;
                        var nv: [*c][*c]const u8 = undefined;
                        _ = &nv;
                        nv = blk: {
                            const tmp = @as([*c][*c]const u8, @ptrCast(@alignCast(malloc(@sizeOf([*c]u8) *% @as(c_ulong, @bitCast(@as(c_long, (argc + 1) + 1)))))));
                            nargv = tmp;
                            break :blk tmp;
                        };
                        (blk: {
                            const ref = &nv;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).* = (blk: {
                            const ref = &av;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).*;
                        while (av.* != null) : (_ = blk: {
                            av += 1;
                            break :blk blk_1: {
                                const ref = &nv;
                                ref.* += 1;
                                break :blk_1 ref.*;
                            };
                        }) {
                            var f: [*c]u8 = undefined;
                            _ = &f;
                            var a: [*c]u8 = av.*;
                            _ = &a;
                            var mf: [*c]const u8 = (blk: {
                                const tmp = mfidx;
                                if (tmp >= 0) break :blk makefiles.*.list + @as(usize, @intCast(tmp)) else break :blk makefiles.*.list - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*;
                            _ = &mf;
                            _ = 0;
                            nv.* = a;
                            if (@as(c_int, @bitCast(@as(c_uint, a[0]))) != @as(c_int, '-')) continue;
                            if (@as(c_int, @bitCast(@as(c_uint, a[1]))) == @as(c_int, '-')) {
                                if ((strcmp(a, "--file") == 0) or (strcmp(a, "--makefile") == 0)) {
                                    av += 1;
                                } else if (!(strncmp(a, "--file=", @as(c_ulong, 7)) == 0) and !(strncmp(a, "--makefile=", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 11))))) == 0)) continue;
                                if (mfidx == stdin_offset) {
                                    var na: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([14]u8) -% @as(c_ulong, 1)) +% strlen(mf)) +% @as(c_ulong, 1)))));
                                    _ = &na;
                                    _ = sprintf(na, "--temp-stdin=%s", mf);
                                    nv.* = na;
                                } else {
                                    var na: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(strlen(mf) +% @as(c_ulong, 3)))));
                                    _ = &na;
                                    _ = sprintf(na, "-f%s", mf);
                                    nv.* = na;
                                }
                                mfidx += 1;
                                continue;
                            }
                            f = strchr(a, @as(c_int, 'f'));
                            if (!(f != null)) continue;
                            if (@as(c_int, @bitCast(@as(c_uint, f[1]))) == @as(c_int, '\x00')) {
                                av += 1;
                            }
                            if (mfidx == stdin_offset) {
                                const al: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(f) -% @intFromPtr(a))), @sizeOf(u8))));
                                _ = &al;
                                var na: [*c]u8 = undefined;
                                _ = &na;
                                if (al > @as(usize, 1)) {
                                    na = @as([*c]u8, @ptrCast(@alignCast(malloc(al +% @as(usize, 1)))));
                                    _ = memcpy(@as(?*anyopaque, @ptrCast(na)), @as(?*const anyopaque, @ptrCast(a)), al);
                                    na[al] = '\x00';
                                    (blk: {
                                        const ref = &nv;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).* = na;
                                }
                                na = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([14]u8) -% @as(c_ulong, 1)) +% strlen(mf)) +% @as(c_ulong, 1)))));
                                _ = sprintf(na, "--temp-stdin=%s", mf);
                                nv.* = na;
                            } else if (@as(c_int, @bitCast(@as(c_uint, f[1]))) == @as(c_int, '\x00')) {
                                (blk: {
                                    const ref = &nv;
                                    ref.* += 1;
                                    break :blk ref.*;
                                }).* = mf;
                            } else {
                                const al: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(f) -% @intFromPtr(a))), @sizeOf(u8)) + @as(c_long, 1)));
                                _ = &al;
                                const ml: usize = strlen(mf) +% @as(c_ulong, 1);
                                _ = &ml;
                                var na: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(al +% ml))));
                                _ = &na;
                                _ = memcpy(@as(?*anyopaque, @ptrCast(na)), @as(?*const anyopaque, @ptrCast(a)), al);
                                _ = memcpy(@as(?*anyopaque, @ptrCast(na + al)), @as(?*const anyopaque, @ptrCast(mf)), ml);
                                nv.* = na;
                            }
                            mfidx += 1;
                        }
                        nv.* = null;
                    }
                    if ((directories != null) and (directories.*.idx > @as(c_uint, 0))) {
                        var bad: c_int = 1;
                        _ = &bad;
                        if (directory_before_chdir != null) {
                            if (chdir(directory_before_chdir) < 0) {
                                perror_with_name("chdir", "");
                            } else {
                                bad = 0;
                            }
                        }
                        if (bad != 0) {
                            fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("Couldn't change back to original directory"));
                        }
                    }
                    restarts +%= 1;
                    if ((1 & db_level) != 0) {
                        var p: [*c][*c]const u8 = undefined;
                        _ = &p;
                        _ = printf(gettext("Re-executing[%u]:"), restarts);
                        {
                            p = nargv;
                            while (p.* != null) : (p += 1) {
                                _ = printf(" %s", p.*);
                            }
                        }
                        _ = putchar(@as(c_int, '\n'));
                        _ = fflush(stdout);
                    }
                    {
                        var p: [*c][*c]u8 = undefined;
                        _ = &p;
                        {
                            p = environ;
                            while (p.* != null) : (p += 1) {
                                if (strncmp(p.*, "MAKELEVEL=", (@sizeOf([10]u8) -% @as(c_ulong, 1)) +% @as(c_ulong, 1)) == 0) {
                                    p.* = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 40))))))));
                                    _ = sprintf(p.*, "%s=%u", "MAKELEVEL", makelevel);
                                } else if (strncmp(p.*, "MAKE_RESTARTS=", @sizeOf([15]u8) -% @as(c_ulong, 1)) == 0) {
                                    p.* = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 40))))))));
                                    _ = sprintf(p.*, "MAKE_RESTARTS=%s%u", if (!!(stdio_traced != 0)) "-" else "", restarts);
                                    restarts = 0;
                                }
                            }
                        }
                    }
                    if (restarts != 0) {
                        var b: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 40))))))));
                        _ = &b;
                        _ = sprintf(b, "MAKE_RESTARTS=%s%u", if (!!(stdio_traced != 0)) "-" else "", restarts);
                        _ = putenv(b);
                    }
                    _ = fflush(stdout);
                    _ = fflush(stderr);
                    osync_clear();
                    jobserver_pre_child(1);
                    _ = exec_command(@as([*c][*c]u8, @ptrCast(@alignCast(nargv))), environ);
                    jobserver_post_child(1);
                    temp_stdin_unlink();
                    _exit(@as(c_int, 127));
                },
                else => {},
            }
            break;
        }
        if (any_failed != 0) {
            die(2);
        }
    }
    _ = define_makeflags(0);
    always_make_flag = always_make_set;
    if ((restarts != 0) and (new_files != null)) {
        var p: [*c][*c]const u8 = undefined;
        _ = &p;
        {
            p = new_files.*.list;
            while (p.* != null) : (p += 1) {
                var f: [*c]struct_file = enter_file(p.*);
                _ = &f;
                f.*.last_mtime = blk: {
                    const tmp = ~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1)));
                    f.*.mtime_before_update = tmp;
                    break :blk tmp;
                };
            }
        }
    }
    temp_stdin_unlink();
    if (goals == null) {
        var p: [*c]u8 = undefined;
        _ = &p;
        if (default_goal_var.*.recursive != 0) {
            p = variable_expand(default_goal_var.*.value);
        } else {
            p = variable_buffer_output(variable_buffer, default_goal_var.*.value, strlen(default_goal_var.*.value));
            p.* = '\x00';
            p = variable_buffer;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
            var f: [*c]struct_file = lookup_file(p);
            _ = &f;
            if (f == null) {
                var ns: [*c]struct_nameseq = undefined;
                _ = &ns;
                ns = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_nameseq), 1, null, 0))));
                if (ns != null) {
                    if (ns.*.next != null) {
                        fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext(".DEFAULT_GOAL contains more than one target"));
                    }
                    f = enter_file(strcache_add(ns.*.name));
                    ns.*.name = null;
                    free_ns_chain(ns);
                }
            }
            if (f != null) {
                goals = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
                goals.*.file = f;
            }
        }
    } else {
        lastgoal.*.next = null;
    }
    if (!(goals != null)) {
        var v: [*c]struct_variable = lookup_variable("MAKEFILE_LIST", @sizeOf([14]u8) -% @as(c_ulong, 1));
        _ = &v;
        if (((v != null) and (v.*.value != null)) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[0]))) != @as(c_int, '\x00'))) {
            fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("No targets"));
        }
        fatal(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("No targets specified and no makefile found"));
    }
    while (true) {
        shuffle_deps_recursive(@as([*c]struct_dep, @ptrCast(@alignCast(goals))));
        if (!false) break;
    }
    while (true) {
        if ((1 & db_level) != 0) {
            _ = printf(gettext("Updating goal targets....\n"));
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    {
        while (true) {
            switch (update_goal_chain(goals)) {
                @as(c_uint, 1), @as(c_uint, 0) => break,
                @as(c_uint, 2) => {
                    makefile_status = 1;
                    break;
                },
                @as(c_uint, 3) => {
                    makefile_status = 2;
                    break;
                },
                else => {},
            }
            break;
        }
        if (clock_skew_detected != 0) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("warning:  Clock skew detected.  Your build may be incomplete."));
        }
        die(makefile_status);
    }
    exit(0);
    return 0;
}

var options: [121]u8 = @import("std").mem.zeroes([121]u8);
var long_options: [49]struct_option = @import("std").mem.zeroes([49]struct_option);
fn init_switches() callconv(.C) void {
    var p: [*c]u8 = undefined;
    _ = &p;
    var c: c_uint = undefined;
    _ = &c;
    var i: c_uint = undefined;
    _ = &i;
    if (@as(c_int, @bitCast(@as(c_uint, options[0]))) != @as(c_int, '\x00')) return;
    p = @as([*c]u8, @ptrCast(@alignCast(&options)));
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '-';
    {
        i = 0;
        while (switches[i].c != @as(c_int, '\x00')) : (i +%= 1) {
            long_options[i].name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(if (switches[i].long_name == null) "" else switches[i].long_name))));
            long_options[i].flag = null;
            long_options[i].val = switches[i].c;
            if (switches[i].c <= @as(c_int, 127)) {
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = @as(u8, @bitCast(@as(i8, @truncate(switches[i].c))));
            }
            while (true) {
                switch (switches[i].type) {
                    @as(c_uint, 0), @as(c_uint, 1), @as(c_uint, 7) => {
                        long_options[i].has_arg = 0;
                        break;
                    },
                    @as(c_uint, 2), @as(c_uint, 3), @as(c_uint, 4), @as(c_uint, 5), @as(c_uint, 6) => {
                        if (switches[i].c <= @as(c_int, 127)) {
                            (blk: {
                                const ref = &p;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = ':';
                        }
                        if (switches[i].noarg_value != null) {
                            if (switches[i].c <= @as(c_int, 127)) {
                                (blk: {
                                    const ref = &p;
                                    const tmp = ref.*;
                                    ref.* += 1;
                                    break :blk tmp;
                                }).* = ':';
                            }
                            long_options[i].has_arg = 2;
                        } else {
                            long_options[i].has_arg = 1;
                        }
                        break;
                    },
                    else => {},
                }
                break;
            }
        }
    }
    p.* = '\x00';
    {
        c = 0;
        while (@as(c_ulong, @bitCast(@as(c_ulong, c))) < (@sizeOf([9]struct_option) / @sizeOf(struct_option))) : (c +%= 1) {
            long_options[
                blk: {
                    const ref = &i;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = long_option_aliases[c];
        }
    }
    long_options[i].name = null;
}
fn handle_non_switch_argument(arg_arg: [*c]const u8, arg_origin: enum_variable_origin) callconv(.C) void {
    var arg = arg_arg;
    _ = &arg;
    var origin = arg_origin;
    _ = &origin;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    if ((@as(c_int, @bitCast(@as(c_uint, arg[0]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, arg[1]))) == @as(c_int, '\x00'))) return;
    v = try_variable_definition(null, arg, origin, 0);
    if (v != null) {
        var cv: [*c]struct_command_variable = undefined;
        _ = &cv;
        {
            cv = command_variables;
            while (cv != null) : (cv = cv.*.next) if (cv.*.variable == v) break;
        }
        if (!(cv != null)) {
            cv = @as([*c]struct_command_variable, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_command_variable)))));
            cv.*.variable = v;
            cv.*.next = command_variables;
            command_variables = cv;
        }
    } else if ((@as(c_int, @bitCast(@as(c_uint, arg[0]))) != @as(c_int, '\x00')) and (origin == @as(c_uint, @bitCast(o_command)))) {
        var f: [*c]struct_file = enter_file(strcache_add(expand_command_line_file(arg)));
        _ = &f;
        f.*.cmd_target = 1;
        if (goals == null) {
            goals = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
            lastgoal = goals;
        } else {
            lastgoal.*.next = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
            lastgoal = lastgoal.*.next;
        }
        lastgoal.*.file = f;
        {
            var gv: [*c]struct_variable = undefined;
            _ = &gv;
            var value: [*c]const u8 = undefined;
            _ = &value;
            gv = lookup_variable("MAKECMDGOALS", @sizeOf([13]u8) -% @as(c_ulong, 1));
            if (gv == null) {
                value = f.*.name;
            } else {
                var oldlen: usize = undefined;
                _ = &oldlen;
                var newlen: usize = undefined;
                _ = &newlen;
                var vp: [*c]u8 = undefined;
                _ = &vp;
                oldlen = strlen(gv.*.value);
                newlen = strlen(f.*.name);
                vp = @as([*c]u8, @ptrCast(@alignCast(malloc(((oldlen +% @as(usize, 1)) +% newlen) +% @as(usize, 1)))));
                _ = memcpy(@as(?*anyopaque, @ptrCast(vp)), @as(?*const anyopaque, @ptrCast(gv.*.value)), oldlen);
                vp[oldlen] = ' ';
                _ = memcpy(@as(?*anyopaque, @ptrCast(&vp[oldlen +% @as(usize, 1)])), @as(?*const anyopaque, @ptrCast(f.*.name)), newlen +% @as(usize, 1));
                value = vp;
            }
            _ = define_variable_in_set("MAKECMDGOALS", @sizeOf([13]u8) -% @as(c_ulong, 1), value, @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        }
    }
}
