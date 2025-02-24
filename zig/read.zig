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

const pid_t = __pid_t;

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

extern fn getlogin() [*c]u8;

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

extern fn fclose(__stream: [*c]FILE) c_int;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;

extern fn puts(__s: [*c]const u8) c_int;

extern fn ferror(__stream: [*c]FILE) c_int;

extern fn fileno(__stream: [*c]FILE) c_int;

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

extern fn getenv(__name: [*c]const u8) [*c]u8;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const __size_t = c_ulong;
const struct_dirent_34 = opaque {};
const glob_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_34 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_34),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
};

extern fn glob(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob_t) c_int;
extern fn globfree(__pglob: [*c]glob_t) void;

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
extern fn concat(c_uint, ...) [*c]const u8;

const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;
const out_of_memory = @import("output.zig").out_of_memory;
const o_default: c_int = 0;

const o_file: c_int = 2;
const o_env_override: c_int = 3;
const o_command: c_int = 4;
const o_override: c_int = 5;

const enum_variable_origin = c_int;

const f_simple: c_int = 1;
const f_recursive: c_int = 2;

const f_append: c_int = 4;

const f_append_value: c_int = 7;
const enum_variable_flavor = c_uint;
const v_default: c_int = 0;
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

extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;
extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
extern fn next_token([*c]const u8) [*c]u8;
extern fn end_of_token([*c]const u8) [*c]u8;
extern fn collapse_continuations([*c]u8) void;

export fn find_percent(arg_pattern: [*c]u8) [*c]u8 {
    var pattern = arg_pattern;
    _ = &pattern;
    return find_char_unquote(pattern, @as(c_int, '%'));
}
export fn find_percent_cached(arg_string: [*c][*c]const u8) [*c]const u8 {
    var string = arg_string;
    _ = &string;
    var p: [*c]const u8 = strchr(string.*, @as(c_int, '%'));
    _ = &p;
    var new: [*c]u8 = undefined;
    _ = &new;
    var np: [*c]u8 = undefined;
    _ = &np;
    var slen: usize = undefined;
    _ = &slen;
    if ((!(p != null) or (p == string.*)) or (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) != @as(c_int, '\\'))) return p;
    slen = strlen(string.*);
    new = @as([*c]u8, @ptrCast(@alignCast(malloc(slen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
    _ = memcpy(@as(?*anyopaque, @ptrCast(new)), @as(?*const anyopaque, @ptrCast(string.*)), slen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    np = new + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(string.*))), @sizeOf(u8))))));
    while (true) {
        var pp: [*c]u8 = np;
        _ = &pp;
        var i: c_int = -@as(c_int, 2);
        _ = &i;
        while (((&(blk: {
            const tmp = i;
            if (tmp >= 0) break :blk np + @as(usize, @intCast(tmp)) else break :blk np - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*) >= new) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = i;
            if (tmp >= 0) break :blk np + @as(usize, @intCast(tmp)) else break :blk np - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            i -= 1;
        }
        i += 1;
        {
            var hi: c_int = -@divTrunc(i, @as(c_int, 2));
            _ = &hi;
            _ = memmove(@as(?*anyopaque, @ptrCast(&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk pp + @as(usize, @intCast(tmp)) else break :blk pp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*)), @as(?*const anyopaque, @ptrCast(&(blk: {
                const tmp = @divTrunc(i, @as(c_int, 2));
                if (tmp >= 0) break :blk pp + @as(usize, @intCast(tmp)) else break :blk pp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*)), ((slen -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(pp) -% @intFromPtr(new))), @sizeOf(u8))))) +% @as(usize, @bitCast(@as(c_long, hi)))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        }
        slen +%= @as(usize, @bitCast(@as(c_long, @divTrunc(i, @as(c_int, 2)) + @import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)))));
        np += @as(usize, @bitCast(@as(isize, @intCast(@divTrunc(i, @as(c_int, 2))))));
        if (@import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)) == @as(c_int, 0)) break;
        np = strchr(np, @as(c_int, '%'));
        if (!((np != null) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk np + @as(usize, @intCast(tmp)) else break :blk np - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\')))) break;
    }
    string.* = strcache_add(new);
    return if (np != null) string.* + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(np) -% @intFromPtr(new))), @sizeOf(u8)))))) else null;
}

extern fn ar_name([*c]const u8) c_int;
extern fn ar_parse_name([*c]const u8, [*c][*c]u8, [*c][*c]u8) void;

extern fn file_exists_p([*c]const u8) c_int;

extern fn dir_setup_glob([*c]glob_t) void;

const construct_vpath_list = @import("vpath.zig").construct_vpath_list;

export fn construct_include_path(arg_arg_dirs: [*c][*c]const u8) void {
    var arg_dirs = arg_arg_dirs;
    _ = &arg_dirs;
    var stbuf: struct_stat = undefined;
    _ = &stbuf;
    var dirs: [*c][*c]const u8 = undefined;
    _ = &dirs;
    var cpp: [*c][*c]const u8 = undefined;
    _ = &cpp;
    var idx: usize = undefined;
    _ = &idx;
    var disable: c_int = 0;
    _ = &disable;
    idx = @sizeOf([4][*c]const u8) / @sizeOf([*c]const u8);
    if (arg_dirs != null) {
        cpp = arg_dirs;
        while (cpp.* != null) : (cpp += 1) {
            idx +%= 1;
        }
    }
    dirs = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(idx *% @sizeOf([*c]const u8)))));
    idx = 0;
    max_incl_len = 0;
    if (arg_dirs != null) while (arg_dirs.* != null) {
        var dir: [*c]const u8 = (blk: {
            const ref = &arg_dirs;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &dir;
        var expanded: [*c]u8 = null;
        _ = &expanded;
        var e: c_int = undefined;
        _ = &e;
        if ((@as(c_int, @bitCast(@as(c_uint, dir[0]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, dir[1]))) == @as(c_int, '\x00'))) {
            disable = 1;
            idx = 0;
            max_incl_len = 0;
            continue;
        }
        if (@as(c_int, @bitCast(@as(c_uint, dir[0]))) == @as(c_int, '~')) {
            expanded = tilde_expand(dir);
            if (expanded != null) {
                dir = expanded;
            }
        }
        while (((blk: {
            const tmp = stat(dir, &stbuf);
            e = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if ((e == @as(c_int, 0)) and ((stbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
            var len: usize = strlen(dir);
            _ = &len;
            while ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, dir[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '/'))) {
                len -%= 1;
            }
            if (len > max_incl_len) {
                max_incl_len = len;
            }
            dirs[
                blk: {
                    const ref = &idx;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = strcache_add_len(dir, len);
        }
        free(@as(?*anyopaque, @ptrCast(expanded)));
    };
    if (!(disable != 0)) {
        {
            cpp = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_include_directories)));
            while (cpp.* != null) : (cpp += 1) {
                var e: c_int = undefined;
                _ = &e;
                while (((blk: {
                    const tmp = stat(cpp.*, &stbuf);
                    e = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if ((e == @as(c_int, 0)) and ((stbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                    var len: usize = strlen(cpp.*);
                    _ = &len;
                    while ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, cpp.*[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '/'))) {
                        len -%= 1;
                    }
                    if (len > max_incl_len) {
                        max_incl_len = len;
                    }
                    dirs[
                        blk: {
                            const ref = &idx;
                            const tmp = ref.*;
                            ref.* +%= 1;
                            break :blk tmp;
                        }
                    ] = strcache_add_len(cpp.*, len);
                }
            }
        }
    }
    dirs[idx] = null;
    _ = do_variable_definition(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ".INCLUDE_DIRS", "", @as(c_uint, @bitCast(o_default)), @as(c_uint, @bitCast(f_simple)), @as(c_int, 0));
    {
        cpp = dirs;
        while (cpp.* != null) : (cpp += 1) {
            _ = do_variable_definition(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ".INCLUDE_DIRS", cpp.*, @as(c_uint, @bitCast(o_default)), @as(c_uint, @bitCast(f_append)), @as(c_int, 0));
        }
    }
    free(@as(?*anyopaque, @ptrCast(include_directories)));
    include_directories = dirs;
}
extern fn strip_whitespace(begpp: [*c][*c]const u8, endpp: [*c][*c]const u8) [*c]u8;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

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
extern fn split_prereqs(prereqstr: [*c]u8) [*c]struct_dep;
extern fn enter_prereqs(prereqs: [*c]struct_dep, stem: [*c]const u8) [*c]struct_dep;

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
export fn parse_file_seq(arg_stringp: [*c][*c]u8, arg_size: usize, arg_stopmap: c_int, arg_prefix: [*c]const u8, arg_flags: c_int) ?*anyopaque {
    var stringp = arg_stringp;
    _ = &stringp;
    var size = arg_size;
    _ = &size;
    var stopmap = arg_stopmap;
    _ = &stopmap;
    var prefix = arg_prefix;
    _ = &prefix;
    var flags = arg_flags;
    _ = &flags;
    const tmpbuf = struct {
        var static: [*c]u8 = null;
    };
    _ = &tmpbuf;
    var cachep: c_int = @intFromBool(!((flags & @as(c_int, 16)) != @as(c_int, 0)));
    _ = &cachep;
    var new: [*c]struct_nameseq = null;
    _ = &new;
    var newp: [*c][*c]struct_nameseq = &new;
    _ = &newp;
    var p: [*c]u8 = undefined;
    _ = &p;
    var gl: glob_t = undefined;
    _ = &gl;
    var tp: [*c]u8 = undefined;
    _ = &tp;
    var findmap: c_int = (stopmap | @as(c_int, 0)) | @as(c_int, 1);
    _ = &findmap;
    var found_wait: c_int = 0;
    _ = &found_wait;
    if (!((flags & @as(c_int, 32)) != @as(c_int, 0))) {
        findmap |= @as(c_int, 2);
    }
    stopmap |= @as(c_int, 1);
    if (size < @sizeOf(struct_nameseq)) {
        size = @sizeOf(struct_nameseq);
    }
    if (!((flags & @as(c_int, 4)) != @as(c_int, 0))) {
        dir_setup_glob(&gl);
    }
    {
        const tmpbuf_len = struct {
            var static: usize = 0;
        };
        _ = &tmpbuf_len;
        var l: usize = strlen(stringp.*) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
        _ = &l;
        if (l > tmpbuf_len.static) {
            tmpbuf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(tmpbuf.static)), l))));
            tmpbuf_len.static = l;
        }
    }
    tp = tmpbuf.static;
    p = stringp.*;
    while (true) {
        var name: [*c]const u8 = undefined;
        _ = &name;
        var nlist: [*c][*c]const u8 = null;
        _ = &nlist;
        var tildep: [*c]u8 = null;
        _ = &tildep;
        var globme: c_int = 1;
        _ = &globme;
        var arname: [*c]u8 = null;
        _ = &arname;
        var memname: [*c]u8 = null;
        _ = &memname;
        var s: [*c]u8 = undefined;
        _ = &s;
        var nlen: usize = undefined;
        _ = &nlen;
        var tot: c_int = undefined;
        _ = &tot;
        var i: c_int = undefined;
        _ = &i;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stopmap) != @as(c_int, 0)) break;
        s = p;
        p = find_map_unquote(p, findmap);
        if (!(p != null)) {
            p = s + strlen(s);
        }
        if ((((flags & @as(c_int, 64)) != @as(c_int, 0)) and (@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8)))) == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) and (memcmp(@as(?*const anyopaque, @ptrCast(s)), @as(?*const anyopaque, @ptrCast(".WAIT")), @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            found_wait = 1;
            continue;
        }
        if (!((flags & @as(c_int, 1)) != @as(c_int, 0))) while (((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8)) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) and (@as(c_int, @bitCast(@as(c_uint, s[0]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, s[1]))) == @as(c_int, '/'))) {
            s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            while (@as(c_int, @bitCast(@as(c_uint, s.*))) == @as(c_int, '/')) {
                s += 1;
            }
        };
        if (s == p) {
            tp[0] = '.';
            tp[1] = '/';
            tp[2] = '\x00';
            nlen = 2;
        } else {
            nlen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(tp)), @as(?*const anyopaque, @ptrCast(s)), nlen);
            tp[nlen] = '\x00';
        }
        if (((!((flags & @as(c_int, 2)) != @as(c_int, 0)) and (tp == tmpbuf.static)) and (@as(c_int, @bitCast(@as(c_uint, tp[0]))) != @as(c_int, '('))) and (@as(c_int, @bitCast(@as(c_uint, tp[nlen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, ')'))) {
            var n: [*c]u8 = strchr(tp, @as(c_int, '('));
            _ = &n;
            if (n != null) {
                var e: [*c]const u8 = p;
                _ = &e;
                while (true) {
                    var o: [*c]const u8 = e;
                    _ = &o;
                    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
                        e += 1;
                    }
                    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & findmap) != @as(c_int, 0))) {
                        e += 1;
                    }
                    if (e == o) break;
                    if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = -@as(c_int, 1);
                        if (tmp >= 0) break :blk e + @as(usize, @intCast(tmp)) else break :blk e - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) == @as(c_int, ')')) {
                        nlen -%= @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(n + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) -% @intFromPtr(tp))), @sizeOf(u8))));
                        tp = n + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                        break;
                    }
                    if (!(@as(c_int, @bitCast(@as(c_uint, e.*))) != @as(c_int, '\x00'))) break;
                }
                if (!(nlen != 0)) continue;
            }
        }
        if (tp > tmpbuf.static) {
            if (@as(c_int, @bitCast(@as(c_uint, tp[nlen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, ')')) {
                tp = tmpbuf.static;
                if (nlen == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) continue;
            } else {
                tp[
                    blk: {
                        const ref = &nlen;
                        const tmp = ref.*;
                        ref.* +%= 1;
                        break :blk tmp;
                    }
                ] = ')';
                tp[nlen] = '\x00';
            }
        }
        if ((flags & @as(c_int, 4)) != @as(c_int, 0)) {
            while (true) {
                var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                _ = &_ns;
                var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, tmpbuf.static);
                _ = &__n;
                _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                if (found_wait != 0) {
                    @as([*c]struct_dep, @ptrCast(@alignCast(_ns))).*.wait_here = 1;
                    found_wait = 0;
                }
                newp.* = _ns;
                newp = &_ns.*.next;
                if (!false) break;
            }
            continue;
        }
        name = tmpbuf.static;
        if (@as(c_int, @bitCast(@as(c_uint, tmpbuf.static[0]))) == @as(c_int, '~')) {
            tildep = tilde_expand(tmpbuf.static);
            if (tildep != null) {
                name = tildep;
            }
        }
        if (!((flags & @as(c_int, 2)) != @as(c_int, 0)) and (ar_name(name) != 0)) {
            ar_parse_name(name, &arname, &memname);
            name = arname;
        }
        if (!((flags & @as(c_int, 8)) != @as(c_int, 0)) and (strpbrk(name, "?*[") == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
            globme = 0;
            tot = 1;
            nlist = &name;
        } else {
            while (true) {
                switch (glob(name, @as(c_int, 1) << @intCast(9), null, &gl)) {
                    @as(c_int, 1) => {
                        out_of_memory();
                        tot = @as(c_int, @bitCast(@as(c_uint, @truncate(gl.gl_pathc))));
                        nlist = @as([*c][*c]const u8, @ptrCast(@alignCast(gl.gl_pathv)));
                        break;
                    },
                    @as(c_int, 0) => {
                        tot = @as(c_int, @bitCast(@as(c_uint, @truncate(gl.gl_pathc))));
                        nlist = @as([*c][*c]const u8, @ptrCast(@alignCast(gl.gl_pathv)));
                        break;
                    },
                    @as(c_int, 3) => {
                        if ((flags & @as(c_int, 8)) != @as(c_int, 0)) {
                            tot = 0;
                            break;
                        }
                        tot = 1;
                        nlist = &name;
                        break;
                    },
                    else => {
                        tot = 1;
                        nlist = &name;
                        break;
                    },
                }
                break;
            }
        }
        {
            i = 0;
            while (i < tot) : (i += 1) if (memname != null) {
                var found: [*c]struct_nameseq = ar_glob((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, memname, size);
                _ = &found;
                if (!(found != null)) {
                    while (true) {
                        var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                        _ = &_ns;
                        var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 5))), prefix, (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*, "(", memname, ")");
                        _ = &__n;
                        _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                        if (found_wait != 0) {
                            @as([*c]struct_dep, @ptrCast(@alignCast(_ns))).*.wait_here = 1;
                            found_wait = 0;
                        }
                        newp.* = _ns;
                        newp = &_ns.*.next;
                        if (!false) break;
                    }
                } else {
                    if (newp.* != null) {
                        newp.*.*.next = found;
                    } else {
                        newp.* = found;
                    }
                    while (true) {
                        if (!(cachep != 0)) {
                            found.*.name = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, name));
                        } else if (prefix != null) {
                            found.*.name = strcache_add(concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, name));
                        }
                        if (found.*.next == null) break;
                        found = found.*.next;
                    }
                    newp = &found.*.next;
                }
            } else while (true) {
                var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                _ = &_ns;
                var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*);
                _ = &__n;
                _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                if (found_wait != 0) {
                    @as([*c]struct_dep, @ptrCast(@alignCast(_ns))).*.wait_here = 1;
                    found_wait = 0;
                }
                newp.* = _ns;
                newp = &_ns.*.next;
                if (!false) break;
            };
        }
        if (globme != 0) {
            globfree(&gl);
        }
        free(@as(?*anyopaque, @ptrCast(arname)));
        free(@as(?*anyopaque, @ptrCast(tildep)));
    }
    stringp.* = p;
    return @as(?*anyopaque, @ptrCast(new));
}
const struct_passwd = extern struct {
    pw_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_passwd: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    pw_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    pw_gecos: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_dir: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_shell: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
export fn tilde_expand(arg_name: [*c]const u8) [*c]u8 {
    var name = arg_name;
    _ = &name;
    if ((@as(c_int, @bitCast(@as(c_uint, name[1]))) == @as(c_int, '/')) or (@as(c_int, @bitCast(@as(c_uint, name[1]))) == @as(c_int, '\x00'))) {
        var home_dir: [*c]u8 = undefined;
        _ = &home_dir;
        var is_variable: c_int = undefined;
        _ = &is_variable;
        {
            var save: c_int = warn_undefined_variables_flag;
            _ = &save;
            warn_undefined_variables_flag = 0;
            home_dir = allocated_variable_expand_for_file("$(HOME)", @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
            warn_undefined_variables_flag = save;
        }
        is_variable = @intFromBool(@as(c_int, @bitCast(@as(c_uint, home_dir[0]))) != @as(c_int, '\x00'));
        if (!(is_variable != 0)) {
            free(@as(?*anyopaque, @ptrCast(home_dir)));
            home_dir = getenv("HOME");
        }
        if ((home_dir == null) or (@as(c_int, @bitCast(@as(c_uint, home_dir[0]))) == @as(c_int, '\x00'))) {
            var logname: [*c]u8 = getlogin();
            _ = &logname;
            home_dir = null;
            if (logname != null) {
                var p: [*c]struct_passwd = getpwnam(logname);
                _ = &p;
                if (p != null) {
                    home_dir = p.*.pw_dir;
                }
            }
        }
        if (home_dir != null) {
            var new: [*c]u8 = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 2))), home_dir, name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))));
            _ = &new;
            if (is_variable != 0) {
                free(@as(?*anyopaque, @ptrCast(home_dir)));
            }
            return new;
        }
    } else {
        var pwent: [*c]struct_passwd = undefined;
        _ = &pwent;
        var userend: [*c]u8 = strchr(name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, '/'));
        _ = &userend;
        if (userend != null) {
            userend.* = '\x00';
        }
        pwent = getpwnam(name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        if (pwent != null) {
            if (userend == null) return xstrdup(pwent.*.pw_dir);
            userend.* = '/';
            return xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), pwent.*.pw_dir, "/", userend + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))));
        } else if (userend != null) {
            userend.* = '/';
        }
    }
    return null;
}
extern fn ar_glob(arname: [*c]const u8, member_pattern: [*c]const u8, size: usize) [*c]struct_nameseq;
extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: [*c]const struct_dep) [*c]struct_dep;
export fn read_all_makefiles(arg_makefiles: [*c][*c]const u8) [*c]struct_goaldep {
    var makefiles = arg_makefiles;
    _ = &makefiles;
    var num_makefiles: c_uint = 0;
    _ = &num_makefiles;
    _ = define_variable_in_set("MAKEFILE_LIST", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_file)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    while (true) {
        if ((@as(c_int, 1) & db_level) != 0) {
            _ = printf(gettext("Reading makefiles...\n"));
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    {
        var value: [*c]u8 = undefined;
        _ = &value;
        var name: [*c]u8 = undefined;
        _ = &name;
        var p: [*c]u8 = undefined;
        _ = &p;
        var length: usize = undefined;
        _ = &length;
        value = allocated_variable_expand_for_file("$(MAKEFILES)", @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
        p = value;
        while ((blk: {
            const tmp = find_next_token(@as([*c][*c]const u8, @ptrCast(@alignCast(&p))), &length);
            name = tmp;
            break :blk tmp;
        }) != null) {
            if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = '\x00';
            }
            _ = eval_makefile(strcache_add(name), @as(c_ushort, @bitCast(@as(c_short, @truncate(((@as(c_int, 1) << @intCast(0)) | (@as(c_int, 1) << @intCast(1))) | (@as(c_int, 1) << @intCast(2)))))));
        }
        free(@as(?*anyopaque, @ptrCast(value)));
    }
    if (makefiles != null) while (makefiles.* != null) {
        var d: [*c]struct_goaldep = eval_makefile(makefiles.*, @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 0))))));
        _ = &d;
        if (__errno_location().* != 0) {
            perror_with_name("", makefiles.*);
        }
        makefiles.* = if (d.*.name != null) d.*.name else d.*.file.*.name;
        num_makefiles +%= 1;
        makefiles += 1;
    };
    if (num_makefiles == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        const default_makefiles = struct {
            var static: [4][*c]const u8 = [4][*c]const u8{
                "GNUmakefile",
                "makefile",
                "Makefile",
                null,
            };
        };
        _ = &default_makefiles;
        var p: [*c][*c]const u8 = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_makefiles.static)));
        _ = &p;
        while ((p.* != null) and !(file_exists_p(p.*) != 0)) {
            p += 1;
        }
        if (p.* != null) {
            _ = eval_makefile(p.*, @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 0))))));
            if (__errno_location().* != 0) {
                perror_with_name("", p.*);
            }
        } else {
            {
                p = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_makefiles.static)));
                while (p.* != null) : (p += 1) {
                    var d: [*c]struct_goaldep = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
                    _ = &d;
                    d.*.file = enter_file(strcache_add(p.*));
                    d.*.flags = @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)));
                    d.*.next = read_files;
                    read_files = d;
                }
            }
        }
    }
    return read_files;
}
const struct_ebuffer = extern struct {
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufnext: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufstart: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: usize = @import("std").mem.zeroes(usize),
    fp: [*c]FILE = @import("std").mem.zeroes([*c]FILE),
    floc: floc = @import("std").mem.zeroes(floc),
};
const struct_conditionals = extern struct {
    if_cmds: c_uint = @import("std").mem.zeroes(c_uint),
    allocated: c_uint = @import("std").mem.zeroes(c_uint),
    ignoring: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    seen_else: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
export fn eval_buffer(arg_buffer: [*c]u8, arg_flocp: [*c]const floc) void {
    var buffer = arg_buffer;
    _ = &buffer;
    var flocp = arg_flocp;
    _ = &flocp;
    var ebuf: struct_ebuffer = undefined;
    _ = &ebuf;
    var saved: [*c]struct_conditionals = undefined;
    _ = &saved;
    var new: struct_conditionals = undefined;
    _ = &new;
    var curfile: [*c]const floc = undefined;
    _ = &curfile;
    ebuf.size = strlen(buffer);
    ebuf.buffer = blk: {
        const tmp = blk_1: {
            const tmp_2 = buffer;
            ebuf.bufstart = tmp_2;
            break :blk_1 tmp_2;
        };
        ebuf.bufnext = tmp;
        break :blk tmp;
    };
    ebuf.fp = null;
    if (flocp != null) {
        ebuf.floc = flocp.*;
    } else if (reading_file != null) {
        ebuf.floc = reading_file.*;
    } else {
        ebuf.floc.filenm = null;
        ebuf.floc.lineno = 1;
        ebuf.floc.offset = 0;
    }
    curfile = reading_file;
    reading_file = &ebuf.floc;
    saved = install_conditionals(&new);
    eval(&ebuf, @as(c_int, 1));
    restore_conditionals(saved);
    reading_file = curfile;
}

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

extern fn fd_noinherit(c_int) void;

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

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;

extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;

extern fn pattern_matches(pattern: [*c]const u8, percent: [*c]const u8, str: [*c]const u8) c_int;

extern fn patsubst_expand_pat(o: [*c]u8, text: [*c]const u8, pattern: [*c]const u8, replace: [*c]const u8, pattern_percent: [*c]const u8, replace_percent: [*c]const u8) [*c]u8;

extern fn initialize_file_variables(file: [*c]struct_file, reading: c_int) void;

extern fn do_variable_definition(flocp: [*c]const floc, name: [*c]const u8, value: [*c]const u8, origin: enum_variable_origin, flavor: enum_variable_flavor, target_var: c_int) [*c]struct_variable;
extern fn parse_variable_definition(line: [*c]const u8, v: [*c]struct_variable) [*c]u8;
extern fn assign_variable_definition(v: [*c]struct_variable, line: [*c]const u8) [*c]struct_variable;
extern fn try_variable_definition(flocp: [*c]const floc, line: [*c]const u8, origin: enum_variable_origin, target_var: c_int) [*c]struct_variable;

extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;

extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;

extern fn create_pattern_var(target: [*c]const u8, suffix: [*c]const u8) [*c]struct_pattern_var;
extern var export_all_variables: c_int;
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

extern fn create_pattern_rule(targets: [*c][*c]const u8, target_percents: [*c][*c]const u8, num: c_ushort, terminal: c_int, deps: [*c]struct_dep, commands: [*c]struct_commands, override: c_int) void;

extern var db_level: c_int;

extern fn getpwnam(__name: [*c]const u8) [*c]struct_passwd;

const struct_vmodifiers = extern struct {
    assign_v: c_uint = @import("std").mem.zeroes(c_uint),
    define_v: c_uint = @import("std").mem.zeroes(c_uint),
    undefine_v: c_uint = @import("std").mem.zeroes(c_uint),
    override_v: c_uint = @import("std").mem.zeroes(c_uint),
    private_v: c_uint = @import("std").mem.zeroes(c_uint),
    export_v: enum_variable_export = @import("std").mem.zeroes(enum_variable_export),
};

const w_eol: c_int = 1;
const w_static: c_int = 2;
const w_variable: c_int = 3;
const w_colon: c_int = 4;
const w_dcolon: c_int = 5;
const w_semicolon: c_int = 6;
const w_varassign: c_int = 7;
const w_ampcolon: c_int = 8;
const w_ampdcolon: c_int = 9;
const enum_make_word_type = c_uint;
var toplevel_conditionals: struct_conditionals = @import("std").mem.zeroes(struct_conditionals);
var conditionals: [*c]struct_conditionals = &toplevel_conditionals;
var default_include_directories: [4][*c]const u8 = [4][*c]const u8{
    "/usr/gnu/include",
    "/usr/local/include",
    "/usr/include",
    null,
};
var include_directories: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8);
var max_incl_len: usize = @import("std").mem.zeroes(usize);
var read_files: [*c]struct_goaldep = null;
fn eval_makefile(arg_filename: [*c]const u8, arg_flags: c_ushort) callconv(.C) [*c]struct_goaldep {
    var filename = arg_filename;
    _ = &filename;
    var flags = arg_flags;
    _ = &flags;
    var deps: [*c]struct_goaldep = undefined;
    _ = &deps;
    var ebuf: struct_ebuffer = undefined;
    _ = &ebuf;
    var curfile: [*c]const floc = undefined;
    _ = &curfile;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    deps = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
    deps.*.next = read_files;
    read_files = deps;
    ebuf.floc.filenm = filename;
    ebuf.floc.lineno = 1;
    ebuf.floc.offset = 0;
    if ((@as(c_int, 2) & db_level) != 0) {
        _ = printf(gettext("Reading makefile '%s'"), filename);
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(0))) != 0) {
            _ = printf(gettext(" (no default goal)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(1))) != 0) {
            _ = printf(gettext(" (search path)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(2))) != 0) {
            _ = printf(gettext(" (don't care)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(3))) != 0) {
            _ = printf(gettext(" (no ~ expansion)"));
        }
        _ = puts("...");
    }
    if (!((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(3))) != 0) and (@as(c_int, @bitCast(@as(c_uint, filename[0]))) == @as(c_int, '~'))) {
        expanded = tilde_expand(filename);
        if (expanded != null) {
            filename = expanded;
        }
    }
    __errno_location().* = 0;
    while (true) {
        __errno_location().* = 0;
        ebuf.fp = fopen(filename, "r");
        if (!((ebuf.fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
    }
    deps.*.@"error" = __errno_location().*;
    while (true) {
        switch (deps.*.@"error") {
            @as(c_int, 24), @as(c_int, 23), @as(c_int, 12) => {
                {
                    var err: [*c]const u8 = strerror(deps.*.@"error");
                    _ = &err;
                    fatal(reading_file, strlen(err), "%s", err);
                }
            },
            else => {},
        }
        break;
    }
    if ((((((ebuf.fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (deps.*.@"error" == @as(c_int, 2))) and (include_directories != null)) and ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(1))) != @as(c_int, 0))) and !false) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(filename.*))]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        var dir: [*c][*c]const u8 = undefined;
        _ = &dir;
        {
            dir = include_directories;
            while (dir.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (dir += 1) {
                var included: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 3))), dir.*, "/", filename);
                _ = &included;
                while (true) {
                    __errno_location().* = 0;
                    ebuf.fp = fopen(included, "r");
                    if (!((ebuf.fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
                }
                if (ebuf.fp != null) {
                    filename = included;
                    break;
                }
                if (__errno_location().* != @as(c_int, 2)) {
                    filename = included;
                    deps.*.@"error" = __errno_location().*;
                    break;
                }
            }
        }
    }
    filename = strcache_add(filename);
    deps.*.file = lookup_file(filename);
    if (deps.*.file == null) {
        deps.*.file = enter_file(filename);
    }
    filename = deps.*.file.*.name;
    deps.*.flags = @as(c_uint, @bitCast(@as(c_uint, flags)));
    deps.*.file.*.is_explicit = 1;
    free(@as(?*anyopaque, @ptrCast(expanded)));
    if (ebuf.fp == null) {
        __errno_location().* = deps.*.@"error";
        deps.*.file.*.last_mtime = 1;
        return deps;
    }
    deps.*.@"error" = 0;
    if (deps.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
        deps.*.file.*.last_mtime = 0;
    }
    fd_noinherit(fileno(ebuf.fp));
    _ = do_variable_definition(&ebuf.floc, "MAKEFILE_LIST", filename, @as(c_uint, @bitCast(o_file)), @as(c_uint, @bitCast(f_append_value)), @as(c_int, 0));
    ebuf.size = 200;
    ebuf.buffer = blk: {
        const tmp = blk_1: {
            const tmp_2 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(ebuf.size))));
            ebuf.bufstart = tmp_2;
            break :blk_1 tmp_2;
        };
        ebuf.bufnext = tmp;
        break :blk tmp;
    };
    curfile = reading_file;
    reading_file = &ebuf.floc;
    eval(&ebuf, @intFromBool(!((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(0))) != 0)));
    reading_file = curfile;
    _ = fclose(ebuf.fp);
    free(@as(?*anyopaque, @ptrCast(ebuf.bufstart)));
    __errno_location().* = 0;
    return deps;
}
fn eval(arg_ebuf: [*c]struct_ebuffer, arg_set_default: c_int) callconv(.C) void {
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var set_default = arg_set_default;
    _ = &set_default;
    var collapsed: [*c]u8 = null;
    _ = &collapsed;
    var collapsed_length: usize = 0;
    _ = &collapsed_length;
    var commands_len: usize = 200;
    _ = &commands_len;
    var commands_1: [*c]u8 = undefined;
    _ = &commands_1;
    var commands_idx: usize = 0;
    _ = &commands_idx;
    var cmds_started: c_uint = undefined;
    _ = &cmds_started;
    var tgts_started: c_uint = undefined;
    _ = &tgts_started;
    var ignoring: c_int = 0;
    _ = &ignoring;
    var in_ignored_define: c_int = 0;
    _ = &in_ignored_define;
    var no_targets: c_int = 0;
    _ = &no_targets;
    var also_make_targets: c_int = 0;
    _ = &also_make_targets;
    var filenames: [*c]struct_nameseq = null;
    _ = &filenames;
    var depstr: [*c]u8 = null;
    _ = &depstr;
    var nlines: c_long = 0;
    _ = &nlines;
    var two_colon: c_int = 0;
    _ = &two_colon;
    var prefix: u8 = cmd_prefix;
    _ = &prefix;
    var pattern: [*c]const u8 = null;
    _ = &pattern;
    var pattern_percent: [*c]const u8 = undefined;
    _ = &pattern_percent;
    var fstart: [*c]floc = undefined;
    _ = &fstart;
    var fi: floc = undefined;
    _ = &fi;
    pattern_percent = null;
    cmds_started = blk: {
        const tmp = @as(c_uint, @bitCast(@as(c_int, 1)));
        tgts_started = tmp;
        break :blk tmp;
    };
    fstart = &ebuf.*.floc;
    fi.filenm = ebuf.*.floc.filenm;
    commands_1 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_long, @as(c_int, 200))))))));
    while (true) {
        var linelen: usize = undefined;
        _ = &linelen;
        var line: [*c]u8 = undefined;
        _ = &line;
        var wlen: usize = undefined;
        _ = &wlen;
        var p: [*c]u8 = undefined;
        _ = &p;
        var p2: [*c]u8 = undefined;
        _ = &p2;
        var vmod: struct_vmodifiers = undefined;
        _ = &vmod;
        ebuf.*.floc.lineno +%= @as(c_ulong, @bitCast(nlines));
        nlines = readline(ebuf);
        if (nlines < @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) break;
        line = ebuf.*.buffer;
        if (ebuf.*.floc.lineno == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) {
            var ul: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(line)));
            _ = &ul;
            if (((@as(c_int, @bitCast(@as(c_uint, ul[0]))) == @as(c_int, 239)) and (@as(c_int, @bitCast(@as(c_uint, ul[1]))) == @as(c_int, 187))) and (@as(c_int, @bitCast(@as(c_uint, ul[2]))) == @as(c_int, 191))) {
                line += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3)))));
                if ((@as(c_int, 1) & db_level) != 0) {
                    if (ebuf.*.floc.filenm != null) {
                        _ = printf(gettext("Skipping UTF-8 BOM in makefile '%s'\n"), ebuf.*.floc.filenm);
                    } else {
                        _ = printf(gettext("Skipping UTF-8 BOM in makefile buffer\n"));
                    }
                }
            }
        }
        if (@as(c_int, @bitCast(@as(c_uint, line[0]))) == @as(c_int, '\x00')) continue;
        linelen = strlen(line);
        if (@as(c_int, @bitCast(@as(c_uint, line[0]))) == @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
            if (no_targets != 0) continue;
            if (filenames != null) {
                if (ignoring != 0) continue;
                if (commands_idx == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                    cmds_started = @as(c_uint, @bitCast(@as(c_uint, @truncate(ebuf.*.floc.lineno))));
                }
                if ((linelen +% commands_idx) > commands_len) {
                    commands_len = (linelen +% commands_idx) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                    commands_1 = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(commands_1)), commands_len))));
                }
                _ = memcpy(@as(?*anyopaque, @ptrCast(&commands_1[commands_idx])), @as(?*const anyopaque, @ptrCast(line + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))), linelen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                commands_idx +%= linelen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
                commands_1[
                    blk: {
                        const ref = &commands_idx;
                        const tmp = ref.*;
                        ref.* +%= 1;
                        break :blk tmp;
                    }
                ] = '\n';
                continue;
            }
        }
        if (collapsed_length < (linelen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))) {
            collapsed_length = linelen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            free(@as(?*anyopaque, @ptrCast(collapsed)));
            collapsed = @as([*c]u8, @ptrCast(@alignCast(xmalloc(collapsed_length))));
        }
        _ = strcpy(collapsed, line);
        collapse_continuations(collapsed);
        remove_comments(collapsed);
        p = collapsed;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        p = parse_var_assignment(p, @as(c_int, 0), &vmod);
        if (vmod.assign_v != 0) {
            var v: [*c]struct_variable = undefined;
            _ = &v;
            var origin: enum_variable_origin = @as(c_uint, @bitCast(if (vmod.override_v != 0) o_override else o_file));
            _ = &origin;
            if (ignoring != 0) {
                if (vmod.define_v != 0) {
                    in_ignored_define = 1;
                }
                continue;
            }
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            if (vmod.undefine_v != 0) {
                do_undefine(p, origin, ebuf);
                continue;
            } else if (vmod.define_v != 0) {
                v = do_define(p, origin, ebuf);
            } else {
                v = try_variable_definition(fstart, p, origin, @as(c_int, 0));
            }
            _ = @as(c_int, 0);
            if (vmod.export_v != @as(c_uint, @bitCast(v_default))) {
                v.*.@"export" = vmod.export_v;
            }
            if (vmod.private_v != 0) {
                v.*.private_var = 1;
            }
            continue;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) continue;
        p2 = end_of_token(p);
        wlen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(p))), @sizeOf(u8))));
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p2 += 1;
        }
        if (in_ignored_define != 0) {
            if (((wlen == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("endef")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2.*))]))) & (@as(c_int, 8) | @as(c_int, 1))) != @as(c_int, 0))) {
                in_ignored_define = 0;
            }
            continue;
        }
        {
            var i: c_int = conditional_line(p, wlen, fstart);
            _ = &i;
            if (i != -@as(c_int, 2)) {
                if (i == -@as(c_int, 1)) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("invalid syntax in conditional"));
                }
                ignoring = i;
                continue;
            }
        }
        if (ignoring != 0) continue;
        if (((wlen == (@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("export")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) or ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("unexport")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            var exporting: c_int = if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, 'u')) @as(c_int, 0) else @as(c_int, 1);
            _ = &exporting;
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            if (@as(c_int, @bitCast(@as(c_uint, p2.*))) == @as(c_int, '\x00')) {
                export_all_variables = exporting;
            } else {
                var l: usize = undefined;
                _ = &l;
                var cp: [*c]const u8 = undefined;
                _ = &cp;
                var ap: [*c]u8 = undefined;
                _ = &ap;
                cp = blk: {
                    const tmp = allocated_variable_expand_for_file(p2, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
                    ap = tmp;
                    break :blk tmp;
                };
                {
                    p = find_next_token(&cp, &l);
                    while (p != null) : (p = find_next_token(&cp, &l)) {
                        var v: [*c]struct_variable = lookup_variable(p, l);
                        _ = &v;
                        if (v == null) {
                            v = define_variable_in_set(p, l, "", @as(c_uint, @bitCast(o_file)), @as(c_int, 0), null, fstart);
                        }
                        v.*.@"export" = @as(c_uint, @bitCast(if (exporting != 0) v_export else v_noexport));
                    }
                }
                free(@as(?*anyopaque, @ptrCast(ap)));
            }
            continue;
        }
        if ((wlen == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("vpath")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            var cp: [*c]const u8 = undefined;
            _ = &cp;
            var vpat: [*c]u8 = undefined;
            _ = &vpat;
            var l: usize = undefined;
            _ = &l;
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            cp = variable_expand(p2);
            p = find_next_token(&cp, &l);
            if (p != null) {
                vpat = xstrndup(p, l);
                p = find_next_token(&cp, &l);
            } else {
                vpat = null;
            }
            construct_vpath_list(vpat, p);
            free(@as(?*anyopaque, @ptrCast(vpat)));
            continue;
        }
        if ((((wlen == (@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("include")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) or ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("-include")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) or ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("sinclude")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            var save: [*c]struct_conditionals = undefined;
            _ = &save;
            var new_conditionals: struct_conditionals = undefined;
            _ = &new_conditionals;
            var files: [*c]struct_nameseq = undefined;
            _ = &files;
            var noerror: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p[0]))) != @as(c_int, 'i'));
            _ = &noerror;
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            p = allocated_variable_expand_for_file(p2, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
            if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
                free(@as(?*anyopaque, @ptrCast(p)));
                continue;
            }
            p2 = p;
            files = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p2, @sizeOf(struct_nameseq), @as(c_int, 1), null, @as(c_int, 2)))));
            free(@as(?*anyopaque, @ptrCast(p)));
            save = install_conditionals(&new_conditionals);
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            while (files != null) {
                var next: [*c]struct_nameseq = files.*.next;
                _ = &next;
                var flags: c_ushort = @as(c_ushort, @bitCast(@as(c_short, @truncate((((@as(c_int, 1) << @intCast(1)) | (@as(c_int, 1) << @intCast(3))) | (if (noerror != 0) @as(c_int, 1) << @intCast(2) else @as(c_int, 0))) | (if (set_default != 0) @as(c_int, 0) else @as(c_int, 1) << @intCast(0))))));
                _ = &flags;
                var d: [*c]struct_goaldep = eval_makefile(files.*.name, flags);
                _ = &d;
                d.*.floc = fstart.*;
                free(@as(?*anyopaque, @ptrCast(files)));
                files = next;
            }
            restore_conditionals(save);
            continue;
        }
        if (((wlen == (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("load")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) or ((wlen == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("-load")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            var files: [*c]struct_nameseq = undefined;
            _ = &files;
            var noerror: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p[0]))) == @as(c_int, '-'));
            _ = &noerror;
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            p = allocated_variable_expand_for_file(p2, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
            if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
                free(@as(?*anyopaque, @ptrCast(p)));
                continue;
            }
            p2 = p;
            files = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p2, @sizeOf(struct_nameseq), @as(c_int, 1), null, @as(c_int, 2)))));
            free(@as(?*anyopaque, @ptrCast(p)));
            while (files != null) {
                var next: [*c]struct_nameseq = files.*.next;
                _ = &next;
                var name: [*c]const u8 = files.*.name;
                _ = &name;
                var deps: [*c]struct_goaldep = undefined;
                _ = &deps;
                var f: [*c]struct_file = undefined;
                _ = &f;
                var r: c_int = undefined;
                _ = &r;
                {
                    var file_1: struct_file = struct_file{
                        .name = null,
                        .hname = null,
                        .vpath = null,
                        .deps = null,
                        .cmds = null,
                        .stem = null,
                        .also_make = null,
                        .prev = null,
                        .last = null,
                        .renamed = null,
                        .variables = null,
                        .pat_variables = null,
                        .parent = null,
                        .double_colon = null,
                        .last_mtime = @import("std").mem.zeroes(uintmax_t),
                        .mtime_before_update = @import("std").mem.zeroes(uintmax_t),
                        .considered = 0,
                        .command_flags = 0,
                        .update_status = @import("std").mem.zeroes(enum_update_status_36),
                        .command_state = @import("std").mem.zeroes(enum_cmd_state_37),
                        .builtin = 0,
                        .precious = 0,
                        .loaded = 0,
                        .unloaded = 0,
                        .low_resolution_time = 0,
                        .tried_implicit = 0,
                        .updating = 0,
                        .updated = 0,
                        .is_target = 0,
                        .cmd_target = 0,
                        .phony = 0,
                        .intermediate = 0,
                        .is_explicit = 0,
                        .secondary = 0,
                        .notintermediate = 0,
                        .dontcare = 0,
                        .ignore_vpath = 0,
                        .pat_searched = 0,
                        .no_diag = 0,
                        .was_shuffled = 0,
                        .snapped = 0,
                    };
                    _ = &file_1;
                    file_1.name = name;
                    r = load_file(&ebuf.*.floc, &file_1, noerror);
                    if (!(r != 0) and !(noerror != 0)) {
                        fatal(&ebuf.*.floc, strlen(name), gettext("%s: failed to load"), name);
                    }
                    name = file_1.name;
                }
                f = lookup_file(name);
                if (!(f != null)) {
                    f = enter_file(name);
                }
                f.*.loaded = 1;
                f.*.unloaded = 0;
                free(@as(?*anyopaque, @ptrCast(files)));
                files = next;
                if (r == -@as(c_int, 1)) continue;
                deps = @as([*c]struct_goaldep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_goaldep)))));
                deps.*.next = read_files;
                deps.*.floc = ebuf.*.floc;
                read_files = deps;
                deps.*.file = f;
            }
            continue;
        }
        if (@as(c_int, @bitCast(@as(c_uint, line[0]))) == @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
            fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("recipe commences before first target"));
        }
        {
            var wtype: enum_make_word_type = undefined;
            _ = &wtype;
            var cmdleft: [*c]u8 = undefined;
            _ = &cmdleft;
            var semip: [*c]u8 = null;
            _ = &semip;
            var lb_next: [*c]u8 = undefined;
            _ = &lb_next;
            var plen: usize = 0;
            _ = &plen;
            var colonp: [*c]u8 = undefined;
            _ = &colonp;
            var end: [*c]const u8 = undefined;
            _ = &end;
            var beg: [*c]const u8 = undefined;
            _ = &beg;
            while (true) {
                if (filenames != null) {
                    fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
                    fi.offset = 0;
                    record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
                    filenames = null;
                }
                commands_idx = 0;
                no_targets = 0;
                pattern = null;
                also_make_targets = 0;
                if (!false) break;
            }
            tgts_started = @as(c_uint, @bitCast(@as(c_uint, @truncate(fstart.*.lineno))));
            cmdleft = find_map_unquote(line, (@as(c_int, 16) | @as(c_int, 8)) | @as(c_int, 16384));
            if ((cmdleft != null) and (@as(c_int, @bitCast(@as(c_uint, cmdleft.*))) == @as(c_int, '#'))) {
                cmdleft.* = '\x00';
                cmdleft = null;
            } else if (cmdleft != null) {
                semip = blk: {
                    const ref = &cmdleft;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                };
                semip.* = '\x00';
            }
            collapse_continuations(line);
            wtype = get_next_mword(line, &lb_next, &wlen);
            while (true) {
                switch (wtype) {
                    @as(c_uint, @bitCast(@as(c_int, 1))) => {
                        if (cmdleft != null) {
                            fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing rule before recipe"));
                        }
                        continue;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 5))), @as(c_uint, @bitCast(@as(c_int, 8))), @as(c_uint, @bitCast(@as(c_int, 9))) => {
                        no_targets = 1;
                        continue;
                    },
                    else => break,
                }
                break;
            }
            p2 = variable_expand_string(null, lb_next, wlen);
            while (true) {
                lb_next += @as([*c]u8, @ptrFromInt(wlen));
                if (cmdleft == null) {
                    cmdleft = find_char_unquote(p2, @as(c_int, ';'));
                    if (cmdleft != null) {
                        var p2_off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
                        _ = &p2_off;
                        var cmd_off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cmdleft) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
                        _ = &cmd_off;
                        var pend: [*c]u8 = p2 + strlen(p2);
                        _ = &pend;
                        cmdleft.* = '\x00';
                        _ = variable_expand_string(pend, lb_next, @as(c_ulong, 18446744073709551615));
                        lb_next += @as([*c]u8, @ptrFromInt(strlen(lb_next)));
                        p2 = variable_buffer + p2_off;
                        cmdleft = (variable_buffer + cmd_off) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                    }
                }
                colonp = find_char_unquote(p2, @as(c_int, ':'));
                if (colonp != null) {
                    if ((colonp > p2) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = -@as(c_int, 1);
                        if (tmp >= 0) break :blk colonp + @as(usize, @intCast(tmp)) else break :blk colonp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) == @as(c_int, '&'))) {
                        colonp -= 1;
                    }
                    break;
                }
                wtype = get_next_mword(lb_next, &lb_next, &wlen);
                if (wtype == @as(c_uint, @bitCast(w_eol))) break;
                p2 += @as([*c]u8, @ptrFromInt(strlen(p2)));
                (blk: {
                    const ref = &p2;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = ' ';
                p2 = variable_expand_string(p2, lb_next, wlen);
            }
            p2 = next_token(variable_buffer);
            if (wtype == @as(c_uint, @bitCast(w_eol))) {
                if (@as(c_int, @bitCast(@as(c_uint, p2.*))) == @as(c_int, '\x00')) continue;
                if ((@as(c_int, @bitCast(@as(c_uint, cmd_prefix))) == @as(c_int, '\t')) and (strncmp(line, "        ", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) == @as(c_int, 0))) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing separator (did you mean TAB instead of 8 spaces?)"));
                }
                p2 = next_token(line);
                if ((strncmp(p2, "if", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(c_int, 0)) and (((strncmp(&p2[2], "neq", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(c_int, 0)) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2[5]))]))) & @as(c_int, 2)) != @as(c_int, 0))) or ((strncmp(&p2[2], "eq", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(c_int, 0)) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2[4]))]))) & @as(c_int, 2)) != @as(c_int, 0))))) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing separator (ifeq/ifneq must be followed by whitespace)"));
                }
                fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing separator"));
            }
            {
                var save: u8 = colonp.*;
                _ = &save;
                if (@as(c_int, @bitCast(@as(c_uint, save))) == @as(c_int, '&')) {
                    also_make_targets = 1;
                }
                colonp.* = '\x00';
                filenames = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p2, @sizeOf(struct_nameseq), @as(c_int, 1), null, @as(c_int, 0)))));
                colonp.* = save;
                p2 = colonp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, save))) == @as(c_int, '&')))));
            }
            if (!(filenames != null)) {
                no_targets = 1;
                continue;
            }
            _ = @as(c_int, 0);
            p2 += 1;
            two_colon = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p2.*))) == @as(c_int, ':'));
            if (two_colon != 0) {
                p2 += 1;
            }
            if (@as(c_int, @bitCast(@as(c_uint, lb_next.*))) != @as(c_int, '\x00')) {
                var l: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
                _ = &l;
                plen = strlen(p2);
                _ = variable_buffer_output(p2 + plen, lb_next, strlen(lb_next) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
                p2 = variable_buffer + l;
            }
            p2 = parse_var_assignment(p2, @as(c_int, 1), &vmod);
            if (vmod.assign_v != 0) {
                if (semip != null) {
                    var l: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
                    _ = &l;
                    semip.* = ';';
                    collapse_continuations(semip);
                    _ = variable_buffer_output(p2 + strlen(p2), semip, strlen(semip) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
                    p2 = variable_buffer + l;
                }
                record_target_var(filenames, p2, @as(c_uint, @bitCast(if (vmod.override_v != 0) o_override else o_file)), &vmod, fstart);
                filenames = null;
                continue;
            }
            _ = find_char_unquote(lb_next, @as(c_int, '='));
            prefix = cmd_prefix;
            no_targets = 0;
            if (@as(c_int, @bitCast(@as(c_uint, lb_next.*))) != @as(c_int, '\x00')) {
                var l: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
                _ = &l;
                _ = variable_expand_string(p2 + plen, lb_next, @as(c_ulong, 18446744073709551615));
                p2 = variable_buffer + l;
                if (cmdleft == null) {
                    cmdleft = find_char_unquote(p2, @as(c_int, ';'));
                    if (cmdleft != null) {
                        (blk: {
                            const ref = &cmdleft;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).* = '\x00';
                    }
                }
            }
            p = strchr(p2, @as(c_int, ':'));
            while ((p != null) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = -@as(c_int, 1);
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                var q: [*c]u8 = &(blk: {
                    const tmp = -@as(c_int, 1);
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*;
                _ = &q;
                var backslash: c_int = 0;
                _ = &backslash;
                while (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &q;
                    const tmp = ref.*;
                    ref.* -= 1;
                    break :blk tmp;
                }).*))) == @as(c_int, '\\')) {
                    backslash = @intFromBool(!(backslash != 0));
                }
                if (backslash != 0) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ':'));
                } else break;
            }
            if (p != null) {
                var target: [*c]struct_nameseq = undefined;
                _ = &target;
                target = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p2, @sizeOf(struct_nameseq), @as(c_int, 64), null, @as(c_int, 4)))));
                p2 += 1;
                if (target == null) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing target pattern"));
                } else if (target.*.next != null) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("multiple target patterns"));
                }
                pattern_percent = find_percent_cached(&target.*.name);
                pattern = target.*.name;
                if (pattern_percent == null) {
                    fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("target pattern contains no '%%'"));
                }
                free(@as(?*anyopaque, @ptrCast(target)));
            } else {
                pattern = null;
            }
            beg = p2;
            end = (beg + strlen(beg)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            _ = strip_whitespace(&beg, &end);
            if ((beg <= end) and (@as(c_int, @bitCast(@as(c_uint, beg.*))) != @as(c_int, '\x00'))) {
                depstr = xstrndup(beg, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(beg))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))));
            } else {
                depstr = null;
            }
            commands_idx = 0;
            if (cmdleft != null) {
                var l: usize = strlen(cmdleft);
                _ = &l;
                cmds_started = @as(c_uint, @bitCast(@as(c_uint, @truncate(fstart.*.lineno))));
                if ((l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) > commands_len) {
                    commands_len = (l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                    commands_1 = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(commands_1)), commands_len))));
                }
                _ = memcpy(@as(?*anyopaque, @ptrCast(commands_1)), @as(?*const anyopaque, @ptrCast(cmdleft)), l);
                commands_idx +%= l;
                commands_1[
                    blk: {
                        const ref = &commands_idx;
                        const tmp = ref.*;
                        ref.* +%= 1;
                        break :blk tmp;
                    }
                ] = '\n';
            }
            check_specials(filenames, set_default);
        }
    }
    if (conditionals.*.if_cmds != 0) {
        fatal(fstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing 'endif'"));
    }
    while (true) {
        if (filenames != null) {
            fi.lineno = @as(c_ulong, @bitCast(@as(c_ulong, tgts_started)));
            fi.offset = 0;
            record_files(filenames, also_make_targets, pattern, pattern_percent, depstr, cmds_started, commands_1, commands_idx, two_colon, prefix, &fi);
            filenames = null;
        }
        commands_idx = 0;
        no_targets = 0;
        pattern = null;
        also_make_targets = 0;
        if (!false) break;
    }
    free(@as(?*anyopaque, @ptrCast(collapsed)));
    free(@as(?*anyopaque, @ptrCast(commands_1)));
}
fn readline(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long {
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var p: [*c]u8 = undefined;
    _ = &p;
    var end: [*c]u8 = undefined;
    _ = &end;
    var start: [*c]u8 = undefined;
    _ = &start;
    var nlines: c_long = 0;
    _ = &nlines;
    if (!(ebuf.*.fp != null)) return readstring(ebuf);
    p = blk: {
        const tmp = ebuf.*.bufstart;
        start = tmp;
        break :blk tmp;
    };
    end = p + ebuf.*.size;
    p.* = '\x00';
    while (fgets(p, @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(p))), @sizeOf(u8)))))), ebuf.*.fp) != null) {
        var p2: [*c]u8 = undefined;
        _ = &p2;
        var len: usize = undefined;
        _ = &len;
        var backslash: c_int = undefined;
        _ = &backslash;
        len = strlen(p);
        if (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            @"error"(&ebuf.*.floc, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("warning: NUL character seen; rest of line ignored"));
            p[0] = '\n';
            len = 1;
        }
        p += @as([*c]u8, @ptrFromInt(len));
        if (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) != @as(c_int, '\n')) {
            {
                var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(start))), @sizeOf(u8))));
                _ = &off;
                ebuf.*.size *%= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                start = blk: {
                    const tmp = blk_1: {
                        const tmp_2 = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(start)), ebuf.*.size))));
                        ebuf.*.bufstart = tmp_2;
                        break :blk_1 tmp_2;
                    };
                    ebuf.*.buffer = tmp;
                    break :blk tmp;
                };
                p = start + off;
                end = start + ebuf.*.size;
                p.* = '\x00';
            }
            continue;
        }
        nlines += 1;
        if ((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(start))), @sizeOf(u8)) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 2);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\r'))) {
            p -= 1;
            _ = memmove(@as(?*anyopaque, @ptrCast(p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))), @as(?*const anyopaque, @ptrCast(p)), strlen(p) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        }
        backslash = 0;
        {
            p2 = p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            while (p2 >= start) : (p2 -= 1) {
                if (@as(c_int, @bitCast(@as(c_uint, p2.*))) != @as(c_int, '\\')) break;
                backslash = @intFromBool(!(backslash != 0));
            }
        }
        if (!(backslash != 0)) {
            (blk: {
                const tmp = -@as(c_int, 1);
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
            break;
        }
        if (@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(p))), @sizeOf(u8)) >= @as(c_long, @bitCast(@as(c_long, @as(c_int, 80))))) continue;
        {
            var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(start))), @sizeOf(u8))));
            _ = &off;
            ebuf.*.size *%= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
            start = blk: {
                const tmp = blk_1: {
                    const tmp_2 = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(start)), ebuf.*.size))));
                    ebuf.*.bufstart = tmp_2;
                    break :blk_1 tmp_2;
                };
                ebuf.*.buffer = tmp;
                break :blk tmp;
            };
            p = start + off;
            end = start + ebuf.*.size;
            p.* = '\x00';
        }
    }
    if (ferror(ebuf.*.fp) != 0) {
        pfatal_with_name(ebuf.*.floc.filenm);
    }
    return if (nlines != 0) nlines else @as(c_long, @bitCast(@as(c_long, if (p == ebuf.*.bufstart) -@as(c_int, 1) else @as(c_int, 1))));
}
fn do_undefine(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) void {
    var name = arg_name;
    _ = &name;
    var origin = arg_origin;
    _ = &origin;
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var p: [*c]u8 = undefined;
    _ = &p;
    var @"var": [*c]u8 = undefined;
    _ = &@"var";
    @"var" = allocated_variable_expand_for_file(name, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    name = next_token(@"var");
    if (@as(c_int, @bitCast(@as(c_uint, name.*))) == @as(c_int, '\x00')) {
        fatal(&ebuf.*.floc, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty variable name"));
    }
    p = (name + strlen(name)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    while ((p > name) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
        p -= 1;
    }
    p[1] = '\x00';
    undefine_variable_in_set(name, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(name))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))), origin, null);
    free(@as(?*anyopaque, @ptrCast(@"var")));
}
fn do_define(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) [*c]struct_variable {
    var name = arg_name;
    _ = &name;
    var origin = arg_origin;
    _ = &origin;
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var @"var": struct_variable = undefined;
    _ = &@"var";
    var defstart: floc = undefined;
    _ = &defstart;
    var nlevels: c_int = 1;
    _ = &nlevels;
    var length: usize = 100;
    _ = &length;
    var definition: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(length))));
    _ = &definition;
    var idx: usize = 0;
    _ = &idx;
    var p: [*c]u8 = undefined;
    _ = &p;
    var n: [*c]u8 = undefined;
    _ = &n;
    defstart = ebuf.*.floc;
    p = parse_variable_definition(name, &@"var");
    if (p == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"var".flavor = @as(c_uint, @bitCast(f_recursive));
    } else {
        if (@as(c_int, @bitCast(@as(c_uint, @"var".value[0]))) != @as(c_int, '\x00')) {
            @"error"(&defstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("extraneous text after 'define' directive"));
        }
        @"var".name[@"var".length] = '\x00';
    }
    n = allocated_variable_expand_for_file(name, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    name = next_token(n);
    if (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '\x00')) {
        fatal(&defstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty variable name"));
    }
    p = (name + strlen(name)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    while ((p > name) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
        p -= 1;
    }
    p[1] = '\x00';
    while (true) {
        var len: usize = undefined;
        _ = &len;
        var line: [*c]u8 = undefined;
        _ = &line;
        var nlines: c_long = readline(ebuf);
        _ = &nlines;
        if (nlines < @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) {
            fatal(&defstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("missing 'endef', unterminated 'define'"));
        }
        ebuf.*.floc.lineno +%= @as(c_ulong, @bitCast(nlines));
        line = ebuf.*.buffer;
        collapse_continuations(line);
        if (@as(c_int, @bitCast(@as(c_uint, line[0]))) != @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
            p = next_token(line);
            len = strlen(p);
            if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 6))))) or ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 6))))) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[6]))]))) & @as(c_int, 2)) != @as(c_int, 0)))) and (strncmp(p, "define", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 6))))) == @as(c_int, 0))) {
                nlevels += 1;
            } else if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 5))))) or ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 5))))) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[5]))]))) & @as(c_int, 2)) != @as(c_int, 0)))) and (strncmp(p, "endef", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5))))) == @as(c_int, 0))) {
                p += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 5)))));
                remove_comments(p);
                if (@as(c_int, @bitCast(@as(c_uint, next_token(p).*))) != @as(c_int, '\x00')) {
                    @"error"(&ebuf.*.floc, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("extraneous text after 'endef' directive"));
                }
                if ((blk: {
                    const ref = &nlevels;
                    ref.* -= 1;
                    break :blk ref.*;
                }) == @as(c_int, 0)) break;
            }
        }
        len = strlen(line);
        if (((idx +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) > length) {
            length = (idx +% len) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
            definition = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(definition)), length +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        }
        _ = memcpy(@as(?*anyopaque, @ptrCast(&definition[idx])), @as(?*const anyopaque, @ptrCast(line)), len);
        idx +%= len;
        definition[
            blk: {
                const ref = &idx;
                const tmp = ref.*;
                ref.* +%= 1;
                break :blk tmp;
            }
        ] = '\n';
    }
    if (idx == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        definition[0] = '\x00';
    } else {
        definition[idx -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
    }
    v = do_variable_definition(&defstart, name, definition, origin, @"var".flavor, @as(c_int, 0));
    free(@as(?*anyopaque, @ptrCast(definition)));
    free(@as(?*anyopaque, @ptrCast(n)));
    return v;
}
fn conditional_line(arg_line: [*c]u8, arg_len: usize, arg_flocp: [*c]const floc) callconv(.C) c_int {
    var line = arg_line;
    _ = &line;
    var len = arg_len;
    _ = &len;
    var flocp = arg_flocp;
    _ = &flocp;
    var cmdname: [*c]const u8 = undefined;
    _ = &cmdname;
    const c_ifdef: c_int = 0;
    _ = &c_ifdef;
    const c_ifndef: c_int = 1;
    _ = &c_ifndef;
    const c_ifeq: c_int = 2;
    _ = &c_ifeq;
    const c_ifneq: c_int = 3;
    _ = &c_ifneq;
    const c_else: c_int = 4;
    _ = &c_else;
    const c_endif: c_int = 5;
    _ = &c_endif;
    const enum_unnamed_38 = c_uint;
    _ = &enum_unnamed_38;
    var cmdtype: enum_unnamed_38 = undefined;
    _ = &cmdtype;
    var i: c_uint = undefined;
    _ = &i;
    var o: c_uint = undefined;
    _ = &o;
    if ((len == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("ifdef", line, @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_ifdef));
        cmdname = "ifdef";
    } else if ((len == (@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("ifndef", line, @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_ifndef));
        cmdname = "ifndef";
    } else if ((len == (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("ifeq", line, @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_ifeq));
        cmdname = "ifeq";
    } else if ((len == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("ifneq", line, @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_ifneq));
        cmdname = "ifneq";
    } else if ((len == (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("else", line, @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_else));
        cmdname = "else";
    } else if ((len == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("endif", line, @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
        cmdtype = @as(c_uint, @bitCast(c_endif));
        cmdname = "endif";
    } else return -@as(c_int, 2);
    line += @as([*c]u8, @ptrFromInt(len));
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(line.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        line += 1;
    }
    if (cmdtype == @as(c_uint, @bitCast(c_endif))) {
        if (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) {
            @"error"(flocp, strlen(cmdname), gettext("extraneous text after '%s' directive"), cmdname);
        }
        if (!(conditionals.*.if_cmds != 0)) {
            fatal(flocp, strlen(cmdname), gettext("extraneous '%s'"), cmdname);
        }
        conditionals.*.if_cmds -%= 1;
        {
            {
                i = 0;
                while (i < conditionals.*.if_cmds) : (i +%= 1) if (conditionals.*.ignoring[i] != 0) return 1;
            }
            return 0;
        }
    }
    if (cmdtype == @as(c_uint, @bitCast(c_else))) {
        var p: [*c]const u8 = undefined;
        _ = &p;
        if (!(conditionals.*.if_cmds != 0)) {
            fatal(flocp, strlen(cmdname), gettext("extraneous '%s'"), cmdname);
        }
        o = conditionals.*.if_cmds -% @as(c_uint, @bitCast(@as(c_int, 1)));
        if (conditionals.*.seen_else[o] != 0) {
            fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("only one 'else' per conditional"));
        }
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, conditionals.*.ignoring[o])))) {
                @as(c_int, 0) => {
                    conditionals.*.ignoring[o] = 2;
                    break;
                },
                @as(c_int, 1) => {
                    conditionals.*.ignoring[o] = 0;
                    break;
                },
                else => {},
            }
            break;
        }
        if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '\x00')) {
            conditionals.*.seen_else[o] = 1;
            {
                {
                    i = 0;
                    while (i < conditionals.*.if_cmds) : (i +%= 1) if (conditionals.*.ignoring[i] != 0) return 1;
                }
                return 0;
            }
        }
        {
            p = line + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0))) : (p += 1) {}
        }
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(line))), @sizeOf(u8))));
        if ((((len == (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("else", line, @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) or ((len == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (strncmp("endif", line, @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) or (conditional_line(line, len, flocp) < @as(c_int, 0))) {
            @"error"(flocp, strlen(cmdname), gettext("extraneous text after '%s' directive"), cmdname);
        } else {
            if (@as(c_int, @bitCast(@as(c_uint, conditionals.*.ignoring[o]))) < @as(c_int, 2)) {
                conditionals.*.ignoring[o] = conditionals.*.ignoring[o +% @as(c_uint, @bitCast(@as(c_int, 1)))];
            }
            conditionals.*.if_cmds -%= 1;
        }
        {
            {
                i = 0;
                while (i < conditionals.*.if_cmds) : (i +%= 1) if (conditionals.*.ignoring[i] != 0) return 1;
            }
            return 0;
        }
    }
    if (conditionals.*.allocated == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        conditionals.*.allocated = 5;
        conditionals.*.ignoring = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_ulong, conditionals.*.allocated)))))));
        conditionals.*.seen_else = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_ulong, conditionals.*.allocated)))))));
    }
    o = blk: {
        const ref = &conditionals.*.if_cmds;
        const tmp = ref.*;
        ref.* +%= 1;
        break :blk tmp;
    };
    if (conditionals.*.if_cmds > conditionals.*.allocated) {
        conditionals.*.allocated +%= @as(c_uint, @bitCast(@as(c_int, 5)));
        conditionals.*.ignoring = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(conditionals.*.ignoring)), @as(usize, @bitCast(@as(c_ulong, conditionals.*.allocated)))))));
        conditionals.*.seen_else = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(conditionals.*.seen_else)), @as(usize, @bitCast(@as(c_ulong, conditionals.*.allocated)))))));
    }
    conditionals.*.seen_else[o] = 0;
    {
        i = 0;
        while (i < o) : (i +%= 1) if (conditionals.*.ignoring[i] != 0) {
            conditionals.*.ignoring[o] = 1;
            return 1;
        };
    }
    if ((cmdtype == @as(c_uint, @bitCast(c_ifdef))) or (cmdtype == @as(c_uint, @bitCast(c_ifndef)))) {
        var l: usize = undefined;
        _ = &l;
        var @"var": [*c]u8 = undefined;
        _ = &@"var";
        var v: [*c]struct_variable = undefined;
        _ = &v;
        var p: [*c]u8 = undefined;
        _ = &p;
        @"var" = allocated_variable_expand_for_file(line, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
        p = end_of_token(@"var");
        l = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@"var"))), @sizeOf(u8))));
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) return -@as(c_int, 1);
        @"var"[l] = '\x00';
        v = lookup_variable(@"var", l);
        conditionals.*.ignoring[o] = @as(u8, @intFromBool(@intFromBool((v != null) and (@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) != @as(c_int, '\x00'))) == @intFromBool(cmdtype == @as(c_uint, @bitCast(c_ifndef)))));
        free(@as(?*anyopaque, @ptrCast(@"var")));
    } else {
        var s1: [*c]u8 = undefined;
        _ = &s1;
        var s2: [*c]u8 = undefined;
        _ = &s2;
        var l: usize = undefined;
        _ = &l;
        var termin: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '(')) @as(c_int, ',') else @as(c_int, @bitCast(@as(c_uint, line.*)))))));
        _ = &termin;
        if (((@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, ',')) and (@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, '"'))) and (@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, '\''))) return -@as(c_int, 1);
        s1 = blk: {
            const ref = &line;
            ref.* += 1;
            break :blk ref.*;
        };
        if (@as(c_int, @bitCast(@as(c_uint, termin))) == @as(c_int, ',')) {
            var count: c_int = 0;
            _ = &count;
            while (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) : (line += 1) if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '(')) {
                count += 1;
            } else if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, ')')) {
                count -= 1;
            } else if ((@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, ',')) and (count <= @as(c_int, 0))) break;
        } else while ((@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, @bitCast(@as(c_uint, termin))))) {
            line += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '\x00')) return -@as(c_int, 1);
        if (@as(c_int, @bitCast(@as(c_uint, termin))) == @as(c_int, ',')) {
            var p: [*c]u8 = blk: {
                const ref = &line;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            };
            _ = &p;
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                @as(u8, @bitCast((blk: {
                    const tmp = -@as(c_int, 1);
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))
            ]))) & @as(c_int, 2)) != @as(c_int, 0)) {
                p -= 1;
            }
            p.* = '\x00';
        } else {
            (blk: {
                const ref = &line;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\x00';
        }
        s2 = variable_expand(s1);
        l = strlen(s2);
        s1 = @as([*c]u8, @ptrCast(@alignCast(malloc(l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(s1)), @as(?*const anyopaque, @ptrCast(s2)), l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        if (@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, ',')) while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(line.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            line += 1;
        };
        termin = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, termin))) == @as(c_int, ',')) @as(c_int, ')') else @as(c_int, @bitCast(@as(c_uint, line.*)))))));
        if (((@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, ')')) and (@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, '"'))) and (@as(c_int, @bitCast(@as(c_uint, termin))) != @as(c_int, '\''))) return -@as(c_int, 1);
        if (@as(c_int, @bitCast(@as(c_uint, termin))) == @as(c_int, ')')) {
            var count: c_int = 0;
            _ = &count;
            s2 = next_token(line);
            {
                line = s2;
                while (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) : (line += 1) {
                    if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '(')) {
                        count += 1;
                    } else if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, ')')) {
                        if (count <= @as(c_int, 0)) break else {
                            count -= 1;
                        }
                    }
                }
            }
        } else {
            line += 1;
            s2 = line;
            while ((@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, @bitCast(@as(c_uint, termin))))) {
                line += 1;
            }
        }
        if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '\x00')) return -@as(c_int, 1);
        (blk: {
            const ref = &line;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = '\x00';
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(line.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            line += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, line.*))) != @as(c_int, '\x00')) {
            @"error"(flocp, strlen(cmdname), gettext("extraneous text after '%s' directive"), cmdname);
        }
        s2 = variable_expand(s2);
        conditionals.*.ignoring[o] = @as(u8, @intFromBool(@intFromBool((s1 == s2) or ((@as(c_int, @bitCast(@as(c_uint, s1.*))) == @as(c_int, @bitCast(@as(c_uint, s2.*)))) and ((@as(c_int, @bitCast(@as(c_uint, s1.*))) == @as(c_int, '\x00')) or !(strcmp(s1 + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), s2 + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) == @intFromBool(cmdtype == @as(c_uint, @bitCast(c_ifneq)))));
    }
    {
        i = 0;
        while (i < conditionals.*.if_cmds) : (i +%= 1) if (conditionals.*.ignoring[i] != 0) return 1;
    }
    return 0;
}
fn check_specials(arg_files: [*c]struct_nameseq, arg_set_default: c_int) callconv(.C) void {
    var files = arg_files;
    _ = &files;
    var set_default = arg_set_default;
    _ = &set_default;
    var t: [*c]struct_nameseq = undefined;
    _ = &t;
    {
        t = files;
        while (t != @as([*c]struct_nameseq, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (t = t.*.next) {
            var nm: [*c]const u8 = t.*.name;
            _ = &nm;
            if (!(posix_pedantic != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".POSIX")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".POSIX".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".POSIX" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                posix_pedantic = 1;
                _ = define_variable_in_set(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-ec", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("CC", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "c99", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("CFLAGS", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-O1", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("FC", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "fort77", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("FFLAGS", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-O1", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("SCCSGETFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-s", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("ARFLAGS", @sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-rv", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                continue;
            }
            if (!(second_expansion != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".SECONDEXPANSION")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".SECONDEXPANSION".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".SECONDEXPANSION" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                second_expansion = 1;
                continue;
            }
            if (!(one_shell != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".ONESHELL")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".ONESHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".ONESHELL" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                one_shell = 1;
                continue;
            }
            if ((set_default != 0) and (@as(c_int, @bitCast(@as(c_uint, default_goal_var.*.value[0]))) == @as(c_int, '\x00'))) {
                var d: [*c]struct_dep = undefined;
                _ = &d;
                var reject: c_int = 0;
                _ = &reject;
                if (strchr(nm, @as(c_int, '%')) != null) break;
                if ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '.')) and (strchr(nm, @as(c_int, '/')) == null)) continue;
                {
                    d = suffix_file.*.deps;
                    while (d != null) : (d = d.*.next) {
                        var d2: [*c]struct_dep = undefined;
                        _ = &d2;
                        if ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) != @as(c_int, '.')) and ((nm == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                            reject = 1;
                            break;
                        }
                        {
                            d2 = suffix_file.*.deps;
                            while (d2 != null) : (d2 = d2.*.next) {
                                var l: usize = strlen(if (d2.*.name != null) d2.*.name else d2.*.file.*.name);
                                _ = &l;
                                if (!(strncmp(nm, if (d2.*.name != null) d2.*.name else d2.*.file.*.name, l) == @as(c_int, 0))) continue;
                                if (((nm + l) == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, (nm + l).*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (nm + l).*))) == @as(c_int, '\x00')) or !(strcmp((nm + l) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
                                    reject = 1;
                                    break;
                                }
                            }
                        }
                        if (reject != 0) break;
                    }
                }
                if (!(reject != 0)) {
                    _ = define_variable_in_set(".DEFAULT_GOAL", @as(usize, @bitCast(@as(c_long, @as(c_int, 13)))), t.*.name, @as(c_uint, @bitCast(o_file)), @as(c_int, 0), null, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                }
            }
        }
    }
}
fn check_special_file(arg_file_1: [*c]struct_file, arg_flocp: [*c]const floc) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var flocp = arg_flocp;
    _ = &flocp;
    if ((file_1.*.name == @as([*c]const u8, @ptrCast(@alignCast(".WAIT")))) or ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".WAIT".*)))) and ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(file_1.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".WAIT" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        const wpre = struct {
            var static: c_uint = 0;
        };
        _ = &wpre;
        const wcmd = struct {
            var static: c_uint = 0;
        };
        _ = &wcmd;
        if (!(wpre.static != 0) and (file_1.*.deps != null)) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".WAIT should not have prerequisites"));
            wpre.static = 1;
        }
        if (!(wcmd.static != 0) and (file_1.*.cmds != null)) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".WAIT should not have commands"));
            wcmd.static = 1;
        }
        return;
    }
}
fn record_files(arg_filenames: [*c]struct_nameseq, arg_are_also_makes: c_int, arg_pattern: [*c]const u8, arg_pattern_percent: [*c]const u8, arg_depstr: [*c]u8, arg_cmds_started: c_uint, arg_commands_1: [*c]u8, arg_commands_idx: usize, arg_two_colon: c_int, arg_prefix: u8, arg_flocp: [*c]const floc) callconv(.C) void {
    var filenames = arg_filenames;
    _ = &filenames;
    var are_also_makes = arg_are_also_makes;
    _ = &are_also_makes;
    var pattern = arg_pattern;
    _ = &pattern;
    var pattern_percent = arg_pattern_percent;
    _ = &pattern_percent;
    var depstr = arg_depstr;
    _ = &depstr;
    var cmds_started = arg_cmds_started;
    _ = &cmds_started;
    var commands_1 = arg_commands_1;
    _ = &commands_1;
    var commands_idx = arg_commands_idx;
    _ = &commands_idx;
    var two_colon = arg_two_colon;
    _ = &two_colon;
    var prefix = arg_prefix;
    _ = &prefix;
    var flocp = arg_flocp;
    _ = &flocp;
    var cmds: [*c]struct_commands = undefined;
    _ = &cmds;
    var deps: [*c]struct_dep = undefined;
    _ = &deps;
    var also_make: [*c]struct_dep = null;
    _ = &also_make;
    var implicit_percent: [*c]const u8 = undefined;
    _ = &implicit_percent;
    var name: [*c]const u8 = undefined;
    _ = &name;
    if (snapped_deps != 0) {
        fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("prerequisites cannot be defined in recipes"));
    }
    name = filenames.*.name;
    implicit_percent = find_percent_cached(&name);
    if (commands_idx > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        cmds = @as([*c]struct_commands, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_commands)))));
        cmds.*.fileinfo.filenm = flocp.*.filenm;
        cmds.*.fileinfo.lineno = @as(c_ulong, @bitCast(@as(c_ulong, cmds_started)));
        cmds.*.fileinfo.offset = 0;
        cmds.*.commands = xstrndup(commands_1, commands_idx);
        cmds.*.command_lines = null;
        cmds.*.recipe_prefix = prefix;
    } else if (are_also_makes != 0) {
        fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("grouped targets must provide a recipe"));
    } else {
        cmds = null;
    }
    if (depstr == null) {
        deps = null;
    } else {
        depstr = unescape_char(depstr, @as(c_int, ':'));
        if ((second_expansion != 0) and (strchr(depstr, @as(c_int, '$')) != null)) {
            deps = @as([*c]struct_dep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_dep)))));
            deps.*.name = depstr;
            deps.*.need_2nd_expansion = 1;
            deps.*.staticpattern = @as(c_uint, @intFromBool(pattern != null));
        } else {
            deps = split_prereqs(depstr);
            free(@as(?*anyopaque, @ptrCast(depstr)));
            if (!(pattern != null) and !(implicit_percent != null)) {
                deps = enter_prereqs(deps, null);
            }
        }
    }
    if (implicit_percent != null) {
        var nextf: [*c]struct_nameseq = undefined;
        _ = &nextf;
        var targets: [*c][*c]const u8 = undefined;
        _ = &targets;
        var target_pats: [*c][*c]const u8 = undefined;
        _ = &target_pats;
        var c: c_ushort = undefined;
        _ = &c;
        if (pattern != null) {
            fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("mixed implicit and static pattern rules"));
        }
        nextf = filenames.*.next;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        filenames = nextf;
        {
            c = 1;
            while (nextf != null) : (_ = blk: {
                c +%= 1;
                break :blk blk_1: {
                    const tmp = nextf.*.next;
                    nextf = tmp;
                    break :blk_1 tmp;
                };
            }) {}
        }
        targets = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, c))) *% @sizeOf([*c]const u8)))));
        target_pats = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, c))) *% @sizeOf([*c]const u8)))));
        targets[0] = name;
        target_pats[0] = implicit_percent;
        c = 1;
        while (filenames != null) {
            name = filenames.*.name;
            implicit_percent = find_percent_cached(&name);
            if (implicit_percent == null) {
                fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("mixed implicit and normal rules"));
            }
            targets[c] = name;
            target_pats[c] = implicit_percent;
            c +%= 1;
            nextf = filenames.*.next;
            free(@as(?*anyopaque, @ptrCast(filenames)));
            filenames = nextf;
        }
        create_pattern_rule(targets, target_pats, c, two_colon, deps, cmds, @as(c_int, 1));
        return;
    }
    while (true) {
        var nextf: [*c]struct_nameseq = filenames.*.next;
        _ = &nextf;
        var f: [*c]struct_file = undefined;
        _ = &f;
        var this: [*c]struct_dep = null;
        _ = &this;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        if ((pattern != null) and !(pattern_matches(pattern, pattern_percent, name) != 0)) {
            @"error"(flocp, strlen(name), gettext("target '%s' doesn't match the target pattern"), name);
        } else if (deps != null) {
            this = if (nextf != null) copy_dep_chain(deps) else deps;
        }
        if (!(two_colon != 0)) {
            f = enter_file(strcache_add(name));
            if (f.*.double_colon != null) {
                fatal(flocp, strlen(f.*.name), gettext("target file '%s' has both : and :: entries"), f.*.name);
            }
            if ((cmds != null) and (cmds == f.*.cmds)) {
                @"error"(flocp, strlen(f.*.name), gettext("target '%s' given more than once in the same rule"), f.*.name);
            } else if (((cmds != null) and (f.*.cmds != null)) and (f.*.is_target != 0)) {
                var l: usize = strlen(f.*.name);
                _ = &l;
                @"error"(&cmds.*.fileinfo, l, gettext("warning: overriding recipe for target '%s'"), f.*.name);
                @"error"(&f.*.cmds.*.fileinfo, l, gettext("warning: ignoring old recipe for target '%s'"), f.*.name);
            }
            if (((f == default_file) and (this == null)) and (cmds == null)) {
                f.*.cmds = null;
            }
            if (cmds != null) {
                f.*.cmds = cmds;
            }
            if ((f == suffix_file) and (this == null)) {
                free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(f.*.deps))));
                f.*.deps = null;
            }
            f.*.is_explicit = 1;
        } else {
            f = lookup_file(name);
            if (((f != null) and (f.*.is_target != 0)) and !(f.*.double_colon != null)) {
                fatal(flocp, strlen(f.*.name), gettext("target file '%s' has both : and :: entries"), f.*.name);
            }
            f = enter_file(strcache_add(name));
            if (f.*.double_colon == null) {
                f.*.double_colon = f;
            }
            f.*.cmds = cmds;
        }
        if (are_also_makes != 0) {
            var also: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_dep)))));
            _ = &also;
            also.*.name = f.*.name;
            also.*.file = f;
            also.*.next = also_make;
            also_make = also;
        }
        f.*.is_target = 1;
        if (pattern != null) {
            const percent = struct {
                var static: [*c]const u8 = "%";
            };
            _ = &percent;
            var o: [*c]u8 = patsubst_expand_pat(variable_buffer, name, pattern, percent.static, pattern_percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), percent.static + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
            _ = &o;
            f.*.stem = strcache_add_len(variable_buffer, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(o) -% @intFromPtr(variable_buffer))), @sizeOf(u8)))));
            if (this != null) {
                if (!(this.*.need_2nd_expansion != 0)) {
                    this = enter_prereqs(this, f.*.stem);
                } else {
                    this.*.stem = f.*.stem;
                }
            }
        }
        if (this != null) {
            if (f.*.deps == null) {
                f.*.deps = this;
            } else if (cmds != null) {
                var d: [*c]struct_dep = this;
                _ = &d;
                while (d.*.next != null) {
                    d = d.*.next;
                }
                d.*.next = f.*.deps;
                f.*.deps = this;
            } else {
                var d: [*c]struct_dep = f.*.deps;
                _ = &d;
                while (d.*.next != null) {
                    d = d.*.next;
                }
                d.*.next = this;
            }
        }
        name = f.*.name;
        check_special_file(f, flocp);
        if (nextf == null) break;
        filenames = nextf;
        name = filenames.*.name;
        if (find_percent_cached(&name) != null) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("*** mixed implicit and normal rules: deprecated syntax"));
        }
    }
    {
        var i: [*c]struct_dep = undefined;
        _ = &i;
        {
            i = also_make;
            while (i != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (i = i.*.next) {
                var f: [*c]struct_file = i.*.file;
                _ = &f;
                var cpy: [*c]struct_dep = if (i.*.next != null) copy_dep_chain(also_make) else also_make;
                _ = &cpy;
                if (f.*.also_make != null) {
                    @"error"(&cmds.*.fileinfo, strlen(f.*.name), gettext("warning: overriding group membership for target '%s'"), f.*.name);
                    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(f.*.also_make))));
                }
                f.*.also_make = cpy;
            }
        }
    }
}
fn record_target_var(arg_filenames: [*c]struct_nameseq, arg_defn: [*c]u8, arg_origin: enum_variable_origin, arg_vmod: [*c]struct_vmodifiers, arg_flocp: [*c]const floc) callconv(.C) void {
    var filenames = arg_filenames;
    _ = &filenames;
    var defn = arg_defn;
    _ = &defn;
    var origin = arg_origin;
    _ = &origin;
    var vmod = arg_vmod;
    _ = &vmod;
    var flocp = arg_flocp;
    _ = &flocp;
    var nextf: [*c]struct_nameseq = undefined;
    _ = &nextf;
    var global: [*c]struct_variable_set_list = undefined;
    _ = &global;
    global = current_variable_set_list;
    while (filenames != null) : (filenames = nextf) {
        var v: [*c]struct_variable = undefined;
        _ = &v;
        var name: [*c]const u8 = filenames.*.name;
        _ = &name;
        var percent: [*c]const u8 = undefined;
        _ = &percent;
        var p: [*c]struct_pattern_var = undefined;
        _ = &p;
        nextf = filenames.*.next;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        percent = find_percent_cached(&name);
        if (percent != null) {
            p = create_pattern_var(name, percent);
            p.*.variable.fileinfo = flocp.*;
            v = assign_variable_definition(&p.*.variable, defn);
            _ = @as(c_int, 0);
            v.*.origin = origin;
            if (v.*.flavor == @as(c_uint, @bitCast(f_simple))) {
                v.*.value = allocated_variable_expand_for_file(v.*.value, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
            } else {
                v.*.value = xstrdup(v.*.value);
            }
        } else {
            var f: [*c]struct_file = undefined;
            _ = &f;
            f = lookup_file(name);
            if (!(f != null)) {
                f = enter_file(strcache_add(name));
            } else if (f.*.double_colon != null) {
                f = f.*.double_colon;
            }
            initialize_file_variables(f, @as(c_int, 1));
            current_variable_set_list = f.*.variables;
            v = try_variable_definition(flocp, defn, origin, @as(c_int, 1));
            if (!(v != null)) {
                fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("Malformed target-specific variable definition"));
            }
            current_variable_set_list = global;
        }
        v.*.per_target = 1;
        v.*.private_var = vmod.*.private_v;
        if (vmod.*.export_v != @as(c_uint, @bitCast(v_default))) {
            v.*.@"export" = vmod.*.export_v;
        }
        if (v.*.origin != @as(c_uint, @bitCast(o_override))) {
            var gv: [*c]struct_variable = undefined;
            _ = &gv;
            var len: usize = strlen(v.*.name);
            _ = &len;
            gv = lookup_variable(v.*.name, len);
            if (((gv != null) and (v != gv)) and ((gv.*.origin == @as(c_uint, @bitCast(o_env_override))) or (gv.*.origin == @as(c_uint, @bitCast(o_command))))) {
                free(@as(?*anyopaque, @ptrCast(v.*.value)));
                v.*.value = xstrdup(gv.*.value);
                v.*.origin = gv.*.origin;
                v.*.recursive = gv.*.recursive;
                v.*.append = 0;
            }
        }
    }
}
fn get_next_mword(arg_buffer: [*c]u8, arg_startp: [*c][*c]u8, arg_length: [*c]usize) callconv(.C) enum_make_word_type {
    var buffer = arg_buffer;
    _ = &buffer;
    var startp = arg_startp;
    _ = &startp;
    var length = arg_length;
    _ = &length;
    var wtype: enum_make_word_type = undefined;
    _ = &wtype;
    var p: [*c]u8 = buffer;
    _ = &p;
    var beg: [*c]u8 = undefined;
    _ = &beg;
    var c: u8 = undefined;
    _ = &c;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        p += 1;
    }
    beg = p;
    c = (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).*;
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, c)))) {
            @as(c_int, 0) => {
                wtype = @as(c_uint, @bitCast(w_eol));
                {
                    if (startp != null) {
                        startp.* = beg;
                    }
                    if (length != null) {
                        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                    }
                    return wtype;
                }
            },
            @as(c_int, 59) => {
                wtype = @as(c_uint, @bitCast(w_semicolon));
                {
                    if (startp != null) {
                        startp.* = beg;
                    }
                    if (length != null) {
                        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                    }
                    return wtype;
                }
            },
            @as(c_int, 61) => {
                wtype = @as(c_uint, @bitCast(w_varassign));
                {
                    if (startp != null) {
                        startp.* = beg;
                    }
                    if (length != null) {
                        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                    }
                    return wtype;
                }
            },
            @as(c_int, 58) => {
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '=')) {
                    p += 1;
                    wtype = @as(c_uint, @bitCast(w_varassign));
                } else if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ':')) {
                    p += 1;
                    if (@as(c_int, @bitCast(@as(c_uint, p[1]))) == @as(c_int, '=')) {
                        p += 1;
                        wtype = @as(c_uint, @bitCast(w_varassign));
                    } else {
                        wtype = @as(c_uint, @bitCast(w_dcolon));
                    }
                } else {
                    wtype = @as(c_uint, @bitCast(w_colon));
                }
                {
                    if (startp != null) {
                        startp.* = beg;
                    }
                    if (length != null) {
                        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                    }
                    return wtype;
                }
            },
            @as(c_int, 38) => {
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ':')) {
                    p += 1;
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, ':')) {
                        wtype = @as(c_uint, @bitCast(w_ampcolon));
                    } else {
                        p += 1;
                        wtype = @as(c_uint, @bitCast(w_ampdcolon));
                    }
                    {
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                }
                break;
            },
            @as(c_int, 43), @as(c_int, 63), @as(c_int, 33) => {
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '=')) {
                    p += 1;
                    wtype = @as(c_uint, @bitCast(w_varassign));
                    {
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                }
                break;
            },
            else => break,
        }
        break;
    }
    wtype = @as(c_uint, @bitCast(w_static));
    while (true) {
        var closeparen: u8 = undefined;
        _ = &closeparen;
        var count: c_int = undefined;
        _ = &count;
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(c))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0)) {
            p -= 1;
            if (startp != null) {
                startp.* = beg;
            }
            if (length != null) {
                length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
            }
            return wtype;
        }
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, c)))) {
                @as(c_int, 61) => {
                    {
                        p -= 1;
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                },
                @as(c_int, 58) => {
                    {
                        p -= 1;
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                },
                @as(c_int, 36) => {
                    c = (blk: {
                        const ref = &p;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).*;
                    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '$')) break;
                    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\x00')) {
                        p -= 1;
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                    wtype = @as(c_uint, @bitCast(w_variable));
                    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '(')) {
                        closeparen = ')';
                    } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '{')) {
                        closeparen = '}';
                    } else break;
                    {
                        count = 0;
                        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                            if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, c)))) {
                                count += 1;
                            } else if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                                const ref = &count;
                                ref.* -= 1;
                                break :blk ref.*;
                            }) < @as(c_int, 0))) {
                                p += 1;
                                break;
                            }
                        }
                    }
                    break;
                },
                @as(c_int, 63), @as(c_int, 43) => {
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '=')) {
                        p -= 1;
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                    break;
                },
                @as(c_int, 92) => {
                    while (true) {
                        switch (@as(c_int, @bitCast(@as(c_uint, p.*)))) {
                            @as(c_int, 58), @as(c_int, 59), @as(c_int, 61), @as(c_int, 92) => {
                                p += 1;
                                break;
                            },
                            else => {},
                        }
                        break;
                    }
                    break;
                },
                @as(c_int, 38) => {
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ':')) {
                        p -= 1;
                        if (startp != null) {
                            startp.* = beg;
                        }
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return wtype;
                    }
                    break;
                },
                else => break,
            }
            break;
        }
        c = (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    p -= 1;
    if (startp != null) {
        startp.* = beg;
    }
    if (length != null) {
        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
    }
    return wtype;
}
fn remove_comments(arg_line: [*c]u8) callconv(.C) void {
    var line = arg_line;
    _ = &line;
    var comment: [*c]u8 = undefined;
    _ = &comment;
    comment = find_map_unquote(line, @as(c_int, 8) | @as(c_int, 16384));
    if (comment != null) {
        comment.* = '\x00';
    }
}
fn find_map_unquote(arg_string: [*c]u8, arg_stopmap: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var stopmap = arg_stopmap;
    _ = &stopmap;
    var string_len: usize = 0;
    _ = &string_len;
    var p: [*c]u8 = string;
    _ = &p;
    stopmap |= @as(c_int, 1);
    while (true) {
        while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stopmap) != @as(c_int, 0))) {
            p += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) break;
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '$')) {
            var openparen: u8 = p[1];
            _ = &openparen;
            if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '\x00')) break;
            p += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            if ((@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) or (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '{'))) {
                var pcount: c_uint = 1;
                _ = &pcount;
                var closeparen: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) @as(c_int, ')') else @as(c_int, '}')))));
                _ = &closeparen;
                while (p.* != 0) {
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
                        pcount +%= 1;
                    } else if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) if ((blk: {
                        const ref = &pcount;
                        ref.* -%= 1;
                        break :blk ref.*;
                    }) == @as(c_uint, @bitCast(@as(c_int, 0)))) {
                        p += 1;
                        break;
                    };
                    p += 1;
                }
            }
            continue;
        }
        if ((p > string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            var i: c_int = -@as(c_int, 2);
            _ = &i;
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
            if (string_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                string_len = strlen(string);
            }
            {
                var hi: c_int = -@divTrunc(i, @as(c_int, 2));
                _ = &hi;
                _ = memmove(@as(?*anyopaque, @ptrCast(&(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast(&(blk: {
                    const tmp = @divTrunc(i, @as(c_int, 2));
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), ((string_len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(string))), @sizeOf(u8))))) +% @as(usize, @bitCast(@as(c_long, hi)))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                p += @as(usize, @bitCast(@as(isize, @intCast(@divTrunc(i, @as(c_int, 2))))));
            }
            if (@import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)) == @as(c_int, 0)) return p;
        } else return p;
    }
    return null;
}
fn find_char_unquote(arg_string: [*c]u8, arg_stop: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var stop = arg_stop;
    _ = &stop;
    var string_len: usize = 0;
    _ = &string_len;
    var p: [*c]u8 = string;
    _ = &p;
    while (true) {
        p = strchr(p, stop);
        if (!(p != null)) return null;
        if ((p > string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            var i: c_int = -@as(c_int, 2);
            _ = &i;
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
            if (string_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                string_len = strlen(string);
            }
            {
                var hi: c_int = -@divTrunc(i, @as(c_int, 2));
                _ = &hi;
                _ = memmove(@as(?*anyopaque, @ptrCast(&(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast(&(blk: {
                    const tmp = @divTrunc(i, @as(c_int, 2));
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), ((string_len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(string))), @sizeOf(u8))))) +% @as(usize, @bitCast(@as(c_long, hi)))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                p += @as(usize, @bitCast(@as(isize, @intCast(@divTrunc(i, @as(c_int, 2))))));
            }
            if (@import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)) == @as(c_int, 0)) return p;
        } else return p;
    }
    return null;
}
fn unescape_char(arg_string: [*c]u8, arg_c: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var c = arg_c;
    _ = &c;
    var p: [*c]u8 = string;
    _ = &p;
    var s: [*c]u8 = string;
    _ = &s;
    while (@as(c_int, @bitCast(@as(c_uint, s.*))) != @as(c_int, '\x00')) {
        if (@as(c_int, @bitCast(@as(c_uint, s.*))) == @as(c_int, '\\')) {
            var e: [*c]u8 = s;
            _ = &e;
            var l: usize = undefined;
            _ = &l;
            while (@as(c_int, @bitCast(@as(c_uint, e.*))) == @as(c_int, '\\')) {
                e += 1;
            }
            l = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(e) -% @intFromPtr(s))), @sizeOf(u8))));
            if ((@as(c_int, @bitCast(@as(c_uint, e.*))) != c) or ((l % @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) {
                _ = memmove(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(s)), l);
                p += @as([*c]u8, @ptrFromInt(l));
                if (@as(c_int, @bitCast(@as(c_uint, e.*))) == @as(c_int, '\x00')) break;
            } else if (l > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) {
                l /= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                _ = memmove(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(s)), l);
                p += @as([*c]u8, @ptrFromInt(l));
            }
            s = e;
        }
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    p.* = '\x00';
    return string;
}
fn install_conditionals(arg_new: [*c]struct_conditionals) callconv(.C) [*c]struct_conditionals {
    var new = arg_new;
    _ = &new;
    var save: [*c]struct_conditionals = conditionals;
    _ = &save;
    _ = memset(@as(?*anyopaque, @ptrCast(new)), @as(c_int, '\x00'), @sizeOf(struct_conditionals));
    conditionals = new;
    return save;
}
fn restore_conditionals(arg_saved: [*c]struct_conditionals) callconv(.C) void {
    var saved = arg_saved;
    _ = &saved;
    free(@as(?*anyopaque, @ptrCast(conditionals.*.ignoring)));
    free(@as(?*anyopaque, @ptrCast(conditionals.*.seen_else)));
    conditionals = saved;
}
fn parse_var_assignment(arg_line: [*c]const u8, arg_targvar: c_int, arg_vmod: [*c]struct_vmodifiers) callconv(.C) [*c]u8 {
    var line = arg_line;
    _ = &line;
    var targvar = arg_targvar;
    _ = &targvar;
    var vmod = arg_vmod;
    _ = &vmod;
    var p: [*c]const u8 = undefined;
    _ = &p;
    _ = memset(@as(?*anyopaque, @ptrCast(vmod)), @as(c_int, '\x00'), @sizeOf(struct_vmodifiers));
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(line.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        line += 1;
    }
    if (@as(c_int, @bitCast(@as(c_uint, line.*))) == @as(c_int, '\x00')) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(line))));
    p = line;
    while (true) {
        var wlen: usize = undefined;
        _ = &wlen;
        var p2: [*c]const u8 = undefined;
        _ = &p2;
        var v: struct_variable = undefined;
        _ = &v;
        p2 = parse_variable_definition(p, &v);
        if (p2 != null) break;
        p2 = end_of_token(p);
        wlen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p2) -% @intFromPtr(p))), @sizeOf(u8))));
        if ((wlen == (@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("export")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            vmod.*.export_v = @as(c_uint, @bitCast(v_export));
        } else if ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("unexport")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            vmod.*.export_v = @as(c_uint, @bitCast(v_noexport));
        } else if ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("override")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            vmod.*.override_v = 1;
        } else if ((wlen == (@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("private")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            vmod.*.private_v = 1;
        } else if (!(targvar != 0) and ((wlen == (@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("define")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            vmod.*.define_v = 1;
            p = next_token(p2);
            break;
        } else if (!(targvar != 0) and ((wlen == (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) and (memcmp(@as(?*const anyopaque, @ptrCast("undefine")), @as(?*const anyopaque, @ptrCast(p)), @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            vmod.*.undefine_v = 1;
            p = next_token(p2);
            break;
        } else return @as([*c]u8, @ptrCast(@volatileCast(@constCast(line))));
        p = next_token(p2);
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(line))));
    }
    vmod.*.assign_v = 1;
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
}
fn readstring(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long {
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var eol: [*c]u8 = undefined;
    _ = &eol;
    if (ebuf.*.bufnext >= (ebuf.*.bufstart + ebuf.*.size)) return @as(c_long, @bitCast(@as(c_long, -@as(c_int, 1))));
    eol = blk: {
        const tmp = ebuf.*.bufnext;
        ebuf.*.buffer = tmp;
        break :blk tmp;
    };
    while (true) {
        var backslash: c_int = 0;
        _ = &backslash;
        var bol: [*c]const u8 = eol;
        _ = &bol;
        var p: [*c]const u8 = undefined;
        _ = &p;
        p = blk: {
            const tmp = strchr(eol, @as(c_int, '\n'));
            eol = tmp;
            break :blk tmp;
        };
        if (!(eol != null)) {
            ebuf.*.bufnext = (ebuf.*.bufstart + ebuf.*.size) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            return 0;
        }
        while ((p > bol) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const ref = &p;
            ref.* -= 1;
            break :blk ref.*;
        }).*))) == @as(c_int, '\\'))) {
            backslash = @intFromBool(!(backslash != 0));
        }
        if (!(backslash != 0)) break;
        eol += 1;
    }
    eol.* = '\x00';
    ebuf.*.bufnext = eol + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    return 0;
}
