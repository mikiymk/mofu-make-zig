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
        if ((@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
            disable = 1;
            idx = 0;
            max_incl_len = 0;
            continue;
        }
        if (@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
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
        if (!((flags & @as(c_int, 1)) != @as(c_int, 0))) while (((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8)) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) and (@as(c_int, @bitCast(@as(c_uint, s[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, s[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/'))) {
            s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            while (@as(c_int, @bitCast(@as(c_uint, s.*))) == @as(c_int, '/')) {
                s += 1;
            }
        };
        if (s == p) {
            tp[@as(c_uint, @intCast(@as(c_int, 0)))] = '.';
            tp[@as(c_uint, @intCast(@as(c_int, 1)))] = '/';
            tp[@as(c_uint, @intCast(@as(c_int, 2)))] = '\x00';
            nlen = 2;
        } else {
            nlen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(tp)), @as(?*const anyopaque, @ptrCast(s)), nlen);
            tp[nlen] = '\x00';
        }
        if (((!((flags & @as(c_int, 2)) != @as(c_int, 0)) and (tp == tmpbuf.static)) and (@as(c_int, @bitCast(@as(c_uint, tp[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '('))) and (@as(c_int, @bitCast(@as(c_uint, tp[nlen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, ')'))) {
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
        if (@as(c_int, @bitCast(@as(c_uint, tmpbuf.static[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
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
    if ((@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/')) or (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
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
        is_variable = @intFromBool(@as(c_int, @bitCast(@as(c_uint, home_dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'));
        if (!(is_variable != 0)) {
            free(@as(?*anyopaque, @ptrCast(home_dir)));
            home_dir = getenv("HOME");
        }
        if ((home_dir == null) or (@as(c_int, @bitCast(@as(c_uint, home_dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) {
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
extern fn update_goal_chain(goals: [*c]struct_goaldep) enum_update_status_36;
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
extern fn setpwent() void;
extern fn endpwent() void;
extern fn getpwent() [*c]struct_passwd;
extern fn fgetpwent(__stream: [*c]FILE) [*c]struct_passwd;
extern fn putpwent(noalias __p: [*c]const struct_passwd, noalias __f: [*c]FILE) c_int;
extern fn getpwuid(__uid: __uid_t) [*c]struct_passwd;
extern fn getpwnam(__name: [*c]const u8) [*c]struct_passwd;
extern fn getpwent_r(noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
extern fn getpwuid_r(__uid: __uid_t, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
extern fn getpwnam_r(noalias __name: [*c]const u8, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
extern fn fgetpwent_r(noalias __stream: [*c]FILE, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
extern fn getpw(__uid: __uid_t, __buffer: [*c]u8) c_int;
const struct_vmodifiers = extern struct {
    assign_v: c_uint = @import("std").mem.zeroes(c_uint),
    define_v: c_uint = @import("std").mem.zeroes(c_uint),
    undefine_v: c_uint = @import("std").mem.zeroes(c_uint),
    override_v: c_uint = @import("std").mem.zeroes(c_uint),
    private_v: c_uint = @import("std").mem.zeroes(c_uint),
    export_v: enum_variable_export = @import("std").mem.zeroes(enum_variable_export),
};
const w_bogus: c_int = 0;
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
    if (!((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(3))) != 0) and (@as(c_int, @bitCast(@as(c_uint, filename[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~'))) {
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
            if (((@as(c_int, @bitCast(@as(c_uint, ul[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 239)) and (@as(c_int, @bitCast(@as(c_uint, ul[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, 187))) and (@as(c_int, @bitCast(@as(c_uint, ul[@as(c_uint, @intCast(@as(c_int, 2)))]))) == @as(c_int, 191))) {
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
        if (@as(c_int, @bitCast(@as(c_uint, line[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) continue;
        linelen = strlen(line);
        if (@as(c_int, @bitCast(@as(c_uint, line[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
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
            var noerror: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, 'i'));
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
            var noerror: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-'));
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
        if (@as(c_int, @bitCast(@as(c_uint, line[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
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
                if ((strncmp(p2, "if", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(c_int, 0)) and (((strncmp(&p2[@as(c_uint, @intCast(@as(c_int, 2)))], "neq", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(c_int, 0)) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2[@as(c_uint, @intCast(@as(c_int, 5)))]))]))) & @as(c_int, 2)) != @as(c_int, 0))) or ((strncmp(&p2[@as(c_uint, @intCast(@as(c_int, 2)))], "eq", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(c_int, 0)) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p2[@as(c_uint, @intCast(@as(c_int, 4)))]))]))) & @as(c_int, 2)) != @as(c_int, 0))))) {
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
            p[@as(c_uint, @intCast(@as(c_int, 0)))] = '\n';
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
    p[@as(c_uint, @intCast(@as(c_int, 1)))] = '\x00';
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
        if (@as(c_int, @bitCast(@as(c_uint, @"var".value[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) {
            @"error"(&defstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("extraneous text after 'define' directive"));
        }
        @"var".name[@"var".length] = '\x00';
    }
    n = allocated_variable_expand_for_file(name, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    name = next_token(n);
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        fatal(&defstart, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty variable name"));
    }
    p = (name + strlen(name)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    while ((p > name) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
        p -= 1;
    }
    p[@as(c_uint, @intCast(@as(c_int, 1)))] = '\x00';
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
        if (@as(c_int, @bitCast(@as(c_uint, line[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, @bitCast(@as(c_uint, cmd_prefix)))) {
            p = next_token(line);
            len = strlen(p);
            if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 6))))) or ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 6))))) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[@as(c_uint, @intCast(@as(c_int, 6)))]))]))) & @as(c_int, 2)) != @as(c_int, 0)))) and (strncmp(p, "define", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 6))))) == @as(c_int, 0))) {
                nlevels += 1;
            } else if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 5))))) or ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 5))))) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[@as(c_uint, @intCast(@as(c_int, 5)))]))]))) & @as(c_int, 2)) != @as(c_int, 0)))) and (strncmp(p, "endef", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5))))) == @as(c_int, 0))) {
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
        definition[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
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
            if ((set_default != 0) and (@as(c_int, @bitCast(@as(c_uint, default_goal_var.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) {
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
        targets[@as(c_uint, @intCast(@as(c_int, 0)))] = name;
        target_pats[@as(c_uint, @intCast(@as(c_int, 0)))] = implicit_percent;
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
                    if (@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '=')) {
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
            var openparen: u8 = p[@as(c_uint, @intCast(@as(c_int, 1)))];
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
