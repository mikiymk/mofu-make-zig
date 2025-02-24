const ptrdiff_t = c_long;

const gmk_func_ptr = ?*const fn ([*c]const u8, c_uint, [*c][*c]u8) callconv(.C) [*c]u8;

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

extern fn close(__fd: c_int) c_int;

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;

extern fn pipe(__pipedes: [*c]c_int) c_int;

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
extern fn remove(__filename: [*c]const u8) c_int;

extern fn fclose(__stream: [*c]FILE) c_int;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;

extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;

extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;

extern fn feof(__stream: [*c]FILE) c_int;
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

extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;

extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
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

const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

const o_override: c_int = 5;
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

extern fn make_lltoa(c_longlong, [*c]u8) [*c]u8;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn xstrndup([*c]const u8, usize) [*c]u8;
extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
extern fn next_token([*c]const u8) [*c]u8;
extern fn end_of_token([*c]const u8) [*c]u8;

extern fn alpha_compare(?*const anyopaque, ?*const anyopaque) c_int;

extern fn find_percent([*c]u8) [*c]u8;

export fn strip_whitespace(arg_begpp: [*c][*c]const u8, arg_endpp: [*c][*c]const u8) [*c]u8 {
    var begpp = arg_begpp;
    _ = &begpp;
    var endpp = arg_endpp;
    _ = &endpp;
    while ((begpp.* <= endpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(begpp.*.*))]))) & (2 | 4)) != 0)) {
        begpp.* += 1;
    }
    while ((endpp.* >= begpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(endpp.*.*))]))) & (2 | 4)) != 0)) {
        endpp.* -= 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(begpp.*))));
}

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

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

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;
extern fn hash_load(ht: [*c]struct_hash_table, item_table: ?*anyopaque, cardinality: c_ulong, size: c_ulong) void;

extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;

extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;

extern fn jhash(key: [*c]const u8, n: c_int) c_uint;
extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern var snapped_deps: c_int;
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

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;
extern fn expand_argument(str: [*c]const u8, end: [*c]const u8) [*c]u8;
extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;

extern fn install_variable_buffer(bufp: [*c][*c]u8, lenp: [*c]usize) void;
extern fn restore_variable_buffer(buf: [*c]u8, len: usize) void;
const union_unnamed_38 = extern union {
    func_ptr: ?*const fn ([*c]u8, [*c][*c]u8, [*c]const u8) callconv(.C) [*c]u8,
    alloc_func_ptr: gmk_func_ptr,
};
const struct_function_table_entry = extern struct {
    fptr: union_unnamed_38 = @import("std").mem.zeroes(union_unnamed_38),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: u8 = @import("std").mem.zeroes(u8),
    minimum_args: u8 = @import("std").mem.zeroes(u8),
    maximum_args: u8 = @import("std").mem.zeroes(u8),
    expand_args: c_uint = @import("std").mem.zeroes(c_uint),
    alloc_fn: c_uint = @import("std").mem.zeroes(c_uint),
    adds_command: c_uint = @import("std").mem.zeroes(c_uint),
};
export fn handle_function(arg_op: [*c][*c]u8, arg_stringp: [*c][*c]const u8) c_int {
    var op = arg_op;
    _ = &op;
    var stringp = arg_stringp;
    _ = &stringp;
    var entry_p: [*c]const struct_function_table_entry = undefined;
    _ = &entry_p;
    var openparen: u8 = stringp.*[0];
    _ = &openparen;
    var closeparen: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) @as(c_int, ')') else @as(c_int, '}')))));
    _ = &closeparen;
    var beg: [*c]const u8 = undefined;
    _ = &beg;
    var end: [*c]const u8 = undefined;
    _ = &end;
    var count: c_int = 0;
    _ = &count;
    var abeg: [*c]u8 = null;
    _ = &abeg;
    var argv: [*c][*c]u8 = undefined;
    _ = &argv;
    var argvp: [*c][*c]u8 = undefined;
    _ = &argvp;
    var nargs: c_uint = undefined;
    _ = &nargs;
    beg = stringp.* + @as(usize, @bitCast(@as(isize, @intCast(1))));
    entry_p = lookup_function(beg);
    if (!(entry_p != null)) return 0;
    beg += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, entry_p.*.len)))))));
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(beg.*))]))) & (2 | 4)) != 0) {
        beg += 1;
    }
    {
        _ = blk: {
            nargs = 1;
            break :blk blk_1: {
                const tmp = beg;
                end = tmp;
                break :blk_1 tmp;
            };
        };
        while (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) : (end += 1) if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(end.*))]))) & (@as(c_int, 128) | @as(c_int, 1024))) != 0)) continue else if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, ',')) {
            nargs +%= 1;
        } else if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
            count += 1;
        } else if ((@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
            const ref = &count;
            ref.* -= 1;
            break :blk ref.*;
        }) < 0)) break;
    }
    if (count >= 0) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("unterminated call to function '%s': missing '%c'"), entry_p.*.name, @as(c_int, @bitCast(@as(c_uint, closeparen))));
    }
    stringp.* = end;
    argvp = blk: {
        const tmp = @as([*c][*c]u8, @ptrCast(@alignCast(malloc(@sizeOf([*c]u8) *% @as(c_ulong, @bitCast(@as(c_ulong, nargs +% @as(c_uint, 2))))))));
        argv = tmp;
        break :blk tmp;
    };
    if (entry_p.*.expand_args != 0) {
        var p: [*c]const u8 = undefined;
        _ = &p;
        {
            _ = blk: {
                p = beg;
                break :blk blk_1: {
                    const tmp = @as(c_uint, 0);
                    nargs = tmp;
                    break :blk_1 tmp;
                };
            };
            while (p <= end) : (argvp += 1) {
                var next: [*c]const u8 = undefined;
                _ = &next;
                nargs +%= 1;
                if ((nargs == @as(c_uint, @bitCast(@as(c_uint, entry_p.*.maximum_args)))) or ((blk: {
                    const tmp = find_next_argument(openparen, closeparen, p, end);
                    next = tmp;
                    break :blk tmp;
                }) == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) {
                    next = end;
                }
                argvp.* = expand_argument(p, next);
                p = next + @as(usize, @bitCast(@as(isize, @intCast(1))));
            }
        }
    } else {
        var len: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(beg))), @sizeOf(u8))));
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var aend: [*c]u8 = undefined;
        _ = &aend;
        abeg = @as([*c]u8, @ptrCast(@alignCast(xmalloc(len +% @as(usize, 1)))));
        aend = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(abeg)), @as(?*const anyopaque, @ptrCast(beg)), len))));
        aend.* = '\x00';
        {
            _ = blk: {
                p = abeg;
                break :blk blk_1: {
                    const tmp = @as(c_uint, 0);
                    nargs = tmp;
                    break :blk_1 tmp;
                };
            };
            while (p <= aend) : (argvp += 1) {
                var next: [*c]u8 = undefined;
                _ = &next;
                nargs +%= 1;
                if ((nargs == @as(c_uint, @bitCast(@as(c_uint, entry_p.*.maximum_args)))) or ((blk: {
                    const tmp = find_next_argument(openparen, closeparen, p, aend);
                    next = tmp;
                    break :blk tmp;
                }) == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0))))))) {
                    next = aend;
                }
                argvp.* = p;
                next.* = '\x00';
                p = next + @as(usize, @bitCast(@as(isize, @intCast(1))));
            }
        }
    }
    argvp.* = null;
    op.* = expand_builtin_function(op.*, nargs, argv, entry_p);
    if (entry_p.*.expand_args != 0) {
        {
            argvp = argv;
            while (argvp.* != null) : (argvp += 1) {
                free(@as(?*anyopaque, @ptrCast(argvp.*)));
            }
        }
    } else {
        free(@as(?*anyopaque, @ptrCast(abeg)));
    }
    return 1;
}
export fn pattern_matches(arg_pattern: [*c]const u8, arg_percent: [*c]const u8, arg_str: [*c]const u8) c_int {
    var pattern = arg_pattern;
    _ = &pattern;
    var percent = arg_percent;
    _ = &percent;
    var str = arg_str;
    _ = &str;
    var sfxlen: usize = undefined;
    _ = &sfxlen;
    var strlength: usize = undefined;
    _ = &strlength;
    if (percent == null) {
        var len: usize = strlen(pattern) +% @as(c_ulong, 1);
        _ = &len;
        var new_chars: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
        _ = &new_chars;
        _ = memcpy(@as(?*anyopaque, @ptrCast(new_chars)), @as(?*const anyopaque, @ptrCast(pattern)), len);
        percent = find_percent(new_chars);
        if (percent == null) return @intFromBool((new_chars == @as([*c]u8, @ptrCast(@volatileCast(@constCast(str))))) or ((@as(c_int, @bitCast(@as(c_uint, new_chars.*))) == @as(c_int, @bitCast(@as(c_uint, str.*)))) and ((@as(c_int, @bitCast(@as(c_uint, new_chars.*))) == @as(c_int, '\x00')) or !(strcmp(new_chars + @as(usize, @bitCast(@as(isize, @intCast(1)))), str + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))));
        pattern = new_chars;
    }
    sfxlen = strlen(percent + @as(usize, @bitCast(@as(isize, @intCast(1)))));
    strlength = strlen(str);
    if ((strlength < (@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)))) +% sfxlen)) or !(strncmp(pattern, str, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8))))) == 0)) return 0;
    return @intFromBool(!(strcmp(percent + @as(usize, @bitCast(@as(isize, @intCast(1)))), str + (strlength -% sfxlen)) != 0));
}
export fn subst_expand(arg_o: [*c]u8, arg_text: [*c]const u8, arg_subst: [*c]const u8, arg_replace: [*c]const u8, arg_slen: usize, arg_rlen: usize, arg_by_word: c_int) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var subst = arg_subst;
    _ = &subst;
    var replace = arg_replace;
    _ = &replace;
    var slen = arg_slen;
    _ = &slen;
    var rlen = arg_rlen;
    _ = &rlen;
    var by_word = arg_by_word;
    _ = &by_word;
    var t: [*c]const u8 = text;
    _ = &t;
    var p: [*c]const u8 = undefined;
    _ = &p;
    if ((slen == @as(usize, 0)) and !(by_word != 0)) {
        o = variable_buffer_output(o, t, strlen(t));
        if (rlen > @as(usize, 0)) {
            o = variable_buffer_output(o, replace, rlen);
        }
        return o;
    }
    while (true) {
        if ((by_word != 0) and (slen == @as(usize, 0))) {
            p = end_of_token(next_token(t));
        } else {
            p = strstr(t, subst);
            if (p == null) {
                o = variable_buffer_output(o, t, strlen(t));
                return o;
            }
        }
        if (p > t) {
            o = variable_buffer_output(o, t, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(t))), @sizeOf(u8)))));
        }
        if ((by_word != 0) and (((p > text) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
            @as(u8, @bitCast((blk: {
                const tmp = -1;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))
        ]))) & (2 | 4)) != 0)) or !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[slen]))]))) & ((2 | 4) | 1)) != 0))) {
            o = variable_buffer_output(o, subst, slen);
        } else if (rlen > @as(usize, 0)) {
            o = variable_buffer_output(o, replace, rlen);
        }
        t = p + slen;
        if (!(@as(c_int, @bitCast(@as(c_uint, t.*))) != @as(c_int, '\x00'))) break;
    }
    return o;
}
export fn patsubst_expand_pat(arg_o: [*c]u8, arg_text: [*c]const u8, arg_pattern: [*c]const u8, arg_replace: [*c]const u8, arg_pattern_percent: [*c]const u8, arg_replace_percent: [*c]const u8) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var pattern = arg_pattern;
    _ = &pattern;
    var replace = arg_replace;
    _ = &replace;
    var pattern_percent = arg_pattern_percent;
    _ = &pattern_percent;
    var replace_percent = arg_replace_percent;
    _ = &replace_percent;
    var pattern_prepercent_len: usize = undefined;
    _ = &pattern_prepercent_len;
    var pattern_postpercent_len: usize = undefined;
    _ = &pattern_postpercent_len;
    var replace_prepercent_len: usize = undefined;
    _ = &replace_prepercent_len;
    var replace_postpercent_len: usize = undefined;
    _ = &replace_postpercent_len;
    var t: [*c]const u8 = undefined;
    _ = &t;
    var len: usize = undefined;
    _ = &len;
    var doneany: c_int = 0;
    _ = &doneany;
    if (replace_percent != null) {
        replace_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(replace_percent) -% @intFromPtr(replace))), @sizeOf(u8)) - @as(c_long, 1)));
        replace_postpercent_len = strlen(replace_percent);
    } else {
        replace_prepercent_len = strlen(replace);
        replace_postpercent_len = 0;
    }
    if (!(pattern_percent != null)) return subst_expand(o, text, pattern, replace, strlen(pattern), strlen(replace), 1);
    pattern_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(pattern_percent) -% @intFromPtr(pattern))), @sizeOf(u8)) - @as(c_long, 1)));
    pattern_postpercent_len = strlen(pattern_percent);
    while ((blk: {
        const tmp = find_next_token(&text, &len);
        t = tmp;
        break :blk tmp;
    }) != null) {
        var fail: c_int = 0;
        _ = &fail;
        if (len < (pattern_prepercent_len +% pattern_postpercent_len)) {
            fail = 1;
        }
        if ((!(fail != 0) and (pattern_prepercent_len > @as(usize, 0))) and (((@as(c_int, @bitCast(@as(c_uint, t.*))) != @as(c_int, @bitCast(@as(c_uint, pattern.*)))) or (@as(c_int, @bitCast(@as(c_uint, t[pattern_prepercent_len -% @as(usize, 1)]))) != @as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -2;
            if (tmp >= 0) break :blk pattern_percent + @as(usize, @intCast(tmp)) else break :blk pattern_percent - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))))) or !(strncmp(t + @as(usize, @bitCast(@as(isize, @intCast(1)))), pattern + @as(usize, @bitCast(@as(isize, @intCast(1)))), pattern_prepercent_len -% @as(usize, 1)) == 0))) {
            fail = 1;
        }
        if ((!(fail != 0) and (pattern_postpercent_len > @as(usize, 0))) and (((@as(c_int, @bitCast(@as(c_uint, t[len -% @as(usize, 1)]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent[pattern_postpercent_len -% @as(usize, 1)])))) or (@as(c_int, @bitCast(@as(c_uint, t[len -% pattern_postpercent_len]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent.*))))) or !(strncmp(&t[len -% pattern_postpercent_len], pattern_percent, pattern_postpercent_len -% @as(usize, 1)) == 0))) {
            fail = 1;
        }
        if (fail != 0) {
            o = variable_buffer_output(o, t, len);
        } else {
            o = variable_buffer_output(o, replace, replace_prepercent_len);
            if (replace_percent != null) {
                o = variable_buffer_output(o, t + pattern_prepercent_len, len -% (pattern_prepercent_len +% pattern_postpercent_len));
                o = variable_buffer_output(o, replace_percent, replace_postpercent_len);
            }
        }
        if (((fail != 0) or (replace_prepercent_len > @as(usize, 0))) or ((replace_percent != null) and ((len +% replace_postpercent_len) > @as(usize, 0)))) {
            o = variable_buffer_output(o, " ", @as(usize, 1));
            doneany = 1;
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
export fn patsubst_expand(arg_o: [*c]u8, arg_text: [*c]const u8, arg_pattern: [*c]u8, arg_replace: [*c]u8) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var pattern = arg_pattern;
    _ = &pattern;
    var replace = arg_replace;
    _ = &replace;
    var pattern_percent: [*c]const u8 = find_percent(pattern);
    _ = &pattern_percent;
    var replace_percent: [*c]const u8 = find_percent(replace);
    _ = &replace_percent;
    if (replace_percent != null) {
        replace_percent += 1;
    }
    if (pattern_percent != null) {
        pattern_percent += 1;
    }
    return patsubst_expand_pat(o, text, pattern, replace, pattern_percent, replace_percent);
}
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_childbase = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
};
export fn func_shell_base(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_trim_newlines: c_int) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var trim_newlines = arg_trim_newlines;
    _ = &trim_newlines;
    var child_1: struct_childbase = struct_childbase{
        .cmd_name = null,
        .environment = null,
        .output = @import("std").mem.zeroes(struct_output),
    };
    _ = &child_1;
    var batch_filename: [*c]u8 = null;
    _ = &batch_filename;
    var errfd: c_int = undefined;
    _ = &errfd;
    var command_argv: [*c][*c]u8 = null;
    _ = &command_argv;
    var pipedes: [2]c_int = undefined;
    _ = &pipedes;
    var pid: pid_t = undefined;
    _ = &pid;
    command_argv = construct_command_argv(argv[0], null, null, 0, &batch_filename);
    if (command_argv == null) {
        return o;
    }
    output_start();
    errfd = if ((output_context != null) and (output_context.*.err >= 0)) output_context.*.err else fileno(stderr);
    child_1.environment = target_environment(null, 0);
    if (pipe(@as([*c]c_int, @ptrCast(@alignCast(&pipedes)))) < 0) {
        @"error"(reading_file, strlen(strerror(__errno_location().*)), "pipe: %s", strerror(__errno_location().*));
        pid = -1;
        {
            if (command_argv != null) {
                free(@as(?*anyopaque, @ptrCast(command_argv[0])));
                free(@as(?*anyopaque, @ptrCast(command_argv)));
            }
            free_childbase(&child_1);
            return o;
        }
    }
    fd_noinherit(pipedes[1]);
    fd_noinherit(pipedes[0]);
    child_1.output.syncout = 1;
    child_1.output.out = pipedes[1];
    child_1.output.err = errfd;
    pid = child_execute_job(&child_1, 1, command_argv);
    if (pid < 0) {
        shell_completed(@as(c_int, 127), 0);
        {
            if (command_argv != null) {
                free(@as(?*anyopaque, @ptrCast(command_argv[0])));
                free(@as(?*anyopaque, @ptrCast(command_argv)));
            }
            free_childbase(&child_1);
            return o;
        }
    }
    {
        var buffer: [*c]u8 = undefined;
        _ = &buffer;
        var maxlen: usize = undefined;
        _ = &maxlen;
        var i: usize = undefined;
        _ = &i;
        var cc: c_int = undefined;
        _ = &cc;
        shell_function_pid = pid;
        shell_function_completed = 0;
        if (pipedes[1] >= 0) {
            _ = close(pipedes[1]);
        }
        maxlen = 200;
        buffer = @as([*c]u8, @ptrCast(@alignCast(xmalloc(maxlen +% @as(usize, 1)))));
        {
            i = 0;
            while (true) : (i +%= @as(usize, @bitCast(@as(c_long, cc)))) {
                if (i == maxlen) {
                    maxlen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 512))));
                    buffer = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buffer)), maxlen +% @as(usize, 1)))));
                }
                while (((blk: {
                    const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(pipedes[0], @as(?*anyopaque, @ptrCast(&buffer[i])), maxlen -% i)))));
                    cc = tmp;
                    break :blk tmp;
                }) == -1) and (__errno_location().* == 4)) {}
                if (cc <= 0) break;
            }
        }
        buffer[i] = '\x00';
        _ = close(pipedes[0]);
        while (shell_function_completed == 0) {
            reap_children(1, 0);
        }
        if (batch_filename != null) {
            while (true) {
                if ((2 & db_level) != 0) {
                    _ = printf(gettext("Cleaning up temporary batch file %s\n"), batch_filename);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            _ = remove(batch_filename);
            free(@as(?*anyopaque, @ptrCast(batch_filename)));
        }
        shell_function_pid = 0;
        fold_newlines(buffer, &i, trim_newlines);
        o = variable_buffer_output(o, buffer, i);
        free(@as(?*anyopaque, @ptrCast(buffer)));
    }
    if (command_argv != null) {
        free(@as(?*anyopaque, @ptrCast(command_argv[0])));
        free(@as(?*anyopaque, @ptrCast(command_argv)));
    }
    free_childbase(&child_1);
    return o;
}
export fn shell_completed(arg_exit_code: c_int, arg_exit_sig: c_int) void {
    var exit_code = arg_exit_code;
    _ = &exit_code;
    var exit_sig = arg_exit_sig;
    _ = &exit_sig;
    var buf: [22]u8 = undefined;
    _ = &buf;
    shell_function_pid = 0;
    if ((exit_sig == 0) and (exit_code == @as(c_int, 127))) {
        shell_function_completed = -1;
    } else {
        shell_function_completed = 1;
    }
    if ((exit_code == 0) and (exit_sig > 0)) {
        exit_code = @as(c_int, 128) + exit_sig;
    }
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%d", exit_code);
    _ = define_variable_in_set(".SHELLSTATUS", @sizeOf([13]u8) -% @as(c_ulong, 1), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_override)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
}

const push_new_variable_scope = @import("variable.zig").push_new_variable_scope;
const pop_variable_scope = @import("variable.zig").pop_variable_scope;

export fn hash_init_function_table() void {
    hash_init(&function_table, (@sizeOf([38]struct_function_table_entry) / @sizeOf(struct_function_table_entry)) *% @as(c_ulong, 2), &function_table_entry_hash_1, &function_table_entry_hash_2, &function_table_entry_hash_cmp);
    hash_load(&function_table, @as(?*anyopaque, @ptrCast(@as([*c]struct_function_table_entry, @ptrCast(@alignCast(&function_table_init))))), @sizeOf([38]struct_function_table_entry) / @sizeOf(struct_function_table_entry), @sizeOf(struct_function_table_entry));
}
export fn define_new_function(arg_flocp: [*c]const floc, arg_name: [*c]const u8, arg_min: c_uint, arg_max: c_uint, arg_flags: c_uint, arg_func: gmk_func_ptr) void {
    var flocp = arg_flocp;
    _ = &flocp;
    var name = arg_name;
    _ = &name;
    var min = arg_min;
    _ = &min;
    var max = arg_max;
    _ = &max;
    var flags = arg_flags;
    _ = &flags;
    var func = arg_func;
    _ = &func;
    var e: [*c]const u8 = name;
    _ = &e;
    var ent: [*c]struct_function_table_entry = undefined;
    _ = &ent;
    var len: usize = undefined;
    _ = &len;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & @as(c_int, 8192)) != 0) {
        e += 1;
    }
    len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(e) -% @intFromPtr(name))), @sizeOf(u8))));
    if (len == @as(usize, 0)) {
        fatal(flocp, @as(usize, 0), gettext("Empty function name"));
    }
    if ((@as(c_int, @bitCast(@as(c_uint, name.*))) == @as(c_int, '.')) or (@as(c_int, @bitCast(@as(c_uint, e.*))) != @as(c_int, '\x00'))) {
        fatal(flocp, strlen(name), gettext("Invalid function name: %s"), name);
    }
    if (len > @as(usize, @bitCast(@as(c_long, @as(c_int, 255))))) {
        fatal(flocp, strlen(name), gettext("Function name too long: %s"), name);
    }
    if (min > @as(c_uint, @bitCast(@as(c_int, 255)))) {
        fatal(flocp, (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)) +% strlen(name), gettext("Invalid minimum argument count (%u) for function %s"), min, name);
    }
    if ((max > @as(c_uint, @bitCast(@as(c_int, 255)))) or ((max != 0) and (max < min))) {
        fatal(flocp, (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)) +% strlen(name), gettext("Invalid maximum argument count (%u) for function %s"), max, name);
    }
    ent = @as([*c]struct_function_table_entry, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_function_table_entry)))));
    ent.*.name = strcache_add(name);
    ent.*.len = @as(u8, @bitCast(@as(u8, @truncate(len))));
    ent.*.minimum_args = @as(u8, @bitCast(@as(u8, @truncate(min))));
    ent.*.maximum_args = @as(u8, @bitCast(@as(u8, @truncate(max))));
    ent.*.expand_args = @as(c_uint, @bitCast(if ((flags & @as(c_uint, 1)) != @as(c_uint, 0)) 0 else 1));
    ent.*.alloc_fn = 1;
    ent.*.adds_command = 1;
    ent.*.fptr.alloc_func_ptr = func;
    ent = @as([*c]struct_function_table_entry, @ptrCast(@alignCast(hash_insert(&function_table, @as(?*const anyopaque, @ptrCast(ent))))));
    free(@as(?*anyopaque, @ptrCast(ent)));
}
extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;
extern fn warn_undefined(name: [*c]const u8, length: usize) void;

extern fn target_environment(file: [*c]struct_file, recursive: c_int) [*c][*c]u8;

extern var export_all_variables: c_int;
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

extern fn eval_buffer(buffer: [*c]u8, floc: [*c]const floc) void;

extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

extern fn output_start() void;
extern fn outputs(is_err: c_int, msg: [*c]const u8) void;

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

extern fn free_childbase(child: [*c]struct_childbase) void;
extern fn construct_command_argv(line: [*c]u8, restp: [*c][*c]u8, file: [*c]struct_file, cmd_flags: c_int, batch_file: [*c][*c]u8) [*c][*c]u8;
extern fn child_execute_job(child: [*c]struct_childbase, good_stdin: c_int, argv: [*c][*c]u8) pid_t;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;

extern fn fd_noinherit(c_int) void;

extern var db_level: c_int;
fn function_table_entry_hash_1(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: [*c]const struct_function_table_entry = @as([*c]const struct_function_table_entry, @ptrCast(@alignCast(keyv)));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(key.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash(_key_, @as(c_int, @bitCast(@as(c_uint, key.*.len)))))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn function_table_entry_hash_2(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: [*c]const struct_function_table_entry = @as([*c]const struct_function_table_entry, @ptrCast(@alignCast(keyv)));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = key.*.name;
            _ = key.*.len;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn function_table_entry_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: [*c]const struct_function_table_entry = @as([*c]const struct_function_table_entry, @ptrCast(@alignCast(xv)));
    _ = &x;
    var y: [*c]const struct_function_table_entry = @as([*c]const struct_function_table_entry, @ptrCast(@alignCast(yv)));
    _ = &y;
    var result: c_int = @as(c_int, @bitCast(@as(c_uint, x.*.len))) - @as(c_int, @bitCast(@as(c_uint, y.*.len)));
    _ = &result;
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) 0 else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.len))));
    }
    return 0;
}
var function_table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);
fn lookup_function(arg_s: [*c]const u8) callconv(.C) [*c]const struct_function_table_entry {
    var s = arg_s;
    _ = &s;
    var function_table_entry_key: struct_function_table_entry = undefined;
    _ = &function_table_entry_key;
    var e: [*c]const u8 = s;
    _ = &e;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & @as(c_int, 8192)) != 0) {
        e += 1;
    }
    if ((e == s) or !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & (1 | (2 | 4))) != 0)) return null;
    function_table_entry_key.name = s;
    function_table_entry_key.len = @as(u8, @bitCast(@as(i8, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(e) -% @intFromPtr(s))), @sizeOf(u8))))));
    return @as([*c]const struct_function_table_entry, @ptrCast(@alignCast(hash_find_item(&function_table, @as(?*const anyopaque, @ptrCast(&function_table_entry_key))))));
}
fn find_next_argument(arg_startparen: u8, arg_endparen: u8, arg_ptr: [*c]const u8, arg_end: [*c]const u8) callconv(.C) [*c]u8 {
    var startparen = arg_startparen;
    _ = &startparen;
    var endparen = arg_endparen;
    _ = &endparen;
    var ptr = arg_ptr;
    _ = &ptr;
    var end = arg_end;
    _ = &end;
    var count: c_int = 0;
    _ = &count;
    while (ptr < end) : (ptr += 1) if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(ptr.*))]))) & (@as(c_int, 128) | @as(c_int, 1024))) != 0)) continue else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, startparen)))) {
        count += 1;
    } else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, endparen)))) {
        count -= 1;
        if (count < 0) return null;
    } else if ((@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, ',')) and !(count != 0)) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(ptr))));
    return null;
}
fn string_glob(arg_line: [*c]u8) callconv(.C) [*c]u8 {
    var line = arg_line;
    _ = &line;
    const result = struct {
        var static: [*c]u8 = null;
    };
    _ = &result;
    const length = struct {
        var static: usize = @import("std").mem.zeroes(usize);
    };
    _ = &length;
    var chain: [*c]struct_nameseq = undefined;
    _ = &chain;
    var idx: usize = undefined;
    _ = &idx;
    chain = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&line, @sizeOf(struct_nameseq), 1, null, (1 | @as(c_int, 16)) | 8))));
    if (result.static == null) {
        length.static = 100;
        result.static = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_long, @as(c_int, 100))))))));
    }
    idx = 0;
    while (chain != null) {
        var next: [*c]struct_nameseq = chain.*.next;
        _ = &next;
        var len: usize = strlen(chain.*.name);
        _ = &len;
        if (((idx +% len) +% @as(usize, 1)) > length.static) {
            length.static +%= (len +% @as(usize, 1)) *% @as(usize, 2);
            result.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(result.static)), length.static))));
        }
        _ = memcpy(@as(?*anyopaque, @ptrCast(&result.static[idx])), @as(?*const anyopaque, @ptrCast(chain.*.name)), len);
        idx +%= len;
        result.static[
            blk: {
                const ref = &idx;
                const tmp = ref.*;
                ref.* +%= 1;
                break :blk tmp;
            }
        ] = ' ';
        free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(chain.*.name)))))));
        free(@as(?*anyopaque, @ptrCast(chain)));
        chain = next;
    }
    if (idx == @as(usize, 0)) {
        result.static[0] = '\x00';
    } else {
        result.static[idx -% @as(usize, 1)] = '\x00';
    }
    return result.static;
}
fn func_patsubst(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    o = patsubst_expand(o, argv[2], argv[0], argv[1]);
    return o;
}
fn func_join(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var doneany: c_int = 0;
    _ = &doneany;
    var tp: [*c]const u8 = undefined;
    _ = &tp;
    var pp: [*c]const u8 = undefined;
    _ = &pp;
    var list1_iterator: [*c]const u8 = argv[0];
    _ = &list1_iterator;
    var list2_iterator: [*c]const u8 = argv[1];
    _ = &list2_iterator;
    while (true) {
        var len1: usize = undefined;
        _ = &len1;
        var len2: usize = undefined;
        _ = &len2;
        tp = find_next_token(&list1_iterator, &len1);
        if (tp != null) {
            o = variable_buffer_output(o, tp, len1);
        }
        pp = find_next_token(&list2_iterator, &len2);
        if (pp != null) {
            o = variable_buffer_output(o, pp, len2);
        }
        if ((tp != null) or (pp != null)) {
            o = variable_buffer_output(o, " ", @as(usize, 1));
            doneany = 1;
        }
        if (!((tp != null) or (pp != null))) break;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_origin(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: [*c]struct_variable = lookup_variable(argv[0], strlen(argv[0]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, 9));
    } else {
        while (true) {
            switch (v.*.origin) {
                @as(c_uint, 7) => {
                    abort();
                    break;
                },
                @as(c_uint, 0) => {
                    o = variable_buffer_output(o, "default", @as(usize, 7));
                    break;
                },
                @as(c_uint, 1) => {
                    o = variable_buffer_output(o, "environment", @as(usize, @bitCast(@as(c_long, @as(c_int, 11)))));
                    break;
                },
                @as(c_uint, 2) => {
                    o = variable_buffer_output(o, "file", @as(usize, 4));
                    break;
                },
                @as(c_uint, 3) => {
                    o = variable_buffer_output(o, "environment override", @as(usize, @bitCast(@as(c_long, @as(c_int, 20)))));
                    break;
                },
                @as(c_uint, 4) => {
                    o = variable_buffer_output(o, "command line", @as(usize, @bitCast(@as(c_long, @as(c_int, 12)))));
                    break;
                },
                @as(c_uint, 5) => {
                    o = variable_buffer_output(o, "override", @as(usize, 8));
                    break;
                },
                @as(c_uint, 6) => {
                    o = variable_buffer_output(o, "automatic", @as(usize, 9));
                    break;
                },
                else => {},
            }
            break;
        }
    }
    return o;
}
fn func_flavor(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: [*c]struct_variable = lookup_variable(argv[0], strlen(argv[0]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, 9));
    } else if (v.*.recursive != 0) {
        o = variable_buffer_output(o, "recursive", @as(usize, 9));
    } else {
        o = variable_buffer_output(o, "simple", @as(usize, 6));
    }
    return o;
}
fn func_notdir_suffix(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var list_iterator: [*c]const u8 = argv[0];
    _ = &list_iterator;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_suffix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[0]))) == @as(c_int, 's'));
    _ = &is_suffix;
    var is_notdir: c_int = @intFromBool(!(is_suffix != 0));
    _ = &is_notdir;
    var stop: c_int = @as(c_int, 32768) | (if (is_suffix != 0) @as(c_int, 512) else 0);
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(1))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != 0)) {
            p -= 1;
        }
        if (p >= p2) {
            if (is_notdir != 0) {
                p += 1;
            } else if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '.')) continue;
            o = variable_buffer_output(o, p, len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if (is_notdir != 0) {
            o = variable_buffer_output(o, p2, len);
        }
        if ((is_notdir != 0) or (p >= p2)) {
            o = variable_buffer_output(o, " ", @as(usize, 1));
            doneany = 1;
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_basename_dir(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p3: [*c]const u8 = argv[0];
    _ = &p3;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_basename: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[0]))) == @as(c_int, 'b'));
    _ = &is_basename;
    var is_dir: c_int = @intFromBool(!(is_basename != 0));
    _ = &is_dir;
    var stop: c_int = (@as(c_int, 32768) | (if (is_basename != 0) @as(c_int, 512) else 0)) | 1;
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&p3, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(1))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != 0)) {
            p -= 1;
        }
        if ((p >= p2) and (is_dir != 0)) {
            o = variable_buffer_output(o, p2, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(blk: {
                const ref = &p;
                ref.* += 1;
                break :blk ref.*;
            }) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if ((p >= p2) and (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '.'))) {
            o = variable_buffer_output(o, p2, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if (is_dir != 0) {
            o = variable_buffer_output(o, "./", @as(usize, 2));
        } else {
            o = variable_buffer_output(o, p2, len);
        }
        o = variable_buffer_output(o, " ", @as(usize, 1));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_addsuffix_addprefix(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var fixlen: usize = strlen(argv[0]);
    _ = &fixlen;
    var list_iterator: [*c]const u8 = argv[1];
    _ = &list_iterator;
    var is_addprefix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[3]))) == @as(c_int, 'p'));
    _ = &is_addprefix;
    var is_addsuffix: c_int = @intFromBool(!(is_addprefix != 0));
    _ = &is_addsuffix;
    var doneany: c_int = 0;
    _ = &doneany;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (is_addprefix != 0) {
            o = variable_buffer_output(o, argv[0], fixlen);
        }
        o = variable_buffer_output(o, p, len);
        if (is_addsuffix != 0) {
            o = variable_buffer_output(o, argv[0], fixlen);
        }
        o = variable_buffer_output(o, " ", @as(usize, 1));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_subst(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    o = subst_expand(o, argv[2], argv[0], argv[1], strlen(argv[0]), strlen(argv[1]), 0);
    return o;
}
fn func_firstword(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: usize = undefined;
    _ = &i;
    var words: [*c]const u8 = argv[0];
    _ = &words;
    var p: [*c]const u8 = find_next_token(&words, &i);
    _ = &p;
    if (p != null) {
        o = variable_buffer_output(o, p, i);
    }
    return o;
}
fn func_lastword(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: usize = undefined;
    _ = &i;
    var words: [*c]const u8 = argv[0];
    _ = &words;
    var p: [*c]const u8 = null;
    _ = &p;
    var t: [*c]const u8 = undefined;
    _ = &t;
    while ((blk: {
        const tmp = find_next_token(&words, &i);
        t = tmp;
        break :blk tmp;
    }) != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        p = t;
    }
    if (p != null) {
        o = variable_buffer_output(o, p, i);
    }
    return o;
}
fn func_words(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: c_uint = 0;
    _ = &i;
    var word_iterator: [*c]const u8 = argv[0];
    _ = &word_iterator;
    var buf: [22]u8 = undefined;
    _ = &buf;
    while (find_next_token(&word_iterator, null) != null) {
        i +%= 1;
    }
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%u", i);
    o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&buf))), strlen(@as([*c]u8, @ptrCast(@alignCast(&buf)))));
    return o;
}
fn parse_numeric(arg_s: [*c]const u8, arg_msg: [*c]const u8) callconv(.C) c_longlong {
    var s = arg_s;
    _ = &s;
    var msg = arg_msg;
    _ = &msg;
    var beg: [*c]const u8 = s;
    _ = &beg;
    var end: [*c]const u8 = (s + strlen(s)) - @as(usize, @bitCast(@as(isize, @intCast(1))));
    _ = &end;
    var endp: [*c]u8 = undefined;
    _ = &endp;
    var num: c_longlong = undefined;
    _ = &num;
    _ = strip_whitespace(&beg, &end);
    if (beg > end) {
        fatal(expanding_var.*, strlen(msg), gettext("%s: empty value"), msg);
    }
    __errno_location().* = 0;
    num = strtoll(beg, &endp, @as(c_int, 10));
    if (__errno_location().* == @as(c_int, 34)) {
        fatal(expanding_var.*, strlen(msg) +% strlen(s), gettext("%s: '%s' out of range"), msg, s);
    } else if ((endp == @as([*c]u8, @ptrCast(@volatileCast(@constCast(beg))))) or (endp <= @as([*c]u8, @ptrCast(@volatileCast(@constCast(end)))))) {
        fatal(expanding_var.*, strlen(msg) +% strlen(s), "%s: '%s'", msg, s);
    }
    return num;
}
fn func_word(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var end_p: [*c]const u8 = undefined;
    _ = &end_p;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var i: c_longlong = undefined;
    _ = &i;
    i = parse_numeric(argv[0], gettext("invalid first argument to 'word' function"));
    if (i < @as(c_longlong, @bitCast(@as(c_longlong, 1)))) {
        fatal(expanding_var.*, @as(usize, 0), gettext("first argument to 'word' function must be greater than 0"));
    }
    end_p = argv[1];
    while ((blk: {
        const tmp = find_next_token(&end_p, null);
        p = tmp;
        break :blk tmp;
    }) != null) if ((blk: {
        const ref = &i;
        ref.* -= 1;
        break :blk ref.*;
    }) == @as(c_longlong, @bitCast(@as(c_longlong, 0)))) break;
    if (i == @as(c_longlong, @bitCast(@as(c_longlong, 0)))) {
        o = variable_buffer_output(o, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end_p) -% @intFromPtr(p))), @sizeOf(u8)))));
    }
    return o;
}
fn func_wordlist(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var buf: [23]u8 = undefined;
    _ = &buf;
    var start: c_longlong = undefined;
    _ = &start;
    var stop: c_longlong = undefined;
    _ = &stop;
    var count: c_longlong = undefined;
    _ = &count;
    var badfirst: [*c]const u8 = gettext("invalid first argument to 'wordlist' function");
    _ = &badfirst;
    var badsecond: [*c]const u8 = gettext("invalid second argument to 'wordlist' function");
    _ = &badsecond;
    start = parse_numeric(argv[0], badfirst);
    if (start < @as(c_longlong, @bitCast(@as(c_longlong, 1)))) {
        fatal(expanding_var.*, strlen(badfirst) +% strlen(make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badfirst, make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    stop = parse_numeric(argv[1], badsecond);
    if (stop < @as(c_longlong, @bitCast(@as(c_longlong, 0)))) {
        fatal(expanding_var.*, strlen(badsecond) +% strlen(make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badsecond, make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    count = (stop - start) + @as(c_longlong, @bitCast(@as(c_longlong, 1)));
    if (count > @as(c_longlong, @bitCast(@as(c_longlong, 0)))) {
        var p: [*c]const u8 = undefined;
        _ = &p;
        var end_p: [*c]const u8 = argv[2];
        _ = &end_p;
        while (((blk: {
            const tmp = find_next_token(&end_p, null);
            p = tmp;
            break :blk tmp;
        }) != null) and ((blk: {
            const ref = &start;
            ref.* -= 1;
            break :blk ref.*;
        }) != 0)) {}
        if (p != null) {
            while (((blk: {
                const ref = &count;
                ref.* -= 1;
                break :blk ref.*;
            }) != 0) and (find_next_token(&end_p, null) != null)) {}
            o = variable_buffer_output(o, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end_p) -% @intFromPtr(p))), @sizeOf(u8)))));
        }
    }
    return o;
}
fn func_findstring(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    if (strstr(argv[1], argv[0]) != null) {
        o = variable_buffer_output(o, argv[0], strlen(argv[0]));
    }
    return o;
}
fn func_foreach(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var varname: [*c]u8 = expand_argument(argv[0], null);
    _ = &varname;
    var list: [*c]u8 = expand_argument(argv[1], null);
    _ = &list;
    var body: [*c]const u8 = argv[2];
    _ = &body;
    var doneany: c_int = 0;
    _ = &doneany;
    var list_iterator: [*c]const u8 = list;
    _ = &list_iterator;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var @"var": [*c]struct_variable = undefined;
    _ = &@"var";
    var vp: [*c]u8 = next_token(varname);
    _ = &vp;
    end_of_token(vp)[0] = '\x00';
    _ = push_new_variable_scope();
    @"var" = define_variable_in_set(vp, strlen(vp), "", @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        var result: [*c]u8 = null;
        _ = &result;
        free(@as(?*anyopaque, @ptrCast(@"var".*.value)));
        @"var".*.value = xstrndup(p, len);
        result = allocated_variable_expand_for_file(body, @as([*c]struct_file, @ptrFromInt(0)));
        o = variable_buffer_output(o, result, strlen(result));
        o = variable_buffer_output(o, " ", @as(usize, 1));
        doneany = 1;
        free(@as(?*anyopaque, @ptrCast(result)));
    }
    if (doneany != 0) {
        o -= 1;
    }
    pop_variable_scope();
    free(@as(?*anyopaque, @ptrCast(varname)));
    free(@as(?*anyopaque, @ptrCast(list)));
    return o;
}
fn func_let(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var varnames: [*c]u8 = expand_argument(argv[0], null);
    _ = &varnames;
    var list: [*c]u8 = expand_argument(argv[1], null);
    _ = &list;
    var body: [*c]const u8 = argv[2];
    _ = &body;
    var vp: [*c]const u8 = undefined;
    _ = &vp;
    var vp_next: [*c]const u8 = varnames;
    _ = &vp_next;
    var list_iterator: [*c]const u8 = list;
    _ = &list_iterator;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var vlen: usize = undefined;
    _ = &vlen;
    _ = push_new_variable_scope();
    vp = find_next_token(&vp_next, &vlen);
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (2 | 4)) != 0) {
        vp_next += 1;
    }
    while (@as(c_int, @bitCast(@as(c_uint, vp_next.*))) != @as(c_int, '\x00')) {
        p = find_next_token(&list_iterator, &len);
        if (@as(c_int, @bitCast(@as(c_uint, list_iterator.*))) != @as(c_int, '\x00')) {
            list_iterator += 1;
            p[len] = '\x00';
        }
        _ = define_variable_in_set(vp, vlen, if (p != null) p else "", @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        vp = find_next_token(&vp_next, &vlen);
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (2 | 4)) != 0) {
            vp_next += 1;
        }
    }
    if (vp != null) {
        _ = define_variable_in_set(vp, vlen, next_token(list_iterator), @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    o = variable_expand_string(o, body, @as(c_ulong, 18446744073709551615));
    pop_variable_scope();
    free(@as(?*anyopaque, @ptrCast(varnames)));
    free(@as(?*anyopaque, @ptrCast(list)));
    return o + strlen(o);
}
const struct_a_word = extern struct {
    chain: [*c]struct_a_word = @import("std").mem.zeroes([*c]struct_a_word),
    str: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    length: usize = @import("std").mem.zeroes(usize),
    matched: c_int = @import("std").mem.zeroes(c_int),
};
fn a_word_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const struct_a_word, @ptrCast(@alignCast(key))).*.str)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn a_word_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const struct_a_word, @ptrCast(@alignCast(key))).*.str;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn a_word_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var ax: [*c]const struct_a_word = @as([*c]const struct_a_word, @ptrCast(@alignCast(x)));
    _ = &ax;
    var ay: [*c]const struct_a_word = @as([*c]const struct_a_word, @ptrCast(@alignCast(y)));
    _ = &ay;
    if (ax.*.length != ay.*.length) return if (ax.*.length > ay.*.length) 1 else -1;
    while (true) {
        return if (ax.*.str == ay.*.str) 0 else memcmp(@as(?*const anyopaque, @ptrCast(ax.*.str)), @as(?*const anyopaque, @ptrCast(ay.*.str)), ax.*.length);
    }
    return 0;
}
const struct_a_pattern = extern struct {
    str: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    percent: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    length: usize = @import("std").mem.zeroes(usize),
};
fn func_filter_filterout(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var words: [*c]struct_a_word = undefined;
    _ = &words;
    var word_end: [*c]struct_a_word = undefined;
    _ = &word_end;
    var wp: [*c]struct_a_word = undefined;
    _ = &wp;
    var patterns: [*c]struct_a_pattern = undefined;
    _ = &patterns;
    var pat_end: [*c]struct_a_pattern = undefined;
    _ = &pat_end;
    var pp: [*c]struct_a_pattern = undefined;
    _ = &pp;
    var pat_count: c_ulong = 0;
    _ = &pat_count;
    var word_count: c_ulong = 0;
    _ = &word_count;
    var a_word_table: struct_hash_table = undefined;
    _ = &a_word_table;
    var is_filter: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@sizeOf([7]u8) -% @as(c_ulong, 1)]))) == @as(c_int, '\x00'));
    _ = &is_filter;
    var cp: [*c]const u8 = undefined;
    _ = &cp;
    var literals: c_int = 0;
    _ = &literals;
    var hashing: c_int = 0;
    _ = &hashing;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var doneany: c_int = 0;
    _ = &doneany;
    cp = argv[1];
    while ((blk: {
        const tmp = find_next_token(&cp, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        word_count +%= 1;
    }
    if (!(word_count != 0)) return o;
    words = @as([*c]struct_a_word, @ptrCast(@alignCast(xcalloc(word_count *% @sizeOf(struct_a_word)))));
    word_end = words + word_count;
    cp = argv[0];
    while ((blk: {
        const tmp = find_next_token(&cp, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        pat_count +%= 1;
    }
    patterns = @as([*c]struct_a_pattern, @ptrCast(@alignCast(xcalloc(pat_count *% @sizeOf(struct_a_pattern)))));
    pat_end = patterns + pat_count;
    cp = argv[0];
    pp = patterns;
    while ((blk: {
        const tmp = find_next_token(&cp, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, '\x00')) {
            cp += 1;
        }
        p[len] = '\x00';
        pp.*.str = p;
        pp.*.percent = find_percent(p);
        if (pp.*.percent == null) {
            literals += 1;
        }
        pp.*.length = strlen(pp.*.str);
        pp += 1;
    }
    cp = argv[1];
    wp = words;
    while ((blk: {
        const tmp = find_next_token(&cp, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, '\x00')) {
            cp += 1;
        }
        p[len] = '\x00';
        wp.*.str = p;
        wp.*.length = len;
        wp += 1;
    }
    hashing = @intFromBool((literals > 1) and ((@as(c_ulong, @bitCast(@as(c_long, literals))) *% word_count) >= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 10))))));
    if (hashing != 0) {
        hash_init(&a_word_table, word_count, &a_word_hash_1, &a_word_hash_2, &a_word_hash_cmp);
        {
            wp = words;
            while (wp < word_end) : (wp += 1) {
                var owp: [*c]struct_a_word = @as([*c]struct_a_word, @ptrCast(@alignCast(hash_insert(&a_word_table, @as(?*const anyopaque, @ptrCast(wp))))));
                _ = &owp;
                if (owp != null) {
                    wp.*.chain = owp;
                }
            }
        }
    }
    {
        pp = patterns;
        while (pp < pat_end) : (pp += 1) {
            if (pp.*.percent != null) {
                {
                    wp = words;
                    while (wp < word_end) : (wp += 1) {
                        wp.*.matched |= pattern_matches(pp.*.str, pp.*.percent, wp.*.str);
                    }
                }
            } else if (hashing != 0) {
                var a_word_key: struct_a_word = undefined;
                _ = &a_word_key;
                a_word_key.str = pp.*.str;
                a_word_key.length = pp.*.length;
                wp = @as([*c]struct_a_word, @ptrCast(@alignCast(hash_find_item(&a_word_table, @as(?*const anyopaque, @ptrCast(&a_word_key))))));
                while (wp != null) {
                    wp.*.matched |= 1;
                    wp = wp.*.chain;
                }
            } else {
                wp = words;
                while (wp < word_end) : (wp += 1) {
                    wp.*.matched |= (wp.*.length == pp.*.length) and (memcmp(@as(?*const anyopaque, @ptrCast(pp.*.str)), @as(?*const anyopaque, @ptrCast(wp.*.str)), wp.*.length) == 0);
                }
            }
        }
    }
    {
        wp = words;
        while (wp < word_end) : (wp += 1) if ((if (is_filter != 0) wp.*.matched else @intFromBool(!(wp.*.matched != 0))) != 0) {
            o = variable_buffer_output(o, wp.*.str, strlen(wp.*.str));
            o = variable_buffer_output(o, " ", @as(usize, 1));
            doneany = 1;
        };
    }
    if (doneany != 0) {
        o -= 1;
    }
    if (hashing != 0) {
        hash_free(&a_word_table, 0);
    }
    free(@as(?*anyopaque, @ptrCast(patterns)));
    free(@as(?*anyopaque, @ptrCast(words)));
    return o;
}
fn func_strip(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[0];
    _ = &p;
    var doneany: c_int = 0;
    _ = &doneany;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var i: c_int = 0;
        _ = &i;
        var word_start: [*c]const u8 = undefined;
        _ = &word_start;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (2 | 4)) != 0) {
            p += 1;
        }
        word_start = p;
        {
            i = 0;
            while ((@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (2 | 4)) != 0)) : (_ = blk: {
                p += 1;
                break :blk blk_1: {
                    const ref = &i;
                    ref.* += 1;
                    break :blk_1 ref.*;
                };
            }) {}
        }
        if (!(i != 0)) break;
        o = variable_buffer_output(o, word_start, @as(usize, @bitCast(@as(c_long, i))));
        o = variable_buffer_output(o, " ", @as(usize, 1));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_error(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, funcname.*)))) {
            @as(c_int, 101) => {
                fatal(reading_file, strlen(argv[0]), "%s", argv[0]);
                @"error"(reading_file, strlen(argv[0]), "%s", argv[0]);
                break;
            },
            @as(c_int, 119) => {
                @"error"(reading_file, strlen(argv[0]), "%s", argv[0]);
                break;
            },
            @as(c_int, 105) => {
                {
                    var len: usize = strlen(argv[0]);
                    _ = &len;
                    var msg: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, 2)))));
                    _ = &msg;
                    _ = memcpy(@as(?*anyopaque, @ptrCast(msg)), @as(?*const anyopaque, @ptrCast(argv[0])), len);
                    msg[len] = '\n';
                    msg[len +% @as(usize, 1)] = '\x00';
                    outputs(0, msg);
                    break;
                }
            },
            else => {
                fatal(expanding_var.*, strlen(funcname), "Internal error: func_error: '%s'", funcname);
            },
        }
        break;
    }
    return o;
}
fn func_sort(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var t: [*c]const u8 = undefined;
    _ = &t;
    var words: [*c][*c]u8 = undefined;
    _ = &words;
    var wordi: c_int = undefined;
    _ = &wordi;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    t = argv[0];
    wordi = 0;
    while ((blk: {
        const tmp = find_next_token(&t, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        t += 1;
        wordi += 1;
    }
    words = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_long, if (wordi == 0) 1 else wordi))) *% @sizeOf([*c]u8)))));
    t = argv[0];
    wordi = 0;
    while ((blk: {
        const tmp = find_next_token(&t, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        t += 1;
        p[len] = '\x00';
        (blk: {
            const tmp = blk_1: {
                const ref = &wordi;
                const tmp_2 = ref.*;
                ref.* += 1;
                break :blk_1 tmp_2;
            };
            if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = p;
    }
    if (wordi != 0) {
        var i: c_int = undefined;
        _ = &i;
        qsort(@as(?*anyopaque, @ptrCast(words)), @as(usize, @bitCast(@as(c_long, wordi))), @sizeOf([*c]u8), &alpha_compare);
        {
            i = 0;
            while (i < wordi) : (i += 1) {
                len = strlen((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*);
                if (((i == (wordi - 1)) or (strlen((blk: {
                    const tmp = i + 1;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*) != len)) or (memcmp(@as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i + 1;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), len) != 0)) {
                    o = variable_buffer_output(o, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, len);
                    o = variable_buffer_output(o, " ", @as(usize, 1));
                }
            }
        }
        o -= 1;
    }
    free(@as(?*anyopaque, @ptrCast(words)));
    return o;
}
fn parse_textint(arg_number: [*c]const u8, arg_msg: [*c]const u8, arg_sign: [*c]c_int, arg_numstart: [*c][*c]const u8) callconv(.C) [*c]const u8 {
    var number = arg_number;
    _ = &number;
    var msg = arg_msg;
    _ = &msg;
    var sign = arg_sign;
    _ = &sign;
    var numstart = arg_numstart;
    _ = &numstart;
    var after_sign: [*c]const u8 = undefined;
    _ = &after_sign;
    var after_number: [*c]const u8 = undefined;
    _ = &after_number;
    var p: [*c]const u8 = next_token(number);
    _ = &p;
    var negative: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '-'));
    _ = &negative;
    var nonzero: c_int = undefined;
    _ = &nonzero;
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
        fatal(expanding_var.*, strlen(msg), gettext("%s: empty value"), msg);
    }
    p += @as(usize, @bitCast(@as(isize, @intCast((negative != 0) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '+'))))));
    after_sign = p;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '0')) {
        p += 1;
    }
    numstart.* = p;
    while ((@as(c_uint, @bitCast(@as(c_uint, p.*))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, 9)) {
        p += 1;
    }
    after_number = p;
    nonzero = @intFromBool(numstart.* != after_number);
    sign.* = if (negative != 0) -nonzero else nonzero;
    if ((after_number == after_sign) or (@as(c_int, @bitCast(@as(c_uint, next_token(p).*))) != @as(c_int, '\x00'))) {
        fatal(expanding_var.*, strlen(msg) +% strlen(number), "%s: '%s'", msg, number);
    }
    return after_number;
}
fn func_intcmp(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var lsign: c_int = undefined;
    _ = &lsign;
    var rsign: c_int = undefined;
    _ = &rsign;
    var lnum: [*c]const u8 = undefined;
    _ = &lnum;
    var rnum: [*c]const u8 = undefined;
    _ = &rnum;
    var lhs_str: [*c]u8 = expand_argument(argv[0], null);
    _ = &lhs_str;
    var rhs_str: [*c]u8 = expand_argument(argv[1], null);
    _ = &rhs_str;
    var llim: [*c]const u8 = parse_textint(lhs_str, gettext("non-numeric first argument to 'intcmp' function"), &lsign, &lnum);
    _ = &llim;
    var rlim: [*c]const u8 = parse_textint(rhs_str, gettext("non-numeric second argument to 'intcmp' function"), &rsign, &rnum);
    _ = &rlim;
    var llen: ptrdiff_t = @divExact(@as(c_long, @bitCast(@intFromPtr(llim) -% @intFromPtr(lnum))), @sizeOf(u8));
    _ = &llen;
    var rlen: ptrdiff_t = @divExact(@as(c_long, @bitCast(@intFromPtr(rlim) -% @intFromPtr(rnum))), @sizeOf(u8));
    _ = &rlen;
    var cmp: c_int = lsign - rsign;
    _ = &cmp;
    if (cmp == 0) {
        cmp = @intFromBool(llen > rlen) - @intFromBool(llen < rlen);
        if (cmp == 0) {
            cmp = memcmp(@as(?*const anyopaque, @ptrCast(lnum)), @as(?*const anyopaque, @ptrCast(rnum)), @as(c_ulong, @bitCast(llen)));
        }
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(2))));
    if (!(argv.* != null) and (cmp == 0)) {
        if (lsign < 0) {
            o = variable_buffer_output(o, "-", @as(usize, 1));
        }
        o = variable_buffer_output(o, lnum - @as(usize, @bitCast(@as(isize, @intCast(!(lsign != 0))))), @as(usize, @bitCast(llen + @as(ptrdiff_t, @intFromBool(!(lsign != 0))))));
    }
    free(@as(?*anyopaque, @ptrCast(lhs_str)));
    free(@as(?*anyopaque, @ptrCast(rhs_str)));
    if ((argv.* != null) and (cmp >= 0)) {
        argv += 1;
        if (((cmp > 0) and (argv.* != null)) and ((argv + @as(usize, @bitCast(@as(isize, @intCast(1))))).* != null)) {
            argv += 1;
        }
    }
    if (argv.* != null) {
        var expansion: [*c]u8 = expand_argument(argv.*, null);
        _ = &expansion;
        o = variable_buffer_output(o, expansion, strlen(expansion));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    return o;
}
fn func_if(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var begp: [*c]const u8 = argv[0];
    _ = &begp;
    var endp: [*c]const u8 = (begp + strlen(argv[0])) - @as(usize, @bitCast(@as(isize, @intCast(1))));
    _ = &endp;
    var result: c_int = 0;
    _ = &result;
    _ = strip_whitespace(&begp, &endp);
    if (begp <= endp) {
        var expansion: [*c]u8 = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(1)))));
        _ = &expansion;
        result = @intFromBool(@as(c_int, @bitCast(@as(c_uint, expansion[0]))) != @as(c_int, '\x00'));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(1 + @intFromBool(!(result != 0))))));
    if (argv.* != null) {
        var expansion: [*c]u8 = expand_argument(argv.*, null);
        _ = &expansion;
        o = variable_buffer_output(o, expansion, strlen(expansion));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    return o;
}
fn func_or(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    while (argv.* != null) : (argv += 1) {
        var begp: [*c]const u8 = argv.*;
        _ = &begp;
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(1))));
        _ = &endp;
        var expansion: [*c]u8 = undefined;
        _ = &expansion;
        var result: usize = 0;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) continue;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(1)))));
        result = strlen(expansion);
        if (!(result != 0)) {
            free(@as(?*anyopaque, @ptrCast(expansion)));
            continue;
        }
        o = variable_buffer_output(o, expansion, result);
        free(@as(?*anyopaque, @ptrCast(expansion)));
        break;
    }
    return o;
}
fn func_and(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var expansion: [*c]u8 = undefined;
    _ = &expansion;
    while (true) {
        var begp: [*c]const u8 = argv.*;
        _ = &begp;
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(1))));
        _ = &endp;
        var result: usize = undefined;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) return o;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(1)))));
        result = strlen(expansion);
        if (!(result != 0)) break;
        if ((blk: {
            const ref = &argv;
            ref.* += 1;
            break :blk ref.*;
        }).* != null) {
            free(@as(?*anyopaque, @ptrCast(expansion)));
        } else {
            o = variable_buffer_output(o, expansion, result);
            break;
        }
    }
    free(@as(?*anyopaque, @ptrCast(expansion)));
    return o;
}
fn func_wildcard(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]u8 = string_glob(argv[0]);
    _ = &p;
    o = variable_buffer_output(o, p, strlen(p));
    return o;
}
fn func_eval(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var buf: [*c]u8 = undefined;
    _ = &buf;
    var len: usize = undefined;
    _ = &len;
    install_variable_buffer(&buf, &len);
    eval_buffer(argv[0], null);
    restore_variable_buffer(buf, len);
    return o;
}
fn func_value(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: [*c]struct_variable = lookup_variable(argv[0], strlen(argv[0]));
    _ = &v;
    if (v != null) {
        o = variable_buffer_output(o, v.*.value, strlen(v.*.value));
    }
    return o;
}
fn fold_newlines(arg_buffer: [*c]u8, arg_length: [*c]usize, arg_trim_newlines: c_int) callconv(.C) void {
    var buffer = arg_buffer;
    _ = &buffer;
    var length = arg_length;
    _ = &length;
    var trim_newlines = arg_trim_newlines;
    _ = &trim_newlines;
    var dst: [*c]u8 = buffer;
    _ = &dst;
    var src: [*c]u8 = buffer;
    _ = &src;
    var last_nonnl: [*c]u8 = buffer - @as(usize, @bitCast(@as(isize, @intCast(1))));
    _ = &last_nonnl;
    src[length.*] = 0;
    while (@as(c_int, @bitCast(@as(c_uint, src.*))) != @as(c_int, '\x00')) : (src += 1) {
        if ((@as(c_int, @bitCast(@as(c_uint, src[0]))) == @as(c_int, '\r')) and (@as(c_int, @bitCast(@as(c_uint, src[1]))) == @as(c_int, '\n'))) continue;
        if (@as(c_int, @bitCast(@as(c_uint, src.*))) == @as(c_int, '\n')) {
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        } else {
            last_nonnl = dst;
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = src.*;
        }
    }
    if (!(trim_newlines != 0) and (last_nonnl < (dst - @as(usize, @bitCast(@as(isize, @intCast(2))))))) {
        last_nonnl = dst - @as(usize, @bitCast(@as(isize, @intCast(2))));
    }
    (blk: {
        const ref = &last_nonnl;
        ref.* += 1;
        break :blk ref.*;
    }).* = '\x00';
    length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(last_nonnl) -% @intFromPtr(buffer))), @sizeOf(u8))));
}
export var shell_function_pid: pid_t = 0;
var shell_function_completed: c_int = @import("std").mem.zeroes(c_int);
fn func_shell(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    return func_shell_base(o, argv, 1);
}
fn abspath(arg_name: [*c]const u8, arg_apath: [*c]u8) callconv(.C) [*c]u8 {
    var name = arg_name;
    _ = &name;
    var apath = arg_apath;
    _ = &apath;
    var dest: [*c]u8 = undefined;
    _ = &dest;
    var start: [*c]const u8 = undefined;
    _ = &start;
    var end: [*c]const u8 = undefined;
    _ = &end;
    var apath_limit: [*c]const u8 = undefined;
    _ = &apath_limit;
    var root_len: c_ulong = 1;
    _ = &root_len;
    if (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '\x00')) return null;
    apath_limit = apath + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4096)))));
    if (!(@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '/'))) {
        if (!(starting_directory != null)) return null;
        _ = strcpy(apath, starting_directory);
        dest = strchr(apath, @as(c_int, '\x00'));
    } else {
        _ = memcpy(@as(?*anyopaque, @ptrCast(apath)), @as(?*const anyopaque, @ptrCast(name)), root_len);
        apath[root_len] = '\x00';
        dest = apath + root_len;
        name += @as([*c]const u8, @ptrFromInt(root_len));
    }
    {
        start = blk: {
            const tmp = name;
            end = tmp;
            break :blk tmp;
        };
        while (@as(c_int, @bitCast(@as(c_uint, start.*))) != @as(c_int, '\x00')) : (start = end) {
            var len: usize = undefined;
            _ = &len;
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(start.*))]))) & @as(c_int, 32768)) != 0) {
                start += 1;
            }
            {
                end = start;
                while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(end.*))]))) & (@as(c_int, 32768) | 1)) != 0)) : (end += 1) {}
            }
            len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
            if (len == @as(usize, 0)) break else if ((len == @as(usize, 1)) and (@as(c_int, @bitCast(@as(c_uint, start[0]))) == @as(c_int, '.'))) {} else if (((len == @as(usize, 2)) and (@as(c_int, @bitCast(@as(c_uint, start[0]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, start[1]))) == @as(c_int, '.'))) {
                if (dest > (apath + root_len)) {
                    dest -= 1;
                    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                        @as(u8, @bitCast((blk: {
                            const tmp = -1;
                            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))
                    ]))) & @as(c_int, 32768)) != 0)) : (dest -= 1) {}
                }
            } else {
                if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                    @as(u8, @bitCast((blk: {
                        const tmp = -1;
                        if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))
                ]))) & @as(c_int, 32768)) != 0)) {
                    (blk: {
                        const ref = &dest;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '/';
                }
                if ((dest + len) >= @as([*c]u8, @ptrCast(@volatileCast(@constCast(apath_limit))))) return null;
                dest = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(dest)), @as(?*const anyopaque, @ptrCast(start)), len))));
                dest.* = '\x00';
            }
        }
    }
    if ((dest > (apath + root_len)) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != 0)) {
        dest -= 1;
    }
    dest.* = '\x00';
    return apath;
}
fn func_realpath(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[0];
    _ = &p;
    var path: [*c]const u8 = null;
    _ = &path;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&p, &len);
        path = tmp;
        break :blk tmp;
    }) != null) {
        if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) {
            var rp: [*c]u8 = undefined;
            _ = &rp;
            var st: struct_stat = undefined;
            _ = &st;
            var in: [4097]u8 = undefined;
            _ = &in;
            var out: [4097]u8 = undefined;
            _ = &out;
            _ = strncpy(@as([*c]u8, @ptrCast(@alignCast(&in))), path, len);
            in[len] = '\x00';
            while (true) {
                __errno_location().* = 0;
                rp = realpath(@as([*c]u8, @ptrCast(@alignCast(&in))), @as([*c]u8, @ptrCast(@alignCast(&out))));
                if (!((rp == null) and (__errno_location().* == 4))) break;
            }
            if (rp != null) {
                var r: c_int = undefined;
                _ = &r;
                while (((blk: {
                    const tmp = stat(@as([*c]u8, @ptrCast(@alignCast(&out))), &st);
                    r = tmp;
                    break :blk tmp;
                }) == -1) and (__errno_location().* == 4)) {}
                if (r == 0) {
                    o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&out))), strlen(@as([*c]u8, @ptrCast(@alignCast(&out)))));
                    o = variable_buffer_output(o, " ", @as(usize, 1));
                    doneany = 1;
                }
            }
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_file(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var @"fn": [*c]u8 = argv[0];
    _ = &@"fn";
    if (@as(c_int, @bitCast(@as(c_uint, @"fn"[0]))) == @as(c_int, '>')) {
        var len: usize = undefined;
        _ = &len;
        var end: [*c]const u8 = undefined;
        _ = &end;
        var start: [*c]const u8 = undefined;
        _ = &start;
        var nm: [*c]u8 = undefined;
        _ = &nm;
        var fp: [*c]FILE = undefined;
        _ = &fp;
        var mode: [*c]const u8 = "w";
        _ = &mode;
        @"fn" += 1;
        if (@as(c_int, @bitCast(@as(c_uint, @"fn"[0]))) == @as(c_int, '>')) {
            mode = "a";
            @"fn" += 1;
        }
        start = next_token(@"fn");
        if (@as(c_int, @bitCast(@as(c_uint, start[0]))) == @as(c_int, '\x00')) {
            fatal(expanding_var.*, @as(usize, 0), gettext("file: missing filename"));
        }
        end = end_of_token(start);
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
        nm = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, 1)))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(nm)), @as(?*const anyopaque, @ptrCast(start)), len);
        nm[len] = '\x00';
        while (true) {
            __errno_location().* = 0;
            fp = fopen(nm, mode);
            if (!((fp == null) and (__errno_location().* == 4))) break;
        }
        if (fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("open: %s: %s"), nm, strerror(__errno_location().*));
        }
        command_count +%= 1;
        if (argv[1] != null) {
            var l: usize = strlen(argv[1]);
            _ = &l;
            var nl: c_int = @intFromBool((l == @as(usize, 0)) or (@as(c_int, @bitCast(@as(c_uint, argv[1][l -% @as(usize, 1)]))) != @as(c_int, '\n')));
            _ = &nl;
            if ((fputs(argv[1], fp) == -1) or ((nl != 0) and (fputc(@as(c_int, '\n'), fp) == -1))) {
                fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("write: %s: %s"), nm, strerror(__errno_location().*));
            }
        }
        if (fclose(fp) != 0) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("close: %s: %s"), nm, strerror(__errno_location().*));
        }
    } else if (@as(c_int, @bitCast(@as(c_uint, @"fn"[0]))) == @as(c_int, '<')) {
        var n: usize = 0;
        _ = &n;
        var len: usize = undefined;
        _ = &len;
        var end: [*c]const u8 = undefined;
        _ = &end;
        var start: [*c]const u8 = undefined;
        _ = &start;
        var nm: [*c]u8 = undefined;
        _ = &nm;
        var fp: [*c]FILE = undefined;
        _ = &fp;
        start = next_token(@"fn" + @as(usize, @bitCast(@as(isize, @intCast(1)))));
        if (@as(c_int, @bitCast(@as(c_uint, start[0]))) == @as(c_int, '\x00')) {
            fatal(expanding_var.*, @as(usize, 0), gettext("file: missing filename"));
        }
        if (argv[1] != null) {
            fatal(expanding_var.*, @as(usize, 0), gettext("file: too many arguments"));
        }
        end = end_of_token(start);
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
        nm = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, 1)))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(nm)), @as(?*const anyopaque, @ptrCast(start)), len);
        nm[len] = '\x00';
        while (true) {
            __errno_location().* = 0;
            fp = fopen(nm, "r");
            if (!((fp == null) and (__errno_location().* == 4))) break;
        }
        if (fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
            if (__errno_location().* == 2) {
                while (true) {
                    if ((2 & db_level) != 0) {
                        _ = printf(gettext("file: Failed to open '%s': %s\n"), nm, strerror(__errno_location().*));
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                return o;
            }
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("open: %s: %s"), nm, strerror(__errno_location().*));
        }
        while (true) {
            var buf: [1024]u8 = undefined;
            _ = &buf;
            var l: usize = fread(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, 1), @sizeOf([1024]u8), fp);
            _ = &l;
            if (l > @as(usize, 0)) {
                o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&buf))), l);
                n +%= l;
            }
            if (ferror(fp) != 0) if (__errno_location().* != 4) {
                fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("read: %s: %s"), nm, strerror(__errno_location().*));
            };
            if (feof(fp) != 0) break;
        }
        if (fclose(fp) != 0) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("close: %s: %s"), nm, strerror(__errno_location().*));
        }
        if ((n != 0) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk o + @as(usize, @intCast(tmp)) else break :blk o - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\n'))) {
            o -= @as(usize, @bitCast(@as(isize, @intCast(1 + @intFromBool((n > @as(usize, 1)) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = -2;
                if (tmp >= 0) break :blk o + @as(usize, @intCast(tmp)) else break :blk o - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\r')))))));
        }
    } else {
        fatal(expanding_var.*, strlen(@"fn"), gettext("file: invalid file operation: %s"), @"fn");
    }
    return o;
}
fn func_abspath(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[0];
    _ = &p;
    var path: [*c]const u8 = null;
    _ = &path;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&p, &len);
        path = tmp;
        break :blk tmp;
    }) != null) {
        if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) {
            var in: [4097]u8 = undefined;
            _ = &in;
            var out: [4097]u8 = undefined;
            _ = &out;
            _ = strncpy(@as([*c]u8, @ptrCast(@alignCast(&in))), path, len);
            in[len] = '\x00';
            if (abspath(@as([*c]u8, @ptrCast(@alignCast(&in))), @as([*c]u8, @ptrCast(@alignCast(&out)))) != null) {
                o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&out))), strlen(@as([*c]u8, @ptrCast(@alignCast(&out)))));
                o = variable_buffer_output(o, " ", @as(usize, 1));
                doneany = 1;
            }
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}
fn func_call(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    const max_args = struct {
        var static: c_uint = 0;
    };
    _ = &max_args;
    var fname: [*c]u8 = undefined;
    _ = &fname;
    var body: [*c]u8 = undefined;
    _ = &body;
    var flen: usize = undefined;
    _ = &flen;
    var i: c_uint = undefined;
    _ = &i;
    var saved_args: c_int = undefined;
    _ = &saved_args;
    var entry_p: [*c]const struct_function_table_entry = undefined;
    _ = &entry_p;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    fname = next_token(argv[0]);
    end_of_token(fname)[0] = '\x00';
    if (@as(c_int, @bitCast(@as(c_uint, fname.*))) == @as(c_int, '\x00')) return o;
    entry_p = lookup_function(fname);
    if (entry_p != null) {
        {
            i = 0;
            while (argv[i +% @as(c_uint, 1)] != null) : (i +%= 1) {}
        }
        return expand_builtin_function(o, i, argv + @as(usize, @bitCast(@as(isize, @intCast(1)))), entry_p);
    }
    flen = strlen(fname);
    v = lookup_variable(fname, flen);
    if (v == null) {
        warn_undefined(fname, flen);
    }
    if ((v == null) or (@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00'))) return o;
    body = @as([*c]u8, @ptrCast(@alignCast(malloc(flen +% @as(usize, 4)))));
    body[0] = '$';
    body[1] = '(';
    _ = memcpy(@as(?*anyopaque, @ptrCast(body + @as(usize, @bitCast(@as(isize, @intCast(2)))))), @as(?*const anyopaque, @ptrCast(fname)), flen);
    body[flen +% @as(usize, 2)] = ')';
    body[flen +% @as(usize, 3)] = '\x00';
    _ = push_new_variable_scope();
    {
        i = 0;
        while (argv.* != null) : (_ = blk: {
            i +%= 1;
            break :blk blk_1: {
                const ref = &argv;
                ref.* += 1;
                break :blk_1 ref.*;
            };
        }) {
            var num: [22]u8 = undefined;
            _ = &num;
            _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&num))), "%u", i);
            _ = define_variable_in_set(@as([*c]u8, @ptrCast(@alignCast(&num))), strlen(@as([*c]u8, @ptrCast(@alignCast(&num)))), argv.*, @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
        }
    }
    while (i < max_args.static) : (i +%= 1) {
        var num: [22]u8 = undefined;
        _ = &num;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&num))), "%u", i);
        _ = define_variable_in_set(@as([*c]u8, @ptrCast(@alignCast(&num))), strlen(@as([*c]u8, @ptrCast(@alignCast(&num)))), "", @as(c_uint, @bitCast(o_automatic)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    }
    v.*.exp_count = @as(c_uint, @bitCast((1 << @intCast(15)) - 1));
    saved_args = @as(c_int, @bitCast(max_args.static));
    max_args.static = i;
    o = variable_expand_string(o, body, flen +% @as(usize, 3));
    max_args.static = @as(c_uint, @bitCast(saved_args));
    v.*.exp_count = 0;
    pop_variable_scope();
    return o + strlen(o);
}
var function_table_init: [38]struct_function_table_entry = [38]struct_function_table_entry{
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_abspath,
        },
        .name = "abspath",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_addsuffix_addprefix,
        },
        .name = "addprefix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_addsuffix_addprefix,
        },
        .name = "addsuffix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_basename_dir,
        },
        .name = "basename",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_basename_dir,
        },
        .name = "dir",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_notdir_suffix,
        },
        .name = "notdir",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_subst,
        },
        .name = "subst",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_notdir_suffix,
        },
        .name = "suffix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_filter_filterout,
        },
        .name = "filter",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_filter_filterout,
        },
        .name = "filter-out",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([11]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_findstring,
        },
        .name = "findstring",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([11]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_firstword,
        },
        .name = "firstword",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_flavor,
        },
        .name = "flavor",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_join,
        },
        .name = "join",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_lastword,
        },
        .name = "lastword",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_patsubst,
        },
        .name = "patsubst",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_realpath,
        },
        .name = "realpath",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_shell,
        },
        .name = "shell",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_sort,
        },
        .name = "sort",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_strip,
        },
        .name = "strip",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_wildcard,
        },
        .name = "wildcard",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_word,
        },
        .name = "word",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_wordlist,
        },
        .name = "wordlist",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_words,
        },
        .name = "words",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_origin,
        },
        .name = "origin",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_foreach,
        },
        .name = "foreach",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_let,
        },
        .name = "let",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_call,
        },
        .name = "call",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "info",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "error",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "warning",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_intcmp,
        },
        .name = "intcmp",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(5)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_if,
        },
        .name = "if",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([3]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(3)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_or,
        },
        .name = "or",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([3]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_and,
        },
        .name = "and",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .expand_args = @as(c_uint, 0),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_value,
        },
        .name = "value",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_eval,
        },
        .name = "eval",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(0)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_file,
        },
        .name = "file",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, 1))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(1)))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(2)))),
        .expand_args = @as(c_uint, 1),
        .alloc_fn = @as(c_uint, 0),
        .adds_command = @as(c_uint, 0),
    },
};
fn expand_builtin_function(arg_o: [*c]u8, arg_argc: c_uint, arg_argv: [*c][*c]u8, arg_entry_p: [*c]const struct_function_table_entry) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    var entry_p = arg_entry_p;
    _ = &entry_p;
    var p: [*c]u8 = undefined;
    _ = &p;
    if (argc < @as(c_uint, @bitCast(@as(c_uint, entry_p.*.minimum_args)))) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("insufficient number of arguments (%u) to function '%s'"), argc, entry_p.*.name);
    }
    if (!(argc != 0) and !(entry_p.*.alloc_fn != 0)) return o;
    if (!(entry_p.*.fptr.func_ptr != null)) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("unimplemented on this platform: function '%s'"), entry_p.*.name);
    }
    if (entry_p.*.adds_command != 0) {
        command_count +%= 1;
    }
    if (!(entry_p.*.alloc_fn != 0)) return entry_p.*.fptr.func_ptr.?(o, argv, entry_p.*.name);
    p = entry_p.*.fptr.alloc_func_ptr.?(entry_p.*.name, argc, argv);
    if (p != null) {
        o = variable_buffer_output(o, p, strlen(p));
        free(@as(?*anyopaque, @ptrCast(p)));
    }
    return o;
}
