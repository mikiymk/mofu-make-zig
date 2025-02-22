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
extern fn concat(c_uint, ...) [*c]const u8;
extern fn message(prefix: c_int, length: usize, fmt: [*c]const u8, ...) void;
extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;
extern fn out_of_memory() noreturn;
const o_default: c_int = 0;
const o_env: c_int = 1;
const o_file: c_int = 2;
const o_env_override: c_int = 3;
const o_command: c_int = 4;
const o_override: c_int = 5;
const o_automatic: c_int = 6;
const o_invalid: c_int = 7;
const enum_variable_origin = c_int;
const f_bogus: c_int = 0;
const f_simple: c_int = 1;
const f_recursive: c_int = 2;
const f_expand: c_int = 3;
const f_append: c_int = 4;
const f_conditional: c_int = 5;
const f_shell: c_int = 6;
const f_append_value: c_int = 7;
const enum_variable_flavor = c_uint;
const v_default: c_int = 0;
const v_export: c_int = 1;
const v_noexport: c_int = 2;
const v_ifset: c_int = 3;
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
    decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), origin);
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
                    @as(c_uint, @bitCast(@as(c_int, 7))) => break,
                    @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))) => {
                        if ((@intFromBool(!(@as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* != 0)) == @intFromBool(cs.*.type == @as(c_uint, @bitCast(flag_off)))) and (((cs.*.default_value == @as(?*const anyopaque, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) or (cs.*.specified != 0)) or (@as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* != @as([*c]c_int, @ptrCast(@volatileCast(@constCast(cs.*.default_value)))).*))) while (true) {
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
                                flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                            } else {
                                flagslen +%= @as(usize, @bitCast(@as(c_long, ((@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)) + (@as(c_int, 3) * @as(c_int, 0)))));
                            }
                            if (!(cs.*.c <= @as(c_int, 127))) {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
                            }
                            if (!false) break;
                        };
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 5))) => {
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
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, ((@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)) + (@as(c_int, 3) * @as(c_int, 0)))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
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
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)))) +% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))) *% strlen(buf))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        }
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 6))) => {
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
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, ((@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)) + (@as(c_int, 3) * @as(c_int, 0)))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
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
                                    flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                                } else {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)))) +% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))) *% strlen(buf))));
                                }
                                if (!(cs.*.c <= @as(c_int, 127))) {
                                    flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
                                }
                                if (!false) break;
                            }
                        }
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 2))) => {
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
                                flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                            } else {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)))) +% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))) *% strlen(p))));
                            }
                            if (!(cs.*.c <= @as(c_int, 127))) {
                                flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
                            }
                            if (!false) break;
                        };
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 3))) => {
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
                                            flagslen +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 3))));
                                        } else {
                                            flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, (@as(c_int, 1) + @as(c_int, 1)) + @as(c_int, 1)))) +% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))) *% strlen(sl.*.list[i]))));
                                        }
                                        if (!(cs.*.c <= @as(c_int, 127))) {
                                            flagslen +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(cs.*.long_name)));
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
    flagslen +%= @as(usize, @bitCast((((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4)))) +% (@sizeOf([24]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) +% (@sizeOf([20]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))));
    flagstring = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, @bitCast(@as(c_long, @as(c_int, 1)))) +% flagslen) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
    _ = memset(@as(?*anyopaque, @ptrCast(flagstring)), @as(c_int, '\x00'), (@as(usize, @bitCast(@as(c_long, @as(c_int, 1)))) +% flagslen) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
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
        if ((flags.*.arg != null) and (@as(c_int, @bitCast(@as(c_uint, flags.*.arg[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
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
    if (p == (&flagstring[@as(c_uint, @intCast(@as(c_int, 1)))])) {
        flagstring[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
        p = flagstring;
    }
    _ = define_variable_in_set("MFLAGS", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), flagstring + @as(usize, @bitCast(@as(isize, @intCast(if ((@as(c_int, @bitCast(@as(c_uint, flagstring[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, flagstring[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, ' '))) @as(c_int, 2) else @as(c_int, 0))))), @as(c_uint, @bitCast(o_env)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    if (eval_strings != null) {
        (blk: {
            const ref_1 = &p;
            const tmp = ref_1.*;
            ref_1.* += 1;
            break :blk tmp;
        }).* = ' ';
        p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(@as([*c]const u8, @ptrCast(@alignCast(&evalref))))), @sizeOf([20]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
    }
    {
        var r: [*c]const u8 = if (posix_pedantic != 0) @as([*c]const u8, @ptrCast(@alignCast(&posixref))) else @as([*c]const u8, @ptrCast(@alignCast(&ref)));
        _ = &r;
        var l: usize = strlen(r);
        _ = &l;
        v = lookup_variable(r, l);
        if (((v != null) and (v.*.value != null)) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
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
    if (@as(c_int, @bitCast(@as(c_uint, flagstring[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) {
        flagstring += 1;
    }
    v = define_variable_in_set("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), flagstring, @as(c_uint, @bitCast(if (env_overrides != 0) o_env_override else o_file)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    v.*.special = 1;
    return v;
}
export fn should_print_dir() c_int {
    if (print_directory_flag >= @as(c_int, 0)) return print_directory_flag;
    return @intFromBool(!(silent_flag != 0) and ((makelevel > @as(c_uint, @bitCast(@as(c_int, 0)))) or (directories != @as([*c]struct_stringlist, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))));
}
export fn temp_stdin_unlink() void {
    if (stdin_offset >= @as(c_int, 0)) {
        var nm: [*c]const u8 = (blk: {
            const tmp = stdin_offset;
            if (tmp >= 0) break :blk makefiles.*.list + @as(usize, @intCast(tmp)) else break :blk makefiles.*.list - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*;
        _ = &nm;
        var r: c_int = 0;
        _ = &r;
        stdin_offset = -@as(c_int, 1);
        while (((blk: {
            const tmp = unlink(nm);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (((r < @as(c_int, 0)) and (__errno_location().* != @as(c_int, 2))) and !(handling_fatal_signal != 0)) {
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
        err = @intFromBool(status != @as(c_int, 0));
        while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
            reap_children(@as(c_int, 1), err);
        }
        remote_cleanup();
        remove_intermediates(@as(c_int, 0));
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
extern fn fatal_error_signal(sig: c_int) void;
extern fn execute_file_commands(file: [*c]struct_file) void;
extern fn print_commands(cmds: [*c]const struct_commands) void;
extern fn delete_child_targets(child: [*c]struct_child) void;
extern fn chop_commands(cmds: [*c]struct_commands) void;
extern fn set_file_variables(file: [*c]struct_file, stem: [*c]const u8) void;
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
const struct_pspec = extern struct {
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dep: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    commands: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
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
extern fn install_pattern_rule(p: [*c]struct_pspec, terminal: c_int) void;
extern fn create_pattern_rule(targets: [*c][*c]const u8, target_percents: [*c][*c]const u8, num: c_ushort, terminal: c_int, deps: [*c]struct_dep, commands: [*c]struct_commands, override: c_int) void;
extern fn get_rule_defn(rule: [*c]struct_rule) [*c]const u8;
extern fn print_rule_data_base() void;
extern var db_level: c_int;
const struct_option = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    has_arg: c_int = @import("std").mem.zeroes(c_int),
    flag: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    val: c_int = @import("std").mem.zeroes(c_int),
};
extern fn getopt_long(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
extern fn getopt_long_only(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
extern fn _getopt_internal(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int, long_only: c_int) c_int;
extern fn shuffle_set_mode(cmdarg: [*c]const u8) void;
extern fn shuffle_get_mode() [*c]const u8;
extern fn shuffle_deps_recursive(g: [*c]struct_dep) void;
const struct_flock = extern struct {
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
    l_start: __off_t = @import("std").mem.zeroes(__off_t),
    l_len: __off_t = @import("std").mem.zeroes(__off_t),
    l_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
};
const struct_flock64 = extern struct {
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
    l_start: __off64_t = @import("std").mem.zeroes(__off64_t),
    l_len: __off64_t = @import("std").mem.zeroes(__off64_t),
    l_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
};
const struct_iovec = extern struct {
    iov_base: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    iov_len: usize = @import("std").mem.zeroes(usize),
};
const F_OWNER_TID: c_int = 0;
const F_OWNER_PID: c_int = 1;
const F_OWNER_PGRP: c_int = 2;
const F_OWNER_GID: c_int = 2;
const enum___pid_type = c_uint;
const struct_f_owner_ex = extern struct {
    type: enum___pid_type = @import("std").mem.zeroes(enum___pid_type),
    pid: __pid_t = @import("std").mem.zeroes(__pid_t),
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
fn clean_jobserver(arg_status: c_int) callconv(.C) void {
    var status = arg_status;
    _ = &status;
    if ((jobserver_enabled() != 0) and (jobserver_tokens != 0)) {
        if (status != @as(c_int, 2)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))), "INTERNAL: Exiting with %u jobserver tokens (should be 0)!", jobserver_tokens);
        } else while ((blk: {
            const ref = &jobserver_tokens;
            ref.* -%= 1;
            break :blk ref.*;
        }) != 0) {
            jobserver_release(@as(c_int, 0));
        }
    }
    if (master_job_slots != 0) {
        var tokens: c_uint = @as(c_uint, @bitCast(@as(c_int, 1))) +% jobserver_acquire_all();
        _ = &tokens;
        if (tokens != master_job_slots) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))), "INTERNAL: Exiting with %u jobserver tokens available; should be %u!", tokens, master_job_slots);
        }
        reset_jobserver();
    }
}
fn print_data_base() callconv(.C) void {
    var when: time_t = time(@as([*c]time_t, @ptrFromInt(@as(c_int, 0))));
    _ = &when;
    print_version();
    _ = printf(gettext("\n# Make data base, printed on %s"), ctime(&when));
    print_variable_data_base();
    print_dir_data_base();
    print_rule_data_base();
    print_file_data_base();
    print_vpath_data_base();
    strcache_print_stats("#");
    when = time(@as([*c]time_t, @ptrFromInt(@as(c_int, 0))));
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
        if (c == -@as(c_int, 1)) break else if (c == @as(c_int, 1)) {
            handle_non_switch_argument(coptarg, origin);
        } else if (c == @as(c_int, '?')) {
            bad = 1;
        } else {
            cs = @as([*c]struct_command_switch, @ptrCast(@alignCast(&switches)));
            while (cs.*.c != @as(c_int, '\x00')) : (cs += 1) if (cs.*.c == c) {
                var doit: c_int = @intFromBool((origin == @as(c_uint, @bitCast(o_command))) or ((cs.*.env != 0) and ((cs.*.origin == @as([*c]enum_variable_origin, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (origin >= cs.*.origin.*))));
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
                        @as(c_uint, @bitCast(@as(c_int, 7))) => break,
                        @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))) => {
                            if (doit != 0) {
                                @as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* = @intFromBool(cs.*.type == @as(c_uint, @bitCast(flag)));
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 2))), @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 4))) => {
                            if (!(doit != 0)) break;
                            if (!(coptarg != null)) {
                                coptarg = @as([*c]const u8, @ptrCast(@alignCast(cs.*.noarg_value)));
                            } else if (@as(c_int, @bitCast(@as(c_uint, coptarg.*))) == @as(c_int, '\x00')) {
                                var opt: [2]u8 = "c"[0..1].* ++ [1]u8{0} ** 1;
                                _ = &opt;
                                var op: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(&opt)));
                                _ = &op;
                                if (cs.*.c <= @as(c_int, 127)) {
                                    opt[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(u8, @bitCast(@as(i8, @truncate(cs.*.c))));
                                } else {
                                    op = cs.*.long_name;
                                }
                                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(op), gettext("the '%s%s' option requires a non-empty string argument"), if (cs.*.c <= @as(c_int, 127)) "-" else "--", op);
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
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5)))) *% @sizeOf([*c]u8)))));
                                @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).* = sl;
                            } else if (sl.*.idx == (sl.*.max -% @as(c_uint, @bitCast(@as(c_int, 1))))) {
                                sl.*.max +%= @as(c_uint, @bitCast(@as(c_int, 5)));
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(sl.*.list)), @as(c_ulong, @bitCast(@as(c_ulong, sl.*.max))) *% @sizeOf([*c]u8)))));
                            }
                            if (cs.*.c != @as(c_int, 'f')) {
                                var k: c_uint = undefined;
                                _ = &k;
                                {
                                    k = 0;
                                    while (k < sl.*.idx) : (k +%= 1) if ((sl.*.list[k] == coptarg) or ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, @bitCast(@as(c_uint, coptarg.*)))) and ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, '\x00')) or !(strcmp(sl.*.list[k] + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), coptarg + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) break;
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
                                if (stdin_offset > @as(c_int, 0)) {
                                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), "INTERNAL: multiple --temp-stdin options provided!");
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
                        @as(c_uint, @bitCast(@as(c_int, 5))) => {
                            if ((coptarg == null) and (argc > optind)) {
                                var cp: [*c]const u8 = undefined;
                                _ = &cp;
                                {
                                    cp = (blk: {
                                        const tmp = optind;
                                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*;
                                    while ((@as(c_uint, @bitCast(@as(c_uint, cp[@as(c_uint, @intCast(@as(c_int, 0)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) : (cp += 1) {}
                                }
                                if (@as(c_int, @bitCast(@as(c_uint, cp[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
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
                                if ((err != null) or (i == @as(c_uint, @bitCast(@as(c_int, 0))))) {
                                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("the '-%c' option requires a positive integer argument"), cs.*.c);
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
                        @as(c_uint, @bitCast(@as(c_int, 6))) => {
                            if (((coptarg == null) and (optind < argc)) and (((@as(c_uint, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[@as(c_uint, @intCast(@as(c_int, 0)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) or (@as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.')))) {
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
    var varref: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, @bitCast(@as(c_long, @as(c_int, 2)))) +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))))));
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
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        value += 1;
    }
    len = strlen(value);
    if (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return;
    argv = @as([*c][*c]const u8, @ptrCast(@alignCast(malloc(((@as(usize, @bitCast(@as(c_long, @as(c_int, 1)))) +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) *% @sizeOf([*c]u8)))));
    argv[@as(c_uint, @intCast(@as(c_int, 0)))] = "";
    argc = 1;
    buf = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, @bitCast(@as(c_long, @as(c_int, 1)))) +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
    buf[@as(c_uint, @intCast(@as(c_int, 0)))] = '-';
    p = buf + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    (blk: {
        const tmp = argc;
        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = p;
    while (@as(c_int, @bitCast(@as(c_uint, value.*))) != @as(c_int, '\x00')) {
        if ((@as(c_int, @bitCast(@as(c_uint, value.*))) == @as(c_int, '\\')) and (@as(c_int, @bitCast(@as(c_uint, value[@as(c_uint, @intCast(@as(c_int, 1)))]))) != @as(c_int, '\x00'))) {
            value += 1;
        } else if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & @as(c_int, 2)) != @as(c_int, 0)) {
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
                if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(value.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) break;
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
    _ = @as(c_int, 0);
    if ((@as(c_int, @bitCast(@as(c_uint, argv[@as(c_uint, @intCast(@as(c_int, 1)))][@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '-')) and (strchr(argv[@as(c_uint, @intCast(@as(c_int, 1)))], @as(c_int, '=')) == null)) {
        argv[@as(c_uint, @intCast(@as(c_int, 1)))] = buf;
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
        } else if (((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & @as(c_int, 2)) != @as(c_int, 0)) or (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '\\'))) {
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
export var output_sync_option: [*c]u8 = null;
const default_keep_going_flag: c_int = 0;
var keep_going_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));
var print_directory_flag: c_int = -@as(c_int, 1);
const default_print_directory_flag: c_int = -@as(c_int, 1);
var print_directory_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));
var makefiles: [*c]struct_stringlist = null;
var master_job_slots: c_uint = 0;
var arg_job_slots: c_int = -@as(c_int, 1);
const default_job_slots: c_int = -@as(c_int, 1);
const inf_jobs: c_int = 0;
var jobserver_style: [*c]u8 = null;
var shuffle_mode: [*c]u8 = null;
var sync_mutex: [*c]u8 = null;
export var default_load_average: f64 = -1.0;
var directories: [*c]struct_stringlist = null;
var include_dirs: [*c]struct_stringlist = null;
var old_files: [*c]struct_stringlist = null;
var new_files: [*c]struct_stringlist = null;
var eval_strings: [*c]struct_stringlist = null;
var print_usage_flag: c_int = 0;
var always_make_set: c_int = 0;
var stdin_offset: c_int = -@as(c_int, 1);
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
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'B'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&always_make_set)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "always-make",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'd'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&debug_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'e'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&env_overrides)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "environment-overrides",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'E'),
        .type = @as(c_uint, @bitCast(strlist)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&eval_strings)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "eval",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'h'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_usage_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "help",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'i'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&ignore_errors_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "ignore-errors",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'k'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&keep_going_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_keep_going_flag)),
        .long_name = "keep-going",
        .origin = &keep_going_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'L'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&check_symlink_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "check-symlink-times",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'm'),
        .type = @as(c_uint, @bitCast(ignore)),
        .value_ptr = null,
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'n'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&just_print_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 1))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "just-print",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'p'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_data_base_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "print-data-base",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'q'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&question_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 1))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "question",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'r'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&no_builtin_rules_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "no-builtin-rules",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'R'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&no_builtin_variables_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "no-builtin-variables",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 's'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&silent_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_silent_flag)),
        .long_name = "silent",
        .origin = &silent_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'S'),
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&keep_going_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_keep_going_flag)),
        .long_name = "no-keep-going",
        .origin = &keep_going_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 't'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&touch_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 1))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "touch",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'v'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_version_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "version",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'w'),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_directory_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_print_directory_flag)),
        .long_name = "print-directory",
        .origin = &print_directory_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 'C'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&directories)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "directory",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'f'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&makefiles)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "file",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'I'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&include_dirs)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "include-dir",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'j'),
        .type = @as(c_uint, @bitCast(positive_int)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&arg_job_slots)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = @as(?*const anyopaque, @ptrCast(&inf_jobs)),
        .default_value = @as(?*const anyopaque, @ptrCast(&default_job_slots)),
        .long_name = "jobs",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'l'),
        .type = @as(c_uint, @bitCast(floating)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&max_load_average)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = @as(?*const anyopaque, @ptrCast(&default_load_average)),
        .default_value = @as(?*const anyopaque, @ptrCast(&default_load_average)),
        .long_name = "load-average",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'o'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&old_files)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "old-file",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'O'),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&output_sync_option)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = @as(?*const anyopaque, @ptrCast("target")),
        .default_value = null,
        .long_name = "output-sync",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 'W'),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&new_files)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "what-if",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 1),
        .type = @as(c_uint, @bitCast(strlist)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&db_flags)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = @as(?*const anyopaque, @ptrCast("basic")),
        .default_value = null,
        .long_name = "debug",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 2),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_auth)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-auth",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 3),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&trace_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "trace",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 4),
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&print_directory_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_print_directory_flag)),
        .long_name = "no-print-directory",
        .origin = &print_directory_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 5),
        .type = @as(c_uint, @bitCast(flag)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&warn_undefined_variables_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "warn-undefined-variables",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 7),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&sync_mutex)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "sync-mutex",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 8),
        .type = @as(c_uint, @bitCast(flag_off)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&silent_flag)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = @as(?*const anyopaque, @ptrCast(&default_silent_flag)),
        .long_name = "no-silent",
        .origin = &silent_origin,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 9),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_auth)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-fds",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 10),
        .type = @as(c_uint, @bitCast(filename)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&makefiles)),
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "temp-stdin",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 11),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&shuffle_mode)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 1))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = @as(?*const anyopaque, @ptrCast("random")),
        .default_value = null,
        .long_name = "shuffle",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 127) + @as(c_int, 12),
        .type = @as(c_uint, @bitCast(string)),
        .value_ptr = @as(?*anyopaque, @ptrCast(&jobserver_style)),
        .env = @as(c_uint, @bitCast(@as(c_int, 1))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = "jobserver-style",
        .origin = null,
    },
    struct_command_switch{
        .c = @as(c_int, 0),
        .type = @as(c_uint, @bitCast(@as(c_int, 0))),
        .value_ptr = null,
        .env = @as(c_uint, @bitCast(@as(c_int, 0))),
        .toenv = @as(c_uint, @bitCast(@as(c_int, 0))),
        .no_makefile = @as(c_uint, @bitCast(@as(c_int, 0))),
        .specified = @as(c_uint, @bitCast(@as(c_int, 0))),
        .noarg_value = null,
        .default_value = null,
        .long_name = null,
        .origin = null,
    },
};
var long_option_aliases: [9]struct_option = [9]struct_option{
    struct_option{
        .name = "quiet",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 's'),
    },
    struct_option{
        .name = "stop",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'S'),
    },
    struct_option{
        .name = "new-file",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-new",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-old",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'o'),
    },
    struct_option{
        .name = "max-load",
        .has_arg = @as(c_int, 2),
        .flag = null,
        .val = @as(c_int, 'l'),
    },
    struct_option{
        .name = "dry-run",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "recon",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "makefile",
        .has_arg = @as(c_int, 1),
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
export var directory_before_chdir: [*c]u8 = @import("std").mem.zeroes([*c]u8);
export var make_sync: struct_output = @import("std").mem.zeroes(struct_output);
export var fatal_signal_set: sigset_t = @import("std").mem.zeroes(sigset_t);
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
    if (sigaction(sig, &act, &oact) != @as(c_int, 0)) return @as(__sighandler_t, @ptrFromInt(-@as(c_int, 1)));
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
        while (i <= ((@as(c_int, 127) * @as(c_int, 2)) + @as(c_int, 1))) : (i += 1) {
            if (((@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISspace)))))))) != 0) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(c_uint, @intCast(i))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
                stopchar_map[@as(c_uint, @intCast(i))] |= @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 4)))));
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
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("write error: stdout"));
        }
        exit(@as(c_int, 1));
    }
}
fn expand_command_line_file(arg_name: [*c]const u8) callconv(.C) [*c]const u8 {
    var name = arg_name;
    _ = &name;
    var cp: [*c]const u8 = undefined;
    _ = &cp;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty string invalid as file name"));
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
        expanded = tilde_expand(name);
        if ((expanded != null) and (@as(c_int, @bitCast(@as(c_uint, expanded[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
            name = expanded;
        }
    }
    while ((@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.')) and (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/'))) {
        name += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
        while (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/')) {
            name += 1;
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        name = "./";
    }
    cp = strcache_add(name);
    free(@as(?*anyopaque, @ptrCast(expanded)));
    return cp;
}
fn debug_signal_handler(arg_sig: c_int) callconv(.C) void {
    var sig = arg_sig;
    _ = &sig;
    db_level = if (db_level != 0) @as(c_int, 0) else @as(c_int, 1);
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
                    switch (tolower(@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 0)))]))))) {
                        @as(c_int, 97) => {
                            db_level |= @as(c_int, 4095);
                            break;
                        },
                        @as(c_int, 98) => {
                            db_level |= @as(c_int, 1);
                            break;
                        },
                        @as(c_int, 105) => {
                            db_level |= @as(c_int, 1) | @as(c_int, 8);
                            break;
                        },
                        @as(c_int, 106) => {
                            db_level |= @as(c_int, 4);
                            break;
                        },
                        @as(c_int, 109) => {
                            db_level |= @as(c_int, 1) | @as(c_int, 256);
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
                            db_level |= @as(c_int, 1) | @as(c_int, 2);
                            break;
                        },
                        @as(c_int, 119) => {
                            db_level |= @as(c_int, 32);
                            break;
                        },
                        else => {
                            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(p), gettext("unknown debug level specification '%s'"), p);
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
        if ((output_sync_option == ("none")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "none".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "none" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 0;
        } else if ((output_sync_option == ("line")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "line".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "line" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 1;
        } else if ((output_sync_option == ("target")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "target".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "target" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 2;
        } else if ((output_sync_option == ("recurse")) or ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "recurse".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "recurse" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 3;
        } else {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(output_sync_option), gettext("unknown output-sync type '%s'"), output_sync_option);
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
    die(if (bad != 0) @as(c_int, 2) else @as(c_int, 0));
}
fn reset_jobserver() callconv(.C) void {
    jobserver_clear();
    free(@as(?*anyopaque, @ptrCast(jobserver_auth)));
    jobserver_auth = null;
}
pub fn main(arg_argc: c_int, arg_argv: [*c][*c]u8, arg_envp: [*c][*c]u8) c_int {
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    var envp = arg_envp;
    _ = &envp;
    var makefile_status: c_int = 0;
    _ = &makefile_status;
    var read_files: [*c]struct_goaldep = undefined;
    _ = &read_files;
    var current_directory: [4097]u8 = undefined;
    _ = &current_directory;
    var restarts: c_uint = 0;
    _ = &restarts;
    var syncing: c_uint = 0;
    _ = &syncing;
    var argv_slots: c_int = undefined;
    _ = &argv_slots;
    _ = initialize_variable_output();
    if ((check_io_state() & @as(c_uint, @bitCast(@as(c_int, 8)))) != @as(c_uint, @bitCast(@as(c_int, 0)))) {
        _ = atexit(&close_stdout);
    }
    output_init(&make_sync);
    initialize_stopchar_map();
    _ = setlocale(@as(c_int, 6), "");
    _ = bindtextdomain("make", "/usr/local/share/locale");
    _ = textdomain("make");
    _ = sigemptyset(&fatal_signal_set);
    if (bsd_signal(@as(c_int, 1), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 1), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 1));
    }
    if (bsd_signal(@as(c_int, 3), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 3), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 3));
    }
    if (bsd_signal(@as(c_int, 13), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 13), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 13));
    }
    if (bsd_signal(@as(c_int, 2), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 2), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 2));
    }
    if (bsd_signal(@as(c_int, 15), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 15), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 15));
    }
    if (bsd_signal(@as(c_int, 24), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 24), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 24));
    }
    if (bsd_signal(@as(c_int, 25), &fatal_error_signal) == @as(__sighandler_t, @ptrFromInt(@as(c_int, 1)))) {
        _ = bsd_signal(@as(c_int, 25), @as(__sighandler_t, @ptrFromInt(@as(c_int, 1))));
    } else {
        _ = sigaddset(&fatal_signal_set, @as(c_int, 25));
    }
    _ = bsd_signal(@as(c_int, 17), @as(__sighandler_t, @ptrFromInt(@as(c_int, 0))));
    output_init(null);
    if (argv[@as(c_uint, @intCast(@as(c_int, 0)))] == null) {
        argv[@as(c_uint, @intCast(@as(c_int, 0)))] = "";
    }
    if (@as(c_int, @bitCast(@as(c_uint, argv[@as(c_uint, @intCast(@as(c_int, 0)))][@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        program = "make";
    } else {
        program = strrchr(argv[@as(c_uint, @intCast(@as(c_int, 0)))], @as(c_int, '/'));
        if (program == null) {
            program = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
        } else {
            program += 1;
        }
    }
    initialize_global_hash_tables();
    _ = get_tmpdir();
    if (getcwd(@as([*c]u8, @ptrCast(@alignCast(&current_directory))), @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) == null) {
        perror_with_name("getcwd", "");
        current_directory[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
        directory_before_chdir = null;
    } else {
        directory_before_chdir = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&current_directory))));
    }
    define_variable_in_set(".VARIABLES", @sizeOf([11]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0)))).*.special = 1;
    define_variable_in_set(".RECIPEPREFIX", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0)))).*.special = 1;
    _ = define_variable_in_set(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-c", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set(".LOADED", @sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    {
        var features: [*c]const u8 = "target-specific order-only second-expansion else-if shortest-stem undefine oneshell nocomment grouped-target extra-prereqs notintermediate shell-export archives jobserver jobserver-fifo output-sync check-symlink load";
        _ = &features;
        _ = define_variable_in_set(".FEATURES", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), features, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    _ = guile_gmake_setup(@as([*c]floc, @ptrFromInt(@as(c_int, 0))));
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
                while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(ep.*))]))) & (@as(c_int, 32) | @as(c_int, 1))) != @as(c_int, 0))) {
                    ep += 1;
                }
                if (@as(c_int, @bitCast(@as(c_uint, ep.*))) == @as(c_int, '\x00')) continue;
                len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(blk: {
                    const ref = &ep;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }) -% @intFromPtr(envp[i]))), @sizeOf(u8))));
                if ((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 13))))) and (memcmp(@as(?*const anyopaque, @ptrCast(envp[i])), @as(?*const anyopaque, @ptrCast("MAKE_RESTARTS")), @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
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
                v = define_variable_in_set(envp[i], len, ep, @as(c_uint, @bitCast(o_env)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                if ((v.*.name == ("SHELL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "SHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "SHELL" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
                    @"export" = @as(c_uint, @bitCast(v_noexport));
                    shell_var.name = xstrdup("SHELL");
                    shell_var.length = 5;
                    shell_var.value = xstrdup(ep);
                }
                v.*.@"export" = @"export";
            }
        }
    }
    if (lookup_variable("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) != null) {
        decode_env_switches("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_uint, @bitCast(o_command)));
        _ = define_variable_in_set("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_env)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_uint, @bitCast(o_command)));
    syncing = blk: {
        const tmp = @as(c_uint, @intFromBool((output_sync == @as(c_int, 1)) or (output_sync == @as(c_int, 2))));
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
        arg_job_slots = -@as(c_int, 1);
        decode_switches(argc, @as([*c][*c]const u8, @ptrCast(@alignCast(argv))), @as(c_uint, @bitCast(o_command)));
        argv_slots = arg_job_slots;
        if (arg_job_slots == -@as(c_int, 1)) {
            arg_job_slots = env_slots;
        }
    }
    if (print_usage_flag != 0) {
        print_usage(@as(c_int, 0));
    }
    if (print_version_flag != 0) {
        print_version();
        die(@as(c_int, 0));
    }
    _ = setvbuf(stdout, null, @as(c_int, 1), @as(usize, @bitCast(@as(c_long, @as(c_int, 8192)))));
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
    if (isatty(fileno(stdout)) != 0) if (!(lookup_variable("MAKE_TERMOUT", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) != null)) {
        var tty: [*c]const u8 = ttyname(fileno(stdout));
        _ = &tty;
        define_variable_in_set("MAKE_TERMOUT", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), if (tty != null) tty else "true", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0)))).*.@"export" = @as(c_uint, @bitCast(v_export));
    };
    if (isatty(fileno(stderr)) != 0) if (!(lookup_variable("MAKE_TERMERR", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) != null)) {
        var tty: [*c]const u8 = ttyname(fileno(stderr));
        _ = &tty;
        define_variable_in_set("MAKE_TERMERR", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), if (tty != null) tty else "true", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0)))).*.@"export" = @as(c_uint, @bitCast(v_export));
    };
    syncing = @as(c_uint, @intFromBool((output_sync == @as(c_int, 1)) or (output_sync == @as(c_int, 2))));
    if ((make_sync.syncout != 0) and !(syncing != 0)) {
        output_close(&make_sync);
    }
    make_sync.syncout = syncing;
    while (true) {
        output_context = if ((&make_sync).*.syncout != 0) &make_sync else null;
        if (!false) break;
    }
    {
        var v: [*c]struct_variable = lookup_variable("MAKELEVEL", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        _ = &v;
        if (((v != null) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '-'))) {
            makelevel = make_toui(v.*.value, null);
        } else {
            makelevel = 0;
        }
    }
    always_make_flag = @intFromBool((always_make_set != 0) and (restarts == @as(c_uint, @bitCast(@as(c_int, 0)))));
    if (no_builtin_variables_flag != 0) {
        no_builtin_rules_flag = 1;
    }
    if ((@as(c_int, 1) & db_level) != 0) {
        print_version();
        _ = fflush(stdout);
    }
    if ((((@as(c_int, @bitCast(@as(c_uint, current_directory[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) and (argv[@as(c_uint, @intCast(@as(c_int, 0)))] != null)) and (@as(c_int, @bitCast(@as(c_uint, argv[@as(c_uint, @intCast(@as(c_int, 0)))][@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '/'))) and (strchr(argv[@as(c_uint, @intCast(@as(c_int, 0)))], @as(c_int, '/')) != null)) {
        argv[@as(c_uint, @intCast(@as(c_int, 0)))] = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), @as([*c]u8, @ptrCast(@alignCast(&current_directory))), "/", argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
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
                if (chdir(dir) < @as(c_int, 0)) {
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
    _ = define_variable_in_set("CURDIR", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&current_directory))), @as(c_uint, @bitCast(o_file)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    construct_include_path(if (include_dirs != null) include_dirs.*.list else null);
    while (true) {
        if (jobserver_auth != null) {
            if (argv_slots == -@as(c_int, 1)) {
                if (jobserver_parse_auth(jobserver_auth) != 0) break;
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("warning: jobserver unavailable: using -j1.  Add '+' to parent make rule."));
                arg_job_slots = 1;
            } else if (!(restarts != 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))), gettext("warning: -j%d forced in submake: resetting jobserver mode."), argv_slots);
            }
            reset_jobserver();
        }
    }
    _ = define_variable_in_set("MAKE_COMMAND", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), argv[@as(c_uint, @intCast(@as(c_int, 0)))], @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("MAKE", @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(MAKE_COMMAND)", @as(c_uint, @bitCast(o_default)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
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
                len +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% strlen(v.*.name)));
                if (!(v.*.recursive != 0)) {
                    len +%= 1;
                }
                len +%= 1;
                len +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% strlen(v.*.value)));
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
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = '\x00';
        _ = define_variable_in_set("-*-command-variables-*-", @sizeOf([24]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), value, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        _ = define_variable_in_set("MAKEOVERRIDES", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "${-*-command-variables-*-}", @as(c_uint, @bitCast(o_default)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    if (makefiles != null) {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (i < makefiles.*.idx) : (i +%= 1) if ((@as(c_int, @bitCast(@as(c_uint, makefiles.*.list[i][@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, makefiles.*.list[i][@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
                var outfile: [*c]FILE = undefined;
                _ = &outfile;
                var newnm: [*c]u8 = undefined;
                _ = &newnm;
                if (stdin_offset >= @as(c_int, 0)) {
                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("Makefile from standard input specified twice"));
                }
                outfile = get_tmpfile(&newnm);
                if (!(outfile != null)) {
                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("cannot store makefile from stdin to a temporary file"));
                }
                while (!(feof(stdin) != 0) and !(ferror(stdin) != 0)) {
                    var buf: [2048]u8 = undefined;
                    _ = &buf;
                    var n: usize = fread(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @sizeOf([2048]u8), stdin);
                    _ = &n;
                    if ((n > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and (fwrite(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), n, outfile) != n)) {
                        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(newnm) +% strlen(strerror(__errno_location().*)), gettext("fwrite: temporary file %s: %s"), newnm, strerror(__errno_location().*));
                    }
                }
                _ = fclose(outfile);
                makefiles.*.list[i] = strcache_add(newnm);
                stdin_offset = @as(c_int, @bitCast(i));
                free(@as(?*anyopaque, @ptrCast(newnm)));
            };
        }
    }
    if (stdin_offset >= @as(c_int, 0)) {
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
            const tmp = f_mtime(f, @as(c_int, 0));
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
        if (sigprocmask(@as(c_int, 2), &block, null) < @as(c_int, 0)) {
            pfatal_with_name("sigprocmask(SIG_SETMASK, SIGCHLD)");
        }
    }
    _ = bsd_signal(@as(c_int, 10), &debug_signal_handler);
    set_default_suffixes();
    define_automatic_variables();
    define_makeflags(@as(c_int, 0)).*.@"export" = @as(c_uint, @bitCast(v_export));
    define_default_variables();
    default_file = enter_file(strcache_add(".DEFAULT"));
    default_goal_var = define_variable_in_set(".DEFAULT_GOAL", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_file)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    if (eval_strings != null) {
        var p: [*c]u8 = undefined;
        _ = &p;
        var endp: [*c]u8 = undefined;
        _ = &endp;
        var value: [*c]u8 = undefined;
        _ = &value;
        var i: c_uint = undefined;
        _ = &i;
        var len: usize = ((@sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_ulong, eval_strings.*.idx)));
        _ = &len;
        {
            i = 0;
            while (i < eval_strings.*.idx) : (i +%= 1) {
                p = xstrdup(eval_strings.*.list[i]);
                len +%= @as(usize, @bitCast(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% strlen(p)));
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
        _ = define_variable_in_set("-*-eval-flags-*-", @sizeOf([17]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), value, @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    {
        var old_builtin_rules_flag: c_int = no_builtin_rules_flag;
        _ = &old_builtin_rules_flag;
        var old_builtin_variables_flag: c_int = no_builtin_variables_flag;
        _ = &old_builtin_variables_flag;
        var old_arg_job_slots: c_int = arg_job_slots;
        _ = &old_arg_job_slots;
        read_files = read_all_makefiles(if (makefiles == null) null else makefiles.*.list);
        arg_job_slots = -@as(c_int, 1);
        decode_env_switches("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_uint, @bitCast(o_env)));
        _ = define_variable_in_set("GNUMAKEFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_override)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_uint, @bitCast(o_env)));
        if ((arg_job_slots == -@as(c_int, 1)) or (argv_slots != -@as(c_int, 1))) {
            arg_job_slots = old_arg_job_slots;
        } else if ((jobserver_auth != null) and (arg_job_slots != old_arg_job_slots)) {
            if (!(restarts != 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))), gettext("warning: -j%d forced in makefile: resetting jobserver mode."), arg_job_slots);
            }
            reset_jobserver();
        }
        syncing = @as(c_uint, @intFromBool((output_sync == @as(c_int, 1)) or (output_sync == @as(c_int, 2))));
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
            _ = define_variable_in_set("SUFFIXES", @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        }
        if ((no_builtin_variables_flag != 0) and !(old_builtin_variables_flag != 0)) {
            undefine_default_variables();
        }
    }
    if (jobserver_auth != null) {
        job_slots = 0;
    } else if (arg_job_slots == -@as(c_int, 1)) {
        job_slots = 1;
    } else {
        job_slots = @as(c_uint, @bitCast(arg_job_slots));
    }
    if ((job_slots > @as(c_uint, @bitCast(@as(c_int, 1)))) and (jobserver_setup(@as(c_int, @bitCast(job_slots -% @as(c_uint, @bitCast(@as(c_int, 1))))), jobserver_style) != 0)) {
        jobserver_auth = jobserver_get_auth();
        if (jobserver_auth != null) {
            master_job_slots = job_slots;
            job_slots = 0;
        }
    }
    if ((syncing != 0) and (job_slots == @as(c_uint, @bitCast(@as(c_int, 1))))) {
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
        if (((@as(c_int, 2) | @as(c_int, 4)) & db_level) != 0) {
            _ = printf(gettext("Using jobserver controller %s\n"), jobserver_auth);
            _ = fflush(stdout);
        }
        if (!false) break;
    };
    if (sync_mutex != null) while (true) {
        if ((@as(c_int, 2) & db_level) != 0) {
            _ = printf(gettext("Using output-sync mutex %s\n"), sync_mutex);
            _ = fflush(stdout);
        }
        if (!false) break;
    };
    _ = define_makeflags(@as(c_int, 0));
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
                    const tmp = @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2))));
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
                    const tmp = ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
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
        if ((@as(c_int, 1) & db_level) != 0) {
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
            if ((@as(c_int, 1) & db_level) != 0) {
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
            while (d != @as([*c]struct_goaldep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
                    while (f != @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (f = f.*.prev) if ((f.*.deps == @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (f.*.cmds != @as([*c]struct_commands, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
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
                    ] = if (d.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(d.*.file, @as(c_int, 0)) else d.*.file.*.last_mtime;
                    last = d;
                    d = d.*.next;
                } else {
                    while (true) {
                        if ((@as(c_int, 2) & db_level) != 0) {
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
                    if ((d.*.@"error" != 0) and !((d.*.flags & @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)))) != 0)) {
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
        _ = define_makeflags(@as(c_int, 1));
        {
            var orig_db_level: c_int = db_level;
            _ = &orig_db_level;
            if (!((@as(c_int, 256) & db_level) != 0)) {
                db_level = @as(c_int, 0);
            }
            rebuilding_makefiles = 1;
            status = update_goal_chain(read_files);
            rebuilding_makefiles = 0;
            db_level = orig_db_level;
        }
        while (skipped_makefiles != @as([*c]struct_goaldep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
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
                @as(c_uint, @bitCast(@as(c_int, 2))) => break,
                @as(c_uint, @bitCast(@as(c_int, 1))) => {
                    {
                        var d: [*c]struct_goaldep = undefined;
                        _ = &d;
                        {
                            d = read_files;
                            while (d != null) : (d = d.*.next) if (d.*.file.*.unloaded != 0) {
                                var f: [*c]struct_file = d.*.file;
                                _ = &f;
                                if (load_file(&d.*.floc, f, @as(c_int, 0)) == @as(c_int, 0)) {
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
                            while (d != null) : (d = d.*.next) if ((d.*.@"error" != 0) and !((d.*.flags & @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)))) != 0)) {
                                var err: [*c]const u8 = strerror(d.*.@"error");
                                _ = &err;
                                @"error"(&d.*.floc, strlen(if (d.*.name != null) d.*.name else d.*.file.*.name) +% strlen(err), gettext("%s: %s"), if (d.*.name != null) d.*.name else d.*.file.*.name, err);
                                any_failed = 1;
                            };
                        }
                    }
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 0))) => {
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
                                        any_remade |= (if (d.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(d.*.file, @as(c_int, 0)) else d.*.file.*.last_mtime) != makefile_mtimes[i];
                                    } else if (!((d.*.flags & @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)))) != 0)) {
                                        var mtime: uintmax_t = undefined;
                                        _ = &mtime;
                                        @"error"(&d.*.floc, strlen(d.*.file.*.name), gettext("Failed to remake makefile '%s'."), d.*.file.*.name);
                                        mtime = if (d.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(d.*.file, @as(c_int, 0)) else d.*.file.*.last_mtime;
                                        any_remade |= (mtime != @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) and (mtime != makefile_mtimes[i]);
                                        makefile_status = 2;
                                        any_failed = 1;
                                    }
                                } else if (!((d.*.flags & @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)))) != 0)) {
                                    var dnm: [*c]const u8 = if (d.*.name != null) d.*.name else d.*.file.*.name;
                                    _ = &dnm;
                                    if ((d.*.flags & @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(1)))) != 0) {
                                        @"error"(&d.*.floc, strlen(dnm), gettext("Included makefile '%s' was not found."), dnm);
                                    } else {
                                        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(dnm), gettext("Makefile '%s' was not found"), dnm);
                                        any_failed = 1;
                                    }
                                }
                            }
                        }
                        if (!(any_remade != 0)) break;
                    }
                    remove_intermediates(@as(c_int, 0));
                    if (print_data_base_flag != 0) {
                        print_data_base();
                    }
                    clean_jobserver(@as(c_int, 0));
                    if (makefiles != null) {
                        var mfidx: c_int = 0;
                        _ = &mfidx;
                        var av: [*c][*c]u8 = argv;
                        _ = &av;
                        var nv: [*c][*c]const u8 = undefined;
                        _ = &nv;
                        nv = blk: {
                            const tmp = @as([*c][*c]const u8, @ptrCast(@alignCast(malloc(@sizeOf([*c]u8) *% @as(c_ulong, @bitCast(@as(c_long, (argc + @as(c_int, 1)) + @as(c_int, 1))))))));
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
                            _ = @as(c_int, 0);
                            nv.* = a;
                            if (@as(c_int, @bitCast(@as(c_uint, a[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '-')) continue;
                            if (@as(c_int, @bitCast(@as(c_uint, a[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '-')) {
                                if ((strcmp(a, "--file") == @as(c_int, 0)) or (strcmp(a, "--makefile") == @as(c_int, 0))) {
                                    av += 1;
                                } else if (!(strncmp(a, "--file=", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 7))))) == @as(c_int, 0)) and !(strncmp(a, "--makefile=", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 11))))) == @as(c_int, 0))) continue;
                                if (mfidx == stdin_offset) {
                                    var na: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% strlen(mf)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                                    _ = &na;
                                    _ = sprintf(na, "--temp-stdin=%s", mf);
                                    nv.* = na;
                                } else {
                                    var na: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(strlen(mf) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))))));
                                    _ = &na;
                                    _ = sprintf(na, "-f%s", mf);
                                    nv.* = na;
                                }
                                mfidx += 1;
                                continue;
                            }
                            f = strchr(a, @as(c_int, 'f'));
                            if (!(f != null)) continue;
                            if (@as(c_int, @bitCast(@as(c_uint, f[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00')) {
                                av += 1;
                            }
                            if (mfidx == stdin_offset) {
                                const al: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(f) -% @intFromPtr(a))), @sizeOf(u8))));
                                _ = &al;
                                var na: [*c]u8 = undefined;
                                _ = &na;
                                if (al > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) {
                                    na = @as([*c]u8, @ptrCast(@alignCast(malloc(al +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
                                    _ = memcpy(@as(?*anyopaque, @ptrCast(na)), @as(?*const anyopaque, @ptrCast(a)), al);
                                    na[al] = '\x00';
                                    (blk: {
                                        const ref = &nv;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).* = na;
                                }
                                na = @as([*c]u8, @ptrCast(@alignCast(malloc(((@sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% strlen(mf)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                                _ = sprintf(na, "--temp-stdin=%s", mf);
                                nv.* = na;
                            } else if (@as(c_int, @bitCast(@as(c_uint, f[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00')) {
                                (blk: {
                                    const ref = &nv;
                                    ref.* += 1;
                                    break :blk ref.*;
                                }).* = mf;
                            } else {
                                const al: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(f) -% @intFromPtr(a))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))));
                                _ = &al;
                                const ml: usize = strlen(mf) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
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
                    if ((directories != null) and (directories.*.idx > @as(c_uint, @bitCast(@as(c_int, 0))))) {
                        var bad: c_int = 1;
                        _ = &bad;
                        if (directory_before_chdir != null) {
                            if (chdir(directory_before_chdir) < @as(c_int, 0)) {
                                perror_with_name("chdir", "");
                            } else {
                                bad = 0;
                            }
                        }
                        if (bad != 0) {
                            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("Couldn't change back to original directory"));
                        }
                    }
                    restarts +%= 1;
                    if ((@as(c_int, 1) & db_level) != 0) {
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
                                if (strncmp(p.*, "MAKELEVEL=", (@sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)) {
                                    p.* = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 40))))))));
                                    _ = sprintf(p.*, "%s=%u", "MAKELEVEL", makelevel);
                                } else if (strncmp(p.*, "MAKE_RESTARTS=", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)) {
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
                    jobserver_pre_child(@as(c_int, 1));
                    _ = exec_command(@as([*c][*c]u8, @ptrCast(@alignCast(nargv))), environ);
                    jobserver_post_child(@as(c_int, 1));
                    temp_stdin_unlink();
                    _exit(@as(c_int, 127));
                },
                else => {},
            }
            break;
        }
        if (any_failed != 0) {
            die(@as(c_int, 2));
        }
    }
    _ = define_makeflags(@as(c_int, 0));
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
                    const tmp = ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
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
                ns = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_nameseq), @as(c_int, 1), null, @as(c_int, 0)))));
                if (ns != null) {
                    if (ns.*.next != null) {
                        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".DEFAULT_GOAL contains more than one target"));
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
        var v: [*c]struct_variable = lookup_variable("MAKEFILE_LIST", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        _ = &v;
        if (((v != null) and (v.*.value != null)) and (@as(c_int, @bitCast(@as(c_uint, v.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("No targets"));
        }
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("No targets specified and no makefile found"));
    }
    while (true) {
        shuffle_deps_recursive(@as([*c]struct_dep, @ptrCast(@alignCast(goals))));
        if (!false) break;
    }
    while (true) {
        if ((@as(c_int, 1) & db_level) != 0) {
            _ = printf(gettext("Updating goal targets....\n"));
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    {
        while (true) {
            switch (update_goal_chain(goals)) {
                @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 0))) => break,
                @as(c_uint, @bitCast(@as(c_int, 2))) => {
                    makefile_status = 1;
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 3))) => {
                    makefile_status = 2;
                    break;
                },
                else => {},
            }
            break;
        }
        if (clock_skew_detected != 0) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("warning:  Clock skew detected.  Your build may be incomplete."));
        }
        die(makefile_status);
    }
    exit(@as(c_int, 0));
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
    if (@as(c_int, @bitCast(@as(c_uint, options[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) return;
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
                    @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 7))) => {
                        long_options[i].has_arg = 0;
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 2))), @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 5))), @as(c_uint, @bitCast(@as(c_int, 6))) => {
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
    if ((@as(c_int, @bitCast(@as(c_uint, arg[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, arg[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) return;
    v = try_variable_definition(null, arg, origin, @as(c_int, 0));
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
    } else if ((@as(c_int, @bitCast(@as(c_uint, arg[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) and (origin == @as(c_uint, @bitCast(o_command)))) {
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
            gv = lookup_variable("MAKECMDGOALS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
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
                vp = @as([*c]u8, @ptrCast(@alignCast(malloc(((oldlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) +% newlen) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
                _ = memcpy(@as(?*anyopaque, @ptrCast(vp)), @as(?*const anyopaque, @ptrCast(gv.*.value)), oldlen);
                vp[oldlen] = ' ';
                _ = memcpy(@as(?*anyopaque, @ptrCast(&vp[oldlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])), @as(?*const anyopaque, @ptrCast(f.*.name)), newlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                value = vp;
            }
            _ = define_variable_in_set("MAKECMDGOALS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), value, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        }
    }
}
