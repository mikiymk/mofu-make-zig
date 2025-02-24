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

const mode_t = __mode_t;

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

extern fn umask(__mask: __mode_t) __mode_t;

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

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern fn getpid() __pid_t;

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

extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putchar(__c: c_int) c_int;

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

extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;

extern fn malloc(__size: c_ulong) ?*anyopaque;
extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
extern fn free(__ptr: ?*anyopaque) void;

extern fn getenv(__name: [*c]const u8) [*c]u8;

extern fn mkstemp(__template: [*c]u8) c_int;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strdup(__s: [*c]const u8) [*c]u8;
extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

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
const struct_commands = opaque {};
const struct_variable_set_list = opaque {};

const enum_update_status_36 = c_uint;

const enum_cmd_state_37 = c_uint;
const struct_file = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    hname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    vpath: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: ?*struct_commands = @import("std").mem.zeroes(?*struct_commands),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    also_make: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    prev: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    renamed: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    variables: ?*struct_variable_set_list = @import("std").mem.zeroes(?*struct_variable_set_list),
    pat_variables: ?*struct_variable_set_list = @import("std").mem.zeroes(?*struct_variable_set_list),
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
// src/misc.c:204:1: warning: TODO unable to translate variadic function, demoted to extern
extern fn concat(num: c_uint, ...) [*c]const u8;

const message = @import("output.zig").message;
const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;
const out_of_memory = @import("output.zig").out_of_memory;

pub fn make_toui(arg_str: []const u8, arg_error_1: [*c][*c]const u8) c_uint {
    var str = arg_str;
    _ = &str;
    var error_1 = arg_error_1;
    _ = &error_1;
    var end: [*c]u8 = undefined;
    _ = &end;
    var val: c_ulong = strtoul(str, &end, @as(c_int, 10));
    _ = &val;
    if (error_1 != null) {
        if (@as(c_int, @bitCast(@as(c_uint, str[0]))) == @as(c_int, '\x00')) {
            error_1.* = "Missing value";
        } else if (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) {
            error_1.* = "Invalid value";
        } else {
            error_1.* = null;
        }
    }
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(val))));
}
export fn make_lltoa(arg_val: c_longlong, arg_buf: [*c]u8) [*c]u8 {
    var val = arg_val;
    _ = &val;
    var buf = arg_buf;
    _ = &buf;
    _ = sprintf(buf, "%lld", val);
    return buf;
}
export fn make_ulltoa(arg_val: c_ulonglong, arg_buf: [*c]u8) [*c]u8 {
    var val = arg_val;
    _ = &val;
    var buf = arg_buf;
    _ = &buf;
    _ = sprintf(buf, "%llu", val);
    return buf;
}
export fn make_seed(arg_seed: c_uint) void {
    var seed = arg_seed;
    _ = &seed;
    mk_state = seed;
}
export fn make_rand() c_uint {
    if (mk_state == @as(c_uint, 0)) {
        mk_state = @as(c_uint, @bitCast(@as(c_int, @truncate(time(null) ^ @as(time_t, @bitCast(@as(c_long, make_pid()))))))) +% @as(c_uint, 1);
    }
    mk_state ^= mk_state << @intCast(13);
    mk_state ^= mk_state >> @intCast(17);
    mk_state ^= mk_state << @intCast(5);
    return mk_state;
}
export fn make_pid() pid_t {
    return getpid();
}
pub export fn xmalloc(size: usize) ?*anyopaque {
    const result = malloc(if (size != 0) size else 1);
    if (result == null) {
        out_of_memory();
    }
    return result;
}
export fn xcalloc(arg_size: usize) ?*anyopaque {
    var size = arg_size;
    _ = &size;
    var result: ?*anyopaque = calloc(if (size != 0) size else @as(usize, 1), @as(c_ulong, 1));
    _ = &result;
    if (result == null) {
        out_of_memory();
    }
    return result;
}
export fn xrealloc(arg_ptr: ?*anyopaque, arg_size: usize) ?*anyopaque {
    var ptr = arg_ptr;
    _ = &ptr;
    var size = arg_size;
    _ = &size;
    var result: ?*anyopaque = undefined;
    _ = &result;
    if (!(size != 0)) {
        size = 1;
    }
    result = if (ptr != null) realloc(ptr, size) else malloc(size);
    if (result == null) {
        out_of_memory();
    }
    return result;
}
export fn xstrdup(arg_ptr: [*c]const u8) [*c]u8 {
    var ptr = arg_ptr;
    _ = &ptr;
    var result: [*c]u8 = undefined;
    _ = &result;
    result = strdup(ptr);
    if (result == null) {
        out_of_memory();
    }
    return result;
}
export fn xstrndup(arg_str: [*c]const u8, arg_length: usize) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var length = arg_length;
    _ = &length;
    var result: [*c]u8 = undefined;
    _ = &result;
    result = strndup(str, length);
    if (result == null) {
        out_of_memory();
    }
    return result;
}
export fn find_next_token(arg_ptr: [*c][*c]const u8, arg_lengthptr: [*c]usize) [*c]u8 {
    var ptr = arg_ptr;
    _ = &ptr;
    var lengthptr = arg_lengthptr;
    _ = &lengthptr;
    var p: [*c]const u8 = next_token(ptr.*);
    _ = &p;
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) return null;
    ptr.* = end_of_token(p);
    if (lengthptr != null) {
        lengthptr.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ptr.*) -% @intFromPtr(p))), @sizeOf(u8))));
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
}
export fn next_token(arg_s: [*c]const u8) [*c]u8 {
    var s = arg_s;
    _ = &s;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(s.*))]))) & (2 | 4)) != 0) {
        s += 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s))));
}
export fn end_of_token(arg_s: [*c]const u8) [*c]u8 {
    var s = arg_s;
    _ = &s;
    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(s.*))]))) & ((2 | 4) | 1)) != 0)) {
        s += 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s))));
}
export fn collapse_continuations(arg_line: [*c]u8) void {
    var line = arg_line;
    _ = &line;
    var out: [*c]u8 = line;
    _ = &out;
    var in: [*c]u8 = line;
    _ = &in;
    var q: [*c]u8 = undefined;
    _ = &q;
    q = strchr(in, @as(c_int, '\n'));
    if (q == null) return;
    while (true) {
        var p: [*c]u8 = q;
        _ = &p;
        var i: c_int = undefined;
        _ = &i;
        var out_line_length: usize = undefined;
        _ = &out_line_length;
        if ((q > line) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk q + @as(usize, @intCast(tmp)) else break :blk q - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            i = -2;
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= line) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
        } else {
            i = 0;
        }
        out_line_length = @as(usize, @bitCast((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(in))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, i)))) - @as(c_long, @bitCast(@as(c_long, @divTrunc(i, 2))))));
        if (out != in) {
            _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), out_line_length);
        }
        out += @as([*c]u8, @ptrFromInt(out_line_length));
        in = q + @as(usize, @bitCast(@as(isize, @intCast(1))));
        if ((i & 1) != 0) {
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & 2) != 0) {
                in += 1;
            }
            if (!(posix_pedantic != 0)) while ((out > line) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                @as(u8, @bitCast((blk: {
                    const tmp = -1;
                    if (tmp >= 0) break :blk out + @as(usize, @intCast(tmp)) else break :blk out - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))
            ]))) & 2) != 0)) {
                out -= 1;
            };
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        } else {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\n';
        }
        q = strchr(in, @as(c_int, '\n'));
        if (!(q != null)) break;
    }
    _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), strlen(in) +% @as(c_ulong, 1));
}
export fn lindex(arg_s: [*c]const u8, arg_limit: [*c]const u8, arg_c: c_int) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var limit = arg_limit;
    _ = &limit;
    var c = arg_c;
    _ = &c;
    while (s < limit) if (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const ref = &s;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).*))) == c) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s - @as(usize, @bitCast(@as(isize, @intCast(1))))))));
    return null;
}
export fn alpha_compare(arg_v1: ?*const anyopaque, arg_v2: ?*const anyopaque) c_int {
    var v1 = arg_v1;
    _ = &v1;
    var v2 = arg_v2;
    _ = &v2;
    var s1: [*c]const u8 = @as([*c][*c]u8, @ptrCast(@volatileCast(@constCast(v1)))).*;
    _ = &s1;
    var s2: [*c]const u8 = @as([*c][*c]u8, @ptrCast(@volatileCast(@constCast(v2)))).*;
    _ = &s2;
    if (@as(c_int, @bitCast(@as(c_uint, s1.*))) != @as(c_int, @bitCast(@as(c_uint, s2.*)))) return @as(c_int, @bitCast(@as(c_uint, s1.*))) - @as(c_int, @bitCast(@as(c_uint, s2.*)));
    return strcmp(s1, s2);
}
export fn print_spaces(arg_n: c_uint) void {
    var n = arg_n;
    _ = &n;
    while ((blk: {
        const ref = &n;
        const tmp = ref.*;
        ref.* -%= 1;
        break :blk tmp;
    }) > @as(c_uint, 0)) {
        _ = putchar(@as(c_int, ' '));
    }
}

export fn get_tmpdir() [*c]const u8 {
    const tmpdir = struct {
        var static: [*c]const u8 = null;
    };
    _ = &tmpdir;
    if (!(tmpdir.static != null)) {
        var tlist: [3][*c]const u8 = [3][*c]const u8{
            "MAKE_TMPDIR",
            "TMPDIR",
            null,
        };
        _ = &tlist;
        var tp: [*c][*c]const u8 = undefined;
        _ = &tp;
        var found: c_uint = 0;
        _ = &found;
        {
            tp = @as([*c][*c]const u8, @ptrCast(@alignCast(&tlist)));
            while (tp.* != null) : (tp += 1) if (((blk: {
                const tmp = getenv(tp.*);
                tmpdir.static = tmp;
                break :blk tmp;
            }) != null) and (@as(c_int, @bitCast(@as(c_uint, tmpdir.static.*))) != @as(c_int, '\x00'))) {
                var st: struct_stat = undefined;
                _ = &st;
                var r: c_int = undefined;
                _ = &r;
                found = 1;
                while (((blk: {
                    const tmp = stat(tmpdir.static, &st);
                    r = tmp;
                    break :blk tmp;
                }) == -1) and (__errno_location().* == 4)) {}
                if (r < 0) {
                    @"error"(@as([*c]floc, @ptrFromInt(0)), (strlen(tp.*) +% strlen(tmpdir.static)) +% strlen(strerror(__errno_location().*)), gettext("%s value %s: %s"), tp.*, tmpdir.static, strerror(__errno_location().*));
                } else if (!((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                    @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(tp.*) +% strlen(tmpdir.static), gettext("%s value %s: not a directory"), tp.*, tmpdir.static);
                } else return tmpdir.static;
            };
        }
        tmpdir.static = "/tmp";
        if (found != 0) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(tmpdir.static), gettext("using default temporary directory '%s'"), tmpdir.static);
        }
    }
    return tmpdir.static;
}
export fn get_tmpfd(arg_name: [*c][*c]u8) c_int {
    var name = arg_name;
    _ = &name;
    var fd: c_int = -1;
    _ = &fd;
    var tmpnm: [*c]u8 = undefined;
    _ = &tmpnm;
    var mask: mode_t = undefined;
    _ = &mask;
    if (name != null) {
        name.* = null;
    } else {
        fd = os_anontmp();
        if (fd >= 0) return fd;
    }
    mask = umask(@as(__mode_t, @bitCast(@as(c_int, 63))));
    tmpnm = get_tmptemplate();
    while (((blk: {
        const tmp = mkstemp(tmpnm);
        fd = tmp;
        break :blk tmp;
    }) == -1) and (__errno_location().* == 4)) {}
    if (fd < 0) {
        @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(tmpnm) +% strlen(strerror(__errno_location().*)), gettext("cannot create temporary file %s: %s"), tmpnm, strerror(__errno_location().*));
        free(@as(?*anyopaque, @ptrCast(tmpnm)));
        return -1;
    }
    if (name != null) {
        name.* = tmpnm;
    } else {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = unlink(tmpnm);
            r = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (r < 0) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(tmpnm) +% strlen(strerror(__errno_location().*)), gettext("cannot unlink temporary file %s: %s"), tmpnm, strerror(__errno_location().*));
        }
        free(@as(?*anyopaque, @ptrCast(tmpnm)));
    }
    _ = umask(mask);
    return fd;
}
export fn get_tmpfile(arg_name: [*c][*c]u8) [*c]FILE {
    var name = arg_name;
    _ = &name;
    var tmpfile_mode: [*c]const u8 = "wb+";
    _ = &tmpfile_mode;
    var file_1: [*c]FILE = undefined;
    _ = &file_1;
    var fd: c_int = undefined;
    _ = &fd;
    _ = 0;
    fd = get_tmpfd(name);
    if (fd < 0) return null;
    _ = 0;
    while (true) {
        __errno_location().* = 0;
        file_1 = fdopen(fd, tmpfile_mode);
        if (!((file_1 == null) and (__errno_location().* == 4))) break;
    }
    if (file_1 == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        @"error"(@as([*c]floc, @ptrFromInt(0)), strlen(name.*) +% strlen(strerror(__errno_location().*)), gettext("fdopen: temporary file %s: %s"), name.*, strerror(__errno_location().*));
    }
    return file_1;
}
export fn writebuf(fd: c_int, buffer: ?*const anyopaque, len: usize) isize {
    var msg: [*c]const u8 = @ptrCast(@alignCast(buffer));
    var l = len;
    while (l != 0) {
        var r: isize = undefined;
        while (true) {
            r = write(fd, @as(?*const anyopaque, @ptrCast(msg)), l);
            if (r != -1 or __errno_location().* != 4) break;
        }
        if (r < 0) return r;
        l -%= @as(usize, @bitCast(r));
        msg += @as(usize, @bitCast(r));
    }
    return @as(isize, @bitCast(len));
}
export fn readbuf(fd: c_int, buffer: ?*anyopaque, len: usize) isize {
    var msg: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(buffer)));
    while (len != 0) {
        var r: isize = undefined;
        _ = &r;
        while (((blk: {
            const tmp = read(fd, @as(?*anyopaque, @ptrCast(msg)), len);
            r = tmp;
            break :blk tmp;
        }) == @as(isize, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
        if (r < @as(isize, 0)) return r;
        if (r == @as(isize, 0)) break;
        len -%= @as(usize, @bitCast(r));
        msg += @as(usize, @bitCast(@as(isize, @intCast(r))));
    }
    return @as(isize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(msg) -% @intFromPtr(@as([*c]u8, @ptrCast(@alignCast(buffer)))))), @sizeOf(u8))));
}

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

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

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

export fn free_ns_chain(arg_ns: [*c]struct_nameseq) void {
    var ns = arg_ns;
    _ = &ns;
    while (ns != null) {
        var t: [*c]struct_nameseq = ns;
        _ = &t;
        ns = ns.*.next;
        free(@as(?*anyopaque, @ptrCast(t)));
    }
}
export fn copy_dep_chain(arg_d: [*c]const struct_dep) [*c]struct_dep {
    var d = arg_d;
    _ = &d;
    var firstnew: [*c]struct_dep = null;
    _ = &firstnew;
    var lastnew: [*c]struct_dep = null;
    _ = &lastnew;
    while (d != null) {
        var c: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_dep)))));
        _ = &c;
        _ = memcpy(@as(?*anyopaque, @ptrCast(c)), @as(?*const anyopaque, @ptrCast(d)), @sizeOf(struct_dep));
        if (c.*.need_2nd_expansion != 0) {
            c.*.name = xstrdup(c.*.name);
        }
        c.*.next = null;
        if (firstnew == null) {
            firstnew = blk: {
                const tmp = c;
                lastnew = tmp;
                break :blk tmp;
            };
        } else {
            lastnew = blk: {
                const tmp = c;
                lastnew.*.next = tmp;
                break :blk tmp;
            };
        }
        d = d.*.next;
    }
    return firstnew;
}

extern fn os_anontmp() c_int;

extern var db_level: c_int;

var mk_state: c_uint = 0;
fn get_tmptemplate() callconv(.C) [*c]u8 {
    var tmpdir: [*c]const u8 = get_tmpdir();
    _ = &tmpdir;
    var template: [*c]u8 = undefined;
    _ = &template;
    var cp: [*c]u8 = undefined;
    _ = &cp;
    template = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(tmpdir) +% (@sizeOf([9]u8) -% @as(c_ulong, 1))) +% @as(c_ulong, 2)))));
    cp = stpcpy(template, tmpdir);
    if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != 0)) {
        (blk: {
            const ref = &cp;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = '/';
    }
    _ = strcpy(cp, "GmXXXXXX");
    return template;
}
