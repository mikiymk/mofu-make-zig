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

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const __sig_atomic_t = c_int;

const ino_t = __ino_t;

const dev_t = __dev_t;

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

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

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

extern fn free(__ptr: ?*anyopaque) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

const gettext = root.cstd.gettext;

const __size_t = c_ulong;
const struct_dirent = extern struct {
    d_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    d_off: __off_t = @import("std").mem.zeroes(__off_t),
    d_reclen: c_ushort = @import("std").mem.zeroes(c_ushort),
    d_type: u8 = @import("std").mem.zeroes(u8),
    d_name: [256]u8 = @import("std").mem.zeroes([256]u8),
};
const glob_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) [*c]struct_dirent = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) [*c]struct_dirent),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
};

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

const enum_update_status_34 = c_uint;

const enum_cmd_state_35 = c_uint;
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
    update_status: enum_update_status_34 = @import("std").mem.zeroes(enum_update_status_34),
    command_state: enum_cmd_state_35 = @import("std").mem.zeroes(enum_cmd_state_35),
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

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn ar_name([*c]const u8) c_int;

extern fn ar_member_date([*c]const u8) time_t;

export fn dir_file_exists_p(arg_dirname: [*c]const u8, arg_filename: [*c]const u8) c_int {
    var dirname = arg_dirname;
    _ = &dirname;
    var filename = arg_filename;
    _ = &filename;
    return dir_contents_file_exists_p(find_directory(dirname), filename);
}
export fn file_exists_p(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var dirend: [*c]const u8 = undefined;
    _ = &dirend;
    var dirname: [*c]const u8 = undefined;
    _ = &dirname;
    var slash: [*c]const u8 = undefined;
    _ = &slash;
    if (ar_name(name) != 0) return @intFromBool(ar_member_date(name) != @as(time_t, @bitCast(@as(c_long, -1))));
    dirend = strrchr(name, @as(c_int, '/'));
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) return dir_file_exists_p(".", name);
    slash = dirend;
    if (dirend == name) {
        dirname = "/";
    } else {
        var p: [*c]u8 = undefined;
        _ = &p;
        p = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(name))), @sizeOf(u8)) + @as(c_long, 1)))))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(name)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(name))), @sizeOf(u8)))));
        (blk: {
            const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(name))), @sizeOf(u8));
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        dirname = p;
    }
    slash += 1;
    return dir_file_exists_p(dirname, slash);
}
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
const struct___dirstream = opaque {};
const DIR = struct___dirstream;
const struct_directory_contents = extern struct {
    dev: dev_t = @import("std").mem.zeroes(dev_t),
    ino: ino_t = @import("std").mem.zeroes(ino_t),
    dirfiles: struct_hash_table = @import("std").mem.zeroes(struct_hash_table),
    counter: c_ulong = @import("std").mem.zeroes(c_ulong),
    dirstream: ?*DIR = @import("std").mem.zeroes(?*DIR),
};
const struct_dirfile = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    length: usize = @import("std").mem.zeroes(usize),
    impossible: c_short = @import("std").mem.zeroes(c_short),
    type: u8 = @import("std").mem.zeroes(u8),
};
export fn file_impossible_p(arg_filename: [*c]const u8) c_int {
    var filename = arg_filename;
    _ = &filename;
    var dirend: [*c]const u8 = undefined;
    _ = &dirend;
    var dir: [*c]struct_directory_contents = undefined;
    _ = &dir;
    var dirfile_1: [*c]struct_dirfile = undefined;
    _ = &dirfile_1;
    var dirfile_key: struct_dirfile = undefined;
    _ = &dirfile_key;
    dirend = strrchr(filename, @as(c_int, '/'));
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        dir = find_directory(".").*.contents;
    } else {
        var dirname: [*c]const u8 = undefined;
        _ = &dirname;
        var slash: [*c]const u8 = dirend;
        _ = &slash;
        if (dirend == filename) {
            dirname = "/";
        } else {
            var cp: [*c]u8 = undefined;
            _ = &cp;
            cp = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8)) + @as(c_long, 1)))))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(filename)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8)))));
            (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8));
                if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
            dirname = cp;
        }
        dir = find_directory(dirname).*.contents;
        filename = slash + @as(usize, @bitCast(@as(isize, @intCast(1))));
    }
    if ((dir == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) or (dir.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) return 0;
    dirfile_key.name = filename;
    dirfile_key.length = strlen(filename);
    dirfile_1 = @as([*c]struct_dirfile, @ptrCast(@alignCast(hash_find_item(&dir.*.dirfiles, @as(?*const anyopaque, @ptrCast(&dirfile_key))))));
    if (dirfile_1 != null) return @as(c_int, @bitCast(@as(c_int, dirfile_1.*.impossible)));
    return 0;
}
const struct_directory = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    counter: c_ulong = @import("std").mem.zeroes(c_ulong),
    contents: [*c]struct_directory_contents = @import("std").mem.zeroes([*c]struct_directory_contents),
};
export fn file_impossible(arg_filename: [*c]const u8) void {
    var filename = arg_filename;
    _ = &filename;
    var dirend: [*c]const u8 = undefined;
    _ = &dirend;
    var p: [*c]const u8 = filename;
    _ = &p;
    var dir: [*c]struct_directory = undefined;
    _ = &dir;
    var new: [*c]struct_dirfile = undefined;
    _ = &new;
    dirend = strrchr(p, @as(c_int, '/'));
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        dir = find_directory(".");
    } else {
        var dirname: [*c]const u8 = undefined;
        _ = &dirname;
        var slash: [*c]const u8 = dirend;
        _ = &slash;
        if (dirend == p) {
            dirname = "/";
        } else {
            var cp: [*c]u8 = undefined;
            _ = &cp;
            cp = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8)) + @as(c_long, 1)))))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(p)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8)))));
            (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8));
                if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
            dirname = cp;
        }
        dir = find_directory(dirname);
        filename = blk: {
            const tmp = slash + @as(usize, @bitCast(@as(isize, @intCast(1))));
            p = tmp;
            break :blk tmp;
        };
    }
    if (dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        dir.*.contents = @as([*c]struct_directory_contents, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_directory_contents)))));
    }
    if (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        hash_init(&dir.*.contents.*.dirfiles, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 107)))), &dirfile_hash_1, &dirfile_hash_2, &dirfile_hash_cmp);
    }
    new = @as([*c]struct_dirfile, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_dirfile)))));
    new.*.length = strlen(filename);
    new.*.name = strcache_add_len(filename, new.*.length);
    new.*.impossible = 1;
    _ = hash_insert(&dir.*.contents.*.dirfiles, @as(?*const anyopaque, @ptrCast(new)));
}
export fn dir_name(arg_dir: [*c]const u8) [*c]const u8 {
    var dir = arg_dir;
    _ = &dir;
    return find_directory(dir).*.name;
}
export fn print_dir_data_base() void {
    var files: c_uint = undefined;
    _ = &files;
    var impossible: c_uint = undefined;
    _ = &impossible;
    var dir_slot: [*c][*c]struct_directory = undefined;
    _ = &dir_slot;
    var dir_end: [*c][*c]struct_directory = undefined;
    _ = &dir_end;
    _ = puts(gettext("\n# Directories\n"));
    files = blk: {
        const tmp = @as(c_uint, 0);
        impossible = tmp;
        break :blk tmp;
    };
    dir_slot = @as([*c][*c]struct_directory, @ptrCast(@alignCast(directories.ht_vec)));
    dir_end = dir_slot + directories.ht_size;
    while (dir_slot < dir_end) : (dir_slot += 1) {
        var dir: [*c]struct_directory = dir_slot.*;
        _ = &dir;
        if (!((dir == null) or (@as(?*anyopaque, @ptrCast(dir)) == hash_deleted_item))) {
            if (dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
                _ = printf(gettext("# %s: could not be stat'd.\n"), dir.*.name);
            } else if (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
                _ = printf(gettext("# %s (device %ld, inode %ld): could not be opened.\n"), dir.*.name, @as(c_long, @bitCast(dir.*.contents.*.dev)), @as(c_long, @bitCast(dir.*.contents.*.ino)));
            } else {
                var f: c_uint = 0;
                _ = &f;
                var im: c_uint = 0;
                _ = &im;
                var files_slot: [*c][*c]struct_dirfile = undefined;
                _ = &files_slot;
                var files_end: [*c][*c]struct_dirfile = undefined;
                _ = &files_end;
                files_slot = @as([*c][*c]struct_dirfile, @ptrCast(@alignCast(dir.*.contents.*.dirfiles.ht_vec)));
                files_end = files_slot + dir.*.contents.*.dirfiles.ht_size;
                while (files_slot < files_end) : (files_slot += 1) {
                    var df: [*c]struct_dirfile = files_slot.*;
                    _ = &df;
                    if (!((df == null) or (@as(?*anyopaque, @ptrCast(df)) == hash_deleted_item))) {
                        if (df.*.impossible != 0) {
                            im +%= 1;
                        } else {
                            f +%= 1;
                        }
                    }
                }
                _ = printf(gettext("# %s (device %ld, inode %ld): "), dir.*.name, @as(c_long, @bitCast(dir.*.contents.*.dev)), @as(c_long, @bitCast(dir.*.contents.*.ino)));
                if (f == @as(c_uint, 0)) {
                    _ = fputs(gettext("No"), stdout);
                } else {
                    _ = printf("%u", f);
                }
                _ = fputs(gettext(" files, "), stdout);
                if (im == @as(c_uint, 0)) {
                    _ = fputs(gettext("no"), stdout);
                } else {
                    _ = printf("%u", im);
                }
                _ = fputs(gettext(" impossibilities"), stdout);
                if (dir.*.contents.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(0))))) {
                    _ = puts(".");
                } else {
                    _ = puts(gettext(" so far."));
                }
                files +%= f;
                impossible +%= im;
            }
        }
    }
    _ = fputs("\n# ", stdout);
    if (files == @as(c_uint, 0)) {
        _ = fputs(gettext("No"), stdout);
    } else {
        _ = printf("%u", files);
    }
    _ = fputs(gettext(" files, "), stdout);
    if (impossible == @as(c_uint, 0)) {
        _ = fputs(gettext("no"), stdout);
    } else {
        _ = printf("%u", impossible);
    }
    _ = printf(gettext(" impossibilities in %lu directories.\n"), directories.ht_fill);
}
export fn dir_setup_glob(arg_gl: [*c]glob_t) void {
    var gl = arg_gl;
    _ = &gl;
    gl.*.gl_offs = 0;
    gl.*.gl_opendir = &open_dirstream;
    gl.*.gl_readdir = &read_dirstream;
    gl.*.gl_closedir = &free;
    gl.*.gl_lstat = &lstat;
    gl.*.gl_stat = &stat;
}
export fn hash_init_directories() void {
    hash_init(&directories, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 199)))), &directory_hash_1, &directory_hash_2, &directory_hash_cmp);
    hash_init(&directory_contents, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 199)))), &directory_contents_hash_1, &directory_contents_hash_2, &directory_contents_hash_cmp);
}

extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

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

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;

extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;

extern fn jhash_string(key: [*c]const u8) c_uint;
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

extern var db_level: c_int;

extern fn closedir(__dirp: ?*DIR) c_int;
extern fn opendir(__name: [*c]const u8) ?*DIR;

extern fn readdir(__dirp: ?*DIR) [*c]struct_dirent;

var open_directories: c_uint = 0;
fn clear_directory_contents(arg_dc: [*c]struct_directory_contents) callconv(.C) [*c]struct_directory_contents {
    var dc = arg_dc;
    _ = &dc;
    dc.*.counter = 0;
    if (dc.*.dirstream != null) {
        open_directories -%= 1;
        _ = closedir(dc.*.dirstream);
        dc.*.dirstream = null;
    }
    if (dc.*.dirfiles.ht_vec != @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        hash_free(&dc.*.dirfiles, 1);
    }
    return null;
}
fn directory_contents_hash_1(arg_key_0: ?*const anyopaque) callconv(.C) c_ulong {
    var key_0 = arg_key_0;
    _ = &key_0;
    var key: [*c]const struct_directory_contents = @as([*c]const struct_directory_contents, @ptrCast(@alignCast(key_0)));
    _ = &key;
    var hash: c_ulong = undefined;
    _ = &hash;
    hash = @as(c_ulong, @bitCast(@as(c_ulong, (@as(c_uint, @bitCast(@as(c_uint, @truncate(key.*.dev)))) << @intCast(4)) ^ @as(c_uint, @bitCast(@as(c_uint, @truncate(key.*.ino)))))));
    return hash;
}
fn directory_contents_hash_2(arg_key_0: ?*const anyopaque) callconv(.C) c_ulong {
    var key_0 = arg_key_0;
    _ = &key_0;
    var key: [*c]const struct_directory_contents = @as([*c]const struct_directory_contents, @ptrCast(@alignCast(key_0)));
    _ = &key;
    var hash: c_ulong = undefined;
    _ = &hash;
    hash = @as(c_ulong, @bitCast(@as(c_ulong, (@as(c_uint, @bitCast(@as(c_uint, @truncate(key.*.dev)))) << @intCast(4)) ^ @as(c_uint, @bitCast(@as(c_uint, @truncate(~key.*.ino)))))));
    return hash;
}
fn directory_contents_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: [*c]const struct_directory_contents = @as([*c]const struct_directory_contents, @ptrCast(@alignCast(xv)));
    _ = &x;
    var y: [*c]const struct_directory_contents = @as([*c]const struct_directory_contents, @ptrCast(@alignCast(yv)));
    _ = &y;
    var result: c_int = undefined;
    _ = &result;
    result = if (x.*.ino < y.*.ino) -1 else if (x.*.ino == y.*.ino) 0 else 1;
    if (result != 0) return result;
    return if (x.*.dev < y.*.dev) -1 else if (x.*.dev == y.*.dev) 0 else 1;
}
var directory_contents: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);
fn directory_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const struct_directory, @ptrCast(@alignCast(key))).*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn directory_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const struct_directory, @ptrCast(@alignCast(key))).*.name;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn directory_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    while (true) {
        return if (@as([*c]const struct_directory, @ptrCast(@alignCast(x))).*.name == @as([*c]const struct_directory, @ptrCast(@alignCast(y))).*.name) 0 else strcmp(@as([*c]const struct_directory, @ptrCast(@alignCast(x))).*.name, @as([*c]const struct_directory, @ptrCast(@alignCast(y))).*.name);
    }
    return 0;
}
var directories: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);
fn dirfile_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const struct_dirfile, @ptrCast(@alignCast(key))).*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn dirfile_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const struct_dirfile, @ptrCast(@alignCast(key))).*.name;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn dirfile_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: [*c]const struct_dirfile = @as([*c]const struct_dirfile, @ptrCast(@alignCast(xv)));
    _ = &x;
    var y: [*c]const struct_dirfile = @as([*c]const struct_dirfile, @ptrCast(@alignCast(yv)));
    _ = &y;
    var result: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(x.*.length -% y.*.length))));
    _ = &result;
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) 0 else strcmp(x.*.name, y.*.name);
    }
    return 0;
}
fn dir_contents_file_exists_p(arg_dir: [*c]struct_directory, arg_filename: [*c]const u8) callconv(.C) c_int {
    var dir = arg_dir;
    _ = &dir;
    var filename = arg_filename;
    _ = &filename;
    var df: [*c]struct_dirfile = undefined;
    _ = &df;
    var d: [*c]struct_dirent = undefined;
    _ = &d;
    var dc: [*c]struct_directory_contents = dir.*.contents;
    _ = &dc;
    if ((dc == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) or (dc.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) return 0;
    if (filename != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        var dirfile_key: struct_dirfile = undefined;
        _ = &dirfile_key;
        if (@as(c_int, @bitCast(@as(c_uint, filename.*))) == @as(c_int, '\x00')) {
            return 1;
        }
        dirfile_key.name = filename;
        dirfile_key.length = strlen(filename);
        df = @as([*c]struct_dirfile, @ptrCast(@alignCast(hash_find_item(&dc.*.dirfiles, @as(?*const anyopaque, @ptrCast(&dirfile_key))))));
        if (df != null) return @intFromBool(!(df.*.impossible != 0));
    }
    if (dc.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(0))))) {
        return 0;
    }
    while (true) {
        var len: usize = undefined;
        _ = &len;
        var dirfile_key: struct_dirfile = undefined;
        _ = &dirfile_key;
        var dirfile_slot: [*c][*c]struct_dirfile = undefined;
        _ = &dirfile_slot;
        while (true) {
            __errno_location().* = 0;
            d = readdir(dc.*.dirstream);
            if (!((d == null) and (__errno_location().* == 4))) break;
        }
        if (d == @as([*c]struct_dirent, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
            if (__errno_location().* != 0) {
                fatal(@as([*c]floc, @ptrFromInt(0)), strlen(dir.*.name) +% strlen(strerror(__errno_location().*)), "readdir %s: %s", dir.*.name, strerror(__errno_location().*));
            }
            break;
        }
        if (!(d.*.d_ino != @as(__ino_t, 0))) continue;
        len = strlen(@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))));
        dirfile_key.name = @as([*c]u8, @ptrCast(@alignCast(&d.*.d_name)));
        dirfile_key.length = len;
        dirfile_slot = @as([*c][*c]struct_dirfile, @ptrCast(@alignCast(hash_find_slot(&dc.*.dirfiles, @as(?*const anyopaque, @ptrCast(&dirfile_key))))));
        {
            df = @as([*c]struct_dirfile, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_dirfile)))));
            df.*.name = strcache_add_len(@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))), len);
            df.*.type = d.*.d_type;
            df.*.length = len;
            df.*.impossible = 0;
            _ = hash_insert_at(&dc.*.dirfiles, @as(?*const anyopaque, @ptrCast(df)), @as(?*const anyopaque, @ptrCast(dirfile_slot)));
        }
        if ((filename != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) and ((@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))) == @as([*c]u8, @ptrCast(@volatileCast(@constCast(filename))))) or ((@as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))).*))) == @as(c_int, @bitCast(@as(c_uint, filename.*)))) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))).*))) == @as(c_int, '\x00')) or !(strcmp(@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))) + @as(usize, @bitCast(@as(isize, @intCast(1)))), filename + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) return 1;
    }
    if (d == @as([*c]struct_dirent, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        open_directories -%= 1;
        _ = closedir(dc.*.dirstream);
        dc.*.dirstream = null;
    }
    return 0;
}
fn find_directory(arg_name: [*c]const u8) callconv(.C) [*c]struct_directory {
    var name = arg_name;
    _ = &name;
    var dir: [*c]struct_directory = undefined;
    _ = &dir;
    var dir_slot: [*c][*c]struct_directory = undefined;
    _ = &dir_slot;
    var dir_key: struct_directory = undefined;
    _ = &dir_key;
    var dc: [*c]struct_directory_contents = undefined;
    _ = &dc;
    var dc_slot: [*c][*c]struct_directory_contents = undefined;
    _ = &dc_slot;
    var dc_key: struct_directory_contents = undefined;
    _ = &dc_key;
    var st: struct_stat = undefined;
    _ = &st;
    var r: c_int = undefined;
    _ = &r;
    dir_key.name = name;
    dir_slot = @as([*c][*c]struct_directory, @ptrCast(@alignCast(hash_find_slot(&directories, @as(?*const anyopaque, @ptrCast(&dir_key))))));
    dir = dir_slot.*;
    if (!((dir == null) or (@as(?*anyopaque, @ptrCast(dir)) == hash_deleted_item))) {
        var ctr: c_ulong = if (dir.*.contents != null) dir.*.contents.*.counter else dir.*.counter;
        _ = &ctr;
        if (ctr == command_count) return dir;
        while (true) {
            if ((2 & db_level) != 0) {
                _ = printf("Directory %s cache invalidated (count %lu != command %lu)\n", name, ctr, command_count);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        if (dir.*.contents != null) {
            _ = clear_directory_contents(dir.*.contents);
        }
    } else {
        var len: usize = strlen(name);
        _ = &len;
        dir = @as([*c]struct_directory, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_directory)))));
        dir.*.name = strcache_add_len(name, len);
        _ = hash_insert_at(&directories, @as(?*const anyopaque, @ptrCast(dir)), @as(?*const anyopaque, @ptrCast(dir_slot)));
    }
    dir.*.contents = null;
    dir.*.counter = command_count;
    while (((blk: {
        const tmp = stat(name, &st);
        r = tmp;
        break :blk tmp;
    }) == -1) and (__errno_location().* == 4)) {}
    if (r < 0) return dir;
    _ = memset(@as(?*anyopaque, @ptrCast(&dc_key)), @as(c_int, '\x00'), @sizeOf(struct_directory_contents));
    dc_key.dev = st.st_dev;
    dc_key.ino = st.st_ino;
    dc_slot = @as([*c][*c]struct_directory_contents, @ptrCast(@alignCast(hash_find_slot(&directory_contents, @as(?*const anyopaque, @ptrCast(&dc_key))))));
    dc = dc_slot.*;
    if ((dc == null) or (@as(?*anyopaque, @ptrCast(dc)) == hash_deleted_item)) {
        dc = @as([*c]struct_directory_contents, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_directory_contents)))));
        dc.* = dc_key;
        _ = hash_insert_at(&directory_contents, @as(?*const anyopaque, @ptrCast(dc)), @as(?*const anyopaque, @ptrCast(dc_slot)));
    }
    dir.*.contents = dc;
    if (dc.*.counter != command_count) {
        if (dc.*.counter != 0) {
            _ = clear_directory_contents(dc);
        }
        dc.*.counter = command_count;
        while (true) {
            __errno_location().* = 0;
            dc.*.dirstream = opendir(name);
            if (!((dc.*.dirstream == null) and (__errno_location().* == 4))) break;
        }
        if (dc.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(0))))) {
            dc.*.dirfiles.ht_vec = null;
        } else {
            hash_init(&dc.*.dirfiles, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 107)))), &dirfile_hash_1, &dirfile_hash_2, &dirfile_hash_cmp);
            open_directories +%= 1;
            if (open_directories == @as(c_uint, @bitCast(@as(c_int, 10)))) {
                _ = dir_contents_file_exists_p(dir, null);
            }
        }
    }
    return dir;
}
const struct_dirstream = extern struct {
    contents: [*c]struct_directory_contents = @import("std").mem.zeroes([*c]struct_directory_contents),
    dirfile_slot: [*c][*c]struct_dirfile = @import("std").mem.zeroes([*c][*c]struct_dirfile),
};
fn open_dirstream(arg_directory_1: [*c]const u8) callconv(.C) ?*anyopaque {
    var directory_1 = arg_directory_1;
    _ = &directory_1;
    var new: [*c]struct_dirstream = undefined;
    _ = &new;
    var dir: [*c]struct_directory = find_directory(directory_1);
    _ = &dir;
    if ((dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) or (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) return @as(?*anyopaque, @ptrFromInt(0));
    _ = dir_contents_file_exists_p(dir, null);
    new = @as([*c]struct_dirstream, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_dirstream)))));
    new.*.contents = dir.*.contents;
    new.*.dirfile_slot = @as([*c][*c]struct_dirfile, @ptrCast(@alignCast(new.*.contents.*.dirfiles.ht_vec)));
    return @as(?*anyopaque, @ptrCast(new));
}
fn read_dirstream(arg_stream: ?*anyopaque) callconv(.C) [*c]struct_dirent {
    var stream = arg_stream;
    _ = &stream;
    const buf = struct {
        var static: [*c]u8 = @import("std").mem.zeroes([*c]u8);
    };
    _ = &buf;
    const bufsz = struct {
        var static: usize = @import("std").mem.zeroes(usize);
    };
    _ = &bufsz;
    const ds: [*c]struct_dirstream = @as([*c]struct_dirstream, @ptrCast(@alignCast(stream)));
    _ = &ds;
    var dc: [*c]struct_directory_contents = ds.*.contents;
    _ = &dc;
    var dirfile_end: [*c][*c]struct_dirfile = @as([*c][*c]struct_dirfile, @ptrCast(@alignCast(dc.*.dirfiles.ht_vec))) + dc.*.dirfiles.ht_size;
    _ = &dirfile_end;
    while (ds.*.dirfile_slot < dirfile_end) {
        var df: [*c]struct_dirfile = (blk: {
            const ref = &ds.*.dirfile_slot;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &df;
        if (!((df == null) or (@as(?*anyopaque, @ptrCast(df)) == hash_deleted_item)) and !(df.*.impossible != 0)) {
            var d: [*c]struct_dirent = undefined;
            _ = &d;
            var len: usize = df.*.length +% @as(usize, 1);
            _ = &len;
            var sz: usize = (@sizeOf(struct_dirent) -% @sizeOf([256]u8)) +% len;
            _ = &sz;
            if (sz > bufsz.static) {
                bufsz.static *%= @as(usize, 2);
                if (sz > bufsz.static) {
                    bufsz.static = sz;
                }
                buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), bufsz.static))));
            }
            d = @as([*c]struct_dirent, @ptrCast(@alignCast(buf.static)));
            _ = blk: {
                const tmp = @as(__ino_t, 1);
                d.*.d_ino = tmp;
                break :blk tmp;
            };
            d.*.d_type = df.*.type;
            _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))))), @as(?*const anyopaque, @ptrCast(df.*.name)), len);
            return d;
        }
    }
    return null;
}
