extern fn alloca(__size: c_ulong) ?*anyopaque;

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

const __id_t = c_uint;
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

const mode_t = __mode_t;

const off_t = __off_t;
const off64_t = __off64_t;
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
extern fn concat(c_uint, ...) [*c]const u8;
extern fn message(prefix: c_int, length: usize, fmt: [*c]const u8, ...) void;
extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;
extern fn out_of_memory() noreturn;
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
extern fn strip_whitespace(begpp: [*c][*c]const u8, endpp: [*c][*c]const u8) [*c]u8;
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
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;
extern fn output_write(fd: c_int, buffer: ?*const anyopaque, len: usize) c_int;
extern fn output_init(out: [*c]struct_output) void;
extern fn output_close(out: [*c]struct_output) void;
extern fn output_start() void;
extern fn outputs(is_err: c_int, msg: [*c]const u8) void;
extern fn output_dump(out: [*c]struct_output) void;
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
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        cp -= 1;
    }
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&unix_shells.static)));
        while (s.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (s += 1) {
            if (strcmp(cp, s.*) == @as(c_int, 0)) return 1;
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
    reap_children(@as(c_int, 0), @as(c_int, 0));
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
                        }) < @as(c_int, 0))) break else if ((@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '\\')) and (@as(c_int, @bitCast(@as(c_uint, in[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\n'))) {
                            var quoted: c_int = 0;
                            _ = &quoted;
                            {
                                p = in - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
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
                                in += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
                                while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
                                    in += 1;
                                }
                                while ((out > outref) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                                    @as(u8, @bitCast((blk: {
                                        const tmp = -@as(c_int, 1);
                                        if (tmp >= 0) break :blk out + @as(usize, @intCast(tmp)) else break :blk out - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*))
                                ]))) & @as(c_int, 2)) != @as(c_int, 0))) {
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
                _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), strlen(in) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            }
            cmds.*.fileinfo.offset = @as(c_ulong, @bitCast(@as(c_ulong, i)));
            lines[i] = allocated_variable_expand_for_file(cmds.*.command_lines[i], file_1);
        }
    }
    cmds.*.fileinfo.offset = 0;
    c.*.command_lines = lines;
    _ = job_next_command(c);
    if (job_slots != @as(c_uint, @bitCast(@as(c_int, 0)))) {
        while (job_slots_used == job_slots) {
            reap_children(@as(c_int, 1), @as(c_int, 0));
        }
    } else if (jobserver_enabled() != 0) while (true) {
        var got_token: c_int = undefined;
        _ = &got_token;
        while (true) {
            if ((@as(c_int, 4) & db_level) != 0) {
                _ = printf("Need a job token; we %shave children\n", if (children != null) "" else "don't ");
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        if (!(jobserver_tokens != 0)) break;
        jobserver_pre_acquire();
        reap_children(@as(c_int, 0), @as(c_int, 0));
        start_waiting_jobs();
        if (!(jobserver_tokens != 0)) break;
        if (!(children != null)) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), "INTERNAL: no children as we go to sleep on read");
        }
        got_token = @as(c_int, @bitCast(jobserver_acquire(@intFromBool(waiting_jobs != @as([*c]struct_child, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))))));
        if (got_token == @as(c_int, 1)) {
            while (true) {
                if ((@as(c_int, 4) & db_level) != 0) {
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
            var n: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((strlen(cmds.*.fileinfo.filenm) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 11))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
            _ = &n;
            _ = sprintf(n, "%s:%lu", cmds.*.fileinfo.filenm, cmds.*.fileinfo.lineno);
            nm = n;
        }
        if (c.*.file.*.phony != 0) {
            message(@as(c_int, 0), strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: target is .PHONY"), nm, c.*.file.*.name);
        } else if (c.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
            message(@as(c_int, 0), strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: target does not exist"), nm, c.*.file.*.name);
        } else {
            var newer: [*c]u8 = allocated_variable_expand_for_file("$?", c.*.file);
            _ = &newer;
            if (@as(c_int, @bitCast(@as(c_uint, newer[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) {
                message(@as(c_int, 0), (strlen(nm) +% strlen(c.*.file.*.name)) +% strlen(newer), gettext("%s: update target '%s' due to: %s"), nm, c.*.file.*.name, newer);
                free(@as(?*anyopaque, @ptrCast(newer)));
            } else {
                var len: usize = 0;
                _ = &len;
                var d: [*c]struct_dep = undefined;
                _ = &d;
                {
                    d = c.*.file.*.deps;
                    while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) if (d.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
                        len +%= @as(usize, @bitCast(strlen(d.*.file.*.name) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
                    };
                }
                if (!(len != 0)) {
                    message(@as(c_int, 0), strlen(nm) +% strlen(c.*.file.*.name), gettext("%s: update target '%s' due to: unknown reasons"), nm, c.*.file.*.name);
                } else {
                    var cp: [*c]u8 = blk: {
                        const tmp = @as([*c]u8, @ptrCast(@alignCast(malloc(len))));
                        newer = tmp;
                        break :blk tmp;
                    };
                    _ = &cp;
                    {
                        d = c.*.file.*.deps;
                        while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) if (d.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
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
                    message(@as(c_int, 0), (strlen(nm) +% strlen(c.*.file.*.name)) +% strlen(newer), gettext("%s: update target '%s' due to: %s"), nm, c.*.file.*.name, newer);
                }
            }
        }
    }
    _ = start_waiting_job(c);
    if ((job_slots == @as(c_uint, @bitCast(@as(c_int, 1)))) or (not_parallel != 0)) while (file_1.*.command_state == @as(c_uint, @bitCast(cs_running))) {
        reap_children(@as(c_int, 1), @as(c_int, 0));
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
        reap_children(@as(c_int, 0), @as(c_int, 0));
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
        @"var" = lookup_variable_for_file(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), file_1);
        if (!(@"var" != null)) {
            shellflags = xstrdup("");
        } else if ((posix_pedantic != 0) and (@"var".*.origin == @as(c_uint, @bitCast(o_default)))) {
            shellflags = xstrdup(if ((cmd_flags & @as(c_int, 4)) != @as(c_int, 0)) "-c" else "-ec");
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
    var pid: pid_t = -@as(c_int, 1);
    _ = &pid;
    environ = envp;
    _ = execvp(argv[@as(c_uint, @intCast(@as(c_int, 0)))], argv);
    while (true) {
        switch (__errno_location().*) {
            @as(c_int, 2) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]) +% strlen(strerror(__errno_location().*)), "%s: %s", argv[@as(c_uint, @intCast(@as(c_int, 0)))], strerror(__errno_location().*));
                break;
            },
            @as(c_int, 8) => {
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
                    new_argv = @as([*c][*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, (@as(c_int, 1) + argc) + @as(c_int, 1)))) *% @sizeOf([*c]u8)))));
                    new_argv[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]u8, @ptrCast(@volatileCast(@constCast(shell))));
                    (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk new_argv + @as(usize, @intCast(tmp)) else break :blk new_argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
                    while (argc > @as(c_int, 0)) {
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
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(new_argv[@as(c_uint, @intCast(@as(c_int, 0)))]) +% strlen(strerror(__errno_location().*)), "%s: %s", new_argv[@as(c_uint, @intCast(@as(c_int, 0)))], strerror(__errno_location().*));
                    break;
                }
            },
            else => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]) +% strlen(strerror(__errno_location().*)), "%s: %s", argv[@as(c_uint, @intCast(@as(c_int, 0)))], strerror(__errno_location().*));
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
    _ = sigprocmask(@as(c_int, 2), &empty, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
}
extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
extern var db_level: c_int;
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
extern fn fatal_error_signal(sig: c_int) void;
extern fn execute_file_commands(file: [*c]struct_file) void;
extern fn print_commands(cmds: [*c]const struct_commands) void;
extern fn delete_child_targets(child: [*c]struct_child) void;
extern fn chop_commands(cmds: [*c]struct_commands) void;
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
extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;
extern fn expand_argument(str: [*c]const u8, end: [*c]const u8) [*c]u8;
extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;
extern fn initialize_variable_output() [*c]u8;
extern fn install_variable_buffer(bufp: [*c][*c]u8, lenp: [*c]usize) void;
extern fn restore_variable_buffer(buf: [*c]u8, len: usize) void;
extern fn handle_function(op: [*c][*c]u8, stringp: [*c][*c]const u8) c_int;
extern fn pattern_matches(pattern: [*c]const u8, percent: [*c]const u8, str: [*c]const u8) c_int;
extern fn subst_expand(o: [*c]u8, text: [*c]const u8, subst: [*c]const u8, replace: [*c]const u8, slen: usize, rlen: usize, by_word: c_int) [*c]u8;
extern fn patsubst_expand_pat(o: [*c]u8, text: [*c]const u8, pattern: [*c]const u8, replace: [*c]const u8, pattern_percent: [*c]const u8, replace_percent: [*c]const u8) [*c]u8;
extern fn patsubst_expand(o: [*c]u8, text: [*c]const u8, pattern: [*c]u8, replace: [*c]u8) [*c]u8;
extern fn func_shell_base(o: [*c]u8, argv: [*c][*c]u8, trim_newlines: c_int) [*c]u8;
extern fn shell_completed(exit_code: c_int, exit_sig: c_int) void;
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
extern fn hash_init_function_table() void;
extern fn define_new_function(flocp: [*c]const floc, name: [*c]const u8, min: c_uint, max: c_uint, flags: c_uint, func: gmk_func_ptr) void;
extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;
extern fn lookup_variable_for_file(name: [*c]const u8, length: usize, file: [*c]struct_file) [*c]struct_variable;
extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) [*c]struct_variable;
extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;
extern fn warn_undefined(name: [*c]const u8, length: usize) void;
extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;
extern fn target_environment(file: [*c]struct_file, recursive: c_int) [*c][*c]u8;
extern fn create_pattern_var(target: [*c]const u8, suffix: [*c]const u8) [*c]struct_pattern_var;
extern var export_all_variables: c_int;
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
extern fn shuffle_set_mode(cmdarg: [*c]const u8) void;
extern fn shuffle_get_mode() [*c]const u8;
extern fn shuffle_deps_recursive(g: [*c]struct_dep) void;

const struct_iovec = extern struct {
    iov_base: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    iov_len: usize = @import("std").mem.zeroes(usize),
};

const struct_file_handle = extern struct {
    handle_bytes: c_uint align(4) = @import("std").mem.zeroes(c_uint),
    handle_type: c_int = @import("std").mem.zeroes(c_int),
    pub fn f_handle(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 8)));
    }
};
extern fn readahead(__fd: c_int, __offset: __off64_t, __count: usize) __ssize_t;
extern fn sync_file_range(__fd: c_int, __offset: __off64_t, __count: __off64_t, __flags: c_uint) c_int;
extern fn vmsplice(__fdout: c_int, __iov: [*c]const struct_iovec, __count: usize, __flags: c_uint) __ssize_t;
extern fn splice(__fdin: c_int, __offin: [*c]__off64_t, __fdout: c_int, __offout: [*c]__off64_t, __len: usize, __flags: c_uint) __ssize_t;
extern fn tee(__fdin: c_int, __fdout: c_int, __len: usize, __flags: c_uint) __ssize_t;
extern fn fallocate(__fd: c_int, __mode: c_int, __offset: __off_t, __len: __off_t) c_int;
extern fn fallocate64(__fd: c_int, __mode: c_int, __offset: __off64_t, __len: __off64_t) c_int;
extern fn name_to_handle_at(__dfd: c_int, __name: [*c]const u8, __handle: [*c]struct_file_handle, __mnt_id: [*c]c_int, __flags: c_int) c_int;
extern fn open_by_handle_at(__mountdirfd: c_int, __handle: [*c]struct_file_handle, __flags: c_int) c_int;
extern fn fcntl(__fd: c_int, __cmd: c_int, ...) c_int;
extern fn fcntl64(__fd: c_int, __cmd: c_int, ...) c_int;
extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;
extern fn open64(__file: [*c]const u8, __oflag: c_int, ...) c_int;
extern fn openat(__fd: c_int, __file: [*c]const u8, __oflag: c_int, ...) c_int;
extern fn openat64(__fd: c_int, __file: [*c]const u8, __oflag: c_int, ...) c_int;
extern fn creat(__file: [*c]const u8, __mode: mode_t) c_int;
extern fn creat64(__file: [*c]const u8, __mode: mode_t) c_int;
extern fn posix_fadvise(__fd: c_int, __offset: off_t, __len: off_t, __advise: c_int) c_int;
extern fn posix_fadvise64(__fd: c_int, __offset: off64_t, __len: off64_t, __advise: c_int) c_int;
extern fn posix_fallocate(__fd: c_int, __offset: off_t, __len: off_t) c_int;
extern fn posix_fallocate64(__fd: c_int, __offset: off64_t, __len: off64_t) c_int;

const idtype_t = c_uint;
extern fn wait(__stat_loc: [*c]c_int) __pid_t;
extern fn waitpid(__pid: __pid_t, __stat_loc: [*c]c_int, __options: c_int) __pid_t;
extern fn waitid(__idtype: idtype_t, __id: __id_t, __infop: [*c]siginfo_t, __options: c_int) c_int;
const struct_rusage = opaque {};
extern fn wait3(__stat_loc: [*c]c_int, __options: c_int, __usage: ?*struct_rusage) __pid_t;
extern fn wait4(__pid: __pid_t, __stat_loc: [*c]c_int, __options: c_int, __usage: ?*struct_rusage) __pid_t;
const struct_sched_param = extern struct {
    sched_priority: c_int = @import("std").mem.zeroes(c_int),
};
extern fn clone(__fn: ?*const fn (?*anyopaque) callconv(.C) c_int, __child_stack: ?*anyopaque, __flags: c_int, __arg: ?*anyopaque, ...) c_int;
extern fn unshare(__flags: c_int) c_int;
extern fn sched_getcpu() c_int;
extern fn getcpu([*c]c_uint, [*c]c_uint) c_int;
extern fn setns(__fd: c_int, __nstype: c_int) c_int;
const __cpu_mask = c_ulong;
const cpu_set_t = extern struct {
    __bits: [16]__cpu_mask = @import("std").mem.zeroes([16]__cpu_mask),
};
extern fn __sched_cpucount(__setsize: usize, __setp: [*c]const cpu_set_t) c_int;
extern fn __sched_cpualloc(__count: usize) [*c]cpu_set_t;
extern fn __sched_cpufree(__set: [*c]cpu_set_t) void;
extern fn sched_setparam(__pid: __pid_t, __param: [*c]const struct_sched_param) c_int;
extern fn sched_getparam(__pid: __pid_t, __param: [*c]struct_sched_param) c_int;
extern fn sched_setscheduler(__pid: __pid_t, __policy: c_int, __param: [*c]const struct_sched_param) c_int;
extern fn sched_getscheduler(__pid: __pid_t) c_int;
extern fn sched_yield() c_int;
extern fn sched_get_priority_max(__algorithm: c_int) c_int;
extern fn sched_get_priority_min(__algorithm: c_int) c_int;
extern fn sched_rr_get_interval(__pid: __pid_t, __t: [*c]struct_timespec) c_int;
extern fn sched_setaffinity(__pid: __pid_t, __cpusetsize: usize, __cpuset: [*c]const cpu_set_t) c_int;
extern fn sched_getaffinity(__pid: __pid_t, __cpusetsize: usize, __cpuset: [*c]cpu_set_t) c_int;
const posix_spawnattr_t = extern struct {
    __flags: c_short = @import("std").mem.zeroes(c_short),
    __pgrp: pid_t = @import("std").mem.zeroes(pid_t),
    __sd: sigset_t = @import("std").mem.zeroes(sigset_t),
    __ss: sigset_t = @import("std").mem.zeroes(sigset_t),
    __sp: struct_sched_param = @import("std").mem.zeroes(struct_sched_param),
    __policy: c_int = @import("std").mem.zeroes(c_int),
    __cgroup: c_int = @import("std").mem.zeroes(c_int),
    __pad: [15]c_int = @import("std").mem.zeroes([15]c_int),
};
const struct___spawn_action_38 = opaque {};
const posix_spawn_file_actions_t = extern struct {
    __allocated: c_int = @import("std").mem.zeroes(c_int),
    __used: c_int = @import("std").mem.zeroes(c_int),
    __actions: ?*struct___spawn_action_38 = @import("std").mem.zeroes(?*struct___spawn_action_38),
    __pad: [16]c_int = @import("std").mem.zeroes([16]c_int),
};
extern fn posix_spawn(noalias __pid: [*c]pid_t, noalias __path: [*c]const u8, noalias __file_actions: [*c]const posix_spawn_file_actions_t, noalias __attrp: [*c]const posix_spawnattr_t, noalias __argv: [*c]const [*c]u8, noalias __envp: [*c]const [*c]u8) c_int;
extern fn posix_spawnp(__pid: [*c]pid_t, __file: [*c]const u8, __file_actions: [*c]const posix_spawn_file_actions_t, __attrp: [*c]const posix_spawnattr_t, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
extern fn posix_spawnattr_init(__attr: [*c]posix_spawnattr_t) c_int;
extern fn posix_spawnattr_destroy(__attr: [*c]posix_spawnattr_t) c_int;
extern fn posix_spawnattr_getsigdefault(noalias __attr: [*c]const posix_spawnattr_t, noalias __sigdefault: [*c]sigset_t) c_int;
extern fn posix_spawnattr_setsigdefault(noalias __attr: [*c]posix_spawnattr_t, noalias __sigdefault: [*c]const sigset_t) c_int;
extern fn posix_spawnattr_getsigmask(noalias __attr: [*c]const posix_spawnattr_t, noalias __sigmask: [*c]sigset_t) c_int;
extern fn posix_spawnattr_setsigmask(noalias __attr: [*c]posix_spawnattr_t, noalias __sigmask: [*c]const sigset_t) c_int;
extern fn posix_spawnattr_getflags(noalias __attr: [*c]const posix_spawnattr_t, noalias __flags: [*c]c_short) c_int;
extern fn posix_spawnattr_setflags(_attr: [*c]posix_spawnattr_t, __flags: c_short) c_int;
extern fn posix_spawnattr_getpgroup(noalias __attr: [*c]const posix_spawnattr_t, noalias __pgroup: [*c]pid_t) c_int;
extern fn posix_spawnattr_setpgroup(__attr: [*c]posix_spawnattr_t, __pgroup: pid_t) c_int;
extern fn posix_spawnattr_getschedpolicy(noalias __attr: [*c]const posix_spawnattr_t, noalias __schedpolicy: [*c]c_int) c_int;
extern fn posix_spawnattr_setschedpolicy(__attr: [*c]posix_spawnattr_t, __schedpolicy: c_int) c_int;
extern fn posix_spawnattr_getschedparam(noalias __attr: [*c]const posix_spawnattr_t, noalias __schedparam: [*c]struct_sched_param) c_int;
extern fn posix_spawnattr_setschedparam(noalias __attr: [*c]posix_spawnattr_t, noalias __schedparam: [*c]const struct_sched_param) c_int;
extern fn posix_spawn_file_actions_init(__file_actions: [*c]posix_spawn_file_actions_t) c_int;
extern fn posix_spawn_file_actions_destroy(__file_actions: [*c]posix_spawn_file_actions_t) c_int;
extern fn posix_spawn_file_actions_addopen(noalias __file_actions: [*c]posix_spawn_file_actions_t, __fd: c_int, noalias __path: [*c]const u8, __oflag: c_int, __mode: mode_t) c_int;
extern fn posix_spawn_file_actions_addclose(__file_actions: [*c]posix_spawn_file_actions_t, __fd: c_int) c_int;
extern fn posix_spawn_file_actions_adddup2(__file_actions: [*c]posix_spawn_file_actions_t, __fd: c_int, __newfd: c_int) c_int;
extern fn posix_spawn_file_actions_addchdir_np(noalias __actions: [*c]posix_spawn_file_actions_t, noalias __path: [*c]const u8) c_int;
extern fn posix_spawn_file_actions_addfchdir_np([*c]posix_spawn_file_actions_t, __fd: c_int) c_int;
extern fn posix_spawn_file_actions_addclosefrom_np([*c]posix_spawn_file_actions_t, __from: c_int) c_int;
extern fn posix_spawn_file_actions_addtcsetpgrp_np([*c]posix_spawn_file_actions_t, __tcfd: c_int) c_int;
extern fn posix_spawnattr_getcgroup_np(noalias __attr: [*c]const posix_spawnattr_t, noalias __cgroup: [*c]c_int) c_int;
extern fn posix_spawnattr_setcgroup_np(__attr: [*c]posix_spawnattr_t, __cgroup: c_int) c_int;
extern fn pidfd_spawn(noalias __pidfd: [*c]c_int, noalias __path: [*c]const u8, noalias __facts: [*c]const posix_spawn_file_actions_t, noalias __attrp: [*c]const posix_spawnattr_t, noalias __argv: [*c]const [*c]u8, noalias __envp: [*c]const [*c]u8) c_int;
extern fn pidfd_spawnp(noalias __pidfd: [*c]c_int, noalias __file: [*c]const u8, noalias __facts: [*c]const posix_spawn_file_actions_t, noalias __attrp: [*c]const posix_spawnattr_t, noalias __argv: [*c]const [*c]u8, noalias __envp: [*c]const [*c]u8) c_int;
extern fn find_in_path(progname: [*c]const u8) [*c]const u8;
extern fn find_in_given_path(progname: [*c]const u8, path: [*c]const u8, directory: [*c]const u8, optimize_for_exec: bool) [*c]const u8;
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
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) +% strlen(child_1.*.file.*.name), "INTERNAL: Freeing child %p (%s) but no tokens left", child_1, child_1.*.file.*.name);
    }
    if ((jobserver_enabled() != 0) and (jobserver_tokens > @as(c_uint, @bitCast(@as(c_int, 1))))) {
        jobserver_release(@as(c_int, 1));
        while (true) {
            if ((@as(c_int, 4) & db_level) != 0) {
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
        var static: c_int = -@as(c_int, 2);
    };
    _ = &proc_fd;
    var load: f64 = undefined;
    _ = &load;
    var guess: f64 = undefined;
    _ = &guess;
    var now: time_t = undefined;
    _ = &now;
    if (max_load_average < @as(f64, @floatFromInt(@as(c_int, 0)))) return 0;
    if (proc_fd.static == -@as(c_int, 2)) {
        while (((blk: {
            const tmp = open("/proc/loadavg", @as(c_int, 0));
            proc_fd.static = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (proc_fd.static < @as(c_int, 0)) {
            while (true) {
                if ((@as(c_int, 4) & db_level) != 0) {
                    _ = printf("Using system load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
        } else {
            while (true) {
                if ((@as(c_int, 4) & db_level) != 0) {
                    _ = printf("Using /proc/loadavg load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            fd_noinherit(proc_fd.static);
        }
    }
    if (proc_fd.static >= @as(c_int, 0)) {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(lseek(proc_fd.static, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0))))));
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r >= @as(c_int, 0)) {
            var avg: [65]u8 = undefined;
            _ = &avg;
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(proc_fd.static, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&avg))))), @as(usize, @bitCast(@as(c_long, @as(c_int, 64)))))))));
                r = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (r >= @as(c_int, 0)) {
                var p: [*c]const u8 = undefined;
                _ = &p;
                avg[@as(c_uint, @intCast(r))] = '\x00';
                p = strchr(@as([*c]u8, @ptrCast(@alignCast(&avg))), @as(c_int, ' '));
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ' '));
                }
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ' '));
                }
                if ((p != null) and ((@as(c_uint, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 1)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9))))) {
                    var cnt: c_uint = make_toui(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), null);
                    _ = &cnt;
                    while (true) {
                        if ((@as(c_int, 4) & db_level) != 0) {
                            _ = printf("Running: system = %u / make = %u (max requested = %f)\n", cnt, job_slots_used, max_load_average);
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    return @intFromBool(@as(f64, @floatFromInt(cnt)) > max_load_average);
                }
                while (true) {
                    if ((@as(c_int, 4) & db_level) != 0) {
                        _ = printf("Failed to parse /proc/loadavg: %s\n", @as([*c]u8, @ptrCast(@alignCast(&avg))));
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            }
        }
        if (r < @as(c_int, 0)) while (true) {
            if ((@as(c_int, 4) & db_level) != 0) {
                _ = printf("Failed to read /proc/loadavg: %s\n", strerror(__errno_location().*));
                _ = fflush(stdout);
            }
            if (!false) break;
        };
        _ = close(proc_fd.static);
        proc_fd.static = -@as(c_int, 1);
    }
    __errno_location().* = 0;
    if (getloadavg(&load, @as(c_int, 1)) != @as(c_int, 1)) {
        const lossage = struct {
            var static: c_int = -@as(c_int, 1);
        };
        _ = &lossage;
        if ((lossage.static == -@as(c_int, 1)) or (__errno_location().* != lossage.static)) {
            if (__errno_location().* == @as(c_int, 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("cannot enforce load limits on this operating system"));
            } else {
                perror_with_name(gettext("cannot enforce load limit: "), "getloadavg");
            }
        }
        lossage.static = __errno_location().*;
        load = 0;
    }
    now = time(null);
    if (last_now.static < now) {
        if (last_now.static == (now - @as(time_t, @bitCast(@as(c_long, @as(c_int, 1)))))) {
            last_sec.static = 0.25 * @as(f64, @floatFromInt(job_counter));
        } else {
            last_sec.static = 0.0;
        }
        job_counter = 0;
        last_now.static = now;
    }
    guess = load + (0.25 * (@as(f64, @floatFromInt(job_counter)) + last_sec.static));
    while (true) {
        if ((@as(c_int, 4) & db_level) != 0) {
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
    child_1.*.file.*.cmds.*.fileinfo.offset = @as(c_ulong, @bitCast(@as(c_ulong, child_1.*.command_line -% @as(c_uint, @bitCast(@as(c_int, 1))))));
    return 1;
}
fn start_waiting_job(arg_c: [*c]struct_child) callconv(.C) c_int {
    var c = arg_c;
    _ = &c;
    var f: [*c]struct_file = c.*.file;
    _ = &f;
    c.*.remote = @as(c_uint, @bitCast(start_remote_job_p(@as(c_int, 1))));
    if (!(c.*.remote != 0) and ((job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) and (load_too_high() != 0))) {
        set_command_state(f, @as(c_uint, @bitCast(cs_running)));
        c.*.next = waiting_jobs;
        waiting_jobs = c;
        return 0;
    }
    start_job_command(c);
    while (true) {
        switch (f.*.command_state) {
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                c.*.next = children;
                if (c.*.pid > @as(c_int, 0)) {
                    while (true) {
                        if ((@as(c_int, 4) & db_level) != 0) {
                            _ = printf(gettext("Putting child %p (%s) PID %s%s on the chain.\n"), c, c.*.file.*.name, pid2str(c.*.pid), if (c.*.remote != 0) gettext(" (remote)") else "");
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    job_slots_used +%= 1;
                    _ = @as(c_int, 0);
                    c.*.jobslot = 1;
                }
                children = c;
                unblock_sigs();
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                f.*.update_status = @as(c_uint, @bitCast(us_success));
                notice_finished_file(f);
                free_child(c);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                notice_finished_file(f);
                free_child(c);
                break;
            },
            else => {
                _ = @as(c_int, 0);
                break;
            },
        }
        break;
    }
    return 1;
}
var good_stdin_used: c_int = 0;
var waiting_jobs: [*c]struct_child = null;
export var unixy_shell: c_int = 1;
export var job_counter: c_ulong = 0;
extern var fatal_signal_set: sigset_t;
fn block_sigs() callconv(.C) void {
    _ = sigprocmask(@as(c_int, 0), &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
}
fn unblock_sigs() callconv(.C) void {
    _ = sigprocmask(@as(c_int, 1), &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
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
        var a: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((strlen(flocp.*.filenm) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 6))))) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = &a;
        _ = sprintf(a, "%s:%lu", flocp.*.filenm, flocp.*.lineno +% flocp.*.offset);
        nm = a;
    }
    l = ((strlen(pre) +% strlen(nm)) +% strlen(f.*.name)) +% strlen(post);
    smode = shuffle_get_mode();
    if (smode != null) {
        var a: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% strlen(smode)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
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
    if (exit_sig == @as(c_int, 0)) {
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), l +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))), gettext("%s[%s: %s] Error %d%s%s"), pre, nm, f.*.name, exit_code, post, if (smode != null) smode else "");
    } else {
        var s: [*c]const u8 = strsignal(exit_sig);
        _ = &s;
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (l +% strlen(s)) +% strlen(dump), "%s[%s: %s] %s%s%s%s", pre, nm, f.*.name, s, dump, post, if (smode != null) smode else "");
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
