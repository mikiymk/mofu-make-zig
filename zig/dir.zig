const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
extern fn alloca(__size: c_ulong) ?*anyopaque;
const ptrdiff_t = c_long;
const wchar_t = c_int;
const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
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
const __u_char = u8;
const __u_short = c_ushort;
const __u_int = c_uint;
const __u_long = c_ulong;
const __int8_t = i8;
const __uint8_t = u8;
const __int16_t = c_short;
const __uint16_t = c_ushort;
const __int32_t = c_int;
const __uint32_t = c_uint;
const __int64_t = c_long;
const __uint64_t = c_ulong;
const __int_least8_t = __int8_t;
const __uint_least8_t = __uint8_t;
const __int_least16_t = __int16_t;
const __uint_least16_t = __uint16_t;
const __int_least32_t = __int32_t;
const __uint_least32_t = __uint32_t;
const __int_least64_t = __int64_t;
const __uint_least64_t = __uint64_t;
const __quad_t = c_long;
const __u_quad_t = c_ulong;
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
const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
const __clock_t = c_long;
const __rlim_t = c_ulong;
const __rlim64_t = c_ulong;
const __id_t = c_uint;
const __time_t = c_long;
const __useconds_t = c_uint;
const __suseconds_t = c_long;
const __suseconds64_t = c_long;
const __daddr_t = c_int;
const __key_t = c_int;
const __clockid_t = c_int;
const __timer_t = ?*anyopaque;
const __blksize_t = c_long;
const __blkcnt_t = c_long;
const __blkcnt64_t = c_long;
const __fsblkcnt_t = c_ulong;
const __fsblkcnt64_t = c_ulong;
const __fsfilcnt_t = c_ulong;
const __fsfilcnt64_t = c_ulong;
const __fsword_t = c_long;
const __ssize_t = c_long;
const __syscall_slong_t = c_long;
const __syscall_ulong_t = c_ulong;
const __loff_t = __off64_t;
const __caddr_t = [*c]u8;
const __intptr_t = c_long;
const __socklen_t = c_uint;
const __sig_atomic_t = c_int;
const u_char = __u_char;
const u_short = __u_short;
const u_int = __u_int;
const u_long = __u_long;
const quad_t = __quad_t;
const u_quad_t = __u_quad_t;
const fsid_t = __fsid_t;
const loff_t = __loff_t;
const ino_t = __ino_t;
const ino64_t = __ino64_t;
const dev_t = __dev_t;
const gid_t = __gid_t;
const mode_t = __mode_t;
const nlink_t = __nlink_t;
const uid_t = __uid_t;
const off_t = __off_t;
const off64_t = __off64_t;
const pid_t = __pid_t;
const id_t = __id_t;
const daddr_t = __daddr_t;
const caddr_t = __caddr_t;
const key_t = __key_t;
const clock_t = __clock_t;
const clockid_t = __clockid_t;
const time_t = __time_t;
const timer_t = __timer_t;
const useconds_t = __useconds_t;
const suseconds_t = __suseconds_t;
const ulong = c_ulong;
const ushort = c_ushort;
const uint = c_uint;
const u_int8_t = __uint8_t;
const u_int16_t = __uint16_t;
const u_int32_t = __uint32_t;
const u_int64_t = __uint64_t;
const register_t = c_long;
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
const fd_mask = __fd_mask;
extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
const blksize_t = __blksize_t;
const blkcnt_t = __blkcnt_t;
const fsblkcnt_t = __fsblkcnt_t;
const fsfilcnt_t = __fsfilcnt_t;
const blkcnt64_t = __blkcnt64_t;
const fsblkcnt64_t = __fsblkcnt64_t;
const fsfilcnt64_t = __fsfilcnt64_t;
const struct_unnamed_1 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_1,
};
const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
const __pthread_list_t = struct___pthread_internal_list;
const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
const __pthread_slist_t = struct___pthread_internal_slist;
const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
const __tss_t = c_uint;
const __thrd_t = c_ulong;
const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
const pthread_t = c_ulong;
const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
const pthread_key_t = c_uint;
const pthread_once_t = c_int;
const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
const pthread_attr_t = union_pthread_attr_t;
const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
const pthread_spinlock_t = c_int;
const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
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
const __s8 = i8;
const __u8 = u8;
const __s16 = c_short;
const __u16 = c_ushort;
const __s32 = c_int;
const __u32 = c_uint;
const __s64 = c_longlong;
const __u64 = c_ulonglong;
const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
const __kernel_sighandler_t = ?*const fn (c_int) callconv(.C) void;
const __kernel_key_t = c_int;
const __kernel_mqd_t = c_int;
const __kernel_old_uid_t = c_ushort;
const __kernel_old_gid_t = c_ushort;
const __kernel_old_dev_t = c_ulong;
const __kernel_long_t = c_long;
const __kernel_ulong_t = c_ulong;
const __kernel_ino_t = __kernel_ulong_t;
const __kernel_mode_t = c_uint;
const __kernel_pid_t = c_int;
const __kernel_ipc_pid_t = c_int;
const __kernel_uid_t = c_uint;
const __kernel_gid_t = c_uint;
const __kernel_suseconds_t = __kernel_long_t;
const __kernel_daddr_t = c_int;
const __kernel_uid32_t = c_uint;
const __kernel_gid32_t = c_uint;
const __kernel_size_t = __kernel_ulong_t;
const __kernel_ssize_t = __kernel_long_t;
const __kernel_ptrdiff_t = __kernel_long_t;
const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
const __kernel_off_t = __kernel_long_t;
const __kernel_loff_t = c_longlong;
const __kernel_old_time_t = __kernel_long_t;
const __kernel_time_t = __kernel_long_t;
const __kernel_time64_t = c_longlong;
const __kernel_clock_t = __kernel_long_t;
const __kernel_timer_t = c_int;
const __kernel_clockid_t = c_int;
const __kernel_caddr_t = [*c]u8;
const __kernel_uid16_t = c_ushort;
const __kernel_gid16_t = c_ushort;
const __le16 = __u16;
const __be16 = __u16;
const __le32 = __u32;
const __be32 = __u32;
const __le64 = __u64;
const __be64 = __u64;
const __sum16 = __u16;
const __wsum = __u32;
const __poll_t = c_uint;
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
const SI_ASYNCNL: c_int = -60;
const SI_DETHREAD: c_int = -7;
const SI_TKILL: c_int = -6;
const SI_SIGIO: c_int = -5;
const SI_ASYNCIO: c_int = -4;
const SI_MESGQ: c_int = -3;
const SI_TIMER: c_int = -2;
const SI_QUEUE: c_int = -1;
const SI_USER: c_int = 0;
const SI_KERNEL: c_int = 128;
const enum_unnamed_12 = c_int;
const ILL_ILLOPC: c_int = 1;
const ILL_ILLOPN: c_int = 2;
const ILL_ILLADR: c_int = 3;
const ILL_ILLTRP: c_int = 4;
const ILL_PRVOPC: c_int = 5;
const ILL_PRVREG: c_int = 6;
const ILL_COPROC: c_int = 7;
const ILL_BADSTK: c_int = 8;
const ILL_BADIADDR: c_int = 9;
const enum_unnamed_13 = c_uint;
const FPE_INTDIV: c_int = 1;
const FPE_INTOVF: c_int = 2;
const FPE_FLTDIV: c_int = 3;
const FPE_FLTOVF: c_int = 4;
const FPE_FLTUND: c_int = 5;
const FPE_FLTRES: c_int = 6;
const FPE_FLTINV: c_int = 7;
const FPE_FLTSUB: c_int = 8;
const FPE_FLTUNK: c_int = 14;
const FPE_CONDTRAP: c_int = 15;
const enum_unnamed_14 = c_uint;
const SEGV_MAPERR: c_int = 1;
const SEGV_ACCERR: c_int = 2;
const SEGV_BNDERR: c_int = 3;
const SEGV_PKUERR: c_int = 4;
const SEGV_ACCADI: c_int = 5;
const SEGV_ADIDERR: c_int = 6;
const SEGV_ADIPERR: c_int = 7;
const SEGV_MTEAERR: c_int = 8;
const SEGV_MTESERR: c_int = 9;
const SEGV_CPERR: c_int = 10;
const enum_unnamed_15 = c_uint;
const BUS_ADRALN: c_int = 1;
const BUS_ADRERR: c_int = 2;
const BUS_OBJERR: c_int = 3;
const BUS_MCEERR_AR: c_int = 4;
const BUS_MCEERR_AO: c_int = 5;
const enum_unnamed_16 = c_uint;
const TRAP_BRKPT: c_int = 1;
const TRAP_TRACE: c_int = 2;
const TRAP_BRANCH: c_int = 3;
const TRAP_HWBKPT: c_int = 4;
const TRAP_UNK: c_int = 5;
const enum_unnamed_17 = c_uint;
const CLD_EXITED: c_int = 1;
const CLD_KILLED: c_int = 2;
const CLD_DUMPED: c_int = 3;
const CLD_TRAPPED: c_int = 4;
const CLD_STOPPED: c_int = 5;
const CLD_CONTINUED: c_int = 6;
const enum_unnamed_18 = c_uint;
const POLL_IN: c_int = 1;
const POLL_OUT: c_int = 2;
const POLL_MSG: c_int = 3;
const POLL_ERR: c_int = 4;
const POLL_PRI: c_int = 5;
const POLL_HUP: c_int = 6;
const enum_unnamed_19 = c_uint;
const sigval_t = __sigval_t;
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
const sigevent_t = struct_sigevent;
const SIGEV_SIGNAL: c_int = 0;
const SIGEV_NONE: c_int = 1;
const SIGEV_THREAD: c_int = 2;
const SIGEV_THREAD_ID: c_int = 4;
const enum_unnamed_22 = c_uint;
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
const sighandler_t = __sighandler_t;
const sig_t = __sighandler_t;
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
const struct__fpx_sw_bytes = extern struct {
    magic1: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    extended_size: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    xstate_bv: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    xstate_size: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __glibc_reserved1: [7]__uint32_t = @import("std").mem.zeroes([7]__uint32_t),
};
const struct__fpreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
};
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
const struct__xsave_hdr = extern struct {
    xstate_bv: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __glibc_reserved1: [2]__uint64_t = @import("std").mem.zeroes([2]__uint64_t),
    __glibc_reserved2: [5]__uint64_t = @import("std").mem.zeroes([5]__uint64_t),
};
const struct__ymmh_state = extern struct {
    ymmh_space: [64]__uint32_t = @import("std").mem.zeroes([64]__uint32_t),
};
const struct__xstate = extern struct {
    fpstate: struct__fpstate = @import("std").mem.zeroes(struct__fpstate),
    xstate_hdr: struct__xsave_hdr = @import("std").mem.zeroes(struct__xsave_hdr),
    ymmh: struct__ymmh_state = @import("std").mem.zeroes(struct__ymmh_state),
};
extern fn sigreturn(__scp: [*c]struct_sigcontext) c_int;
const stack_t = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
    ss_size: usize = @import("std").mem.zeroes(usize),
};
const greg_t = c_longlong;
const gregset_t = [23]greg_t;
const REG_R8: c_int = 0;
const REG_R9: c_int = 1;
const REG_R10: c_int = 2;
const REG_R11: c_int = 3;
const REG_R12: c_int = 4;
const REG_R13: c_int = 5;
const REG_R14: c_int = 6;
const REG_R15: c_int = 7;
const REG_RDI: c_int = 8;
const REG_RSI: c_int = 9;
const REG_RBP: c_int = 10;
const REG_RBX: c_int = 11;
const REG_RDX: c_int = 12;
const REG_RAX: c_int = 13;
const REG_RCX: c_int = 14;
const REG_RSP: c_int = 15;
const REG_RIP: c_int = 16;
const REG_EFL: c_int = 17;
const REG_CSGSFS: c_int = 18;
const REG_ERR: c_int = 19;
const REG_TRAPNO: c_int = 20;
const REG_OLDMASK: c_int = 21;
const REG_CR2: c_int = 22;
const enum_unnamed_25 = c_uint;
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
const ucontext_t = struct_ucontext_t;
extern fn siginterrupt(__sig: c_int, __interrupt: c_int) c_int;
const socklen_t = __socklen_t;
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
const _PC_LINK_MAX: c_int = 0;
const _PC_MAX_CANON: c_int = 1;
const _PC_MAX_INPUT: c_int = 2;
const _PC_NAME_MAX: c_int = 3;
const _PC_PATH_MAX: c_int = 4;
const _PC_PIPE_BUF: c_int = 5;
const _PC_CHOWN_RESTRICTED: c_int = 6;
const _PC_NO_TRUNC: c_int = 7;
const _PC_VDISABLE: c_int = 8;
const _PC_SYNC_IO: c_int = 9;
const _PC_ASYNC_IO: c_int = 10;
const _PC_PRIO_IO: c_int = 11;
const _PC_SOCK_MAXBUF: c_int = 12;
const _PC_FILESIZEBITS: c_int = 13;
const _PC_REC_INCR_XFER_SIZE: c_int = 14;
const _PC_REC_MAX_XFER_SIZE: c_int = 15;
const _PC_REC_MIN_XFER_SIZE: c_int = 16;
const _PC_REC_XFER_ALIGN: c_int = 17;
const _PC_ALLOC_SIZE_MIN: c_int = 18;
const _PC_SYMLINK_MAX: c_int = 19;
const _PC_2_SYMLINKS: c_int = 20;
const enum_unnamed_26 = c_uint;
const _SC_ARG_MAX: c_int = 0;
const _SC_CHILD_MAX: c_int = 1;
const _SC_CLK_TCK: c_int = 2;
const _SC_NGROUPS_MAX: c_int = 3;
const _SC_OPEN_MAX: c_int = 4;
const _SC_STREAM_MAX: c_int = 5;
const _SC_TZNAME_MAX: c_int = 6;
const _SC_JOB_CONTROL: c_int = 7;
const _SC_SAVED_IDS: c_int = 8;
const _SC_REALTIME_SIGNALS: c_int = 9;
const _SC_PRIORITY_SCHEDULING: c_int = 10;
const _SC_TIMERS: c_int = 11;
const _SC_ASYNCHRONOUS_IO: c_int = 12;
const _SC_PRIORITIZED_IO: c_int = 13;
const _SC_SYNCHRONIZED_IO: c_int = 14;
const _SC_FSYNC: c_int = 15;
const _SC_MAPPED_FILES: c_int = 16;
const _SC_MEMLOCK: c_int = 17;
const _SC_MEMLOCK_RANGE: c_int = 18;
const _SC_MEMORY_PROTECTION: c_int = 19;
const _SC_MESSAGE_PASSING: c_int = 20;
const _SC_SEMAPHORES: c_int = 21;
const _SC_SHARED_MEMORY_OBJECTS: c_int = 22;
const _SC_AIO_LISTIO_MAX: c_int = 23;
const _SC_AIO_MAX: c_int = 24;
const _SC_AIO_PRIO_DELTA_MAX: c_int = 25;
const _SC_DELAYTIMER_MAX: c_int = 26;
const _SC_MQ_OPEN_MAX: c_int = 27;
const _SC_MQ_PRIO_MAX: c_int = 28;
const _SC_VERSION: c_int = 29;
const _SC_PAGESIZE: c_int = 30;
const _SC_RTSIG_MAX: c_int = 31;
const _SC_SEM_NSEMS_MAX: c_int = 32;
const _SC_SEM_VALUE_MAX: c_int = 33;
const _SC_SIGQUEUE_MAX: c_int = 34;
const _SC_TIMER_MAX: c_int = 35;
const _SC_BC_BASE_MAX: c_int = 36;
const _SC_BC_DIM_MAX: c_int = 37;
const _SC_BC_SCALE_MAX: c_int = 38;
const _SC_BC_STRING_MAX: c_int = 39;
const _SC_COLL_WEIGHTS_MAX: c_int = 40;
const _SC_EQUIV_CLASS_MAX: c_int = 41;
const _SC_EXPR_NEST_MAX: c_int = 42;
const _SC_LINE_MAX: c_int = 43;
const _SC_RE_DUP_MAX: c_int = 44;
const _SC_CHARCLASS_NAME_MAX: c_int = 45;
const _SC_2_VERSION: c_int = 46;
const _SC_2_C_BIND: c_int = 47;
const _SC_2_C_DEV: c_int = 48;
const _SC_2_FORT_DEV: c_int = 49;
const _SC_2_FORT_RUN: c_int = 50;
const _SC_2_SW_DEV: c_int = 51;
const _SC_2_LOCALEDEF: c_int = 52;
const _SC_PII: c_int = 53;
const _SC_PII_XTI: c_int = 54;
const _SC_PII_SOCKET: c_int = 55;
const _SC_PII_INTERNET: c_int = 56;
const _SC_PII_OSI: c_int = 57;
const _SC_POLL: c_int = 58;
const _SC_SELECT: c_int = 59;
const _SC_UIO_MAXIOV: c_int = 60;
const _SC_IOV_MAX: c_int = 60;
const _SC_PII_INTERNET_STREAM: c_int = 61;
const _SC_PII_INTERNET_DGRAM: c_int = 62;
const _SC_PII_OSI_COTS: c_int = 63;
const _SC_PII_OSI_CLTS: c_int = 64;
const _SC_PII_OSI_M: c_int = 65;
const _SC_T_IOV_MAX: c_int = 66;
const _SC_THREADS: c_int = 67;
const _SC_THREAD_SAFE_FUNCTIONS: c_int = 68;
const _SC_GETGR_R_SIZE_MAX: c_int = 69;
const _SC_GETPW_R_SIZE_MAX: c_int = 70;
const _SC_LOGIN_NAME_MAX: c_int = 71;
const _SC_TTY_NAME_MAX: c_int = 72;
const _SC_THREAD_DESTRUCTOR_ITERATIONS: c_int = 73;
const _SC_THREAD_KEYS_MAX: c_int = 74;
const _SC_THREAD_STACK_MIN: c_int = 75;
const _SC_THREAD_THREADS_MAX: c_int = 76;
const _SC_THREAD_ATTR_STACKADDR: c_int = 77;
const _SC_THREAD_ATTR_STACKSIZE: c_int = 78;
const _SC_THREAD_PRIORITY_SCHEDULING: c_int = 79;
const _SC_THREAD_PRIO_INHERIT: c_int = 80;
const _SC_THREAD_PRIO_PROTECT: c_int = 81;
const _SC_THREAD_PROCESS_SHARED: c_int = 82;
const _SC_NPROCESSORS_CONF: c_int = 83;
const _SC_NPROCESSORS_ONLN: c_int = 84;
const _SC_PHYS_PAGES: c_int = 85;
const _SC_AVPHYS_PAGES: c_int = 86;
const _SC_ATEXIT_MAX: c_int = 87;
const _SC_PASS_MAX: c_int = 88;
const _SC_XOPEN_VERSION: c_int = 89;
const _SC_XOPEN_XCU_VERSION: c_int = 90;
const _SC_XOPEN_UNIX: c_int = 91;
const _SC_XOPEN_CRYPT: c_int = 92;
const _SC_XOPEN_ENH_I18N: c_int = 93;
const _SC_XOPEN_SHM: c_int = 94;
const _SC_2_CHAR_TERM: c_int = 95;
const _SC_2_C_VERSION: c_int = 96;
const _SC_2_UPE: c_int = 97;
const _SC_XOPEN_XPG2: c_int = 98;
const _SC_XOPEN_XPG3: c_int = 99;
const _SC_XOPEN_XPG4: c_int = 100;
const _SC_CHAR_BIT: c_int = 101;
const _SC_CHAR_MAX: c_int = 102;
const _SC_CHAR_MIN: c_int = 103;
const _SC_INT_MAX: c_int = 104;
const _SC_INT_MIN: c_int = 105;
const _SC_LONG_BIT: c_int = 106;
const _SC_WORD_BIT: c_int = 107;
const _SC_MB_LEN_MAX: c_int = 108;
const _SC_NZERO: c_int = 109;
const _SC_SSIZE_MAX: c_int = 110;
const _SC_SCHAR_MAX: c_int = 111;
const _SC_SCHAR_MIN: c_int = 112;
const _SC_SHRT_MAX: c_int = 113;
const _SC_SHRT_MIN: c_int = 114;
const _SC_UCHAR_MAX: c_int = 115;
const _SC_UINT_MAX: c_int = 116;
const _SC_ULONG_MAX: c_int = 117;
const _SC_USHRT_MAX: c_int = 118;
const _SC_NL_ARGMAX: c_int = 119;
const _SC_NL_LANGMAX: c_int = 120;
const _SC_NL_MSGMAX: c_int = 121;
const _SC_NL_NMAX: c_int = 122;
const _SC_NL_SETMAX: c_int = 123;
const _SC_NL_TEXTMAX: c_int = 124;
const _SC_XBS5_ILP32_OFF32: c_int = 125;
const _SC_XBS5_ILP32_OFFBIG: c_int = 126;
const _SC_XBS5_LP64_OFF64: c_int = 127;
const _SC_XBS5_LPBIG_OFFBIG: c_int = 128;
const _SC_XOPEN_LEGACY: c_int = 129;
const _SC_XOPEN_REALTIME: c_int = 130;
const _SC_XOPEN_REALTIME_THREADS: c_int = 131;
const _SC_ADVISORY_INFO: c_int = 132;
const _SC_BARRIERS: c_int = 133;
const _SC_BASE: c_int = 134;
const _SC_C_LANG_SUPPORT: c_int = 135;
const _SC_C_LANG_SUPPORT_R: c_int = 136;
const _SC_CLOCK_SELECTION: c_int = 137;
const _SC_CPUTIME: c_int = 138;
const _SC_THREAD_CPUTIME: c_int = 139;
const _SC_DEVICE_IO: c_int = 140;
const _SC_DEVICE_SPECIFIC: c_int = 141;
const _SC_DEVICE_SPECIFIC_R: c_int = 142;
const _SC_FD_MGMT: c_int = 143;
const _SC_FIFO: c_int = 144;
const _SC_PIPE: c_int = 145;
const _SC_FILE_ATTRIBUTES: c_int = 146;
const _SC_FILE_LOCKING: c_int = 147;
const _SC_FILE_SYSTEM: c_int = 148;
const _SC_MONOTONIC_CLOCK: c_int = 149;
const _SC_MULTI_PROCESS: c_int = 150;
const _SC_SINGLE_PROCESS: c_int = 151;
const _SC_NETWORKING: c_int = 152;
const _SC_READER_WRITER_LOCKS: c_int = 153;
const _SC_SPIN_LOCKS: c_int = 154;
const _SC_REGEXP: c_int = 155;
const _SC_REGEX_VERSION: c_int = 156;
const _SC_SHELL: c_int = 157;
const _SC_SIGNALS: c_int = 158;
const _SC_SPAWN: c_int = 159;
const _SC_SPORADIC_SERVER: c_int = 160;
const _SC_THREAD_SPORADIC_SERVER: c_int = 161;
const _SC_SYSTEM_DATABASE: c_int = 162;
const _SC_SYSTEM_DATABASE_R: c_int = 163;
const _SC_TIMEOUTS: c_int = 164;
const _SC_TYPED_MEMORY_OBJECTS: c_int = 165;
const _SC_USER_GROUPS: c_int = 166;
const _SC_USER_GROUPS_R: c_int = 167;
const _SC_2_PBS: c_int = 168;
const _SC_2_PBS_ACCOUNTING: c_int = 169;
const _SC_2_PBS_LOCATE: c_int = 170;
const _SC_2_PBS_MESSAGE: c_int = 171;
const _SC_2_PBS_TRACK: c_int = 172;
const _SC_SYMLOOP_MAX: c_int = 173;
const _SC_STREAMS: c_int = 174;
const _SC_2_PBS_CHECKPOINT: c_int = 175;
const _SC_V6_ILP32_OFF32: c_int = 176;
const _SC_V6_ILP32_OFFBIG: c_int = 177;
const _SC_V6_LP64_OFF64: c_int = 178;
const _SC_V6_LPBIG_OFFBIG: c_int = 179;
const _SC_HOST_NAME_MAX: c_int = 180;
const _SC_TRACE: c_int = 181;
const _SC_TRACE_EVENT_FILTER: c_int = 182;
const _SC_TRACE_INHERIT: c_int = 183;
const _SC_TRACE_LOG: c_int = 184;
const _SC_LEVEL1_ICACHE_SIZE: c_int = 185;
const _SC_LEVEL1_ICACHE_ASSOC: c_int = 186;
const _SC_LEVEL1_ICACHE_LINESIZE: c_int = 187;
const _SC_LEVEL1_DCACHE_SIZE: c_int = 188;
const _SC_LEVEL1_DCACHE_ASSOC: c_int = 189;
const _SC_LEVEL1_DCACHE_LINESIZE: c_int = 190;
const _SC_LEVEL2_CACHE_SIZE: c_int = 191;
const _SC_LEVEL2_CACHE_ASSOC: c_int = 192;
const _SC_LEVEL2_CACHE_LINESIZE: c_int = 193;
const _SC_LEVEL3_CACHE_SIZE: c_int = 194;
const _SC_LEVEL3_CACHE_ASSOC: c_int = 195;
const _SC_LEVEL3_CACHE_LINESIZE: c_int = 196;
const _SC_LEVEL4_CACHE_SIZE: c_int = 197;
const _SC_LEVEL4_CACHE_ASSOC: c_int = 198;
const _SC_LEVEL4_CACHE_LINESIZE: c_int = 199;
const _SC_IPV6: c_int = 235;
const _SC_RAW_SOCKETS: c_int = 236;
const _SC_V7_ILP32_OFF32: c_int = 237;
const _SC_V7_ILP32_OFFBIG: c_int = 238;
const _SC_V7_LP64_OFF64: c_int = 239;
const _SC_V7_LPBIG_OFFBIG: c_int = 240;
const _SC_SS_REPL_MAX: c_int = 241;
const _SC_TRACE_EVENT_NAME_MAX: c_int = 242;
const _SC_TRACE_NAME_MAX: c_int = 243;
const _SC_TRACE_SYS_MAX: c_int = 244;
const _SC_TRACE_USER_EVENT_MAX: c_int = 245;
const _SC_XOPEN_STREAMS: c_int = 246;
const _SC_THREAD_ROBUST_PRIO_INHERIT: c_int = 247;
const _SC_THREAD_ROBUST_PRIO_PROTECT: c_int = 248;
const _SC_MINSIGSTKSZ: c_int = 249;
const _SC_SIGSTKSZ: c_int = 250;
const enum_unnamed_27 = c_uint;
const _CS_PATH: c_int = 0;
const _CS_V6_WIDTH_RESTRICTED_ENVS: c_int = 1;
const _CS_GNU_LIBC_VERSION: c_int = 2;
const _CS_GNU_LIBPTHREAD_VERSION: c_int = 3;
const _CS_V5_WIDTH_RESTRICTED_ENVS: c_int = 4;
const _CS_V7_WIDTH_RESTRICTED_ENVS: c_int = 5;
const _CS_LFS_CFLAGS: c_int = 1000;
const _CS_LFS_LDFLAGS: c_int = 1001;
const _CS_LFS_LIBS: c_int = 1002;
const _CS_LFS_LINTFLAGS: c_int = 1003;
const _CS_LFS64_CFLAGS: c_int = 1004;
const _CS_LFS64_LDFLAGS: c_int = 1005;
const _CS_LFS64_LIBS: c_int = 1006;
const _CS_LFS64_LINTFLAGS: c_int = 1007;
const _CS_XBS5_ILP32_OFF32_CFLAGS: c_int = 1100;
const _CS_XBS5_ILP32_OFF32_LDFLAGS: c_int = 1101;
const _CS_XBS5_ILP32_OFF32_LIBS: c_int = 1102;
const _CS_XBS5_ILP32_OFF32_LINTFLAGS: c_int = 1103;
const _CS_XBS5_ILP32_OFFBIG_CFLAGS: c_int = 1104;
const _CS_XBS5_ILP32_OFFBIG_LDFLAGS: c_int = 1105;
const _CS_XBS5_ILP32_OFFBIG_LIBS: c_int = 1106;
const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS: c_int = 1107;
const _CS_XBS5_LP64_OFF64_CFLAGS: c_int = 1108;
const _CS_XBS5_LP64_OFF64_LDFLAGS: c_int = 1109;
const _CS_XBS5_LP64_OFF64_LIBS: c_int = 1110;
const _CS_XBS5_LP64_OFF64_LINTFLAGS: c_int = 1111;
const _CS_XBS5_LPBIG_OFFBIG_CFLAGS: c_int = 1112;
const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS: c_int = 1113;
const _CS_XBS5_LPBIG_OFFBIG_LIBS: c_int = 1114;
const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS: c_int = 1115;
const _CS_POSIX_V6_ILP32_OFF32_CFLAGS: c_int = 1116;
const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS: c_int = 1117;
const _CS_POSIX_V6_ILP32_OFF32_LIBS: c_int = 1118;
const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS: c_int = 1119;
const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS: c_int = 1120;
const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS: c_int = 1121;
const _CS_POSIX_V6_ILP32_OFFBIG_LIBS: c_int = 1122;
const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS: c_int = 1123;
const _CS_POSIX_V6_LP64_OFF64_CFLAGS: c_int = 1124;
const _CS_POSIX_V6_LP64_OFF64_LDFLAGS: c_int = 1125;
const _CS_POSIX_V6_LP64_OFF64_LIBS: c_int = 1126;
const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS: c_int = 1127;
const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS: c_int = 1128;
const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS: c_int = 1129;
const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS: c_int = 1130;
const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS: c_int = 1131;
const _CS_POSIX_V7_ILP32_OFF32_CFLAGS: c_int = 1132;
const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS: c_int = 1133;
const _CS_POSIX_V7_ILP32_OFF32_LIBS: c_int = 1134;
const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS: c_int = 1135;
const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS: c_int = 1136;
const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS: c_int = 1137;
const _CS_POSIX_V7_ILP32_OFFBIG_LIBS: c_int = 1138;
const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS: c_int = 1139;
const _CS_POSIX_V7_LP64_OFF64_CFLAGS: c_int = 1140;
const _CS_POSIX_V7_LP64_OFF64_LDFLAGS: c_int = 1141;
const _CS_POSIX_V7_LP64_OFF64_LIBS: c_int = 1142;
const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS: c_int = 1143;
const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS: c_int = 1144;
const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS: c_int = 1145;
const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS: c_int = 1146;
const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS: c_int = 1147;
const _CS_V6_ENV: c_int = 1148;
const _CS_V7_ENV: c_int = 1149;
const enum_unnamed_28 = c_uint;
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
const SS_ONSTACK: c_int = 1;
const SS_DISABLE: c_int = 2;
const enum_unnamed_29 = c_uint;
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
const __builtin_va_list = [1]struct___va_list_tag_30;
const __gnuc_va_list = __builtin_va_list;
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
const __FILE = struct__IO_FILE;
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
const va_list = __gnuc_va_list;
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
const _ISupper: c_int = 256;
const _ISlower: c_int = 512;
const _ISalpha: c_int = 1024;
const _ISdigit: c_int = 2048;
const _ISxdigit: c_int = 4096;
const _ISspace: c_int = 8192;
const _ISprint: c_int = 16384;
const _ISgraph: c_int = 32768;
const _ISblank: c_int = 1;
const _IScntrl: c_int = 2;
const _ISpunct: c_int = 4;
const _ISalnum: c_int = 8;
const enum_unnamed_32 = c_uint;
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
const ITIMER_REAL: c_int = 0;
const ITIMER_VIRTUAL: c_int = 1;
const ITIMER_PROF: c_int = 2;
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
const error_t = c_int;
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
const comparison_fn_t = __compar_fn_t;
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
const int_least8_t = __int_least8_t;
const int_least16_t = __int_least16_t;
const int_least32_t = __int_least32_t;
const int_least64_t = __int_least64_t;
const uint_least8_t = __uint_least8_t;
const uint_least16_t = __uint_least16_t;
const uint_least32_t = __uint_least32_t;
const uint_least64_t = __uint_least64_t;
const int_fast8_t = i8;
const int_fast16_t = c_long;
const int_fast32_t = c_long;
const int_fast64_t = c_long;
const uint_fast8_t = u8;
const uint_fast16_t = c_ulong;
const uint_fast32_t = c_ulong;
const uint_fast64_t = c_ulong;
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
const struct_dirent64 = extern struct {
    d_ino: __ino64_t = @import("std").mem.zeroes(__ino64_t),
    d_off: __off64_t = @import("std").mem.zeroes(__off64_t),
    d_reclen: c_ushort = @import("std").mem.zeroes(c_ushort),
    d_type: u8 = @import("std").mem.zeroes(u8),
    d_name: [256]u8 = @import("std").mem.zeroes([256]u8),
};
const glob64_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) [*c]struct_dirent64 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) [*c]struct_dirent64),
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
const struct_commands = opaque {};
const struct_variable_set_list = opaque {};
const us_success: c_int = 0;
const us_none: c_int = 1;
const us_question: c_int = 2;
const us_failed: c_int = 3;
const enum_update_status_34 = c_uint;
const cs_not_started: c_int = 0;
const cs_deps_running: c_int = 1;
const cs_running: c_int = 2;
const cs_finished: c_int = 3;
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
extern fn concat(c_uint, ...) [*c]const u8;
extern fn message(prefix: c_int, length: usize, fmt: [*c]const u8, ...) void;
extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;
extern fn out_of_memory() noreturn;
const enum_variable_origin = opaque {};
const struct_variable = opaque {};
extern fn reset_makeflags(origin: enum_variable_origin) void;
extern fn define_makeflags(makefile: c_int) ?*struct_variable;
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
    if (ar_name(name) != 0) return @intFromBool(ar_member_date(name) != @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))));
    dirend = strrchr(name, @as(c_int, '/'));
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return dir_file_exists_p(".", name);
    slash = dirend;
    if (dirend == name) {
        dirname = "/";
    } else {
        var p: [*c]u8 = undefined;
        _ = &p;
        p = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(name))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
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
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
            cp = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(filename)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8)))));
            (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(filename))), @sizeOf(u8));
                if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
            dirname = cp;
        }
        dir = find_directory(dirname).*.contents;
        filename = slash + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    }
    if ((dir == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (dir.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return 0;
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
    if (dirend == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
            cp = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(p)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8)))));
            (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(dirend) -% @intFromPtr(p))), @sizeOf(u8));
                if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
            dirname = cp;
        }
        dir = find_directory(dirname);
        filename = blk: {
            const tmp = slash + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            p = tmp;
            break :blk tmp;
        };
    }
    if (dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        dir.*.contents = @as([*c]struct_directory_contents, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_directory_contents)))));
    }
    if (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
        const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
        impossible = tmp;
        break :blk tmp;
    };
    dir_slot = @as([*c][*c]struct_directory, @ptrCast(@alignCast(directories.ht_vec)));
    dir_end = dir_slot + directories.ht_size;
    while (dir_slot < dir_end) : (dir_slot += 1) {
        var dir: [*c]struct_directory = dir_slot.*;
        _ = &dir;
        if (!((dir == null) or (@as(?*anyopaque, @ptrCast(dir)) == hash_deleted_item))) {
            if (dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                _ = printf(gettext("# %s: could not be stat'd.\n"), dir.*.name);
            } else if (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
                if (f == @as(c_uint, @bitCast(@as(c_int, 0)))) {
                    _ = fputs(gettext("No"), stdout);
                } else {
                    _ = printf("%u", f);
                }
                _ = fputs(gettext(" files, "), stdout);
                if (im == @as(c_uint, @bitCast(@as(c_int, 0)))) {
                    _ = fputs(gettext("no"), stdout);
                } else {
                    _ = printf("%u", im);
                }
                _ = fputs(gettext(" impossibilities"), stdout);
                if (dir.*.contents.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) {
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
    if (files == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        _ = fputs(gettext("No"), stdout);
    } else {
        _ = printf("%u", files);
    }
    _ = fputs(gettext(" files, "), stdout);
    if (impossible == @as(c_uint, @bitCast(@as(c_int, 0)))) {
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
const load_func_t = ?*const fn ([*c]const floc) callconv(.C) c_int;
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
extern fn expand_extra_prereqs(extra: ?*const struct_variable) [*c]struct_dep;
extern fn remove_intermediates(sig: c_int) void;
extern fn snap_deps() void;
extern fn rename_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn rehash_file(file: [*c]struct_file, name: [*c]const u8) void;
extern fn set_command_state(file: [*c]struct_file, state: enum_cmd_state_35) void;
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
extern fn update_goal_chain(goals: [*c]struct_goaldep) enum_update_status_34;
extern var db_level: c_int;
const DT_UNKNOWN: c_int = 0;
const DT_FIFO: c_int = 1;
const DT_CHR: c_int = 2;
const DT_DIR: c_int = 4;
const DT_BLK: c_int = 6;
const DT_REG: c_int = 8;
const DT_LNK: c_int = 10;
const DT_SOCK: c_int = 12;
const DT_WHT: c_int = 14;
const enum_unnamed_36 = c_uint;
extern fn closedir(__dirp: ?*DIR) c_int;
extern fn opendir(__name: [*c]const u8) ?*DIR;
extern fn fdopendir(__fd: c_int) ?*DIR;
extern fn readdir(__dirp: ?*DIR) [*c]struct_dirent;
extern fn readdir64(__dirp: ?*DIR) [*c]struct_dirent64;
extern fn readdir_r(noalias __dirp: ?*DIR, noalias __entry: [*c]struct_dirent, noalias __result: [*c][*c]struct_dirent) c_int;
extern fn readdir64_r(noalias __dirp: ?*DIR, noalias __entry: [*c]struct_dirent64, noalias __result: [*c][*c]struct_dirent64) c_int;
extern fn rewinddir(__dirp: ?*DIR) void;
extern fn seekdir(__dirp: ?*DIR, __pos: c_long) void;
extern fn telldir(__dirp: ?*DIR) c_long;
extern fn dirfd(__dirp: ?*DIR) c_int;
extern fn scandir(noalias __dir: [*c]const u8, noalias __namelist: [*c][*c][*c]struct_dirent, __selector: ?*const fn ([*c]const struct_dirent) callconv(.C) c_int, __cmp: ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.C) c_int) c_int;
extern fn scandir64(noalias __dir: [*c]const u8, noalias __namelist: [*c][*c][*c]struct_dirent64, __selector: ?*const fn ([*c]const struct_dirent64) callconv(.C) c_int, __cmp: ?*const fn ([*c][*c]const struct_dirent64, [*c][*c]const struct_dirent64) callconv(.C) c_int) c_int;
extern fn scandirat(__dfd: c_int, noalias __dir: [*c]const u8, noalias __namelist: [*c][*c][*c]struct_dirent, __selector: ?*const fn ([*c]const struct_dirent) callconv(.C) c_int, __cmp: ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.C) c_int) c_int;
extern fn scandirat64(__dfd: c_int, noalias __dir: [*c]const u8, noalias __namelist: [*c][*c][*c]struct_dirent64, __selector: ?*const fn ([*c]const struct_dirent64) callconv(.C) c_int, __cmp: ?*const fn ([*c][*c]const struct_dirent64, [*c][*c]const struct_dirent64) callconv(.C) c_int) c_int;
extern fn alphasort(__e1: [*c][*c]const struct_dirent, __e2: [*c][*c]const struct_dirent) c_int;
extern fn alphasort64(__e1: [*c][*c]const struct_dirent64, __e2: [*c][*c]const struct_dirent64) c_int;
extern fn getdirentries(__fd: c_int, noalias __buf: [*c]u8, __nbytes: usize, noalias __basep: [*c]__off_t) __ssize_t;
extern fn getdirentries64(__fd: c_int, noalias __buf: [*c]u8, __nbytes: usize, noalias __basep: [*c]__off64_t) __ssize_t;
extern fn versionsort(__e1: [*c][*c]const struct_dirent, __e2: [*c][*c]const struct_dirent) c_int;
extern fn versionsort64(__e1: [*c][*c]const struct_dirent64, __e2: [*c][*c]const struct_dirent64) c_int;
extern fn getdents64(__fd: c_int, __buffer: ?*anyopaque, __length: usize) __ssize_t;
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
    if (dc.*.dirfiles.ht_vec != @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        hash_free(&dc.*.dirfiles, @as(c_int, 1));
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
    result = if (x.*.ino < y.*.ino) -@as(c_int, 1) else if (x.*.ino == y.*.ino) @as(c_int, 0) else @as(c_int, 1);
    if (result != 0) return result;
    return if (x.*.dev < y.*.dev) -@as(c_int, 1) else if (x.*.dev == y.*.dev) @as(c_int, 0) else @as(c_int, 1);
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
        return if (@as([*c]const struct_directory, @ptrCast(@alignCast(x))).*.name == @as([*c]const struct_directory, @ptrCast(@alignCast(y))).*.name) @as(c_int, 0) else strcmp(@as([*c]const struct_directory, @ptrCast(@alignCast(x))).*.name, @as([*c]const struct_directory, @ptrCast(@alignCast(y))).*.name);
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
        return if (x.*.name == y.*.name) @as(c_int, 0) else strcmp(x.*.name, y.*.name);
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
    if ((dc == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (dc.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return 0;
    if (filename != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
    if (dc.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) {
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
            if (!((d == null) and (__errno_location().* == @as(c_int, 4)))) break;
        }
        if (d == @as([*c]struct_dirent, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            if (__errno_location().* != 0) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(dir.*.name) +% strlen(strerror(__errno_location().*)), "readdir %s: %s", dir.*.name, strerror(__errno_location().*));
            }
            break;
        }
        if (!(d.*.d_ino != @as(__ino_t, @bitCast(@as(c_long, @as(c_int, 0)))))) continue;
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
        if ((filename != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and ((@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))) == @as([*c]u8, @ptrCast(@volatileCast(@constCast(filename))))) or ((@as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))).*))) == @as(c_int, @bitCast(@as(c_uint, filename.*)))) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))).*))) == @as(c_int, '\x00')) or !(strcmp(@as([*c]u8, @ptrCast(@alignCast(&d.*.d_name))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), filename + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) return 1;
    }
    if (d == @as([*c]struct_dirent, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
            if ((@as(c_int, 2) & db_level) != 0) {
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
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (r < @as(c_int, 0)) return dir;
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
            if (!((dc.*.dirstream == null) and (__errno_location().* == @as(c_int, 4)))) break;
        }
        if (dc.*.dirstream == @as(?*DIR, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) {
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
    if ((dir.*.contents == @as([*c]struct_directory_contents, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (dir.*.contents.*.dirfiles.ht_vec == @as([*c]?*anyopaque, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
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
            var len: usize = df.*.length +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            _ = &len;
            var sz: usize = (@sizeOf(struct_dirent) -% @sizeOf([256]u8)) +% len;
            _ = &sz;
            if (sz > bufsz.static) {
                bufsz.static *%= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                if (sz > bufsz.static) {
                    bufsz.static = sz;
                }
                buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), bufsz.static))));
            }
            d = @as([*c]struct_dirent, @ptrCast(@alignCast(buf.static)));
            _ = blk: {
                const tmp = @as(__ino_t, @bitCast(@as(c_long, @as(c_int, 1))));
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
