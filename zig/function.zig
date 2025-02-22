extern fn alloca(__size: c_ulong) ?*anyopaque;
const ptrdiff_t = c_long;
const wchar_t = c_int;

const gmk_floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
};
const gmk_func_ptr = ?*const fn ([*c]const u8, c_uint, [*c][*c]u8) callconv(.C) [*c]u8;
extern fn gmk_free(str: [*c]u8) void;
extern fn gmk_alloc(len: c_uint) [*c]u8;
extern fn gmk_eval(buffer: [*c]const u8, floc: [*c]const gmk_floc) void;
extern fn gmk_expand(str: [*c]const u8) [*c]u8;
extern fn gmk_add_function(name: [*c]const u8, func: gmk_func_ptr, min_args: c_uint, max_args: c_uint, flags: c_uint) void;

const __uint16_t = c_ushort;
const __int32_t = c_int;
const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __intmax_t = c_long;
const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;
const __ino64_t = c_ulong;
const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __clock_t = c_long;

const __time_t = c_long;
const __useconds_t = c_uint;
const __suseconds_t = c_long;

const __clockid_t = c_int;
const __timer_t = ?*anyopaque;
const __blksize_t = c_long;
const __blkcnt_t = c_long;
const __blkcnt64_t = c_long;

const __ssize_t = c_long;
const __syscall_slong_t = c_long;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

const clock_t = __clock_t;
const clockid_t = __clockid_t;
const time_t = __time_t;
const timer_t = __timer_t;

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
const __fd_mask = c_long;
const fd_set = extern struct {
    fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};

extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};

const pthread_t = c_ulong;

const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
const pthread_attr_t = union_pthread_attr_t;

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
const struct_stat64 = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino64_t = @import("std").mem.zeroes(__ino64_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt64_t = @import("std").mem.zeroes(__blkcnt64_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
extern fn stat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
extern fn fstat64(__fd: c_int, __buf: [*c]struct_stat64) c_int;
extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
extern fn fstatat64(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64, __flag: c_int) c_int;
extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
extern fn lstat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
extern fn umask(__mask: __mode_t) __mode_t;
extern fn getumask() __mode_t;
extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;

const __u16 = c_ushort;
const __s32 = c_int;
const __u32 = c_uint;
const __s64 = c_longlong;
const __u64 = c_ulonglong;

const struct_statx_timestamp = extern struct {
    tv_sec: __s64 = @import("std").mem.zeroes(__s64),
    tv_nsec: __u32 = @import("std").mem.zeroes(__u32),
    __reserved: __s32 = @import("std").mem.zeroes(__s32),
};
const struct_statx = extern struct {
    stx_mask: __u32 = @import("std").mem.zeroes(__u32),
    stx_blksize: __u32 = @import("std").mem.zeroes(__u32),
    stx_attributes: __u64 = @import("std").mem.zeroes(__u64),
    stx_nlink: __u32 = @import("std").mem.zeroes(__u32),
    stx_uid: __u32 = @import("std").mem.zeroes(__u32),
    stx_gid: __u32 = @import("std").mem.zeroes(__u32),
    stx_mode: __u16 = @import("std").mem.zeroes(__u16),
    __spare0: [1]__u16 = @import("std").mem.zeroes([1]__u16),
    stx_ino: __u64 = @import("std").mem.zeroes(__u64),
    stx_size: __u64 = @import("std").mem.zeroes(__u64),
    stx_blocks: __u64 = @import("std").mem.zeroes(__u64),
    stx_attributes_mask: __u64 = @import("std").mem.zeroes(__u64),
    stx_atime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_btime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_ctime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_mtime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_rdev_major: __u32 = @import("std").mem.zeroes(__u32),
    stx_rdev_minor: __u32 = @import("std").mem.zeroes(__u32),
    stx_dev_major: __u32 = @import("std").mem.zeroes(__u32),
    stx_dev_minor: __u32 = @import("std").mem.zeroes(__u32),
    stx_mnt_id: __u64 = @import("std").mem.zeroes(__u64),
    stx_dio_mem_align: __u32 = @import("std").mem.zeroes(__u32),
    stx_dio_offset_align: __u32 = @import("std").mem.zeroes(__u32),
    __spare3: [12]__u64 = @import("std").mem.zeroes([12]__u64),
};
extern fn statx(__dirfd: c_int, noalias __path: [*c]const u8, __flags: c_int, __mask: c_uint, noalias __buf: [*c]struct_statx) c_int;
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

const struct_unnamed_21 = extern struct {
    _function: ?*const fn (__sigval_t) callconv(.C) void = @import("std").mem.zeroes(?*const fn (__sigval_t) callconv(.C) void),
    _attribute: [*c]pthread_attr_t = @import("std").mem.zeroes([*c]pthread_attr_t),
};
const union_unnamed_20 = extern union {
    _pad: [12]c_int,
    _tid: __pid_t,
    _sigev_thread: struct_unnamed_21,
};
const struct_sigevent = extern struct {
    sigev_value: __sigval_t = @import("std").mem.zeroes(__sigval_t),
    sigev_signo: c_int = @import("std").mem.zeroes(c_int),
    sigev_notify: c_int = @import("std").mem.zeroes(c_int),
    _sigev_un: union_unnamed_20 = @import("std").mem.zeroes(union_unnamed_20),
};

const __sighandler_t = ?*const fn (c_int) callconv(.C) void;
extern fn __sysv_signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn sysv_signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn kill(__pid: __pid_t, __sig: c_int) c_int;
extern fn killpg(__pgrp: __pid_t, __sig: c_int) c_int;
extern fn raise(__sig: c_int) c_int;
extern fn ssignal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn gsignal(__sig: c_int) c_int;
extern fn psignal(__sig: c_int, __s: [*c]const u8) void;
extern fn psiginfo(__pinfo: [*c]const siginfo_t, __s: [*c]const u8) void;
extern fn sigpause(__sig: c_int) c_int;
extern fn sigblock(__mask: c_int) c_int;
extern fn sigsetmask(__mask: c_int) c_int;
extern fn siggetmask() c_int;

extern fn sigemptyset(__set: [*c]sigset_t) c_int;
extern fn sigfillset(__set: [*c]sigset_t) c_int;
extern fn sigaddset(__set: [*c]sigset_t, __signo: c_int) c_int;
extern fn sigdelset(__set: [*c]sigset_t, __signo: c_int) c_int;
extern fn sigismember(__set: [*c]const sigset_t, __signo: c_int) c_int;
extern fn sigisemptyset(__set: [*c]const sigset_t) c_int;
extern fn sigandset(__set: [*c]sigset_t, __left: [*c]const sigset_t, __right: [*c]const sigset_t) c_int;
extern fn sigorset(__set: [*c]sigset_t, __left: [*c]const sigset_t, __right: [*c]const sigset_t) c_int;
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
extern fn sigsuspend(__set: [*c]const sigset_t) c_int;
extern fn sigaction(__sig: c_int, noalias __act: [*c]const struct_sigaction, noalias __oact: [*c]struct_sigaction) c_int;
extern fn sigpending(__set: [*c]sigset_t) c_int;
extern fn sigwait(noalias __set: [*c]const sigset_t, noalias __sig: [*c]c_int) c_int;
extern fn sigwaitinfo(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t) c_int;
extern fn sigtimedwait(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t, noalias __timeout: [*c]const struct_timespec) c_int;
extern fn sigqueue(__pid: __pid_t, __sig: c_int, __val: union_sigval) c_int;

const struct__fpxreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
};
const struct__xmmreg = extern struct {
    element: [4]__uint32_t = @import("std").mem.zeroes([4]__uint32_t),
};
const struct__fpstate = extern struct {
    cwd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    swd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    ftw: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    fop: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    rip: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rdp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    mxcsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    mxcr_mask: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    _st: [8]struct__fpxreg = @import("std").mem.zeroes([8]struct__fpxreg),
    _xmm: [16]struct__xmmreg = @import("std").mem.zeroes([16]struct__xmmreg),
    __glibc_reserved1: [24]__uint32_t = @import("std").mem.zeroes([24]__uint32_t),
};
const union_unnamed_24 = extern union {
    fpstate: [*c]struct__fpstate,
    __fpstate_word: __uint64_t,
};
const struct_sigcontext = extern struct {
    r8: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r9: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r10: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r11: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r12: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r13: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r14: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    r15: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rdi: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rsi: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rbp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rbx: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rdx: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rax: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rcx: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rsp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rip: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    eflags: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    cs: c_ushort = @import("std").mem.zeroes(c_ushort),
    gs: c_ushort = @import("std").mem.zeroes(c_ushort),
    fs: c_ushort = @import("std").mem.zeroes(c_ushort),
    __pad0: c_ushort = @import("std").mem.zeroes(c_ushort),
    err: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    trapno: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    oldmask: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    cr2: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    unnamed_0: union_unnamed_24 = @import("std").mem.zeroes(union_unnamed_24),
    __reserved1: [8]__uint64_t = @import("std").mem.zeroes([8]__uint64_t),
};

extern fn sigreturn(__scp: [*c]struct_sigcontext) c_int;
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

extern fn siginterrupt(__sig: c_int, __interrupt: c_int) c_int;

extern fn access(__name: [*c]const u8, __type: c_int) c_int;
extern fn euidaccess(__name: [*c]const u8, __type: c_int) c_int;
extern fn eaccess(__name: [*c]const u8, __type: c_int) c_int;
extern fn execveat(__fd: c_int, __path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8, __flags: c_int) c_int;
extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
extern fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) __off64_t;
extern fn close(__fd: c_int) c_int;
extern fn closefrom(__lowfd: c_int) void;
extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;
extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off_t) isize;
extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off_t) isize;
extern fn pread64(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off64_t) isize;
extern fn pwrite64(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off64_t) isize;
extern fn pipe(__pipedes: [*c]c_int) c_int;
extern fn pipe2(__pipedes: [*c]c_int, __flags: c_int) c_int;
extern fn alarm(__seconds: c_uint) c_uint;
extern fn sleep(__seconds: c_uint) c_uint;
extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
extern fn usleep(__useconds: __useconds_t) c_int;
extern fn pause() c_int;
extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
extern fn chdir(__path: [*c]const u8) c_int;
extern fn fchdir(__fd: c_int) c_int;
extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
extern fn get_current_dir_name() [*c]u8;
extern fn getwd(__buf: [*c]u8) [*c]u8;
extern fn dup(__fd: c_int) c_int;
extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
extern fn dup3(__fd: c_int, __fd2: c_int, __flags: c_int) c_int;
extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;
extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
extern fn execvpe(__file: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
extern fn nice(__inc: c_int) c_int;
extern fn _exit(__status: c_int) noreturn;

extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
extern fn sysconf(__name: c_int) c_long;
extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
extern fn getpid() __pid_t;
extern fn getppid() __pid_t;
extern fn getpgrp() __pid_t;
extern fn __getpgid(__pid: __pid_t) __pid_t;
extern fn getpgid(__pid: __pid_t) __pid_t;
extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
extern fn setpgrp() c_int;
extern fn setsid() __pid_t;
extern fn getsid(__pid: __pid_t) __pid_t;
extern fn getuid() __uid_t;
extern fn geteuid() __uid_t;
extern fn getgid() __gid_t;
extern fn getegid() __gid_t;
extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
extern fn group_member(__gid: __gid_t) c_int;
extern fn setuid(__uid: __uid_t) c_int;
extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
extern fn seteuid(__uid: __uid_t) c_int;
extern fn setgid(__gid: __gid_t) c_int;
extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
extern fn setegid(__gid: __gid_t) c_int;
extern fn getresuid(__ruid: [*c]__uid_t, __euid: [*c]__uid_t, __suid: [*c]__uid_t) c_int;
extern fn getresgid(__rgid: [*c]__gid_t, __egid: [*c]__gid_t, __sgid: [*c]__gid_t) c_int;
extern fn setresuid(__ruid: __uid_t, __euid: __uid_t, __suid: __uid_t) c_int;
extern fn setresgid(__rgid: __gid_t, __egid: __gid_t, __sgid: __gid_t) c_int;
extern fn fork() __pid_t;
extern fn vfork() c_int;
extern fn _Fork() __pid_t;
extern fn ttyname(__fd: c_int) [*c]u8;
extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
extern fn isatty(__fd: c_int) c_int;
extern fn ttyslot() c_int;
extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
extern fn unlink(__name: [*c]const u8) c_int;
extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
extern fn rmdir(__path: [*c]const u8) c_int;
extern fn tcgetpgrp(__fd: c_int) __pid_t;
extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
extern fn getlogin() [*c]u8;
extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
extern fn setlogin(__name: [*c]const u8) c_int;
extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;
extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
extern fn sethostid(__id: c_long) c_int;
extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
extern fn vhangup() c_int;
extern fn revoke(__file: [*c]const u8) c_int;
extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
extern fn acct(__name: [*c]const u8) c_int;
extern fn getusershell() [*c]u8;
extern fn endusershell() void;
extern fn setusershell() void;
extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
extern fn chroot(__path: [*c]const u8) c_int;
extern fn getpass(__prompt: [*c]const u8) [*c]u8;
extern fn fsync(__fd: c_int) c_int;
extern fn syncfs(__fd: c_int) c_int;
extern fn gethostid() c_long;
extern fn sync() void;
extern fn getpagesize() c_int;
extern fn getdtablesize() c_int;
extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
extern fn truncate64(__file: [*c]const u8, __length: __off64_t) c_int;
extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
extern fn ftruncate64(__fd: c_int, __length: __off64_t) c_int;
extern fn brk(__addr: ?*anyopaque) c_int;
extern fn sbrk(__delta: isize) ?*anyopaque;
extern fn syscall(__sysno: c_long, ...) c_long;
extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
extern fn lockf64(__fd: c_int, __cmd: c_int, __len: __off64_t) c_int;
extern fn copy_file_range(__infd: c_int, __pinoff: [*c]__off64_t, __outfd: c_int, __poutoff: [*c]__off64_t, __length: usize, __flags: c_uint) isize;
extern fn fdatasync(__fildes: c_int) c_int;
extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
extern fn swab(noalias __from: ?*const anyopaque, noalias __to: ?*anyopaque, __n: isize) void;
extern fn getentropy(__buffer: ?*anyopaque, __length: usize) c_int;
extern fn close_range(__fd: c_uint, __max_fd: c_uint, __flags: c_int) c_int;
extern fn gettid() __pid_t;

extern fn sigaltstack(noalias __ss: [*c]const stack_t, noalias __oss: [*c]stack_t) c_int;
const struct_sigstack = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_onstack: c_int = @import("std").mem.zeroes(c_int),
};
extern fn sigstack(__ss: [*c]struct_sigstack, __oss: [*c]struct_sigstack) c_int;
extern fn sighold(__sig: c_int) c_int;
extern fn sigrelse(__sig: c_int) c_int;
extern fn sigignore(__sig: c_int) c_int;
extern fn sigset(__sig: c_int, __disp: __sighandler_t) __sighandler_t;
extern fn pthread_sigmask(__how: c_int, noalias __newmask: [*c]const __sigset_t, noalias __oldmask: [*c]__sigset_t) c_int;
extern fn pthread_kill(__threadid: pthread_t, __signo: c_int) c_int;
extern fn pthread_sigqueue(__threadid: pthread_t, __signo: c_int, __value: union_sigval) c_int;
extern fn __libc_current_sigrtmin() c_int;
extern fn __libc_current_sigrtmax() c_int;
extern fn tgkill(__tgid: __pid_t, __tid: __pid_t, __signal: c_int) c_int;
const struct___va_list_tag_30 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};

const union_unnamed_31 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_31 = @import("std").mem.zeroes(union_unnamed_31),
};
const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
const __fpos_t = struct__G_fpos_t;
const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
const __fpos64_t = struct__G_fpos64_t;
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
const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
const cookie_io_functions_t = struct__IO_cookie_io_functions_t;

const fpos_t = __fpos_t;
const fpos64_t = __fpos64_t;
extern var stdin: [*c]FILE;
extern var stdout: [*c]FILE;
extern var stderr: [*c]FILE;
extern fn remove(__filename: [*c]const u8) c_int;
extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
extern fn renameat2(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8, __flags: c_uint) c_int;
extern fn fclose(__stream: [*c]FILE) c_int;
extern fn tmpfile() [*c]FILE;
extern fn tmpfile64() [*c]FILE;
extern fn tmpnam([*c]u8) [*c]u8;
extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
extern fn fflush(__stream: [*c]FILE) c_int;
extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
extern fn fcloseall() c_int;
extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
extern fn fopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
extern fn freopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
extern fn setlinebuf(__stream: [*c]FILE) void;
extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
const _Float32 = f32;
const _Float64 = f64;
const _Float32x = f64;
const _Float64x = c_longdouble;
extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
extern fn fgetc(__stream: [*c]FILE) c_int;
extern fn getc(__stream: [*c]FILE) c_int;
extern fn getchar() c_int;
extern fn getc_unlocked(__stream: [*c]FILE) c_int;
extern fn getchar_unlocked() c_int;
extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putchar(__c: c_int) c_int;
extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putchar_unlocked(__c: c_int) c_int;
extern fn getw(__stream: [*c]FILE) c_int;
extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
extern fn fgets_unlocked(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;
extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
extern fn fputs_unlocked(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
extern fn ftell(__stream: [*c]FILE) c_long;
extern fn rewind(__stream: [*c]FILE) void;
extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
extern fn ftello(__stream: [*c]FILE) __off_t;
extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
extern fn fseeko64(__stream: [*c]FILE, __off: __off64_t, __whence: c_int) c_int;
extern fn ftello64(__stream: [*c]FILE) __off64_t;
extern fn fgetpos64(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos64_t) c_int;
extern fn fsetpos64(__stream: [*c]FILE, __pos: [*c]const fpos64_t) c_int;
extern fn clearerr(__stream: [*c]FILE) void;
extern fn feof(__stream: [*c]FILE) c_int;
extern fn ferror(__stream: [*c]FILE) c_int;
extern fn clearerr_unlocked(__stream: [*c]FILE) void;
extern fn feof_unlocked(__stream: [*c]FILE) c_int;
extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
extern fn perror(__s: [*c]const u8) void;
extern fn fileno(__stream: [*c]FILE) c_int;
extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
extern fn pclose(__stream: [*c]FILE) c_int;
extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
extern fn ctermid(__s: [*c]u8) [*c]u8;
extern fn cuserid(__s: [*c]u8) [*c]u8;
const struct_obstack = opaque {};
extern fn obstack_printf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, ...) c_int;
extern fn obstack_vprintf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, __args: [*c]struct___va_list_tag_30) c_int;
extern fn flockfile(__stream: [*c]FILE) void;
extern fn ftrylockfile(__stream: [*c]FILE) c_int;
extern fn funlockfile(__stream: [*c]FILE) void;
extern fn __uflow([*c]FILE) c_int;
extern fn __overflow([*c]FILE, c_int) c_int;

extern fn __ctype_b_loc() [*c][*c]const c_ushort;
extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
extern fn isalnum(c_int) c_int;
extern fn isalpha(c_int) c_int;
extern fn iscntrl(c_int) c_int;
extern fn isdigit(c_int) c_int;
extern fn islower(c_int) c_int;
extern fn isgraph(c_int) c_int;
extern fn isprint(c_int) c_int;
extern fn ispunct(c_int) c_int;
extern fn isspace(c_int) c_int;
extern fn isupper(c_int) c_int;
extern fn isxdigit(c_int) c_int;
extern fn tolower(__c: c_int) c_int;
extern fn toupper(__c: c_int) c_int;
extern fn isblank(c_int) c_int;
extern fn isctype(__c: c_int, __mask: c_int) c_int;
extern fn isascii(__c: c_int) c_int;
extern fn toascii(__c: c_int) c_int;
extern fn _toupper(c_int) c_int;
extern fn _tolower(c_int) c_int;
const struct___locale_data_33 = opaque {};
const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_33 = @import("std").mem.zeroes([13]?*struct___locale_data_33),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
const __locale_t = [*c]struct___locale_struct;
const locale_t = __locale_t;
extern fn isalnum_l(c_int, locale_t) c_int;
extern fn isalpha_l(c_int, locale_t) c_int;
extern fn iscntrl_l(c_int, locale_t) c_int;
extern fn isdigit_l(c_int, locale_t) c_int;
extern fn islower_l(c_int, locale_t) c_int;
extern fn isgraph_l(c_int, locale_t) c_int;
extern fn isprint_l(c_int, locale_t) c_int;
extern fn ispunct_l(c_int, locale_t) c_int;
extern fn isspace_l(c_int, locale_t) c_int;
extern fn isupper_l(c_int, locale_t) c_int;
extern fn isxdigit_l(c_int, locale_t) c_int;
extern fn isblank_l(c_int, locale_t) c_int;
extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
const struct_timeb = extern struct {
    time: time_t = @import("std").mem.zeroes(time_t),
    millitm: c_ushort = @import("std").mem.zeroes(c_ushort),
    timezone: c_short = @import("std").mem.zeroes(c_short),
    dstflag: c_short = @import("std").mem.zeroes(c_short),
};
extern fn ftime(__timebuf: [*c]struct_timeb) c_int;
const struct_timezone = extern struct {
    tz_minuteswest: c_int = @import("std").mem.zeroes(c_int),
    tz_dsttime: c_int = @import("std").mem.zeroes(c_int),
};
extern fn gettimeofday(noalias __tv: [*c]struct_timeval, noalias __tz: ?*anyopaque) c_int;
extern fn settimeofday(__tv: [*c]const struct_timeval, __tz: [*c]const struct_timezone) c_int;
extern fn adjtime(__delta: [*c]const struct_timeval, __olddelta: [*c]struct_timeval) c_int;

const enum___itimer_which = c_uint;
const struct_itimerval = extern struct {
    it_interval: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    it_value: struct_timeval = @import("std").mem.zeroes(struct_timeval),
};
const __itimer_which_t = enum___itimer_which;
extern fn getitimer(__which: __itimer_which_t, __value: [*c]struct_itimerval) c_int;
extern fn setitimer(__which: __itimer_which_t, noalias __new: [*c]const struct_itimerval, noalias __old: [*c]struct_itimerval) c_int;
extern fn utimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
extern fn lutimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
extern fn futimes(__fd: c_int, __tvp: [*c]const struct_timeval) c_int;
extern fn futimesat(__fd: c_int, __file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield
const struct_timex = opaque {};
extern fn clock_adjtime(__clock_id: __clockid_t, __utx: ?*struct_timex) c_int;
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
const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
extern fn clock() clock_t;
extern fn time(__timer: [*c]time_t) time_t;
extern fn difftime(__time1: time_t, __time0: time_t) f64;
extern fn mktime(__tp: [*c]struct_tm) time_t;
extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
extern fn strptime(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm) [*c]u8;
extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
extern fn strptime_l(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm, __loc: locale_t) [*c]u8;
extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
extern fn ctime(__timer: [*c]const time_t) [*c]u8;
extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;
extern fn tzset() void;
extern var daylight: c_int;
extern var timezone: c_long;
extern fn timegm(__tp: [*c]struct_tm) time_t;
extern fn timelocal(__tp: [*c]struct_tm) time_t;
extern fn dysize(__year: c_int) c_int;
extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
extern fn timer_create(__clock_id: clockid_t, noalias __evp: [*c]struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
extern fn timer_delete(__timerid: timer_t) c_int;
extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
extern fn timer_getoverrun(__timerid: timer_t) c_int;
extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
extern fn timespec_getres(__ts: [*c]struct_timespec, __base: c_int) c_int;
extern var getdate_err: c_int;
extern fn getdate(__string: [*c]const u8) [*c]struct_tm;
extern fn getdate_r(noalias __string: [*c]const u8, noalias __resbufp: [*c]struct_tm) c_int;
extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn __sysconf(__name: c_int) c_long;
const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
extern fn __ctype_get_mb_cur_max() usize;
extern fn atof(__nptr: [*c]const u8) f64;
extern fn atoi(__nptr: [*c]const u8) c_int;
extern fn atol(__nptr: [*c]const u8) c_long;
extern fn atoll(__nptr: [*c]const u8) c_longlong;
extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
extern fn strtof32(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32;
extern fn strtof64(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64;
extern fn strtof32x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32x;
extern fn strtof64x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64x;
extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
extern fn strfromd(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
extern fn strfromf(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f32) c_int;
extern fn strfroml(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: c_longdouble) c_int;
extern fn strfromf32(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32) c_int;
extern fn strfromf64(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64) c_int;
extern fn strfromf32x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32x) c_int;
extern fn strfromf64x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64x) c_int;
extern fn strtol_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_long;
extern fn strtoul_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulong;
extern fn strtoll_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_longlong;
extern fn strtoull_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulonglong;
extern fn strtod_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
extern fn strtof_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f32;
extern fn strtold_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) c_longdouble;
extern fn strtof32_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32;
extern fn strtof64_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64;
extern fn strtof32x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32x;
extern fn strtof64x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64x;
extern fn l64a(__n: c_long) [*c]u8;
extern fn a64l(__s: [*c]const u8) c_long;
extern fn random() c_long;
extern fn srandom(__seed: c_uint) void;
extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
extern fn setstate(__statebuf: [*c]u8) [*c]u8;
const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
extern fn rand() c_int;
extern fn srand(__seed: c_uint) void;
extern fn rand_r(__seed: [*c]c_uint) c_int;
extern fn drand48() f64;
extern fn erand48(__xsubi: [*c]c_ushort) f64;
extern fn lrand48() c_long;
extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
extern fn mrand48() c_long;
extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
extern fn srand48(__seedval: c_long) void;
extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
extern fn lcong48(__param: [*c]c_ushort) void;
const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
extern fn arc4random() __uint32_t;
extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
extern fn malloc(__size: c_ulong) ?*anyopaque;
extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
extern fn free(__ptr: ?*anyopaque) void;
extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
extern fn valloc(__size: usize) ?*anyopaque;
extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
extern fn abort() noreturn;
extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
extern fn exit(__status: c_int) noreturn;
extern fn quick_exit(__status: c_int) noreturn;
extern fn _Exit(__status: c_int) noreturn;
extern fn getenv(__name: [*c]const u8) [*c]u8;
extern fn secure_getenv(__name: [*c]const u8) [*c]u8;
extern fn putenv(__string: [*c]u8) c_int;
extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
extern fn unsetenv(__name: [*c]const u8) c_int;
extern fn clearenv() c_int;
extern fn mktemp(__template: [*c]u8) [*c]u8;
extern fn mkstemp(__template: [*c]u8) c_int;
extern fn mkstemp64(__template: [*c]u8) c_int;
extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
extern fn mkstemps64(__template: [*c]u8, __suffixlen: c_int) c_int;
extern fn mkdtemp(__template: [*c]u8) [*c]u8;
extern fn mkostemp(__template: [*c]u8, __flags: c_int) c_int;
extern fn mkostemp64(__template: [*c]u8, __flags: c_int) c_int;
extern fn mkostemps(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
extern fn mkostemps64(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
extern fn system(__command: [*c]const u8) c_int;
extern fn canonicalize_file_name(__name: [*c]const u8) [*c]u8;
extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;

const __compar_d_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.C) c_int;
extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
extern fn qsort_r(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_d_fn_t, __arg: ?*anyopaque) void;
extern fn abs(__x: c_int) c_int;
extern fn labs(__x: c_long) c_long;
extern fn llabs(__x: c_longlong) c_longlong;
extern fn div(__numer: c_int, __denom: c_int) div_t;
extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
extern fn rpmatch(__response: [*c]const u8) c_int;
extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
extern fn posix_openpt(__oflag: c_int) c_int;
extern fn grantpt(__fd: c_int) c_int;
extern fn unlockpt(__fd: c_int) c_int;
extern fn ptsname(__fd: c_int) [*c]u8;
extern fn ptsname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
extern fn getpt() c_int;
extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn rawmemchr(__s: ?*const anyopaque, __c: c_int) ?*anyopaque;
extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
extern fn strdup(__s: [*c]const u8) [*c]u8;
extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;
extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
extern fn strerror(__errnum: c_int) [*c]u8;
extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) [*c]u8;
extern fn strerrordesc_np(__err: c_int) [*c]const u8;
extern fn strerrorname_np(__err: c_int) [*c]const u8;
extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn ffs(__i: c_int) c_int;
extern fn ffsl(__l: c_long) c_int;
extern fn ffsll(__ll: c_longlong) c_int;
extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
extern fn strsignal(__sig: c_int) [*c]u8;
extern fn sigabbrev_np(__sig: c_int) [*c]const u8;
extern fn sigdescr_np(__sig: c_int) [*c]const u8;
extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
extern fn strverscmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strfry(__string: [*c]u8) [*c]u8;
extern fn memfrob(__s: ?*anyopaque, __n: usize) ?*anyopaque;
extern fn basename(__filename: [*c]const u8) [*c]u8;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;
const __gwchar_t = c_int;
const imaxdiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
extern fn imaxabs(__n: intmax_t) intmax_t;
extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
const struct_lconv = extern struct {
    decimal_point: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    thousands_sep: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    grouping: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    int_curr_symbol: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    currency_symbol: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    mon_decimal_point: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    mon_thousands_sep: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    mon_grouping: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    positive_sign: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    negative_sign: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    int_frac_digits: u8 = @import("std").mem.zeroes(u8),
    frac_digits: u8 = @import("std").mem.zeroes(u8),
    p_cs_precedes: u8 = @import("std").mem.zeroes(u8),
    p_sep_by_space: u8 = @import("std").mem.zeroes(u8),
    n_cs_precedes: u8 = @import("std").mem.zeroes(u8),
    n_sep_by_space: u8 = @import("std").mem.zeroes(u8),
    p_sign_posn: u8 = @import("std").mem.zeroes(u8),
    n_sign_posn: u8 = @import("std").mem.zeroes(u8),
    int_p_cs_precedes: u8 = @import("std").mem.zeroes(u8),
    int_p_sep_by_space: u8 = @import("std").mem.zeroes(u8),
    int_n_cs_precedes: u8 = @import("std").mem.zeroes(u8),
    int_n_sep_by_space: u8 = @import("std").mem.zeroes(u8),
    int_p_sign_posn: u8 = @import("std").mem.zeroes(u8),
    int_n_sign_posn: u8 = @import("std").mem.zeroes(u8),
};
extern fn setlocale(__category: c_int, __locale: [*c]const u8) [*c]u8;
extern fn localeconv() [*c]struct_lconv;
extern fn newlocale(__category_mask: c_int, __locale: [*c]const u8, __base: locale_t) locale_t;
extern fn duplocale(__dataset: locale_t) locale_t;
extern fn freelocale(__dataset: locale_t) void;
extern fn uselocale(__dataset: locale_t) locale_t;
extern fn gettext(__msgid: [*c]const u8) [*c]u8;
extern fn dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
extern fn __dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
extern fn dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
extern fn __dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
extern fn ngettext(__msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn dngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn dcngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong, __category: c_int) [*c]u8;
extern fn textdomain(__domainname: [*c]const u8) [*c]u8;
extern fn bindtextdomain(__domainname: [*c]const u8, __dirname: [*c]const u8) [*c]u8;
extern fn bind_textdomain_codeset(__domainname: [*c]const u8, __codeset: [*c]const u8) [*c]u8;
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
const struct_dirent64_35 = opaque {};
const glob64_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent64_35 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent64_35),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int),
};
extern fn glob(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob_t) c_int;
extern fn globfree(__pglob: [*c]glob_t) void;
extern fn glob64(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob64_t) c_int;
extern fn globfree64(__pglob: [*c]glob64_t) void;
extern fn glob_pattern_p(__pattern: [*c]const u8, __quote: c_int) c_int;
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
extern fn message(prefix: c_int, length: usize, fmt: [*c]const u8, ...) void;
extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;
extern fn out_of_memory() noreturn;

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
extern fn reset_makeflags(origin: enum_variable_origin) void;
extern fn define_makeflags(makefile: c_int) [*c]struct_variable;
extern fn should_print_dir() c_int;
extern fn temp_stdin_unlink() void;
extern fn die(c_int) noreturn;
extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;
extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;
extern fn make_lltoa(c_longlong, [*c]u8) [*c]u8;
extern fn make_ulltoa(c_ulonglong, [*c]u8) [*c]u8;
extern fn make_seed(c_uint) void;
extern fn make_rand() c_uint;
extern fn make_pid() pid_t;
extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;
extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
extern fn next_token([*c]const u8) [*c]u8;
extern fn end_of_token([*c]const u8) [*c]u8;
extern fn collapse_continuations([*c]u8) void;
extern fn lindex([*c]const u8, [*c]const u8, c_int) [*c]u8;
extern fn alpha_compare(?*const anyopaque, ?*const anyopaque) c_int;
extern fn print_spaces(c_uint) void;
extern fn find_percent([*c]u8) [*c]u8;
extern fn find_percent_cached([*c][*c]const u8) [*c]const u8;
extern fn get_tmpdir() [*c]const u8;
extern fn get_tmpfd([*c][*c]u8) c_int;
extern fn get_tmpfile([*c][*c]u8) [*c]FILE;
extern fn writebuf(c_int, ?*const anyopaque, usize) isize;
extern fn readbuf(c_int, ?*anyopaque, usize) isize;
extern fn ar_name([*c]const u8) c_int;
extern fn ar_parse_name([*c]const u8, [*c][*c]u8, [*c][*c]u8) void;
extern fn ar_touch([*c]const u8) c_int;
extern fn ar_member_date([*c]const u8) time_t;
const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;
extern fn ar_scan(archive: [*c]const u8, function: ar_member_func_t, arg: ?*const anyopaque) intmax_t;
extern fn ar_name_equal(name: [*c]const u8, mem: [*c]const u8, truncated: c_int) c_int;
extern fn ar_member_touch(arname: [*c]const u8, memname: [*c]const u8) c_int;
extern fn dir_file_exists_p([*c]const u8, [*c]const u8) c_int;
extern fn file_exists_p([*c]const u8) c_int;
extern fn file_impossible_p([*c]const u8) c_int;
extern fn file_impossible([*c]const u8) void;
extern fn dir_name([*c]const u8) [*c]const u8;
extern fn print_dir_data_base() void;
extern fn dir_setup_glob([*c]glob_t) void;
extern fn hash_init_directories() void;
extern fn define_default_variables() void;
extern fn undefine_default_variables() void;
extern fn set_default_suffixes() void;
extern fn install_default_suffix_rules() void;
extern fn install_default_implicit_rules() void;
extern fn build_vpath_lists() void;
extern fn construct_vpath_list(pattern: [*c]u8, dirpath: [*c]u8) void;
extern fn vpath_search(file: [*c]const u8, mtime_ptr: [*c]uintmax_t, vpath_index: [*c]c_uint, path_index: [*c]c_uint) [*c]const u8;
extern fn gpath_search(file: [*c]const u8, len: usize) c_int;
extern fn construct_include_path(arg_dirs: [*c][*c]const u8) void;
export fn strip_whitespace(arg_begpp: [*c][*c]const u8, arg_endpp: [*c][*c]const u8) [*c]u8 {
    var begpp = arg_begpp;
    _ = &begpp;
    var endpp = arg_endpp;
    _ = &endpp;
    while ((begpp.* <= endpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(begpp.*.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) {
        begpp.* += 1;
    }
    while ((endpp.* >= begpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(endpp.*.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) {
        endpp.* -= 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(begpp.*))));
}
extern fn show_goal_error() void;
extern fn strcache_init() void;
extern fn strcache_print_stats(prefix: [*c]const u8) void;
extern fn strcache_iscached(str: [*c]const u8) c_int;
extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;
extern fn guile_gmake_setup(flocp: [*c]const floc) c_int;

extern fn load_file(flocp: [*c]const floc, file: [*c]struct_file, noerror: c_int) c_int;
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
extern fn remote_setup() void;
extern fn remote_cleanup() void;
extern fn start_remote_job_p(c_int) c_int;
extern fn start_remote_job([*c][*c]u8, [*c][*c]u8, c_int, [*c]c_int, [*c]pid_t, [*c]c_int) c_int;
extern fn remote_status([*c]c_int, [*c]c_int, [*c]c_int, c_int) c_int;
extern fn block_remote_children() void;
extern fn unblock_remote_children() void;
extern fn remote_kill(id: pid_t, sig: c_int) c_int;
extern fn print_variable_data_base() void;
extern fn print_vpath_data_base() void;
extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;
const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;
const qsort_cmp_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;
extern fn hash_load(ht: [*c]struct_hash_table, item_table: ?*anyopaque, cardinality: c_ulong, size: c_ulong) void;
extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;
extern fn hash_delete(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;
extern fn hash_delete_at(ht: [*c]struct_hash_table, slot: ?*const anyopaque) ?*anyopaque;
extern fn hash_delete_items(ht: [*c]struct_hash_table) void;
extern fn hash_free_items(ht: [*c]struct_hash_table) void;
extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;
extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;
extern fn hash_dump(ht: [*c]struct_hash_table, vector_0: [*c]?*anyopaque, compare: qsort_cmp_t) [*c]?*anyopaque;
extern fn jhash(key: [*c]const u8, n: c_int) c_uint;
extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
extern fn lookup_file(name: [*c]const u8) [*c]struct_file;
extern fn enter_file(name: [*c]const u8) [*c]struct_file;
extern fn split_prereqs(prereqstr: [*c]u8) [*c]struct_dep;
extern fn enter_prereqs(prereqs: [*c]struct_dep, stem: [*c]const u8) [*c]struct_dep;
extern fn expand_deps(f: [*c]struct_file) void;
extern fn expand_extra_prereqs(extra: [*c]const struct_variable) [*c]struct_dep;
extern fn remove_intermediates(sig: c_int) void;
extern fn snap_deps() void;
extern fn rename_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn rehash_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn set_command_state(file: [*c]struct_file, state: enum_cmd_state_37) void;
extern fn notice_finished_file(file: [*c]struct_file) void;
extern fn init_hash_files() void;
extern fn verify_file_data_base() void;
extern fn build_target_list(old_list: [*c]u8) [*c]u8;
extern fn print_prereqs(deps: [*c]const struct_dep) void;
extern fn print_file_data_base() void;
extern fn try_implicit_rule(file: [*c]struct_file, depth: c_uint) c_int;
extern fn stemlen_compare(v1: ?*const anyopaque, v2: ?*const anyopaque) c_int;
extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;
extern fn file_timestamp_now([*c]c_int) uintmax_t;
extern fn file_timestamp_sprintf(p: [*c]u8, ts: uintmax_t) void;
extern fn f_mtime(file: [*c]struct_file, search: c_int) uintmax_t;
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
extern fn variable_expand(line: [*c]const u8) [*c]u8;
extern fn variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;
extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;
extern fn expand_argument(str: [*c]const u8, end: [*c]const u8) [*c]u8;
extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;
extern fn initialize_variable_output() [*c]u8;
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
    var openparen: u8 = stringp.*[@as(c_uint, @intCast(@as(c_int, 0)))];
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
    beg = stringp.* + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    entry_p = lookup_function(beg);
    if (!(entry_p != null)) return 0;
    beg += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, entry_p.*.len)))))));
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(beg.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
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
        while (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) : (end += 1) if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(end.*))]))) & (@as(c_int, 128) | @as(c_int, 1024))) != @as(c_int, 0))) continue else if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, ',')) {
            nargs +%= 1;
        } else if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
            count += 1;
        } else if ((@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
            const ref = &count;
            ref.* -= 1;
            break :blk ref.*;
        }) < @as(c_int, 0))) break;
    }
    if (count >= @as(c_int, 0)) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("unterminated call to function '%s': missing '%c'"), entry_p.*.name, @as(c_int, @bitCast(@as(c_uint, closeparen))));
    }
    stringp.* = end;
    argvp = blk: {
        const tmp = @as([*c][*c]u8, @ptrCast(@alignCast(malloc(@sizeOf([*c]u8) *% @as(c_ulong, @bitCast(@as(c_ulong, nargs +% @as(c_uint, @bitCast(@as(c_int, 2))))))))));
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
                    const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
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
                }) == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                    next = end;
                }
                argvp.* = expand_argument(p, next);
                p = next + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            }
        }
    } else {
        var len: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(beg))), @sizeOf(u8))));
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var aend: [*c]u8 = undefined;
        _ = &aend;
        abeg = @as([*c]u8, @ptrCast(@alignCast(xmalloc(len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        aend = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(abeg)), @as(?*const anyopaque, @ptrCast(beg)), len))));
        aend.* = '\x00';
        {
            _ = blk: {
                p = abeg;
                break :blk blk_1: {
                    const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
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
                }) == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                    next = aend;
                }
                argvp.* = p;
                next.* = '\x00';
                p = next + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
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
        var len: usize = strlen(pattern) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
        _ = &len;
        var new_chars: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
        _ = &new_chars;
        _ = memcpy(@as(?*anyopaque, @ptrCast(new_chars)), @as(?*const anyopaque, @ptrCast(pattern)), len);
        percent = find_percent(new_chars);
        if (percent == null) return @intFromBool((new_chars == @as([*c]u8, @ptrCast(@volatileCast(@constCast(str))))) or ((@as(c_int, @bitCast(@as(c_uint, new_chars.*))) == @as(c_int, @bitCast(@as(c_uint, str.*)))) and ((@as(c_int, @bitCast(@as(c_uint, new_chars.*))) == @as(c_int, '\x00')) or !(strcmp(new_chars + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), str + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))));
        pattern = new_chars;
    }
    sfxlen = strlen(percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
    strlength = strlen(str);
    if ((strlength < (@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)))) +% sfxlen)) or !(strncmp(pattern, str, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8))))) == @as(c_int, 0))) return 0;
    return @intFromBool(!(strcmp(percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), str + (strlength -% sfxlen)) != 0));
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
    if ((slen == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and !(by_word != 0)) {
        o = variable_buffer_output(o, t, strlen(t));
        if (rlen > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            o = variable_buffer_output(o, replace, rlen);
        }
        return o;
    }
    while (true) {
        if ((by_word != 0) and (slen == @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) {
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
                const tmp = -@as(c_int, 1);
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))
        ]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) or !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[slen]))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0)))) {
            o = variable_buffer_output(o, subst, slen);
        } else if (rlen > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
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
        replace_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(replace_percent) -% @intFromPtr(replace))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))));
        replace_postpercent_len = strlen(replace_percent);
    } else {
        replace_prepercent_len = strlen(replace);
        replace_postpercent_len = 0;
    }
    if (!(pattern_percent != null)) return subst_expand(o, text, pattern, replace, strlen(pattern), strlen(replace), @as(c_int, 1));
    pattern_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(pattern_percent) -% @intFromPtr(pattern))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))));
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
        if ((!(fail != 0) and (pattern_prepercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) and (((@as(c_int, @bitCast(@as(c_uint, t.*))) != @as(c_int, @bitCast(@as(c_uint, pattern.*)))) or (@as(c_int, @bitCast(@as(c_uint, t[pattern_prepercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 2);
            if (tmp >= 0) break :blk pattern_percent + @as(usize, @intCast(tmp)) else break :blk pattern_percent - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))))) or !(strncmp(t + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), pattern + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), pattern_prepercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            fail = 1;
        }
        if ((!(fail != 0) and (pattern_postpercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) and (((@as(c_int, @bitCast(@as(c_uint, t[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent[pattern_postpercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])))) or (@as(c_int, @bitCast(@as(c_uint, t[len -% pattern_postpercent_len]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent.*))))) or !(strncmp(&t[len -% pattern_postpercent_len], pattern_percent, pattern_postpercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
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
        if (((fail != 0) or (replace_prepercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) or ((replace_percent != null) and ((len +% replace_postpercent_len) > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))))) {
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    command_argv = construct_command_argv(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null, null, @as(c_int, 0), &batch_filename);
    if (command_argv == null) {
        return o;
    }
    output_start();
    errfd = if ((output_context != null) and (output_context.*.err >= @as(c_int, 0))) output_context.*.err else fileno(stderr);
    child_1.environment = target_environment(null, @as(c_int, 0));
    if (pipe(@as([*c]c_int, @ptrCast(@alignCast(&pipedes)))) < @as(c_int, 0)) {
        @"error"(reading_file, strlen(strerror(__errno_location().*)), "pipe: %s", strerror(__errno_location().*));
        pid = -@as(c_int, 1);
        {
            if (command_argv != null) {
                free(@as(?*anyopaque, @ptrCast(command_argv[@as(c_uint, @intCast(@as(c_int, 0)))])));
                free(@as(?*anyopaque, @ptrCast(command_argv)));
            }
            free_childbase(&child_1);
            return o;
        }
    }
    fd_noinherit(pipedes[@as(c_uint, @intCast(@as(c_int, 1)))]);
    fd_noinherit(pipedes[@as(c_uint, @intCast(@as(c_int, 0)))]);
    child_1.output.syncout = 1;
    child_1.output.out = pipedes[@as(c_uint, @intCast(@as(c_int, 1)))];
    child_1.output.err = errfd;
    pid = child_execute_job(&child_1, @as(c_int, 1), command_argv);
    if (pid < @as(c_int, 0)) {
        shell_completed(@as(c_int, 127), @as(c_int, 0));
        {
            if (command_argv != null) {
                free(@as(?*anyopaque, @ptrCast(command_argv[@as(c_uint, @intCast(@as(c_int, 0)))])));
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
        if (pipedes[@as(c_uint, @intCast(@as(c_int, 1)))] >= @as(c_int, 0)) {
            _ = close(pipedes[@as(c_uint, @intCast(@as(c_int, 1)))]);
        }
        maxlen = 200;
        buffer = @as([*c]u8, @ptrCast(@alignCast(xmalloc(maxlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        {
            i = 0;
            while (true) : (i +%= @as(usize, @bitCast(@as(c_long, cc)))) {
                if (i == maxlen) {
                    maxlen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 512))));
                    buffer = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buffer)), maxlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
                }
                while (((blk: {
                    const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(pipedes[@as(c_uint, @intCast(@as(c_int, 0)))], @as(?*anyopaque, @ptrCast(&buffer[i])), maxlen -% i)))));
                    cc = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if (cc <= @as(c_int, 0)) break;
            }
        }
        buffer[i] = '\x00';
        _ = close(pipedes[@as(c_uint, @intCast(@as(c_int, 0)))]);
        while (shell_function_completed == @as(c_int, 0)) {
            reap_children(@as(c_int, 1), @as(c_int, 0));
        }
        if (batch_filename != null) {
            while (true) {
                if ((@as(c_int, 2) & db_level) != 0) {
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
        free(@as(?*anyopaque, @ptrCast(command_argv[@as(c_uint, @intCast(@as(c_int, 0)))])));
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
    if ((exit_sig == @as(c_int, 0)) and (exit_code == @as(c_int, 127))) {
        shell_function_completed = -@as(c_int, 1);
    } else {
        shell_function_completed = 1;
    }
    if ((exit_code == @as(c_int, 0)) and (exit_sig > @as(c_int, 0))) {
        exit_code = @as(c_int, 128) + exit_sig;
    }
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%d", exit_code);
    _ = define_variable_in_set(".SHELLSTATUS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_override)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
}
extern fn recursively_expand_for_file(v: [*c]struct_variable, file: [*c]struct_file) [*c]u8;
extern fn create_new_variable_set() [*c]struct_variable_set_list;
extern fn free_variable_set([*c]struct_variable_set_list) void;
extern fn push_new_variable_scope() [*c]struct_variable_set_list;
extern fn pop_variable_scope() void;
extern fn define_automatic_variables() void;
extern fn initialize_file_variables(file: [*c]struct_file, reading: c_int) void;
extern fn print_file_variables(file: [*c]const struct_file) void;
extern fn print_target_variables(file: [*c]const struct_file) void;
extern fn merge_variable_set_lists(to_list: [*c][*c]struct_variable_set_list, from_list: [*c]struct_variable_set_list) void;
extern fn do_variable_definition(flocp: [*c]const floc, name: [*c]const u8, value: [*c]const u8, origin: enum_variable_origin, flavor: enum_variable_flavor, target_var: c_int) [*c]struct_variable;
extern fn parse_variable_definition(line: [*c]const u8, v: [*c]struct_variable) [*c]u8;
extern fn assign_variable_definition(v: [*c]struct_variable, line: [*c]const u8) [*c]struct_variable;
extern fn try_variable_definition(flocp: [*c]const floc, line: [*c]const u8, origin: enum_variable_origin, target_var: c_int) [*c]struct_variable;
extern fn init_hash_global_variable_set() void;
export fn hash_init_function_table() void {
    hash_init(&function_table, (@sizeOf([38]struct_function_table_entry) / @sizeOf(struct_function_table_entry)) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))), &function_table_entry_hash_1, &function_table_entry_hash_2, &function_table_entry_hash_cmp);
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
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & @as(c_int, 8192)) != @as(c_int, 0)) {
        e += 1;
    }
    len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(e) -% @intFromPtr(name))), @sizeOf(u8))));
    if (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("Empty function name"));
    }
    if ((@as(c_int, @bitCast(@as(c_uint, name.*))) == @as(c_int, '.')) or (@as(c_int, @bitCast(@as(c_uint, e.*))) != @as(c_int, '\x00'))) {
        fatal(flocp, strlen(name), gettext("Invalid function name: %s"), name);
    }
    if (len > @as(usize, @bitCast(@as(c_long, @as(c_int, 255))))) {
        fatal(flocp, strlen(name), gettext("Function name too long: %s"), name);
    }
    if (min > @as(c_uint, @bitCast(@as(c_int, 255)))) {
        fatal(flocp, (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) +% strlen(name), gettext("Invalid minimum argument count (%u) for function %s"), min, name);
    }
    if ((max > @as(c_uint, @bitCast(@as(c_int, 255)))) or ((max != 0) and (max < min))) {
        fatal(flocp, (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) +% strlen(name), gettext("Invalid maximum argument count (%u) for function %s"), max, name);
    }
    ent = @as([*c]struct_function_table_entry, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_function_table_entry)))));
    ent.*.name = strcache_add(name);
    ent.*.len = @as(u8, @bitCast(@as(u8, @truncate(len))));
    ent.*.minimum_args = @as(u8, @bitCast(@as(u8, @truncate(min))));
    ent.*.maximum_args = @as(u8, @bitCast(@as(u8, @truncate(max))));
    ent.*.expand_args = @as(c_uint, @bitCast(if ((flags & @as(c_uint, @bitCast(@as(c_int, 1)))) != @as(c_uint, @bitCast(@as(c_int, 0)))) @as(c_int, 0) else @as(c_int, 1)));
    ent.*.alloc_fn = 1;
    ent.*.adds_command = 1;
    ent.*.fptr.alloc_func_ptr = func;
    ent = @as([*c]struct_function_table_entry, @ptrCast(@alignCast(hash_insert(&function_table, @as(?*const anyopaque, @ptrCast(ent))))));
    free(@as(?*anyopaque, @ptrCast(ent)));
}
extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;
extern fn lookup_variable_for_file(name: [*c]const u8, length: usize, file: [*c]struct_file) [*c]struct_variable;
extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) [*c]struct_variable;
extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;
extern fn warn_undefined(name: [*c]const u8, length: usize) void;
extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;
extern fn target_environment(file: [*c]struct_file, recursive: c_int) [*c][*c]u8;
extern fn create_pattern_var(target: [*c]const u8, suffix: [*c]const u8) [*c]struct_pattern_var;
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
extern fn tilde_expand(name: [*c]const u8) [*c]u8;
extern fn ar_glob(arname: [*c]const u8, member_pattern: [*c]const u8, size: usize) [*c]struct_nameseq;
extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: [*c]const struct_dep) [*c]struct_dep;
extern fn read_all_makefiles(makefiles: [*c][*c]const u8) [*c]struct_goaldep;
extern fn eval_buffer(buffer: [*c]u8, floc: [*c]const floc) void;
extern fn update_goal_chain(goals: [*c]struct_goaldep) enum_update_status_36;
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;
extern fn output_write(fd: c_int, buffer: ?*const anyopaque, len: usize) c_int;
extern fn output_init(out: [*c]struct_output) void;
extern fn output_close(out: [*c]struct_output) void;
extern fn output_start() void;
extern fn outputs(is_err: c_int, msg: [*c]const u8) void;
extern fn output_dump(out: [*c]struct_output) void;
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
extern fn is_bourne_compatible_shell(path: [*c]const u8) c_int;
extern fn new_job(file: [*c]struct_file) void;
extern fn reap_children(block: c_int, err: c_int) void;
extern fn start_waiting_jobs() void;
extern fn free_childbase(child: [*c]struct_childbase) void;
extern fn construct_command_argv(line: [*c]u8, restp: [*c][*c]u8, file: [*c]struct_file, cmd_flags: c_int, batch_file: [*c][*c]u8) [*c][*c]u8;
extern fn child_execute_job(child: [*c]struct_childbase, good_stdin: c_int, argv: [*c][*c]u8) pid_t;
extern fn exec_command(argv: [*c][*c]u8, envp: [*c][*c]u8) pid_t;
extern fn unblock_all_sigs() void;
extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
extern fn check_io_state() c_uint;
extern fn fd_inherit(c_int) void;
extern fn fd_noinherit(c_int) void;
extern fn fd_set_append(c_int) void;
extern fn os_anontmp() c_int;
extern fn jobserver_enabled() c_uint;
extern fn jobserver_setup(job_slots: c_int, style: [*c]const u8) c_uint;
extern fn jobserver_parse_auth(auth: [*c]const u8) c_uint;
extern fn jobserver_get_auth() [*c]u8;
extern fn jobserver_get_invalid_auth() [*c]const u8;
extern fn jobserver_clear() void;
extern fn jobserver_acquire_all() c_uint;
extern fn jobserver_release(is_fatal: c_int) void;
extern fn jobserver_signal() void;
extern fn jobserver_pre_child(c_int) void;
extern fn jobserver_post_child(c_int) void;
extern fn jobserver_pre_acquire() void;
extern fn jobserver_acquire(timeout: c_int) c_uint;
extern fn osync_enabled() c_uint;
extern fn osync_setup() void;
extern fn osync_get_mutex() [*c]u8;
extern fn osync_parse_mutex(mutex: [*c]const u8) c_uint;
extern fn osync_clear() void;
extern fn osync_acquire() c_uint;
extern fn osync_release() void;
extern fn get_bad_stdin() c_int;
extern fn fatal_error_signal(sig: c_int) void;
extern fn execute_file_commands(file: [*c]struct_file) void;
extern fn print_commands(cmds: [*c]const struct_commands) void;
extern fn delete_child_targets(child: [*c]struct_child) void;
extern fn chop_commands(cmds: [*c]struct_commands) void;
extern fn set_file_variables(file: [*c]struct_file, stem: [*c]const u8) void;
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
        return if (x.*.name == y.*.name) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.len))));
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
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & @as(c_int, 8192)) != @as(c_int, 0)) {
        e += 1;
    }
    if ((e == s) or !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & (@as(c_int, 1) | (@as(c_int, 2) | @as(c_int, 4)))) != @as(c_int, 0))) return null;
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
    while (ptr < end) : (ptr += 1) if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(ptr.*))]))) & (@as(c_int, 128) | @as(c_int, 1024))) != @as(c_int, 0))) continue else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, startparen)))) {
        count += 1;
    } else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, endparen)))) {
        count -= 1;
        if (count < @as(c_int, 0)) return null;
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
    chain = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&line, @sizeOf(struct_nameseq), @as(c_int, 1), null, (@as(c_int, 1) | @as(c_int, 16)) | @as(c_int, 8)))));
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
        if (((idx +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) > length.static) {
            length.static +%= (len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
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
    if (idx == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        result.static[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    } else {
        result.static[idx -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
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
    o = patsubst_expand(o, argv[@as(c_uint, @intCast(@as(c_int, 2)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))], argv[@as(c_uint, @intCast(@as(c_int, 1)))]);
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
    var list1_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &list1_iterator;
    var list2_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
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
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    var v: [*c]struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else {
        while (true) {
            switch (v.*.origin) {
                @as(c_uint, @bitCast(@as(c_int, 7))) => {
                    abort();
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 0))) => {
                    o = variable_buffer_output(o, "default", @as(usize, @bitCast(@as(c_long, @as(c_int, 7)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 1))) => {
                    o = variable_buffer_output(o, "environment", @as(usize, @bitCast(@as(c_long, @as(c_int, 11)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 2))) => {
                    o = variable_buffer_output(o, "file", @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 3))) => {
                    o = variable_buffer_output(o, "environment override", @as(usize, @bitCast(@as(c_long, @as(c_int, 20)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 4))) => {
                    o = variable_buffer_output(o, "command line", @as(usize, @bitCast(@as(c_long, @as(c_int, 12)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 5))) => {
                    o = variable_buffer_output(o, "override", @as(usize, @bitCast(@as(c_long, @as(c_int, 8)))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 6))) => {
                    o = variable_buffer_output(o, "automatic", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
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
    var v: [*c]struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else if (v.*.recursive != 0) {
        o = variable_buffer_output(o, "recursive", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else {
        o = variable_buffer_output(o, "simple", @as(usize, @bitCast(@as(c_long, @as(c_int, 6)))));
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
    var list_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &list_iterator;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_suffix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 's'));
    _ = &is_suffix;
    var is_notdir: c_int = @intFromBool(!(is_suffix != 0));
    _ = &is_notdir;
    var stop: c_int = @as(c_int, 32768) | (if (is_suffix != 0) @as(c_int, 512) else @as(c_int, 0));
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != @as(c_int, 0))) {
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
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    var p3: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p3;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_basename: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 'b'));
    _ = &is_basename;
    var is_dir: c_int = @intFromBool(!(is_basename != 0));
    _ = &is_dir;
    var stop: c_int = (@as(c_int, 32768) | (if (is_basename != 0) @as(c_int, 512) else @as(c_int, 0))) | @as(c_int, 1);
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&p3, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != @as(c_int, 0))) {
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
            o = variable_buffer_output(o, "./", @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))));
        } else {
            o = variable_buffer_output(o, p2, len);
        }
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    var fixlen: usize = strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
    _ = &fixlen;
    var list_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    _ = &list_iterator;
    var is_addprefix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 3)))]))) == @as(c_int, 'p'));
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
            o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], fixlen);
        }
        o = variable_buffer_output(o, p, len);
        if (is_addsuffix != 0) {
            o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], fixlen);
        }
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    o = subst_expand(o, argv[@as(c_uint, @intCast(@as(c_int, 2)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))], argv[@as(c_uint, @intCast(@as(c_int, 1)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]), strlen(argv[@as(c_uint, @intCast(@as(c_int, 1)))]), @as(c_int, 0));
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
    var words: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
    var words: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &words;
    var p: [*c]const u8 = null;
    _ = &p;
    var t: [*c]const u8 = undefined;
    _ = &t;
    while ((blk: {
        const tmp = find_next_token(&words, &i);
        t = tmp;
        break :blk tmp;
    }) != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
    var word_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
    var end: [*c]const u8 = (s + strlen(s)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
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
    i = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 0)))], gettext("invalid first argument to 'word' function"));
    if (i < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))))) {
        fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("first argument to 'word' function must be greater than 0"));
    }
    end_p = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    while ((blk: {
        const tmp = find_next_token(&end_p, null);
        p = tmp;
        break :blk tmp;
    }) != null) if ((blk: {
        const ref = &i;
        ref.* -= 1;
        break :blk ref.*;
    }) == @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) break;
    if (i == @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
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
    start = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 0)))], badfirst);
    if (start < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))))) {
        fatal(expanding_var.*, strlen(badfirst) +% strlen(make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badfirst, make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    stop = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 1)))], badsecond);
    if (stop < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        fatal(expanding_var.*, strlen(badsecond) +% strlen(make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badsecond, make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    count = (stop - start) + @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))));
    if (count > @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        var p: [*c]const u8 = undefined;
        _ = &p;
        var end_p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
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
    if (strstr(argv[@as(c_uint, @intCast(@as(c_int, 1)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))]) != null) {
        o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
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
    var varname: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &varname;
    var list: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
    _ = &list;
    var body: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
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
    end_of_token(vp)[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    _ = push_new_variable_scope();
    @"var" = define_variable_in_set(vp, strlen(vp), "", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        var result: [*c]u8 = null;
        _ = &result;
        free(@as(?*anyopaque, @ptrCast(@"var".*.value)));
        @"var".*.value = xstrndup(p, len);
        result = allocated_variable_expand_for_file(body, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
        o = variable_buffer_output(o, result, strlen(result));
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    var varnames: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &varnames;
    var list: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
    _ = &list;
    var body: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
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
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        vp_next += 1;
    }
    while (@as(c_int, @bitCast(@as(c_uint, vp_next.*))) != @as(c_int, '\x00')) {
        p = find_next_token(&list_iterator, &len);
        if (@as(c_int, @bitCast(@as(c_uint, list_iterator.*))) != @as(c_int, '\x00')) {
            list_iterator += 1;
            p[len] = '\x00';
        }
        _ = define_variable_in_set(vp, vlen, if (p != null) p else "", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        vp = find_next_token(&vp_next, &vlen);
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            vp_next += 1;
        }
    }
    if (vp != null) {
        _ = define_variable_in_set(vp, vlen, next_token(list_iterator), @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
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
    if (ax.*.length != ay.*.length) return if (ax.*.length > ay.*.length) @as(c_int, 1) else -@as(c_int, 1);
    while (true) {
        return if (ax.*.str == ay.*.str) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(ax.*.str)), @as(?*const anyopaque, @ptrCast(ay.*.str)), ax.*.length);
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
    var is_filter: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '\x00'));
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
    cp = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
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
    cp = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    while ((blk: {
        const tmp = find_next_token(&cp, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        pat_count +%= 1;
    }
    patterns = @as([*c]struct_a_pattern, @ptrCast(@alignCast(xcalloc(pat_count *% @sizeOf(struct_a_pattern)))));
    pat_end = patterns + pat_count;
    cp = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
    cp = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
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
    hashing = @intFromBool((literals > @as(c_int, 1)) and ((@as(c_ulong, @bitCast(@as(c_long, literals))) *% word_count) >= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 10))))));
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
                    wp.*.matched |= @as(c_int, 1);
                    wp = wp.*.chain;
                }
            } else {
                wp = words;
                while (wp < word_end) : (wp += 1) {
                    wp.*.matched |= (wp.*.length == pp.*.length) and (memcmp(@as(?*const anyopaque, @ptrCast(pp.*.str)), @as(?*const anyopaque, @ptrCast(wp.*.str)), wp.*.length) == @as(c_int, 0));
                }
            }
        }
    }
    {
        wp = words;
        while (wp < word_end) : (wp += 1) if ((if (is_filter != 0) wp.*.matched else @intFromBool(!(wp.*.matched != 0))) != 0) {
            o = variable_buffer_output(o, wp.*.str, strlen(wp.*.str));
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
            doneany = 1;
        };
    }
    if (doneany != 0) {
        o -= 1;
    }
    if (hashing != 0) {
        hash_free(&a_word_table, @as(c_int, 0));
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
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p;
    var doneany: c_int = 0;
    _ = &doneany;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var i: c_int = 0;
        _ = &i;
        var word_start: [*c]const u8 = undefined;
        _ = &word_start;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        word_start = p;
        {
            i = 0;
            while ((@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) : (_ = blk: {
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
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
                fatal(reading_file, strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]), "%s", argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
                @"error"(reading_file, strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]), "%s", argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
                break;
            },
            @as(c_int, 119) => {
                @"error"(reading_file, strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]), "%s", argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
                break;
            },
            @as(c_int, 105) => {
                {
                    var len: usize = strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
                    _ = &len;
                    var msg: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))))));
                    _ = &msg;
                    _ = memcpy(@as(?*anyopaque, @ptrCast(msg)), @as(?*const anyopaque, @ptrCast(argv[@as(c_uint, @intCast(@as(c_int, 0)))])), len);
                    msg[len] = '\n';
                    msg[len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
                    outputs(@as(c_int, 0), msg);
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
    t = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    wordi = 0;
    while ((blk: {
        const tmp = find_next_token(&t, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        t += 1;
        wordi += 1;
    }
    words = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_long, if (wordi == @as(c_int, 0)) @as(c_int, 1) else wordi))) *% @sizeOf([*c]u8)))));
    t = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
                if (((i == (wordi - @as(c_int, 1))) or (strlen((blk: {
                    const tmp = i + @as(c_int, 1);
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*) != len)) or (memcmp(@as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i + @as(c_int, 1);
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), len) != 0)) {
                    o = variable_buffer_output(o, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, len);
                    o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    while ((@as(c_uint, @bitCast(@as(c_uint, p.*))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) {
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
    var lhs_str: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &lhs_str;
    var rhs_str: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
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
    if (cmp == @as(c_int, 0)) {
        cmp = @intFromBool(llen > rlen) - @intFromBool(llen < rlen);
        if (cmp == @as(c_int, 0)) {
            cmp = memcmp(@as(?*const anyopaque, @ptrCast(lnum)), @as(?*const anyopaque, @ptrCast(rnum)), @as(c_ulong, @bitCast(llen)));
        }
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
    if (!(argv.* != null) and (cmp == @as(c_int, 0))) {
        if (lsign < @as(c_int, 0)) {
            o = variable_buffer_output(o, "-", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        }
        o = variable_buffer_output(o, lnum - @as(usize, @bitCast(@as(isize, @intCast(!(lsign != 0))))), @as(usize, @bitCast(llen + @as(ptrdiff_t, @intFromBool(!(lsign != 0))))));
    }
    free(@as(?*anyopaque, @ptrCast(lhs_str)));
    free(@as(?*anyopaque, @ptrCast(rhs_str)));
    if ((argv.* != null) and (cmp >= @as(c_int, 0))) {
        argv += 1;
        if (((cmp > @as(c_int, 0)) and (argv.* != null)) and ((argv + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* != null)) {
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
    var begp: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &begp;
    var endp: [*c]const u8 = (begp + strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))])) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    _ = &endp;
    var result: c_int = 0;
    _ = &result;
    _ = strip_whitespace(&begp, &endp);
    if (begp <= endp) {
        var expansion: [*c]u8 = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        _ = &expansion;
        result = @intFromBool(@as(c_int, @bitCast(@as(c_uint, expansion[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1) + @intFromBool(!(result != 0))))));
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
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &endp;
        var expansion: [*c]u8 = undefined;
        _ = &expansion;
        var result: usize = 0;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) continue;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
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
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &endp;
        var result: usize = undefined;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) return o;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
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
    var p: [*c]u8 = string_glob(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
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
    eval_buffer(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
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
    var v: [*c]struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
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
    var last_nonnl: [*c]u8 = buffer - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    _ = &last_nonnl;
    src[length.*] = 0;
    while (@as(c_int, @bitCast(@as(c_uint, src.*))) != @as(c_int, '\x00')) : (src += 1) {
        if ((@as(c_int, @bitCast(@as(c_uint, src[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\r')) and (@as(c_int, @bitCast(@as(c_uint, src[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\n'))) continue;
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
    if (!(trim_newlines != 0) and (last_nonnl < (dst - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))))) {
        last_nonnl = dst - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
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
    return func_shell_base(o, argv, @as(c_int, 1));
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
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) return null;
    apath_limit = apath + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4096)))));
    if (!(@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/'))) {
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
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(start.*))]))) & @as(c_int, 32768)) != @as(c_int, 0)) {
                start += 1;
            }
            {
                end = start;
                while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(end.*))]))) & (@as(c_int, 32768) | @as(c_int, 1))) != @as(c_int, 0))) : (end += 1) {}
            }
            len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
            if (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) break else if ((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) {} else if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '.'))) {
                if (dest > (apath + root_len)) {
                    dest -= 1;
                    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                        @as(u8, @bitCast((blk: {
                            const tmp = -@as(c_int, 1);
                            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))
                    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) : (dest -= 1) {}
                }
            } else {
                if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                    @as(u8, @bitCast((blk: {
                        const tmp = -@as(c_int, 1);
                        if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))
                ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
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
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
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
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
                if (!((rp == null) and (__errno_location().* == @as(c_int, 4)))) break;
            }
            if (rp != null) {
                var r: c_int = undefined;
                _ = &r;
                while (((blk: {
                    const tmp = stat(@as([*c]u8, @ptrCast(@alignCast(&out))), &st);
                    r = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if (r == @as(c_int, 0)) {
                    o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&out))), strlen(@as([*c]u8, @ptrCast(@alignCast(&out)))));
                    o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    var @"fn": [*c]u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &@"fn";
    if (@as(c_int, @bitCast(@as(c_uint, @"fn"[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '>')) {
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
        if (@as(c_int, @bitCast(@as(c_uint, @"fn"[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '>')) {
            mode = "a";
            @"fn" += 1;
        }
        start = next_token(@"fn");
        if (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
            fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("file: missing filename"));
        }
        end = end_of_token(start);
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
        nm = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(nm)), @as(?*const anyopaque, @ptrCast(start)), len);
        nm[len] = '\x00';
        while (true) {
            __errno_location().* = 0;
            fp = fopen(nm, mode);
            if (!((fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
        }
        if (fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("open: %s: %s"), nm, strerror(__errno_location().*));
        }
        command_count +%= 1;
        if (argv[@as(c_uint, @intCast(@as(c_int, 1)))] != null) {
            var l: usize = strlen(argv[@as(c_uint, @intCast(@as(c_int, 1)))]);
            _ = &l;
            var nl: c_int = @intFromBool((l == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) or (@as(c_int, @bitCast(@as(c_uint, argv[@as(c_uint, @intCast(@as(c_int, 1)))][l -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, '\n')));
            _ = &nl;
            if ((fputs(argv[@as(c_uint, @intCast(@as(c_int, 1)))], fp) == -@as(c_int, 1)) or ((nl != 0) and (fputc(@as(c_int, '\n'), fp) == -@as(c_int, 1)))) {
                fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("write: %s: %s"), nm, strerror(__errno_location().*));
            }
        }
        if (fclose(fp) != 0) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("close: %s: %s"), nm, strerror(__errno_location().*));
        }
    } else if (@as(c_int, @bitCast(@as(c_uint, @"fn"[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '<')) {
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
        start = next_token(@"fn" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        if (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
            fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("file: missing filename"));
        }
        if (argv[@as(c_uint, @intCast(@as(c_int, 1)))] != null) {
            fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("file: too many arguments"));
        }
        end = end_of_token(start);
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
        nm = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(nm)), @as(?*const anyopaque, @ptrCast(start)), len);
        nm[len] = '\x00';
        while (true) {
            __errno_location().* = 0;
            fp = fopen(nm, "r");
            if (!((fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
        }
        if (fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            if (__errno_location().* == @as(c_int, 2)) {
                while (true) {
                    if ((@as(c_int, 2) & db_level) != 0) {
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
            var l: usize = fread(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @sizeOf([1024]u8), fp);
            _ = &l;
            if (l > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&buf))), l);
                n +%= l;
            }
            if (ferror(fp) != 0) if (__errno_location().* != @as(c_int, 4)) {
                fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("read: %s: %s"), nm, strerror(__errno_location().*));
            };
            if (feof(fp) != 0) break;
        }
        if (fclose(fp) != 0) {
            fatal(reading_file, strlen(nm) +% strlen(strerror(__errno_location().*)), gettext("close: %s: %s"), nm, strerror(__errno_location().*));
        }
        if ((n != 0) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk o + @as(usize, @intCast(tmp)) else break :blk o - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\n'))) {
            o -= @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1) + @intFromBool((n > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = -@as(c_int, 2);
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
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
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
                o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
    fname = next_token(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
    end_of_token(fname)[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    if (@as(c_int, @bitCast(@as(c_uint, fname.*))) == @as(c_int, '\x00')) return o;
    entry_p = lookup_function(fname);
    if (entry_p != null) {
        {
            i = 0;
            while (argv[i +% @as(c_uint, @bitCast(@as(c_int, 1)))] != null) : (i +%= 1) {}
        }
        return expand_builtin_function(o, i, argv + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), entry_p);
    }
    flen = strlen(fname);
    v = lookup_variable(fname, flen);
    if (v == null) {
        warn_undefined(fname, flen);
    }
    if ((v == null) or (@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00'))) return o;
    body = @as([*c]u8, @ptrCast(@alignCast(malloc(flen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 4))))))));
    body[@as(c_uint, @intCast(@as(c_int, 0)))] = '$';
    body[@as(c_uint, @intCast(@as(c_int, 1)))] = '(';
    _ = memcpy(@as(?*anyopaque, @ptrCast(body + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @as(?*const anyopaque, @ptrCast(fname)), flen);
    body[flen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))] = ')';
    body[flen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 3))))] = '\x00';
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
            _ = define_variable_in_set(@as([*c]u8, @ptrCast(@alignCast(&num))), strlen(@as([*c]u8, @ptrCast(@alignCast(&num)))), argv.*, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        }
    }
    while (i < max_args.static) : (i +%= 1) {
        var num: [22]u8 = undefined;
        _ = &num;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&num))), "%u", i);
        _ = define_variable_in_set(@as([*c]u8, @ptrCast(@alignCast(&num))), strlen(@as([*c]u8, @ptrCast(@alignCast(&num)))), "", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    v.*.exp_count = @as(c_uint, @bitCast((@as(c_int, 1) << @intCast(15)) - @as(c_int, 1)));
    saved_args = @as(c_int, @bitCast(max_args.static));
    max_args.static = i;
    o = variable_expand_string(o, body, flen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 3)))));
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
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_addsuffix_addprefix,
        },
        .name = "addprefix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_addsuffix_addprefix,
        },
        .name = "addsuffix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_basename_dir,
        },
        .name = "basename",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_basename_dir,
        },
        .name = "dir",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_notdir_suffix,
        },
        .name = "notdir",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_subst,
        },
        .name = "subst",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_notdir_suffix,
        },
        .name = "suffix",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_filter_filterout,
        },
        .name = "filter",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_filter_filterout,
        },
        .name = "filter-out",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([11]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_findstring,
        },
        .name = "findstring",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([11]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_firstword,
        },
        .name = "firstword",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_flavor,
        },
        .name = "flavor",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_join,
        },
        .name = "join",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_lastword,
        },
        .name = "lastword",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_patsubst,
        },
        .name = "patsubst",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_realpath,
        },
        .name = "realpath",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_shell,
        },
        .name = "shell",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_sort,
        },
        .name = "sort",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_strip,
        },
        .name = "strip",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_wildcard,
        },
        .name = "wildcard",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_word,
        },
        .name = "word",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_wordlist,
        },
        .name = "wordlist",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_words,
        },
        .name = "words",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_origin,
        },
        .name = "origin",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_foreach,
        },
        .name = "foreach",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_let,
        },
        .name = "let",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_call,
        },
        .name = "call",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "info",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "error",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_error,
        },
        .name = "warning",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_intcmp,
        },
        .name = "intcmp",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 5))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_if,
        },
        .name = "if",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 3))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_or,
        },
        .name = "or",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_and,
        },
        .name = "and",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([4]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 0))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_value,
        },
        .name = "value",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_eval,
        },
        .name = "eval",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
    },
    struct_function_table_entry{
        .fptr = union_unnamed_38{
            .func_ptr = &func_file,
        },
        .name = "file",
        .len = @as(u8, @bitCast(@as(u8, @truncate(@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))))),
        .minimum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1))))),
        .maximum_args = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2))))),
        .expand_args = @as(c_uint, @bitCast(@as(c_int, 1))),
        .alloc_fn = @as(c_uint, @bitCast(@as(c_int, 0))),
        .adds_command = @as(c_uint, @bitCast(@as(c_int, 0))),
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
