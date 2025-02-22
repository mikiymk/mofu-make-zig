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
const struct_pattern_var = extern struct {
    next: [*c]struct_pattern_var = @import("std").mem.zeroes([*c]struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};
export fn print_variable_data_base() void {
    _ = puts(gettext("\n# Variables\n"));
    print_variable_set(&global_variable_set, "", @as(c_int, 0));
    _ = puts(gettext("\n# Pattern-specific Variable Values"));
    {
        var p: [*c]struct_pattern_var = undefined;
        _ = &p;
        var rules: c_uint = 0;
        _ = &rules;
        {
            p = pattern_vars;
            while (p != null) : (p = p.*.next) {
                rules +%= 1;
                _ = printf("\n%s :\n", p.*.target);
                print_variable(@as(?*const anyopaque, @ptrCast(&p.*.variable)), @as(?*anyopaque, @ptrCast("# ")));
            }
        }
        if (rules == @as(c_uint, @bitCast(@as(c_int, 0)))) {
            _ = puts(gettext("\n# No pattern-specific variable values."));
        } else {
            _ = printf(gettext("\n# %u pattern-specific variable values"), rules);
        }
    }
}
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
extern var db_level: c_int;
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
export fn create_new_variable_set() [*c]struct_variable_set_list {
    var setlist: [*c]struct_variable_set_list = undefined;
    _ = &setlist;
    var set: [*c]struct_variable_set = undefined;
    _ = &set;
    set = @as([*c]struct_variable_set, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set)))));
    hash_init(&set.*.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 13)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
    setlist = @as([*c]struct_variable_set_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set_list)))));
    setlist.*.set = set;
    setlist.*.next = current_variable_set_list;
    setlist.*.next_is_parent = 0;
    return setlist;
}
export fn free_variable_set(arg_list: [*c]struct_variable_set_list) void {
    var list = arg_list;
    _ = &list;
    hash_map(&list.*.set.*.table, &free_variable_name_and_value);
    hash_free(&list.*.set.*.table, @as(c_int, 1));
    free(@as(?*anyopaque, @ptrCast(list.*.set)));
    free(@as(?*anyopaque, @ptrCast(list)));
}
export fn push_new_variable_scope() [*c]struct_variable_set_list {
    current_variable_set_list = create_new_variable_set();
    if (current_variable_set_list.*.next == (&global_setlist)) {
        var set: [*c]struct_variable_set = current_variable_set_list.*.set;
        _ = &set;
        current_variable_set_list.*.set = global_setlist.set;
        global_setlist.set = set;
        current_variable_set_list.*.next = global_setlist.next;
        global_setlist.next = current_variable_set_list;
        current_variable_set_list = &global_setlist;
    }
    return current_variable_set_list;
}
export fn pop_variable_scope() void {
    var setlist: [*c]struct_variable_set_list = undefined;
    _ = &setlist;
    var set: [*c]struct_variable_set = undefined;
    _ = &set;
    _ = @as(c_int, 0);
    if (current_variable_set_list != (&global_setlist)) {
        setlist = current_variable_set_list;
        set = setlist.*.set;
        current_variable_set_list = setlist.*.next;
    } else {
        setlist = global_setlist.next;
        set = global_setlist.set;
        global_setlist.set = setlist.*.set;
        global_setlist.next = setlist.*.next;
        global_setlist.next_is_parent = setlist.*.next_is_parent;
    }
    free(@as(?*anyopaque, @ptrCast(setlist)));
    hash_map(&set.*.table, &free_variable_name_and_value);
    hash_free(&set.*.table, @as(c_int, 1));
    free(@as(?*anyopaque, @ptrCast(set)));
}
export fn define_automatic_variables() void {
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var buf: [200]u8 = undefined;
    _ = &buf;
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%u", makelevel);
    _ = define_variable_in_set("MAKELEVEL", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_env)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%s%s%s", version_string, if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) "" else "-", if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) "" else remote_description);
    _ = define_variable_in_set("MAKE_VERSION", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("MAKE_HOST", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), make_host, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    v = define_variable_in_set("SHELL", @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), default_shell, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    if (((@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00')) or (v.*.origin == @as(c_uint, @bitCast(o_env)))) or (v.*.origin == @as(c_uint, @bitCast(o_env_override)))) {
        free(@as(?*anyopaque, @ptrCast(v.*.value)));
        v.*.origin = @as(c_uint, @bitCast(o_file));
        v.*.value = xstrdup(default_shell);
    }
    v = define_variable_in_set("MAKEFILES", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    v.*.@"export" = @as(c_uint, @bitCast(v_ifset));
    _ = define_variable_in_set("@D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $@))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("%D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $%))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("*D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $*))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("<D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $<))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("?D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $?))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("^D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $^))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("+D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $+))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("@F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $@)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("%F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $%)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("*F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $*)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("<F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $<)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("?F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $?)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("^F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $^)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("+F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $+)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
}
export fn initialize_file_variables(arg_file_1: [*c]struct_file, arg_reading: c_int) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var reading = arg_reading;
    _ = &reading;
    var l: [*c]struct_variable_set_list = file_1.*.variables;
    _ = &l;
    if (l == null) {
        l = @as([*c]struct_variable_set_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set_list)))));
        l.*.set = @as([*c]struct_variable_set, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set)))));
        hash_init(&l.*.set.*.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 23)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
        file_1.*.variables = l;
    }
    if ((file_1.*.double_colon != null) and (file_1.*.double_colon != file_1)) {
        initialize_file_variables(file_1.*.double_colon, reading);
        l.*.next = file_1.*.double_colon.*.variables;
        l.*.next_is_parent = 0;
        return;
    }
    if (file_1.*.parent == null) {
        l.*.next = &global_setlist;
    } else {
        initialize_file_variables(file_1.*.parent, reading);
        l.*.next = file_1.*.parent.*.variables;
    }
    l.*.next_is_parent = 1;
    if (!(reading != 0) and !(file_1.*.pat_searched != 0)) {
        var p: [*c]struct_pattern_var = undefined;
        _ = &p;
        const targlen: usize = strlen(file_1.*.name);
        _ = &targlen;
        p = lookup_pattern_var(null, file_1.*.name, targlen);
        if (p != null) {
            var global: [*c]struct_variable_set_list = current_variable_set_list;
            _ = &global;
            file_1.*.pat_variables = create_new_variable_set();
            current_variable_set_list = file_1.*.pat_variables;
            while (true) {
                var v: [*c]struct_variable = undefined;
                _ = &v;
                if (p.*.variable.flavor == @as(c_uint, @bitCast(f_simple))) {
                    v = define_variable_in_set(p.*.variable.name, strlen(p.*.variable.name), p.*.variable.value, p.*.variable.origin, @as(c_int, 0), current_variable_set_list.*.set, &p.*.variable.fileinfo);
                    v.*.flavor = @as(c_uint, @bitCast(f_simple));
                } else {
                    v = do_variable_definition(&p.*.variable.fileinfo, p.*.variable.name, p.*.variable.value, p.*.variable.origin, p.*.variable.flavor, @as(c_int, 1));
                }
                v.*.per_target = p.*.variable.per_target;
                v.*.@"export" = p.*.variable.@"export";
                v.*.private_var = p.*.variable.private_var;
                if (!((blk: {
                    const tmp = lookup_pattern_var(p, file_1.*.name, targlen);
                    p = tmp;
                    break :blk tmp;
                }) != null)) break;
            }
            current_variable_set_list = global;
        }
        file_1.*.pat_searched = 1;
    }
    if (file_1.*.pat_variables != null) {
        file_1.*.pat_variables.*.next = l.*.next;
        file_1.*.pat_variables.*.next_is_parent = l.*.next_is_parent;
        l.*.next = file_1.*.pat_variables;
        l.*.next_is_parent = 0;
    }
}
export fn print_file_variables(arg_file_1: [*c]const struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (file_1.*.variables != null) {
        print_variable_set(file_1.*.variables.*.set, "# ", @as(c_int, 1));
    }
}
export fn print_target_variables(arg_file_1: [*c]const struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (file_1.*.variables != null) {
        var l: usize = strlen(file_1.*.name);
        _ = &l;
        var t: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 3))))))));
        _ = &t;
        _ = memcpy(@as(?*anyopaque, @ptrCast(t)), @as(?*const anyopaque, @ptrCast(file_1.*.name)), l);
        t[l] = ':';
        t[l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = ' ';
        t[l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))] = '\x00';
        hash_map_arg(&file_1.*.variables.*.set.*.table, &print_noauto_variable, @as(?*anyopaque, @ptrCast(t)));
    }
}
export fn merge_variable_set_lists(arg_setlist0: [*c][*c]struct_variable_set_list, arg_setlist1: [*c]struct_variable_set_list) void {
    var setlist0 = arg_setlist0;
    _ = &setlist0;
    var setlist1 = arg_setlist1;
    _ = &setlist1;
    var to: [*c]struct_variable_set_list = setlist0.*;
    _ = &to;
    var last0: [*c]struct_variable_set_list = null;
    _ = &last0;
    if (!(setlist1 != null) or (setlist1 == (&global_setlist))) return;
    if (to != null) {
        while (to != (&global_setlist)) {
            if (to == setlist1) return;
            to = to.*.next;
        }
        to = setlist0.*;
        while ((setlist1 != (&global_setlist)) and (to != (&global_setlist))) {
            var from: [*c]struct_variable_set_list = setlist1;
            _ = &from;
            setlist1 = setlist1.*.next;
            merge_variable_sets(to.*.set, from.*.set);
            last0 = to;
            to = to.*.next;
        }
    }
    if (setlist1 != (&global_setlist)) {
        if (last0 == null) {
            setlist0.* = setlist1;
        } else {
            last0.*.next = setlist1;
        }
    }
}
export fn do_variable_definition(arg_flocp: [*c]const floc, arg_varname: [*c]const u8, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_flavor: enum_variable_flavor, arg_target_var: c_int) [*c]struct_variable {
    var flocp = arg_flocp;
    _ = &flocp;
    var varname = arg_varname;
    _ = &varname;
    var value = arg_value;
    _ = &value;
    var origin = arg_origin;
    _ = &origin;
    var flavor = arg_flavor;
    _ = &flavor;
    var target_var = arg_target_var;
    _ = &target_var;
    var newval: [*c]const u8 = undefined;
    _ = &newval;
    var alloc_value: [*c]u8 = null;
    _ = &alloc_value;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var append: c_int = 0;
    _ = &append;
    var conditional: c_int = 0;
    _ = &conditional;
    while (true) {
        switch (flavor) {
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                newval = blk: {
                    const tmp = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
                    alloc_value = tmp;
                    break :blk tmp;
                };
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                {
                    var t: [*c]u8 = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
                    _ = &t;
                    var np: [*c]u8 = blk: {
                        const tmp = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                        alloc_value = tmp;
                        break :blk tmp;
                    };
                    _ = &np;
                    var op: [*c]u8 = t;
                    _ = &op;
                    while (@as(c_int, @bitCast(@as(c_uint, op[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) {
                        if (@as(c_int, @bitCast(@as(c_uint, op[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '$')) {
                            (blk: {
                                const ref = &np;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = '$';
                        }
                        (blk: {
                            const ref = &np;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).* = (blk: {
                            const ref = &op;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).*;
                    }
                    np.* = '\x00';
                    free(@as(?*anyopaque, @ptrCast(t)));
                    newval = alloc_value;
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                {
                    var q: [*c]u8 = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
                    _ = &q;
                    alloc_value = shell_result(q);
                    free(@as(?*anyopaque, @ptrCast(q)));
                    flavor = @as(c_uint, @bitCast(f_recursive));
                    newval = alloc_value;
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                v = lookup_variable(varname, strlen(varname));
                if (v != null) {
                    free(@as(?*anyopaque, @ptrCast(alloc_value)));
                    return if (v.*.special != 0) set_special_var(v, origin) else v;
                }
                conditional = 1;
                flavor = @as(c_uint, @bitCast(f_recursive));
                newval = value;
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                newval = value;
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 7))) => {
                {
                    if (target_var != 0) {
                        append = 1;
                        v = lookup_variable_in_set(varname, strlen(varname), current_variable_set_list.*.set);
                        if ((v != null) and !(v.*.append != 0)) {
                            append = 0;
                        }
                    } else {
                        v = lookup_variable(varname, strlen(varname));
                    }
                    if (v == null) {
                        newval = value;
                        flavor = @as(c_uint, @bitCast(f_recursive));
                    } else {
                        var oldlen: usize = undefined;
                        _ = &oldlen;
                        var vallen: usize = undefined;
                        _ = &vallen;
                        var alloclen: usize = undefined;
                        _ = &alloclen;
                        var val: [*c]const u8 = undefined;
                        _ = &val;
                        var cp: [*c]u8 = undefined;
                        _ = &cp;
                        var tp: [*c]u8 = null;
                        _ = &tp;
                        val = value;
                        if (v.*.recursive != 0) {
                            flavor = @as(c_uint, @bitCast(f_recursive));
                        } else if (flavor != @as(c_uint, @bitCast(f_append_value))) {
                            val = blk: {
                                const tmp = allocated_variable_expand_for_file(val, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
                                tp = tmp;
                                break :blk tmp;
                            };
                        }
                        vallen = strlen(val);
                        if (!(vallen != 0)) {
                            alloc_value = tp;
                            {
                                free(@as(?*anyopaque, @ptrCast(alloc_value)));
                                return if (v.*.special != 0) set_special_var(v, origin) else v;
                            }
                        }
                        oldlen = strlen(v.*.value);
                        alloclen = ((oldlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) +% vallen) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
                        cp = blk: {
                            const tmp = @as([*c]u8, @ptrCast(@alignCast(xmalloc(alloclen))));
                            alloc_value = tmp;
                            break :blk tmp;
                        };
                        if (oldlen != 0) {
                            var s: [*c]u8 = undefined;
                            _ = &s;
                            if (((varname == @as([*c]const u8, @ptrCast(@alignCast("MAKEFLAGS")))) or ((@as(c_int, @bitCast(@as(c_uint, varname.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, varname.*))) == @as(c_int, '\x00')) or !(strcmp(varname + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) and ((blk: {
                                const tmp = strstr(v.*.value, " -- ");
                                s = tmp;
                                break :blk tmp;
                            }) != null)) {
                                cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(v.*.value)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(s) -% @intFromPtr(v.*.value))), @sizeOf(u8))))))));
                            } else {
                                cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(v.*.value)), oldlen))));
                            }
                            (blk: {
                                const ref = &cp;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = ' ';
                        }
                        _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(val)), vallen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                        free(@as(?*anyopaque, @ptrCast(tp)));
                        newval = alloc_value;
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
    _ = @as(c_int, 0);
    v = define_variable_in_set(varname, strlen(varname), newval, origin, @intFromBool((flavor == @as(c_uint, @bitCast(f_recursive))) or (flavor == @as(c_uint, @bitCast(f_expand)))), if (target_var != 0) current_variable_set_list.*.set else null, flocp);
    v.*.append = @as(c_uint, @bitCast(append));
    v.*.conditional = @as(c_uint, @bitCast(conditional));
    free(@as(?*anyopaque, @ptrCast(alloc_value)));
    return if (v.*.special != 0) set_special_var(v, origin) else v;
}
export fn parse_variable_definition(arg_str: [*c]const u8, arg_var: [*c]struct_variable) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var @"var" = arg_var;
    _ = &@"var";
    var p: [*c]const u8 = str;
    _ = &p;
    var end: [*c]const u8 = null;
    _ = &end;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        p += 1;
    }
    @"var".*.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
    @"var".*.length = 0;
    while (true) {
        var c: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*)));
        _ = &c;
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(@as(i8, @truncate(c))))]))) & (@as(c_int, 8) | @as(c_int, 1))) != @as(c_int, 0)) return null;
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(@as(i8, @truncate(c))))]))) & @as(c_int, 2)) != @as(c_int, 0)) {
            if (end != null) return null;
            end = p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
                p += 1;
            }
            continue;
        }
        if (c == @as(c_int, '=')) {
            if (!(end != null)) {
                end = p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            }
            @"var".*.flavor = @as(c_uint, @bitCast(f_recursive));
            break;
        }
        if (c == @as(c_int, ':')) {
            if (!(end != null)) {
                end = p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            }
            c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
            if (c == @as(c_int, '=')) {
                @"var".*.flavor = @as(c_uint, @bitCast(f_simple));
                break;
            }
            if (c == @as(c_int, ':')) {
                c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).*)));
                if (c == @as(c_int, '=')) {
                    @"var".*.flavor = @as(c_uint, @bitCast(f_simple));
                    break;
                }
                if ((c == @as(c_int, ':')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).*))) == @as(c_int, '='))) {
                    @"var".*.flavor = @as(c_uint, @bitCast(f_expand));
                    break;
                }
            }
            return null;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '=')) {
            var flag_1682: c_int = 0;
            _ = &flag_1682;
            while (true) {
                switch (c) {
                    @as(c_int, 43) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_append));
                        break;
                    },
                    @as(c_int, 63) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_conditional));
                        break;
                    },
                    @as(c_int, 33) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_shell));
                        break;
                    },
                    else => {
                        flag_1682 = 1;
                    },
                }
                break;
            }
            if (flag_1682 == @as(c_int, 0)) {
                if (!(end != null)) {
                    end = p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                }
                p += 1;
                break;
            }
        }
        if (end != null) return null;
        if (c == @as(c_int, '$')) {
            var closeparen: u8 = undefined;
            _ = &closeparen;
            var count: c_uint = undefined;
            _ = &count;
            c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
            while (true) {
                switch (c) {
                    @as(c_int, 40) => {
                        closeparen = ')';
                        break;
                    },
                    @as(c_int, 123) => {
                        closeparen = '}';
                        break;
                    },
                    @as(c_int, 0) => return null,
                    else => {
                        continue;
                    },
                }
                break;
            }
            {
                count = 1;
                while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                    if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                        const ref = &count;
                        ref.* -%= 1;
                        break :blk ref.*;
                    }) == @as(c_uint, @bitCast(@as(c_int, 0))))) {
                        p += 1;
                        break;
                    }
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == c) {
                        count +%= 1;
                    }
                }
            }
        }
    }
    @"var".*.length = @as(c_uint, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(@"var".*.name))), @sizeOf(u8))))));
    @"var".*.value = next_token(p);
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
}
export fn assign_variable_definition(arg_v: [*c]struct_variable, arg_line: [*c]const u8) [*c]struct_variable {
    var v = arg_v;
    _ = &v;
    var line = arg_line;
    _ = &line;
    var name: [*c]u8 = undefined;
    _ = &name;
    if (!(parse_variable_definition(line, v) != null)) return null;
    name = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_ulong, v.*.length +% @as(c_uint, @bitCast(@as(c_int, 1))))))))));
    _ = memcpy(@as(?*anyopaque, @ptrCast(name)), @as(?*const anyopaque, @ptrCast(v.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, v.*.length))));
    name[v.*.length] = '\x00';
    v.*.name = allocated_variable_expand_for_file(name, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    if (@as(c_int, @bitCast(@as(c_uint, v.*.name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        fatal(&v.*.fileinfo, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty variable name"));
    }
    return v;
}
export fn try_variable_definition(arg_flocp: [*c]const floc, arg_line: [*c]const u8, arg_origin: enum_variable_origin, arg_target_var: c_int) [*c]struct_variable {
    var flocp = arg_flocp;
    _ = &flocp;
    var line = arg_line;
    _ = &line;
    var origin = arg_origin;
    _ = &origin;
    var target_var = arg_target_var;
    _ = &target_var;
    var v: struct_variable = undefined;
    _ = &v;
    var vp: [*c]struct_variable = undefined;
    _ = &vp;
    if (flocp != null) {
        v.fileinfo = flocp.*;
    } else {
        v.fileinfo.filenm = null;
    }
    if (!(assign_variable_definition(&v, line) != null)) return null;
    vp = do_variable_definition(flocp, v.name, v.value, origin, v.flavor, target_var);
    free(@as(?*anyopaque, @ptrCast(v.name)));
    return vp;
}
export fn init_hash_global_variable_set() void {
    hash_init(&global_variable_set.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 523)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
}
extern fn hash_init_function_table() void;
extern fn define_new_function(flocp: [*c]const floc, name: [*c]const u8, min: c_uint, max: c_uint, flags: c_uint, func: gmk_func_ptr) void;
export fn lookup_variable(arg_name: [*c]const u8, arg_length: usize) [*c]struct_variable {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var setlist: [*c]const struct_variable_set_list = undefined;
    _ = &setlist;
    var var_key: struct_variable = undefined;
    _ = &var_key;
    var is_parent: c_int = 0;
    _ = &is_parent;
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    {
        setlist = current_variable_set_list;
        while (setlist != null) : (setlist = setlist.*.next) {
            var set: [*c]const struct_variable_set = setlist.*.set;
            _ = &set;
            var v: [*c]struct_variable = undefined;
            _ = &v;
            v = @as([*c]struct_variable, @ptrCast(@alignCast(hash_find_item(@as([*c]struct_hash_table, @ptrCast(@volatileCast(@constCast(&set.*.table)))), @as(?*const anyopaque, @ptrCast(&var_key))))));
            if ((v != null) and (!(is_parent != 0) or !(v.*.private_var != 0))) return if (v.*.special != 0) lookup_special_var(v) else v;
            is_parent |= setlist.*.next_is_parent;
        }
    }
    return null;
}
export fn lookup_variable_for_file(arg_name: [*c]const u8, arg_length: usize, arg_file_1: [*c]struct_file) [*c]struct_variable {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var file_1 = arg_file_1;
    _ = &file_1;
    var @"var": [*c]struct_variable = undefined;
    _ = &@"var";
    var savev: [*c]struct_variable_set_list = undefined;
    _ = &savev;
    if (file_1 == @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return lookup_variable(name, length);
    savev = current_variable_set_list;
    current_variable_set_list = file_1.*.variables;
    @"var" = lookup_variable(name, length);
    current_variable_set_list = savev;
    return @"var";
}
export fn lookup_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_set: [*c]const struct_variable_set) [*c]struct_variable {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var set = arg_set;
    _ = &set;
    var var_key: struct_variable = undefined;
    _ = &var_key;
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    return @as([*c]struct_variable, @ptrCast(@alignCast(hash_find_item(@as([*c]struct_hash_table, @ptrCast(@volatileCast(@constCast(&set.*.table)))), @as(?*const anyopaque, @ptrCast(&var_key))))));
}
export fn define_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_recursive: c_int, arg_set: [*c]struct_variable_set, arg_flocp: [*c]const floc) [*c]struct_variable {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var value = arg_value;
    _ = &value;
    var origin = arg_origin;
    _ = &origin;
    var recursive = arg_recursive;
    _ = &recursive;
    var set = arg_set;
    _ = &set;
    var flocp = arg_flocp;
    _ = &flocp;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var var_slot: [*c][*c]struct_variable = undefined;
    _ = &var_slot;
    var var_key: struct_variable = undefined;
    _ = &var_key;
    if (set == @as([*c]struct_variable_set, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        set = &global_variable_set;
    }
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    var_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&set.*.table, @as(?*const anyopaque, @ptrCast(&var_key))))));
    v = var_slot.*;
    if ((env_overrides != 0) and (origin == @as(c_uint, @bitCast(o_env)))) {
        origin = @as(c_uint, @bitCast(o_env_override));
    }
    if (!((v == null) or (@as(?*anyopaque, @ptrCast(v)) == hash_deleted_item))) {
        if ((env_overrides != 0) and (v.*.origin == @as(c_uint, @bitCast(o_env)))) {
            v.*.origin = @as(c_uint, @bitCast(o_env_override));
        }
        if (@as(c_int, @bitCast(origin)) >= @as(c_int, @bitCast(v.*.origin))) {
            free(@as(?*anyopaque, @ptrCast(v.*.value)));
            v.*.value = xstrdup(value);
            if (flocp != null) {
                v.*.fileinfo = flocp.*;
            } else {
                v.*.fileinfo.filenm = null;
            }
            v.*.origin = origin;
            v.*.recursive = @as(c_uint, @bitCast(recursive));
        }
        return v;
    }
    v = @as([*c]struct_variable, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_variable)))));
    v.*.name = xstrndup(name, length);
    v.*.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    _ = hash_insert_at(&set.*.table, @as(?*const anyopaque, @ptrCast(v)), @as(?*const anyopaque, @ptrCast(var_slot)));
    if (set == (&global_variable_set)) {
        variable_changenum +%= 1;
    }
    v.*.value = xstrdup(value);
    if (flocp != null) {
        v.*.fileinfo = flocp.*;
    }
    v.*.origin = origin;
    v.*.recursive = @as(c_uint, @bitCast(recursive));
    v.*.@"export" = @as(c_uint, @bitCast(v_default));
    v.*.exportable = 1;
    name = v.*.name;
    if (((@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '_')) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'A')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'Z')))) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'a')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'z')))) {
        v.*.exportable = 0;
    } else {
        {
            name += 1;
            while (@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '\x00')) : (name += 1) if ((((@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '_')) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'a')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'z')))) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'A')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'Z')))) and !((@as(c_uint, @bitCast(@as(c_uint, name.*))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9))))) break;
        }
        if (@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '\x00')) {
            v.*.exportable = 0;
        }
    }
    return v;
}
const struct_defined_vars = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
};
export fn warn_undefined(arg_name: [*c]const u8, arg_len: usize) void {
    var name = arg_name;
    _ = &name;
    var len = arg_len;
    _ = &len;
    if (warn_undefined_variables_flag != 0) {
        var dp: [*c]const struct_defined_vars = undefined;
        _ = &dp;
        {
            dp = @as([*c]const struct_defined_vars, @ptrCast(@alignCast(&defined_vars)));
            while (dp.*.name != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (dp += 1) if ((dp.*.len == len) and (memcmp(@as(?*const anyopaque, @ptrCast(dp.*.name)), @as(?*const anyopaque, @ptrCast(name)), len) == @as(c_int, 0))) return;
        }
        @"error"(reading_file, len, gettext("warning: undefined variable '%.*s'"), @as(c_int, @bitCast(@as(c_uint, @truncate(len)))), name);
    }
}
export fn undefine_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_origin: enum_variable_origin, arg_set: [*c]struct_variable_set) void {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var origin = arg_origin;
    _ = &origin;
    var set = arg_set;
    _ = &set;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var var_slot: [*c][*c]struct_variable = undefined;
    _ = &var_slot;
    var var_key: struct_variable = undefined;
    _ = &var_key;
    if (set == @as([*c]struct_variable_set, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        set = &global_variable_set;
    }
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    var_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&set.*.table, @as(?*const anyopaque, @ptrCast(&var_key))))));
    if ((env_overrides != 0) and (origin == @as(c_uint, @bitCast(o_env)))) {
        origin = @as(c_uint, @bitCast(o_env_override));
    }
    v = var_slot.*;
    if (!((v == null) or (@as(?*anyopaque, @ptrCast(v)) == hash_deleted_item))) {
        if ((env_overrides != 0) and (v.*.origin == @as(c_uint, @bitCast(o_env)))) {
            v.*.origin = @as(c_uint, @bitCast(o_env_override));
        }
        if (@as(c_int, @bitCast(origin)) >= @as(c_int, @bitCast(v.*.origin))) {
            _ = hash_delete_at(&set.*.table, @as(?*const anyopaque, @ptrCast(var_slot)));
            free_variable_name_and_value(@as(?*const anyopaque, @ptrCast(v)));
            free(@as(?*anyopaque, @ptrCast(v)));
            if (set == (&global_variable_set)) {
                variable_changenum +%= 1;
            }
        }
    }
}
export fn target_environment(arg_file_1: [*c]struct_file, arg_recursive: c_int) [*c][*c]u8 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var recursive = arg_recursive;
    _ = &recursive;
    var set_list: [*c]struct_variable_set_list = undefined;
    _ = &set_list;
    var s: [*c]struct_variable_set_list = undefined;
    _ = &s;
    var table: struct_hash_table = undefined;
    _ = &table;
    var v_slot: [*c][*c]struct_variable = undefined;
    _ = &v_slot;
    var v_end: [*c][*c]struct_variable = undefined;
    _ = &v_end;
    var result_0: [*c][*c]u8 = undefined;
    _ = &result_0;
    var result: [*c][*c]u8 = undefined;
    _ = &result;
    var invalid: [*c]const u8 = null;
    _ = &invalid;
    var added_SHELL: c_int = @intFromBool(shell_var.value == null);
    _ = &added_SHELL;
    var found_makelevel: c_int = 0;
    _ = &found_makelevel;
    var found_mflags: c_int = 0;
    _ = &found_mflags;
    var found_makeflags: c_int = 0;
    _ = &found_makeflags;
    if (!(file_1 != null)) {
        env_recursion +%= 1;
    }
    if (!(recursive != 0) and (jobserver_auth != null)) {
        invalid = jobserver_get_invalid_auth();
    }
    if (file_1 != null) {
        set_list = file_1.*.variables;
    } else {
        set_list = current_variable_set_list;
    }
    hash_init(&table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 523)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
    {
        s = set_list;
        while (s != null) : (s = s.*.next) {
            var set: [*c]struct_variable_set = s.*.set;
            _ = &set;
            const islocal: c_int = @intFromBool(s == set_list);
            _ = &islocal;
            const isglobal: c_int = @intFromBool(set == (&global_variable_set));
            _ = &isglobal;
            v_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(set.*.table.ht_vec)));
            v_end = v_slot + set.*.table.ht_size;
            while (v_slot < v_end) : (v_slot += 1) if (!((v_slot.* == null) or (@as(?*anyopaque, @ptrCast(v_slot.*)) == hash_deleted_item))) {
                var evslot: [*c][*c]struct_variable = undefined;
                _ = &evslot;
                var v: [*c]struct_variable = v_slot.*;
                _ = &v;
                if (!(islocal != 0) and (v.*.private_var != 0)) continue;
                evslot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&table, @as(?*const anyopaque, @ptrCast(v))))));
                if ((evslot.* == null) or (@as(?*anyopaque, @ptrCast(evslot.*)) == hash_deleted_item)) {
                    if (!(isglobal != 0) or (should_export(v) != 0)) {
                        _ = hash_insert_at(&table, @as(?*const anyopaque, @ptrCast(v)), @as(?*const anyopaque, @ptrCast(evslot)));
                    }
                } else if (evslot.*.*.@"export" == @as(c_uint, @bitCast(v_default))) {
                    evslot.*.*.@"export" = v.*.@"export";
                }
            };
        }
    }
    result = blk: {
        const tmp = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc((table.ht_fill +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) *% @sizeOf([*c]u8)))));
        result_0 = tmp;
        break :blk tmp;
    };
    v_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(table.ht_vec)));
    v_end = v_slot + table.ht_size;
    while (v_slot < v_end) : (v_slot += 1) if (!((v_slot.* == null) or (@as(?*anyopaque, @ptrCast(v_slot.*)) == hash_deleted_item))) {
        var v: [*c]struct_variable = v_slot.*;
        _ = &v;
        var value: [*c]u8 = v.*.value;
        _ = &value;
        var cp: [*c]u8 = null;
        _ = &cp;
        if (!(should_export(v) != 0)) continue;
        if ((v.*.recursive != 0) and (((v.*.origin != @as(c_uint, @bitCast(o_env))) and (v.*.origin != @as(c_uint, @bitCast(o_env_override)))) or ((v.*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))))) {
            value = blk: {
                const tmp = recursively_expand_for_file(v, file_1);
                cp = tmp;
                break :blk tmp;
            };
        }
        if (!(added_SHELL != 0) and ((v.*.name == ("SHELL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "SHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "SHELL" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
            added_SHELL = 1;
            {
                (blk: {
                    const ref = &result;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                free(@as(?*anyopaque, @ptrCast(cp)));
                continue;
            }
        }
        if (!(found_makelevel != 0) and ((v.*.name == ("MAKELEVEL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKELEVEL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKELEVEL" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
            var val: [23]u8 = undefined;
            _ = &val;
            _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&val))), "%u", makelevel +% @as(c_uint, @bitCast(@as(c_int, 1))));
            free(@as(?*anyopaque, @ptrCast(cp)));
            value = blk: {
                const tmp = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&val))));
                cp = tmp;
                break :blk tmp;
            };
            found_makelevel = 1;
            {
                (blk: {
                    const ref = &result;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                free(@as(?*anyopaque, @ptrCast(cp)));
                continue;
            }
        }
        if (invalid != null) {
            if (!(found_makeflags != 0) and ((v.*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                var mf: [*c]u8 = undefined;
                _ = &mf;
                var vars: [*c]u8 = undefined;
                _ = &vars;
                found_makeflags = 1;
                if (!(strstr(value, " --jobserver-auth=") != null)) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                vars = strstr(value, " -- ");
                if (!(vars != null)) {
                    mf = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 2))), value, invalid));
                } else {
                    var lf: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(vars) -% @intFromPtr(value))), @sizeOf(u8))));
                    _ = &lf;
                    var li: usize = strlen(invalid);
                    _ = &li;
                    mf = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(value) +% li) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                    _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(mempcpy(mempcpy(@as(?*anyopaque, @ptrCast(mf)), @as(?*const anyopaque, @ptrCast(value)), lf), @as(?*const anyopaque, @ptrCast(invalid)), li)))), vars);
                }
                free(@as(?*anyopaque, @ptrCast(cp)));
                value = blk: {
                    const tmp = mf;
                    cp = tmp;
                    break :blk tmp;
                };
                if (found_mflags != 0) {
                    invalid = null;
                }
                {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
            }
            if (!(found_mflags != 0) and ((v.*.name == ("MFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                var mf: [*c]const u8 = undefined;
                _ = &mf;
                found_mflags = 1;
                if (!(strstr(value, " --jobserver-auth=") != null)) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                if (v.*.origin != @as(c_uint, @bitCast(o_env))) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                mf = concat(@as(c_uint, @bitCast(@as(c_int, 2))), value, invalid);
                free(@as(?*anyopaque, @ptrCast(cp)));
                value = blk: {
                    const tmp = xstrdup(mf);
                    cp = tmp;
                    break :blk tmp;
                };
                if (found_makeflags != 0) {
                    invalid = null;
                }
                {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
            }
        }
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), v.*.name, "=", value));
        free(@as(?*anyopaque, @ptrCast(cp)));
    };
    if (!(added_SHELL != 0)) {
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), shell_var.name, "=", shell_var.value));
    }
    if (!(found_makelevel != 0)) {
        var val: [33]u8 = undefined;
        _ = &val;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&val))), "%s=%u", "MAKELEVEL", makelevel +% @as(c_uint, @bitCast(@as(c_int, 1))));
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&val))));
    }
    result.* = null;
    hash_free(&table, @as(c_int, 0));
    if (!(file_1 != null)) {
        env_recursion -%= 1;
    }
    return result_0;
}
export fn create_pattern_var(arg_target: [*c]const u8, arg_suffix: [*c]const u8) [*c]struct_pattern_var {
    var target = arg_target;
    _ = &target;
    var suffix = arg_suffix;
    _ = &suffix;
    var len: usize = strlen(target);
    _ = &len;
    var p: [*c]struct_pattern_var = @as([*c]struct_pattern_var, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_pattern_var)))));
    _ = &p;
    if (pattern_vars != null) {
        if ((len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) and (last_pattern_vars[len] != null)) {
            p.*.next = last_pattern_vars[len].*.next;
            last_pattern_vars[len].*.next = p;
        } else {
            var v: [*c][*c]struct_pattern_var = undefined;
            _ = &v;
            {
                v = &pattern_vars;
                while (true) : (v = &v.*.*.next) {
                    if ((v.* == null) or (v.*.*.len > len)) {
                        p.*.next = v.*;
                        v.* = p;
                        break;
                    }
                }
            }
        }
    } else {
        pattern_vars = p;
        p.*.next = null;
    }
    p.*.target = target;
    p.*.len = len;
    p.*.suffix = suffix + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) {
        last_pattern_vars[len] = p;
    }
    return p;
}
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
var variable_changenum: c_ulong = 0;
var pattern_vars: [*c]struct_pattern_var = null;
var last_pattern_vars: [256][*c]struct_pattern_var = @import("std").mem.zeroes([256][*c]struct_pattern_var);
fn lookup_pattern_var(arg_start: [*c]struct_pattern_var, arg_target: [*c]const u8, arg_targlen: usize) callconv(.C) [*c]struct_pattern_var {
    var start = arg_start;
    _ = &start;
    var target = arg_target;
    _ = &target;
    var targlen = arg_targlen;
    _ = &targlen;
    var p: [*c]struct_pattern_var = undefined;
    _ = &p;
    {
        p = if (start != null) start.*.next else pattern_vars;
        while (p != null) : (p = p.*.next) {
            var stem: [*c]const u8 = undefined;
            _ = &stem;
            var stemlen: usize = undefined;
            _ = &stemlen;
            if (p.*.len > targlen) continue;
            stem = target + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p.*.suffix) -% @intFromPtr(p.*.target))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))));
            stemlen = (targlen -% p.*.len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            if ((stem > target) and !(strncmp(p.*.target, target, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(stem) -% @intFromPtr(target))), @sizeOf(u8))))) == @as(c_int, 0))) continue;
            if ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, @bitCast(@as(c_uint, stem[stemlen])))) and ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, '\x00')) or (((&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) == (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])) or ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, @bitCast(@as(c_uint, (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, '\x00')) or !(strcmp((&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))))) break;
        }
    }
    return p;
}
fn variable_hash_1(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(keyv)));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(key.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash(_key_, @as(c_int, @bitCast(key.*.length))))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn variable_hash_2(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(keyv)));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = key.*.name;
            _ = key.*.length;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn variable_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(xv)));
    _ = &x;
    var y: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(yv)));
    _ = &y;
    var result: c_int = @as(c_int, @bitCast(x.*.length -% y.*.length));
    _ = &result;
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.length))));
    }
    return 0;
}
var global_variable_set: struct_variable_set = @import("std").mem.zeroes(struct_variable_set);
var global_setlist: struct_variable_set_list = struct_variable_set_list{
    .next = null,
    .set = &global_variable_set,
    .next_is_parent = @as(c_int, 0),
};
fn free_variable_name_and_value(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var v: [*c]struct_variable = @as([*c]struct_variable, @ptrCast(@volatileCast(@constCast(item))));
    _ = &v;
    free(@as(?*anyopaque, @ptrCast(v.*.name)));
    free(@as(?*anyopaque, @ptrCast(v.*.value)));
}
fn lookup_special_var(arg_var: [*c]struct_variable) callconv(.C) [*c]struct_variable {
    var @"var" = arg_var;
    _ = &@"var";
    const last_changenum = struct {
        var static: c_ulong = 0;
    };
    _ = &last_changenum;
    if ((variable_changenum != last_changenum.static) and ((@"var".*.name == (".VARIABLES")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".VARIABLES".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".VARIABLES" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
        var max: usize = ((strlen(@"var".*.value) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))));
        _ = &max;
        var len: usize = undefined;
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var vp: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(global_variable_set.table.ht_vec)));
        _ = &vp;
        var end: [*c][*c]struct_variable = &vp[global_variable_set.table.ht_size];
        _ = &end;
        @"var".*.value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(@"var".*.value)), max))));
        p = @"var".*.value;
        len = 0;
        while (vp < end) : (vp += 1) if (!((vp.* == null) or (@as(?*anyopaque, @ptrCast(vp.*)) == hash_deleted_item))) {
            var v: [*c]struct_variable = vp.*;
            _ = &v;
            var l: c_int = @as(c_int, @bitCast(v.*.length));
            _ = &l;
            len +%= @as(usize, @bitCast(@as(c_long, l + @as(c_int, 1))));
            if (len > max) {
                var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@"var".*.value))), @sizeOf(u8))));
                _ = &off;
                max +%= @as(usize, @bitCast(@as(c_long, (@divTrunc(l + @as(c_int, 1), @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500))));
                @"var".*.value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(@"var".*.value)), max))));
                p = &@"var".*.value[off];
            }
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(v.*.name)), @as(c_ulong, @bitCast(@as(c_long, l)))))));
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        };
        (p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* = '\x00';
        last_changenum.static = variable_changenum;
    }
    return @"var";
}
fn merge_variable_sets(arg_to_set: [*c]struct_variable_set, arg_from_set: [*c]struct_variable_set) callconv(.C) void {
    var to_set = arg_to_set;
    _ = &to_set;
    var from_set = arg_from_set;
    _ = &from_set;
    var from_var_slot: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(from_set.*.table.ht_vec)));
    _ = &from_var_slot;
    var from_var_end: [*c][*c]struct_variable = from_var_slot + from_set.*.table.ht_size;
    _ = &from_var_end;
    var inc: c_int = if (to_set == (&global_variable_set)) @as(c_int, 1) else @as(c_int, 0);
    _ = &inc;
    while (from_var_slot < from_var_end) : (from_var_slot += 1) if (!((from_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(from_var_slot.*)) == hash_deleted_item))) {
        var from_var: [*c]struct_variable = from_var_slot.*;
        _ = &from_var;
        var to_var_slot: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var_slot.*))))));
        _ = &to_var_slot;
        if ((to_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(to_var_slot.*)) == hash_deleted_item)) {
            _ = hash_insert_at(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var)), @as(?*const anyopaque, @ptrCast(to_var_slot)));
            variable_changenum +%= @as(c_ulong, @bitCast(@as(c_long, inc)));
        } else {
            free(@as(?*anyopaque, @ptrCast(from_var.*.value)));
            free(@as(?*anyopaque, @ptrCast(from_var)));
        }
    };
}
fn should_export(arg_v: [*c]const struct_variable) callconv(.C) c_int {
    var v = arg_v;
    _ = &v;
    while (true) {
        switch (v.*.@"export") {
            @as(c_uint, @bitCast(@as(c_int, 1))) => break,
            @as(c_uint, @bitCast(@as(c_int, 2))) => return 0,
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                if (v.*.origin == @as(c_uint, @bitCast(o_default))) return 0;
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                if ((v.*.origin == @as(c_uint, @bitCast(o_default))) or (v.*.origin == @as(c_uint, @bitCast(o_automatic)))) return 0;
                if (!(v.*.exportable != 0)) return 0;
                if (((!(export_all_variables != 0) and (v.*.origin != @as(c_uint, @bitCast(o_command)))) and (v.*.origin != @as(c_uint, @bitCast(o_env)))) and (v.*.origin != @as(c_uint, @bitCast(o_env_override)))) return 0;
                break;
            },
            else => {},
        }
        break;
    }
    return 1;
}
fn set_special_var(arg_var: [*c]struct_variable, arg_origin: enum_variable_origin) callconv(.C) [*c]struct_variable {
    var @"var" = arg_var;
    _ = &@"var";
    var origin = arg_origin;
    _ = &origin;
    if ((@"var".*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        reset_makeflags(origin);
    } else if ((@"var".*.name == (".RECIPEPREFIX")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".RECIPEPREFIX".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".RECIPEPREFIX" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        cmd_prefix = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, @"var".*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) @as(c_int, '\t') else @as(c_int, @bitCast(@as(c_uint, @"var".*.value[@as(c_uint, @intCast(@as(c_int, 0)))])))))));
    }
    return @"var";
}
fn shell_result(arg_p: [*c]const u8) callconv(.C) [*c]u8 {
    var p = arg_p;
    _ = &p;
    var buf: [*c]u8 = undefined;
    _ = &buf;
    var len: usize = undefined;
    _ = &len;
    var args: [2][*c]u8 = undefined;
    _ = &args;
    var result: [*c]u8 = undefined;
    _ = &result;
    install_variable_buffer(&buf, &len);
    args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
    args[@as(c_uint, @intCast(@as(c_int, 1)))] = null;
    _ = variable_buffer_output(func_shell_base(variable_buffer, @as([*c][*c]u8, @ptrCast(@alignCast(&args))), @as(c_int, 0)), "\x00", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    result = strdup(variable_buffer);
    restore_variable_buffer(buf, len);
    return result;
}
const defined_vars: [11]struct_defined_vars = [11]struct_defined_vars{
    struct_defined_vars{
        .name = "MAKECMDGOALS",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_RESTARTS",
        .len = @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_TERMOUT",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_TERMERR",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKEOVERRIDES",
        .len = @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = ".DEFAULT",
        .len = @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "-*-command-variables-*-",
        .len = @sizeOf([24]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "-*-eval-flags-*-",
        .len = @sizeOf([17]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "VPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "GPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = null,
        .len = @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))),
    },
};
fn print_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    _ = &v;
    var prefix: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(arg)));
    _ = &prefix;
    var origin: [*c]const u8 = undefined;
    _ = &origin;
    while (true) {
        switch (v.*.origin) {
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                origin = gettext("automatic");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                origin = gettext("default");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                origin = gettext("environment");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                origin = gettext("makefile");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                origin = gettext("environment under -e");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                origin = gettext("command line");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                origin = gettext("'override' directive");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                abort();
            },
            else => {},
        }
        break;
    }
    _ = fputs("# ", stdout);
    _ = fputs(origin, stdout);
    if (v.*.private_var != 0) {
        _ = fputs(" private", stdout);
    }
    if (v.*.fileinfo.filenm != null) {
        _ = printf(gettext(" (from '%s', line %lu)"), v.*.fileinfo.filenm, v.*.fileinfo.lineno +% v.*.fileinfo.offset);
    }
    _ = putchar(@as(c_int, '\n'));
    _ = fputs(prefix, stdout);
    if ((v.*.recursive != 0) and (strchr(v.*.value, @as(c_int, '\n')) != null)) {
        _ = printf("define %s\n%s\nendef\n", v.*.name, v.*.value);
    } else {
        var p: [*c]u8 = undefined;
        _ = &p;
        _ = printf("%s %s= ", v.*.name, if (v.*.recursive != 0) if (v.*.append != 0) "+" else "" else ":");
        p = next_token(v.*.value);
        if ((p != v.*.value) and (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00'))) {
            _ = printf("$(subst ,,%s)", v.*.value);
        } else if (v.*.recursive != 0) {
            _ = fputs(v.*.value, stdout);
        } else {
            p = v.*.value;
            while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '$')) {
                    _ = putchar(@as(c_int, '$'));
                }
                _ = putchar(@as(c_int, @bitCast(@as(c_uint, p.*))));
            }
        }
        _ = putchar(@as(c_int, '\n'));
    }
}
fn print_auto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    _ = &v;
    if (v.*.origin == @as(c_uint, @bitCast(o_automatic))) {
        print_variable(item, arg);
    }
}
fn print_noauto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    _ = &v;
    if (v.*.origin != @as(c_uint, @bitCast(o_automatic))) {
        print_variable(item, arg);
    }
}
fn print_variable_set(arg_set: [*c]struct_variable_set, arg_prefix: [*c]const u8, arg_pauto: c_int) callconv(.C) void {
    var set = arg_set;
    _ = &set;
    var prefix = arg_prefix;
    _ = &prefix;
    var pauto = arg_pauto;
    _ = &pauto;
    hash_map_arg(&set.*.table, if (pauto != 0) &print_auto_variable else &print_variable, @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(prefix)))));
    _ = fputs(gettext("# variable set hash-table stats:\n"), stdout);
    _ = fputs("# ", stdout);
    hash_print_stats(&set.*.table, stdout);
    _ = putc(@as(c_int, '\n'), stdout);
}
