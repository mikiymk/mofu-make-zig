pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub const gmk_floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const gmk_func_ptr = ?*const fn ([*c]const u8, c_uint, [*c][*c]u8) callconv(.C) [*c]u8;
pub extern fn gmk_free(str: [*c]u8) void;
pub extern fn gmk_alloc(len: c_uint) [*c]u8;
pub extern fn gmk_eval(buffer: [*c]const u8, floc: [*c]const gmk_floc) void;
pub extern fn gmk_expand(str: [*c]const u8) [*c]u8;
pub extern fn gmk_add_function(name: [*c]const u8, func: gmk_func_ptr, min_args: c_uint, max_args: c_uint, flags: c_uint) void;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const ino64_t = __ino64_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const off64_t = __off64_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const useconds_t = __useconds_t;
pub const suseconds_t = __suseconds_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const blkcnt64_t = __blkcnt64_t;
pub const fsblkcnt64_t = __fsblkcnt64_t;
pub const fsfilcnt64_t = __fsfilcnt64_t;
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
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
const struct_unnamed_2 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_1 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_2,
};
const struct_unnamed_4 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_3 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_4,
};
pub const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
    unnamed_1: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const struct_stat = extern struct {
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
pub const struct_stat64 = extern struct {
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
pub extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
pub extern fn stat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn fstat64(__fd: c_int, __buf: [*c]struct_stat64) c_int;
pub extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn fstatat64(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64, __flag: c_int) c_int;
pub extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn lstat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
pub extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
pub extern fn umask(__mask: __mode_t) __mode_t;
pub extern fn getumask() __mode_t;
pub extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub extern fn __fxstat(__ver: c_int, __fildes: c_int, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __xstat(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __lxstat(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __fxstatat(__ver: c_int, __fildes: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn __fxstat64(__ver: c_int, __fildes: c_int, __stat_buf: [*c]struct_stat64) c_int;
pub extern fn __xstat64(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat64) c_int;
pub extern fn __lxstat64(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat64) c_int;
pub extern fn __fxstatat64(__ver: c_int, __fildes: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat64, __flag: c_int) c_int;
pub extern fn __xmknod(__ver: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: [*c]__dev_t) c_int;
pub extern fn __xmknodat(__ver: c_int, __fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: [*c]__dev_t) c_int;
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.C) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const struct_statx_timestamp = extern struct {
    tv_sec: __s64 = @import("std").mem.zeroes(__s64),
    tv_nsec: __u32 = @import("std").mem.zeroes(__u32),
    __reserved: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_statx = extern struct {
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
    __spare2: [14]__u64 = @import("std").mem.zeroes([14]__u64),
};
pub extern fn statx(__dirfd: c_int, noalias __path: [*c]const u8, __flags: c_int, __mask: c_uint, noalias __buf: [*c]struct_statx) c_int;
pub const sig_atomic_t = __sig_atomic_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
pub const __sigval_t = union_sigval;
const struct_unnamed_6 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
};
const struct_unnamed_7 = extern struct {
    si_tid: c_int = @import("std").mem.zeroes(c_int),
    si_overrun: c_int = @import("std").mem.zeroes(c_int),
    si_sigval: __sigval_t = @import("std").mem.zeroes(__sigval_t),
};
const struct_unnamed_8 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    si_sigval: __sigval_t = @import("std").mem.zeroes(__sigval_t),
};
const struct_unnamed_9 = extern struct {
    si_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
    si_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    si_status: c_int = @import("std").mem.zeroes(c_int),
    si_utime: __clock_t = @import("std").mem.zeroes(__clock_t),
    si_stime: __clock_t = @import("std").mem.zeroes(__clock_t),
};
const struct_unnamed_12 = extern struct {
    _lower: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _upper: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
const union_unnamed_11 = extern union {
    _addr_bnd: struct_unnamed_12,
    _pkey: __uint32_t,
};
const struct_unnamed_10 = extern struct {
    si_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    si_addr_lsb: c_short = @import("std").mem.zeroes(c_short),
    _bounds: union_unnamed_11 = @import("std").mem.zeroes(union_unnamed_11),
};
const struct_unnamed_13 = extern struct {
    si_band: c_long = @import("std").mem.zeroes(c_long),
    si_fd: c_int = @import("std").mem.zeroes(c_int),
};
const struct_unnamed_14 = extern struct {
    _call_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _syscall: c_int = @import("std").mem.zeroes(c_int),
    _arch: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_5 = extern union {
    _pad: [28]c_int,
    _kill: struct_unnamed_6,
    _timer: struct_unnamed_7,
    _rt: struct_unnamed_8,
    _sigchld: struct_unnamed_9,
    _sigfault: struct_unnamed_10,
    _sigpoll: struct_unnamed_13,
    _sigsys: struct_unnamed_14,
};
pub const siginfo_t = extern struct {
    si_signo: c_int = @import("std").mem.zeroes(c_int),
    si_errno: c_int = @import("std").mem.zeroes(c_int),
    si_code: c_int = @import("std").mem.zeroes(c_int),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    _sifields: union_unnamed_5 = @import("std").mem.zeroes(union_unnamed_5),
};
pub const SI_ASYNCNL: c_int = -60;
pub const SI_DETHREAD: c_int = -7;
pub const SI_TKILL: c_int = -6;
pub const SI_SIGIO: c_int = -5;
pub const SI_ASYNCIO: c_int = -4;
pub const SI_MESGQ: c_int = -3;
pub const SI_TIMER: c_int = -2;
pub const SI_QUEUE: c_int = -1;
pub const SI_USER: c_int = 0;
pub const SI_KERNEL: c_int = 128;
const enum_unnamed_15 = c_int;
pub const ILL_ILLOPC: c_int = 1;
pub const ILL_ILLOPN: c_int = 2;
pub const ILL_ILLADR: c_int = 3;
pub const ILL_ILLTRP: c_int = 4;
pub const ILL_PRVOPC: c_int = 5;
pub const ILL_PRVREG: c_int = 6;
pub const ILL_COPROC: c_int = 7;
pub const ILL_BADSTK: c_int = 8;
pub const ILL_BADIADDR: c_int = 9;
const enum_unnamed_16 = c_uint;
pub const FPE_INTDIV: c_int = 1;
pub const FPE_INTOVF: c_int = 2;
pub const FPE_FLTDIV: c_int = 3;
pub const FPE_FLTOVF: c_int = 4;
pub const FPE_FLTUND: c_int = 5;
pub const FPE_FLTRES: c_int = 6;
pub const FPE_FLTINV: c_int = 7;
pub const FPE_FLTSUB: c_int = 8;
pub const FPE_FLTUNK: c_int = 14;
pub const FPE_CONDTRAP: c_int = 15;
const enum_unnamed_17 = c_uint;
pub const SEGV_MAPERR: c_int = 1;
pub const SEGV_ACCERR: c_int = 2;
pub const SEGV_BNDERR: c_int = 3;
pub const SEGV_PKUERR: c_int = 4;
pub const SEGV_ACCADI: c_int = 5;
pub const SEGV_ADIDERR: c_int = 6;
pub const SEGV_ADIPERR: c_int = 7;
const enum_unnamed_18 = c_uint;
pub const BUS_ADRALN: c_int = 1;
pub const BUS_ADRERR: c_int = 2;
pub const BUS_OBJERR: c_int = 3;
pub const BUS_MCEERR_AR: c_int = 4;
pub const BUS_MCEERR_AO: c_int = 5;
const enum_unnamed_19 = c_uint;
pub const TRAP_BRKPT: c_int = 1;
pub const TRAP_TRACE: c_int = 2;
pub const TRAP_BRANCH: c_int = 3;
pub const TRAP_HWBKPT: c_int = 4;
pub const TRAP_UNK: c_int = 5;
const enum_unnamed_20 = c_uint;
pub const CLD_EXITED: c_int = 1;
pub const CLD_KILLED: c_int = 2;
pub const CLD_DUMPED: c_int = 3;
pub const CLD_TRAPPED: c_int = 4;
pub const CLD_STOPPED: c_int = 5;
pub const CLD_CONTINUED: c_int = 6;
const enum_unnamed_21 = c_uint;
pub const POLL_IN: c_int = 1;
pub const POLL_OUT: c_int = 2;
pub const POLL_MSG: c_int = 3;
pub const POLL_ERR: c_int = 4;
pub const POLL_PRI: c_int = 5;
pub const POLL_HUP: c_int = 6;
const enum_unnamed_22 = c_uint;
pub const sigval_t = __sigval_t;
const struct_unnamed_24 = extern struct {
    _function: ?*const fn (__sigval_t) callconv(.C) void = @import("std").mem.zeroes(?*const fn (__sigval_t) callconv(.C) void),
    _attribute: [*c]pthread_attr_t = @import("std").mem.zeroes([*c]pthread_attr_t),
};
const union_unnamed_23 = extern union {
    _pad: [12]c_int,
    _tid: __pid_t,
    _sigev_thread: struct_unnamed_24,
};
pub const struct_sigevent = extern struct {
    sigev_value: __sigval_t = @import("std").mem.zeroes(__sigval_t),
    sigev_signo: c_int = @import("std").mem.zeroes(c_int),
    sigev_notify: c_int = @import("std").mem.zeroes(c_int),
    _sigev_un: union_unnamed_23 = @import("std").mem.zeroes(union_unnamed_23),
};
pub const sigevent_t = struct_sigevent;
pub const SIGEV_SIGNAL: c_int = 0;
pub const SIGEV_NONE: c_int = 1;
pub const SIGEV_THREAD: c_int = 2;
pub const SIGEV_THREAD_ID: c_int = 4;
const enum_unnamed_25 = c_uint;
pub const __sighandler_t = ?*const fn (c_int) callconv(.C) void;
pub extern fn __sysv_signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn sysv_signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn kill(__pid: __pid_t, __sig: c_int) c_int;
pub extern fn killpg(__pgrp: __pid_t, __sig: c_int) c_int;
pub extern fn raise(__sig: c_int) c_int;
pub extern fn ssignal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn gsignal(__sig: c_int) c_int;
pub extern fn psignal(__sig: c_int, __s: [*c]const u8) void;
pub extern fn psiginfo(__pinfo: [*c]const siginfo_t, __s: [*c]const u8) void;
pub extern fn sigpause(__sig: c_int) c_int;
pub extern fn sigblock(__mask: c_int) c_int;
pub extern fn sigsetmask(__mask: c_int) c_int;
pub extern fn siggetmask() c_int;
pub const sighandler_t = __sighandler_t;
pub const sig_t = __sighandler_t;
pub extern fn sigemptyset(__set: [*c]sigset_t) c_int;
pub extern fn sigfillset(__set: [*c]sigset_t) c_int;
pub extern fn sigaddset(__set: [*c]sigset_t, __signo: c_int) c_int;
pub extern fn sigdelset(__set: [*c]sigset_t, __signo: c_int) c_int;
pub extern fn sigismember(__set: [*c]const sigset_t, __signo: c_int) c_int;
pub extern fn sigisemptyset(__set: [*c]const sigset_t) c_int;
pub extern fn sigandset(__set: [*c]sigset_t, __left: [*c]const sigset_t, __right: [*c]const sigset_t) c_int;
pub extern fn sigorset(__set: [*c]sigset_t, __left: [*c]const sigset_t, __right: [*c]const sigset_t) c_int;
const union_unnamed_26 = extern union {
    sa_handler: __sighandler_t,
    sa_sigaction: ?*const fn (c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void,
};
pub const struct_sigaction = extern struct {
    __sigaction_handler: union_unnamed_26 = @import("std").mem.zeroes(union_unnamed_26),
    sa_mask: __sigset_t = @import("std").mem.zeroes(__sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
    sa_restorer: ?*const fn () callconv(.C) void = @import("std").mem.zeroes(?*const fn () callconv(.C) void),
};
pub extern fn sigprocmask(__how: c_int, noalias __set: [*c]const sigset_t, noalias __oset: [*c]sigset_t) c_int;
pub extern fn sigsuspend(__set: [*c]const sigset_t) c_int;
pub extern fn sigaction(__sig: c_int, noalias __act: [*c]const struct_sigaction, noalias __oact: [*c]struct_sigaction) c_int;
pub extern fn sigpending(__set: [*c]sigset_t) c_int;
pub extern fn sigwait(noalias __set: [*c]const sigset_t, noalias __sig: [*c]c_int) c_int;
pub extern fn sigwaitinfo(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t) c_int;
pub extern fn sigtimedwait(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t, noalias __timeout: [*c]const struct_timespec) c_int;
pub extern fn sigqueue(__pid: __pid_t, __sig: c_int, __val: union_sigval) c_int;
pub extern const _sys_siglist: [65][*c]const u8;
pub extern const sys_siglist: [65][*c]const u8;
pub const struct__fpx_sw_bytes = extern struct {
    magic1: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    extended_size: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    xstate_bv: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    xstate_size: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __glibc_reserved1: [7]__uint32_t = @import("std").mem.zeroes([7]__uint32_t),
};
pub const struct__fpreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const struct__fpxreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
};
pub const struct__xmmreg = extern struct {
    element: [4]__uint32_t = @import("std").mem.zeroes([4]__uint32_t),
};
pub const struct__fpstate = extern struct {
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
const union_unnamed_27 = extern union {
    fpstate: [*c]struct__fpstate,
    __fpstate_word: __uint64_t,
};
pub const struct_sigcontext = extern struct {
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
    unnamed_0: union_unnamed_27 = @import("std").mem.zeroes(union_unnamed_27),
    __reserved1: [8]__uint64_t = @import("std").mem.zeroes([8]__uint64_t),
};
pub const struct__xsave_hdr = extern struct {
    xstate_bv: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __glibc_reserved1: [2]__uint64_t = @import("std").mem.zeroes([2]__uint64_t),
    __glibc_reserved2: [5]__uint64_t = @import("std").mem.zeroes([5]__uint64_t),
};
pub const struct__ymmh_state = extern struct {
    ymmh_space: [64]__uint32_t = @import("std").mem.zeroes([64]__uint32_t),
};
pub const struct__xstate = extern struct {
    fpstate: struct__fpstate = @import("std").mem.zeroes(struct__fpstate),
    xstate_hdr: struct__xsave_hdr = @import("std").mem.zeroes(struct__xsave_hdr),
    ymmh: struct__ymmh_state = @import("std").mem.zeroes(struct__ymmh_state),
};
pub extern fn sigreturn(__scp: [*c]struct_sigcontext) c_int;
pub const stack_t = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
    ss_size: usize = @import("std").mem.zeroes(usize),
};
pub const greg_t = c_longlong;
pub const gregset_t = [23]greg_t;
pub const REG_R8: c_int = 0;
pub const REG_R9: c_int = 1;
pub const REG_R10: c_int = 2;
pub const REG_R11: c_int = 3;
pub const REG_R12: c_int = 4;
pub const REG_R13: c_int = 5;
pub const REG_R14: c_int = 6;
pub const REG_R15: c_int = 7;
pub const REG_RDI: c_int = 8;
pub const REG_RSI: c_int = 9;
pub const REG_RBP: c_int = 10;
pub const REG_RBX: c_int = 11;
pub const REG_RDX: c_int = 12;
pub const REG_RAX: c_int = 13;
pub const REG_RCX: c_int = 14;
pub const REG_RSP: c_int = 15;
pub const REG_RIP: c_int = 16;
pub const REG_EFL: c_int = 17;
pub const REG_CSGSFS: c_int = 18;
pub const REG_ERR: c_int = 19;
pub const REG_TRAPNO: c_int = 20;
pub const REG_OLDMASK: c_int = 21;
pub const REG_CR2: c_int = 22;
const enum_unnamed_28 = c_uint;
pub const struct__libc_fpxreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
};
pub const struct__libc_xmmreg = extern struct {
    element: [4]__uint32_t = @import("std").mem.zeroes([4]__uint32_t),
};
pub const struct__libc_fpstate = extern struct {
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
pub const fpregset_t = [*c]struct__libc_fpstate;
pub const mcontext_t = extern struct {
    gregs: gregset_t = @import("std").mem.zeroes(gregset_t),
    fpregs: fpregset_t = @import("std").mem.zeroes(fpregset_t),
    __reserved1: [8]c_ulonglong = @import("std").mem.zeroes([8]c_ulonglong),
};
pub const struct_ucontext_t = extern struct {
    uc_flags: c_ulong = @import("std").mem.zeroes(c_ulong),
    uc_link: [*c]struct_ucontext_t = @import("std").mem.zeroes([*c]struct_ucontext_t),
    uc_stack: stack_t = @import("std").mem.zeroes(stack_t),
    uc_mcontext: mcontext_t = @import("std").mem.zeroes(mcontext_t),
    uc_sigmask: sigset_t = @import("std").mem.zeroes(sigset_t),
    __fpregs_mem: struct__libc_fpstate = @import("std").mem.zeroes(struct__libc_fpstate),
    __ssp: [4]c_ulonglong = @import("std").mem.zeroes([4]c_ulonglong),
};
pub const ucontext_t = struct_ucontext_t;
pub extern fn siginterrupt(__sig: c_int, __interrupt: c_int) c_int;
pub const SS_ONSTACK: c_int = 1;
pub const SS_DISABLE: c_int = 2;
const enum_unnamed_29 = c_uint;
pub extern fn sigaltstack(noalias __ss: [*c]const stack_t, noalias __oss: [*c]stack_t) c_int;
pub const struct_sigstack = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_onstack: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn sigstack(__ss: [*c]struct_sigstack, __oss: [*c]struct_sigstack) c_int;
pub extern fn sighold(__sig: c_int) c_int;
pub extern fn sigrelse(__sig: c_int) c_int;
pub extern fn sigignore(__sig: c_int) c_int;
pub extern fn sigset(__sig: c_int, __disp: __sighandler_t) __sighandler_t;
pub extern fn pthread_sigmask(__how: c_int, noalias __newmask: [*c]const __sigset_t, noalias __oldmask: [*c]__sigset_t) c_int;
pub extern fn pthread_kill(__threadid: pthread_t, __signo: c_int) c_int;
pub extern fn pthread_sigqueue(__threadid: pthread_t, __signo: c_int, __value: union_sigval) c_int;
pub extern fn __libc_current_sigrtmin() c_int;
pub extern fn __libc_current_sigrtmax() c_int;
pub extern fn tgkill(__tgid: __pid_t, __tid: __pid_t, __signal: c_int) c_int;
pub const struct___va_list_tag_30 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_30;
pub const __gnuc_va_list = __builtin_va_list;
const union_unnamed_31 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_31 = @import("std").mem.zeroes(union_unnamed_31),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
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
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const va_list = __gnuc_va_list;
pub const fpos_t = __fpos_t;
pub const fpos64_t = __fpos64_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn renameat2(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8, __flags: c_uint) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpfile64() [*c]FILE;
pub extern fn tmpnam(__s: [*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fcloseall() c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_30) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn fgets_unlocked(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fputs_unlocked(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn fseeko64(__stream: [*c]FILE, __off: __off64_t, __whence: c_int) c_int;
pub extern fn ftello64(__stream: [*c]FILE) __off64_t;
pub extern fn fgetpos64(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos64_t) c_int;
pub extern fn fsetpos64(__stream: [*c]FILE, __pos: [*c]const fpos64_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern var sys_nerr: c_int;
pub const sys_errlist: [*c]const [*c]const u8 = @extern([*c]const [*c]const u8, .{
    .name = "sys_errlist",
});
pub extern var _sys_nerr: c_int;
pub const _sys_errlist: [*c]const [*c]const u8 = @extern([*c]const [*c]const u8, .{
    .name = "_sys_errlist",
});
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn cuserid(__s: [*c]u8) [*c]u8;
pub const struct_obstack = opaque {};
pub extern fn obstack_printf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, ...) c_int;
pub extern fn obstack_vprintf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, __args: [*c]struct___va_list_tag_30) c_int;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_32 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isctype(__c: c_int, __mask: c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub const struct___locale_data_33 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_33 = @import("std").mem.zeroes([13]?*struct___locale_data_33),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub const struct_timeb = extern struct {
    time: time_t = @import("std").mem.zeroes(time_t),
    millitm: c_ushort = @import("std").mem.zeroes(c_ushort),
    timezone: c_short = @import("std").mem.zeroes(c_short),
    dstflag: c_short = @import("std").mem.zeroes(c_short),
};
pub extern fn ftime(__timebuf: [*c]struct_timeb) c_int;
pub const struct_timezone = extern struct {
    tz_minuteswest: c_int = @import("std").mem.zeroes(c_int),
    tz_dsttime: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn gettimeofday(noalias __tv: [*c]struct_timeval, noalias __tz: ?*anyopaque) c_int;
pub extern fn settimeofday(__tv: [*c]const struct_timeval, __tz: [*c]const struct_timezone) c_int;
pub extern fn adjtime(__delta: [*c]const struct_timeval, __olddelta: [*c]struct_timeval) c_int;
pub const ITIMER_REAL: c_int = 0;
pub const ITIMER_VIRTUAL: c_int = 1;
pub const ITIMER_PROF: c_int = 2;
pub const enum___itimer_which = c_uint;
pub const struct_itimerval = extern struct {
    it_interval: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    it_value: struct_timeval = @import("std").mem.zeroes(struct_timeval),
};
pub const __itimer_which_t = enum___itimer_which;
pub extern fn getitimer(__which: __itimer_which_t, __value: [*c]struct_itimerval) c_int;
pub extern fn setitimer(__which: __itimer_which_t, noalias __new: [*c]const struct_itimerval, noalias __old: [*c]struct_itimerval) c_int;
pub extern fn utimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn lutimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimes(__fd: c_int, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimesat(__fd: c_int, __file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
// /usr/include/x86_64-linux-gnu/bits/timex.h:51:3: warning: struct demoted to opaque type - has bitfield
pub const struct_timex = opaque {};
pub extern fn clock_adjtime(__clock_id: __clockid_t, __utx: ?*struct_timex) c_int;
pub const struct_tm = extern struct {
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
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strptime(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm) [*c]u8;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn strptime_l(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm, __loc: locale_t) [*c]u8;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: [*c]struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern var getdate_err: c_int;
pub extern fn getdate(__string: [*c]const u8) [*c]struct_tm;
pub extern fn getdate_r(noalias __string: [*c]const u8, noalias __resbufp: [*c]struct_tm) c_int;
pub extern fn __errno_location() [*c]c_int;
pub extern var program_invocation_name: [*c]u8;
pub extern var program_invocation_short_name: [*c]u8;
pub const error_t = c_int;
pub const socklen_t = __socklen_t;
pub extern fn access(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn euidaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn eaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
pub extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
pub extern fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) __off64_t;
pub extern fn close(__fd: c_int) c_int;
pub extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
pub extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;
pub extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off_t) isize;
pub extern fn pread64(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off64_t) isize;
pub extern fn pwrite64(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off64_t) isize;
pub extern fn pipe(__pipedes: [*c]c_int) c_int;
pub extern fn pipe2(__pipedes: [*c]c_int, __flags: c_int) c_int;
pub extern fn alarm(__seconds: c_uint) c_uint;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
pub extern fn usleep(__useconds: __useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn fchdir(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn get_current_dir_name() [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn dup(__fd: c_int) c_int;
pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
pub extern fn dup3(__fd: c_int, __fd2: c_int, __flags: c_int) c_int;
pub extern var __environ: [*c][*c]u8;
pub extern var environ: [*c][*c]u8;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvpe(__file: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn nice(__inc: c_int) c_int;
pub extern fn _exit(__status: c_int) noreturn;
pub const _PC_LINK_MAX: c_int = 0;
pub const _PC_MAX_CANON: c_int = 1;
pub const _PC_MAX_INPUT: c_int = 2;
pub const _PC_NAME_MAX: c_int = 3;
pub const _PC_PATH_MAX: c_int = 4;
pub const _PC_PIPE_BUF: c_int = 5;
pub const _PC_CHOWN_RESTRICTED: c_int = 6;
pub const _PC_NO_TRUNC: c_int = 7;
pub const _PC_VDISABLE: c_int = 8;
pub const _PC_SYNC_IO: c_int = 9;
pub const _PC_ASYNC_IO: c_int = 10;
pub const _PC_PRIO_IO: c_int = 11;
pub const _PC_SOCK_MAXBUF: c_int = 12;
pub const _PC_FILESIZEBITS: c_int = 13;
pub const _PC_REC_INCR_XFER_SIZE: c_int = 14;
pub const _PC_REC_MAX_XFER_SIZE: c_int = 15;
pub const _PC_REC_MIN_XFER_SIZE: c_int = 16;
pub const _PC_REC_XFER_ALIGN: c_int = 17;
pub const _PC_ALLOC_SIZE_MIN: c_int = 18;
pub const _PC_SYMLINK_MAX: c_int = 19;
pub const _PC_2_SYMLINKS: c_int = 20;
const enum_unnamed_34 = c_uint;
pub const _SC_ARG_MAX: c_int = 0;
pub const _SC_CHILD_MAX: c_int = 1;
pub const _SC_CLK_TCK: c_int = 2;
pub const _SC_NGROUPS_MAX: c_int = 3;
pub const _SC_OPEN_MAX: c_int = 4;
pub const _SC_STREAM_MAX: c_int = 5;
pub const _SC_TZNAME_MAX: c_int = 6;
pub const _SC_JOB_CONTROL: c_int = 7;
pub const _SC_SAVED_IDS: c_int = 8;
pub const _SC_REALTIME_SIGNALS: c_int = 9;
pub const _SC_PRIORITY_SCHEDULING: c_int = 10;
pub const _SC_TIMERS: c_int = 11;
pub const _SC_ASYNCHRONOUS_IO: c_int = 12;
pub const _SC_PRIORITIZED_IO: c_int = 13;
pub const _SC_SYNCHRONIZED_IO: c_int = 14;
pub const _SC_FSYNC: c_int = 15;
pub const _SC_MAPPED_FILES: c_int = 16;
pub const _SC_MEMLOCK: c_int = 17;
pub const _SC_MEMLOCK_RANGE: c_int = 18;
pub const _SC_MEMORY_PROTECTION: c_int = 19;
pub const _SC_MESSAGE_PASSING: c_int = 20;
pub const _SC_SEMAPHORES: c_int = 21;
pub const _SC_SHARED_MEMORY_OBJECTS: c_int = 22;
pub const _SC_AIO_LISTIO_MAX: c_int = 23;
pub const _SC_AIO_MAX: c_int = 24;
pub const _SC_AIO_PRIO_DELTA_MAX: c_int = 25;
pub const _SC_DELAYTIMER_MAX: c_int = 26;
pub const _SC_MQ_OPEN_MAX: c_int = 27;
pub const _SC_MQ_PRIO_MAX: c_int = 28;
pub const _SC_VERSION: c_int = 29;
pub const _SC_PAGESIZE: c_int = 30;
pub const _SC_RTSIG_MAX: c_int = 31;
pub const _SC_SEM_NSEMS_MAX: c_int = 32;
pub const _SC_SEM_VALUE_MAX: c_int = 33;
pub const _SC_SIGQUEUE_MAX: c_int = 34;
pub const _SC_TIMER_MAX: c_int = 35;
pub const _SC_BC_BASE_MAX: c_int = 36;
pub const _SC_BC_DIM_MAX: c_int = 37;
pub const _SC_BC_SCALE_MAX: c_int = 38;
pub const _SC_BC_STRING_MAX: c_int = 39;
pub const _SC_COLL_WEIGHTS_MAX: c_int = 40;
pub const _SC_EQUIV_CLASS_MAX: c_int = 41;
pub const _SC_EXPR_NEST_MAX: c_int = 42;
pub const _SC_LINE_MAX: c_int = 43;
pub const _SC_RE_DUP_MAX: c_int = 44;
pub const _SC_CHARCLASS_NAME_MAX: c_int = 45;
pub const _SC_2_VERSION: c_int = 46;
pub const _SC_2_C_BIND: c_int = 47;
pub const _SC_2_C_DEV: c_int = 48;
pub const _SC_2_FORT_DEV: c_int = 49;
pub const _SC_2_FORT_RUN: c_int = 50;
pub const _SC_2_SW_DEV: c_int = 51;
pub const _SC_2_LOCALEDEF: c_int = 52;
pub const _SC_PII: c_int = 53;
pub const _SC_PII_XTI: c_int = 54;
pub const _SC_PII_SOCKET: c_int = 55;
pub const _SC_PII_INTERNET: c_int = 56;
pub const _SC_PII_OSI: c_int = 57;
pub const _SC_POLL: c_int = 58;
pub const _SC_SELECT: c_int = 59;
pub const _SC_UIO_MAXIOV: c_int = 60;
pub const _SC_IOV_MAX: c_int = 60;
pub const _SC_PII_INTERNET_STREAM: c_int = 61;
pub const _SC_PII_INTERNET_DGRAM: c_int = 62;
pub const _SC_PII_OSI_COTS: c_int = 63;
pub const _SC_PII_OSI_CLTS: c_int = 64;
pub const _SC_PII_OSI_M: c_int = 65;
pub const _SC_T_IOV_MAX: c_int = 66;
pub const _SC_THREADS: c_int = 67;
pub const _SC_THREAD_SAFE_FUNCTIONS: c_int = 68;
pub const _SC_GETGR_R_SIZE_MAX: c_int = 69;
pub const _SC_GETPW_R_SIZE_MAX: c_int = 70;
pub const _SC_LOGIN_NAME_MAX: c_int = 71;
pub const _SC_TTY_NAME_MAX: c_int = 72;
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS: c_int = 73;
pub const _SC_THREAD_KEYS_MAX: c_int = 74;
pub const _SC_THREAD_STACK_MIN: c_int = 75;
pub const _SC_THREAD_THREADS_MAX: c_int = 76;
pub const _SC_THREAD_ATTR_STACKADDR: c_int = 77;
pub const _SC_THREAD_ATTR_STACKSIZE: c_int = 78;
pub const _SC_THREAD_PRIORITY_SCHEDULING: c_int = 79;
pub const _SC_THREAD_PRIO_INHERIT: c_int = 80;
pub const _SC_THREAD_PRIO_PROTECT: c_int = 81;
pub const _SC_THREAD_PROCESS_SHARED: c_int = 82;
pub const _SC_NPROCESSORS_CONF: c_int = 83;
pub const _SC_NPROCESSORS_ONLN: c_int = 84;
pub const _SC_PHYS_PAGES: c_int = 85;
pub const _SC_AVPHYS_PAGES: c_int = 86;
pub const _SC_ATEXIT_MAX: c_int = 87;
pub const _SC_PASS_MAX: c_int = 88;
pub const _SC_XOPEN_VERSION: c_int = 89;
pub const _SC_XOPEN_XCU_VERSION: c_int = 90;
pub const _SC_XOPEN_UNIX: c_int = 91;
pub const _SC_XOPEN_CRYPT: c_int = 92;
pub const _SC_XOPEN_ENH_I18N: c_int = 93;
pub const _SC_XOPEN_SHM: c_int = 94;
pub const _SC_2_CHAR_TERM: c_int = 95;
pub const _SC_2_C_VERSION: c_int = 96;
pub const _SC_2_UPE: c_int = 97;
pub const _SC_XOPEN_XPG2: c_int = 98;
pub const _SC_XOPEN_XPG3: c_int = 99;
pub const _SC_XOPEN_XPG4: c_int = 100;
pub const _SC_CHAR_BIT: c_int = 101;
pub const _SC_CHAR_MAX: c_int = 102;
pub const _SC_CHAR_MIN: c_int = 103;
pub const _SC_INT_MAX: c_int = 104;
pub const _SC_INT_MIN: c_int = 105;
pub const _SC_LONG_BIT: c_int = 106;
pub const _SC_WORD_BIT: c_int = 107;
pub const _SC_MB_LEN_MAX: c_int = 108;
pub const _SC_NZERO: c_int = 109;
pub const _SC_SSIZE_MAX: c_int = 110;
pub const _SC_SCHAR_MAX: c_int = 111;
pub const _SC_SCHAR_MIN: c_int = 112;
pub const _SC_SHRT_MAX: c_int = 113;
pub const _SC_SHRT_MIN: c_int = 114;
pub const _SC_UCHAR_MAX: c_int = 115;
pub const _SC_UINT_MAX: c_int = 116;
pub const _SC_ULONG_MAX: c_int = 117;
pub const _SC_USHRT_MAX: c_int = 118;
pub const _SC_NL_ARGMAX: c_int = 119;
pub const _SC_NL_LANGMAX: c_int = 120;
pub const _SC_NL_MSGMAX: c_int = 121;
pub const _SC_NL_NMAX: c_int = 122;
pub const _SC_NL_SETMAX: c_int = 123;
pub const _SC_NL_TEXTMAX: c_int = 124;
pub const _SC_XBS5_ILP32_OFF32: c_int = 125;
pub const _SC_XBS5_ILP32_OFFBIG: c_int = 126;
pub const _SC_XBS5_LP64_OFF64: c_int = 127;
pub const _SC_XBS5_LPBIG_OFFBIG: c_int = 128;
pub const _SC_XOPEN_LEGACY: c_int = 129;
pub const _SC_XOPEN_REALTIME: c_int = 130;
pub const _SC_XOPEN_REALTIME_THREADS: c_int = 131;
pub const _SC_ADVISORY_INFO: c_int = 132;
pub const _SC_BARRIERS: c_int = 133;
pub const _SC_BASE: c_int = 134;
pub const _SC_C_LANG_SUPPORT: c_int = 135;
pub const _SC_C_LANG_SUPPORT_R: c_int = 136;
pub const _SC_CLOCK_SELECTION: c_int = 137;
pub const _SC_CPUTIME: c_int = 138;
pub const _SC_THREAD_CPUTIME: c_int = 139;
pub const _SC_DEVICE_IO: c_int = 140;
pub const _SC_DEVICE_SPECIFIC: c_int = 141;
pub const _SC_DEVICE_SPECIFIC_R: c_int = 142;
pub const _SC_FD_MGMT: c_int = 143;
pub const _SC_FIFO: c_int = 144;
pub const _SC_PIPE: c_int = 145;
pub const _SC_FILE_ATTRIBUTES: c_int = 146;
pub const _SC_FILE_LOCKING: c_int = 147;
pub const _SC_FILE_SYSTEM: c_int = 148;
pub const _SC_MONOTONIC_CLOCK: c_int = 149;
pub const _SC_MULTI_PROCESS: c_int = 150;
pub const _SC_SINGLE_PROCESS: c_int = 151;
pub const _SC_NETWORKING: c_int = 152;
pub const _SC_READER_WRITER_LOCKS: c_int = 153;
pub const _SC_SPIN_LOCKS: c_int = 154;
pub const _SC_REGEXP: c_int = 155;
pub const _SC_REGEX_VERSION: c_int = 156;
pub const _SC_SHELL: c_int = 157;
pub const _SC_SIGNALS: c_int = 158;
pub const _SC_SPAWN: c_int = 159;
pub const _SC_SPORADIC_SERVER: c_int = 160;
pub const _SC_THREAD_SPORADIC_SERVER: c_int = 161;
pub const _SC_SYSTEM_DATABASE: c_int = 162;
pub const _SC_SYSTEM_DATABASE_R: c_int = 163;
pub const _SC_TIMEOUTS: c_int = 164;
pub const _SC_TYPED_MEMORY_OBJECTS: c_int = 165;
pub const _SC_USER_GROUPS: c_int = 166;
pub const _SC_USER_GROUPS_R: c_int = 167;
pub const _SC_2_PBS: c_int = 168;
pub const _SC_2_PBS_ACCOUNTING: c_int = 169;
pub const _SC_2_PBS_LOCATE: c_int = 170;
pub const _SC_2_PBS_MESSAGE: c_int = 171;
pub const _SC_2_PBS_TRACK: c_int = 172;
pub const _SC_SYMLOOP_MAX: c_int = 173;
pub const _SC_STREAMS: c_int = 174;
pub const _SC_2_PBS_CHECKPOINT: c_int = 175;
pub const _SC_V6_ILP32_OFF32: c_int = 176;
pub const _SC_V6_ILP32_OFFBIG: c_int = 177;
pub const _SC_V6_LP64_OFF64: c_int = 178;
pub const _SC_V6_LPBIG_OFFBIG: c_int = 179;
pub const _SC_HOST_NAME_MAX: c_int = 180;
pub const _SC_TRACE: c_int = 181;
pub const _SC_TRACE_EVENT_FILTER: c_int = 182;
pub const _SC_TRACE_INHERIT: c_int = 183;
pub const _SC_TRACE_LOG: c_int = 184;
pub const _SC_LEVEL1_ICACHE_SIZE: c_int = 185;
pub const _SC_LEVEL1_ICACHE_ASSOC: c_int = 186;
pub const _SC_LEVEL1_ICACHE_LINESIZE: c_int = 187;
pub const _SC_LEVEL1_DCACHE_SIZE: c_int = 188;
pub const _SC_LEVEL1_DCACHE_ASSOC: c_int = 189;
pub const _SC_LEVEL1_DCACHE_LINESIZE: c_int = 190;
pub const _SC_LEVEL2_CACHE_SIZE: c_int = 191;
pub const _SC_LEVEL2_CACHE_ASSOC: c_int = 192;
pub const _SC_LEVEL2_CACHE_LINESIZE: c_int = 193;
pub const _SC_LEVEL3_CACHE_SIZE: c_int = 194;
pub const _SC_LEVEL3_CACHE_ASSOC: c_int = 195;
pub const _SC_LEVEL3_CACHE_LINESIZE: c_int = 196;
pub const _SC_LEVEL4_CACHE_SIZE: c_int = 197;
pub const _SC_LEVEL4_CACHE_ASSOC: c_int = 198;
pub const _SC_LEVEL4_CACHE_LINESIZE: c_int = 199;
pub const _SC_IPV6: c_int = 235;
pub const _SC_RAW_SOCKETS: c_int = 236;
pub const _SC_V7_ILP32_OFF32: c_int = 237;
pub const _SC_V7_ILP32_OFFBIG: c_int = 238;
pub const _SC_V7_LP64_OFF64: c_int = 239;
pub const _SC_V7_LPBIG_OFFBIG: c_int = 240;
pub const _SC_SS_REPL_MAX: c_int = 241;
pub const _SC_TRACE_EVENT_NAME_MAX: c_int = 242;
pub const _SC_TRACE_NAME_MAX: c_int = 243;
pub const _SC_TRACE_SYS_MAX: c_int = 244;
pub const _SC_TRACE_USER_EVENT_MAX: c_int = 245;
pub const _SC_XOPEN_STREAMS: c_int = 246;
pub const _SC_THREAD_ROBUST_PRIO_INHERIT: c_int = 247;
pub const _SC_THREAD_ROBUST_PRIO_PROTECT: c_int = 248;
const enum_unnamed_35 = c_uint;
pub const _CS_PATH: c_int = 0;
pub const _CS_V6_WIDTH_RESTRICTED_ENVS: c_int = 1;
pub const _CS_GNU_LIBC_VERSION: c_int = 2;
pub const _CS_GNU_LIBPTHREAD_VERSION: c_int = 3;
pub const _CS_V5_WIDTH_RESTRICTED_ENVS: c_int = 4;
pub const _CS_V7_WIDTH_RESTRICTED_ENVS: c_int = 5;
pub const _CS_LFS_CFLAGS: c_int = 1000;
pub const _CS_LFS_LDFLAGS: c_int = 1001;
pub const _CS_LFS_LIBS: c_int = 1002;
pub const _CS_LFS_LINTFLAGS: c_int = 1003;
pub const _CS_LFS64_CFLAGS: c_int = 1004;
pub const _CS_LFS64_LDFLAGS: c_int = 1005;
pub const _CS_LFS64_LIBS: c_int = 1006;
pub const _CS_LFS64_LINTFLAGS: c_int = 1007;
pub const _CS_XBS5_ILP32_OFF32_CFLAGS: c_int = 1100;
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS: c_int = 1101;
pub const _CS_XBS5_ILP32_OFF32_LIBS: c_int = 1102;
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS: c_int = 1103;
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS: c_int = 1104;
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS: c_int = 1105;
pub const _CS_XBS5_ILP32_OFFBIG_LIBS: c_int = 1106;
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS: c_int = 1107;
pub const _CS_XBS5_LP64_OFF64_CFLAGS: c_int = 1108;
pub const _CS_XBS5_LP64_OFF64_LDFLAGS: c_int = 1109;
pub const _CS_XBS5_LP64_OFF64_LIBS: c_int = 1110;
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS: c_int = 1111;
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS: c_int = 1112;
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS: c_int = 1113;
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS: c_int = 1114;
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS: c_int = 1115;
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS: c_int = 1116;
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS: c_int = 1117;
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS: c_int = 1118;
pub const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS: c_int = 1119;
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS: c_int = 1120;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS: c_int = 1121;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS: c_int = 1122;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS: c_int = 1123;
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS: c_int = 1124;
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS: c_int = 1125;
pub const _CS_POSIX_V6_LP64_OFF64_LIBS: c_int = 1126;
pub const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS: c_int = 1127;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS: c_int = 1128;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS: c_int = 1129;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS: c_int = 1130;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS: c_int = 1131;
pub const _CS_POSIX_V7_ILP32_OFF32_CFLAGS: c_int = 1132;
pub const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS: c_int = 1133;
pub const _CS_POSIX_V7_ILP32_OFF32_LIBS: c_int = 1134;
pub const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS: c_int = 1135;
pub const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS: c_int = 1136;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS: c_int = 1137;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LIBS: c_int = 1138;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS: c_int = 1139;
pub const _CS_POSIX_V7_LP64_OFF64_CFLAGS: c_int = 1140;
pub const _CS_POSIX_V7_LP64_OFF64_LDFLAGS: c_int = 1141;
pub const _CS_POSIX_V7_LP64_OFF64_LIBS: c_int = 1142;
pub const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS: c_int = 1143;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS: c_int = 1144;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS: c_int = 1145;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS: c_int = 1146;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS: c_int = 1147;
pub const _CS_V6_ENV: c_int = 1148;
pub const _CS_V7_ENV: c_int = 1149;
const enum_unnamed_36 = c_uint;
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn getpid() __pid_t;
pub extern fn getppid() __pid_t;
pub extern fn getpgrp() __pid_t;
pub extern fn __getpgid(__pid: __pid_t) __pid_t;
pub extern fn getpgid(__pid: __pid_t) __pid_t;
pub extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setsid() __pid_t;
pub extern fn getsid(__pid: __pid_t) __pid_t;
pub extern fn getuid() __uid_t;
pub extern fn geteuid() __uid_t;
pub extern fn getgid() __gid_t;
pub extern fn getegid() __gid_t;
pub extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
pub extern fn group_member(__gid: __gid_t) c_int;
pub extern fn setuid(__uid: __uid_t) c_int;
pub extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
pub extern fn seteuid(__uid: __uid_t) c_int;
pub extern fn setgid(__gid: __gid_t) c_int;
pub extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
pub extern fn setegid(__gid: __gid_t) c_int;
pub extern fn getresuid(__ruid: [*c]__uid_t, __euid: [*c]__uid_t, __suid: [*c]__uid_t) c_int;
pub extern fn getresgid(__rgid: [*c]__gid_t, __egid: [*c]__gid_t, __sgid: [*c]__gid_t) c_int;
pub extern fn setresuid(__ruid: __uid_t, __euid: __uid_t, __suid: __uid_t) c_int;
pub extern fn setresgid(__rgid: __gid_t, __egid: __gid_t, __sgid: __gid_t) c_int;
pub extern fn fork() __pid_t;
pub extern fn vfork() c_int;
pub extern fn ttyname(__fd: c_int) [*c]u8;
pub extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn isatty(__fd: c_int) c_int;
pub extern fn ttyslot() c_int;
pub extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
pub extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
pub extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn unlink(__name: [*c]const u8) c_int;
pub extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn tcgetpgrp(__fd: c_int) __pid_t;
pub extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
pub extern fn getlogin() [*c]u8;
pub extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
pub extern fn setlogin(__name: [*c]const u8) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn sethostid(__id: c_long) c_int;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn vhangup() c_int;
pub extern fn revoke(__file: [*c]const u8) c_int;
pub extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
pub extern fn acct(__name: [*c]const u8) c_int;
pub extern fn getusershell() [*c]u8;
pub extern fn endusershell() void;
pub extern fn setusershell() void;
pub extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn syncfs(__fd: c_int) c_int;
pub extern fn gethostid() c_long;
pub extern fn sync() void;
pub extern fn getpagesize() c_int;
pub extern fn getdtablesize() c_int;
pub extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
pub extern fn truncate64(__file: [*c]const u8, __length: __off64_t) c_int;
pub extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
pub extern fn ftruncate64(__fd: c_int, __length: __off64_t) c_int;
pub extern fn brk(__addr: ?*anyopaque) c_int;
pub extern fn sbrk(__delta: isize) ?*anyopaque;
pub extern fn syscall(__sysno: c_long, ...) c_long;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
pub extern fn lockf64(__fd: c_int, __cmd: c_int, __len: __off64_t) c_int;
pub extern fn copy_file_range(__infd: c_int, __pinoff: [*c]__off64_t, __outfd: c_int, __poutoff: [*c]__off64_t, __length: usize, __flags: c_uint) isize;
pub extern fn fdatasync(__fildes: c_int) c_int;
pub extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
pub extern fn swab(noalias __from: ?*const anyopaque, noalias __to: ?*anyopaque, __n: isize) void;
pub extern fn getentropy(__buffer: ?*anyopaque, __length: usize) c_int;
pub extern fn gettid() __pid_t;
pub const P_ALL: c_int = 0;
pub const P_PID: c_int = 1;
pub const P_PGID: c_int = 2;
pub const idtype_t = c_uint;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtof32(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32;
pub extern fn strtof64(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64;
pub extern fn strtof32x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32x;
pub extern fn strtof64x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64x;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strfromd(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
pub extern fn strfromf(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f32) c_int;
pub extern fn strfroml(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: c_longdouble) c_int;
pub extern fn strfromf32(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32) c_int;
pub extern fn strfromf64(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64) c_int;
pub extern fn strfromf32x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32x) c_int;
pub extern fn strfromf64x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64x) c_int;
pub extern fn strtol_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_long;
pub extern fn strtoul_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulong;
pub extern fn strtoll_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_longlong;
pub extern fn strtoull_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulonglong;
pub extern fn strtod_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
pub extern fn strtof_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f32;
pub extern fn strtold_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) c_longdouble;
pub extern fn strtof32_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32;
pub extern fn strtof64_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64;
pub extern fn strtof32x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32x;
pub extern fn strtof64x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64x;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn secure_getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemp64(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkstemps64(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn mkostemp(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemp64(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemps(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn mkostemps64(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn canonicalize_file_name(__name: [*c]const u8) [*c]u8;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub const comparison_fn_t = __compar_fn_t;
pub const __compar_d_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn qsort_r(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_d_fn_t, __arg: ?*anyopaque) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn posix_openpt(__oflag: c_int) c_int;
pub extern fn grantpt(__fd: c_int) c_int;
pub extern fn unlockpt(__fd: c_int) c_int;
pub extern fn ptsname(__fd: c_int) [*c]u8;
pub extern fn ptsname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn getpt() c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn rawmemchr(__s: ?*const anyopaque, __c: c_int) ?*anyopaque;
pub extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) [*c]u8;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strverscmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strfry(__string: [*c]u8) [*c]u8;
pub extern fn memfrob(__s: ?*anyopaque, __n: usize) ?*anyopaque;
pub extern fn basename(__filename: [*c]const u8) [*c]u8;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub extern fn imaxabs(__n: intmax_t) intmax_t;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
pub const struct_lconv = extern struct {
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
pub extern fn setlocale(__category: c_int, __locale: [*c]const u8) [*c]u8;
pub extern fn localeconv() [*c]struct_lconv;
pub extern fn newlocale(__category_mask: c_int, __locale: [*c]const u8, __base: locale_t) locale_t;
pub extern fn duplocale(__dataset: locale_t) locale_t;
pub extern fn freelocale(__dataset: locale_t) void;
pub extern fn uselocale(__dataset: locale_t) locale_t;
pub extern fn gettext(__msgid: [*c]const u8) [*c]u8;
pub extern fn dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
pub extern fn __dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
pub extern fn dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
pub extern fn __dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
pub extern fn ngettext(__msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn dngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn dcngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong, __category: c_int) [*c]u8;
pub extern fn textdomain(__domainname: [*c]const u8) [*c]u8;
pub extern fn bindtextdomain(__domainname: [*c]const u8, __dirname: [*c]const u8) [*c]u8;
pub extern fn bind_textdomain_codeset(__domainname: [*c]const u8, __codeset: [*c]const u8) [*c]u8;
pub const __size_t = c_ulong;
pub const struct_dirent_37 = opaque {};
pub const glob_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_37 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_37),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
};
pub const struct_dirent64_38 = opaque {};
pub const glob64_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent64_38 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent64_38),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat64) callconv(.C) c_int),
};
pub extern fn glob(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob_t) c_int;
pub extern fn globfree(__pglob: [*c]glob_t) void;
pub extern fn glob64(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob64_t) c_int;
pub extern fn globfree64(__pglob: [*c]glob64_t) void;
pub extern fn glob_pattern_p(__pattern: [*c]const u8, __quote: c_int) c_int;
// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
pub const struct_dep = opaque {};
// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
pub const struct_commands = opaque {};
pub const hash_func_t = ?*const fn (?*const anyopaque) callconv(.C) c_ulong;
pub const hash_cmp_func_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub const struct_hash_table = extern struct {
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
pub const struct_variable_set = extern struct {
    table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table),
};
pub const struct_variable_set_list = extern struct {
    next: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    set: [*c]struct_variable_set = @import("std").mem.zeroes([*c]struct_variable_set),
    next_is_parent: c_int = @import("std").mem.zeroes(c_int),
};
// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
pub const struct_file = opaque {};
pub const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub extern fn concat(c_uint, ...) [*c]const u8;
pub extern fn message(prefix: c_int, length: usize, fmt: [*c]const u8, ...) void;
pub extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
pub extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;
pub extern fn out_of_memory() noreturn;
pub const o_default: c_int = 0;
pub const o_env: c_int = 1;
pub const o_file: c_int = 2;
pub const o_env_override: c_int = 3;
pub const o_command: c_int = 4;
pub const o_override: c_int = 5;
pub const o_automatic: c_int = 6;
pub const o_invalid: c_int = 7;
pub const enum_variable_origin = c_int;
// src/variable.h:68:18: warning: struct demoted to opaque type - has bitfield
pub const struct_variable = opaque {};
pub extern fn reset_makeflags(origin: enum_variable_origin) void;
pub extern fn define_makeflags(makefile: c_int) ?*struct_variable;
pub extern fn should_print_dir() c_int;
pub extern fn temp_stdin_unlink() void;
pub extern fn die(c_int) noreturn;
pub extern fn pfatal_with_name([*c]const u8) noreturn;
pub extern fn perror_with_name([*c]const u8, [*c]const u8) void;
pub extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;
pub extern fn make_lltoa(c_longlong, [*c]u8) [*c]u8;
pub extern fn make_ulltoa(c_ulonglong, [*c]u8) [*c]u8;
pub extern fn make_seed(c_uint) void;
pub extern fn make_rand() c_uint;
pub extern fn make_pid() pid_t;
pub extern fn xmalloc(usize) ?*anyopaque;
pub extern fn xcalloc(usize) ?*anyopaque;
pub extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
pub extern fn xstrdup([*c]const u8) [*c]u8;
pub extern fn xstrndup([*c]const u8, usize) [*c]u8;
pub extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
pub extern fn next_token([*c]const u8) [*c]u8;
pub extern fn end_of_token([*c]const u8) [*c]u8;
pub extern fn collapse_continuations([*c]u8) void;
pub extern fn lindex([*c]const u8, [*c]const u8, c_int) [*c]u8;
pub extern fn alpha_compare(?*const anyopaque, ?*const anyopaque) c_int;
pub extern fn print_spaces(c_uint) void;
pub export fn find_percent(arg_pattern: [*c]u8) [*c]u8 {
    var pattern = arg_pattern;
    _ = &pattern;
    return find_char_unquote(pattern, @as(c_int, '%'));
}
// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/read.c:2540:1: warning: unable to translate function, demoted to extern
pub extern fn find_percent_cached(arg_string: [*c][*c]const u8) [*c]const u8;
pub extern fn get_tmpdir() [*c]const u8;
pub extern fn get_tmpfd([*c][*c]u8) c_int;
pub extern fn get_tmpfile([*c][*c]u8) [*c]FILE;
pub extern fn writebuf(c_int, ?*const anyopaque, usize) isize;
pub extern fn readbuf(c_int, ?*anyopaque, usize) isize;
pub extern fn ar_name([*c]const u8) c_int;
pub extern fn ar_parse_name([*c]const u8, [*c][*c]u8, [*c][*c]u8) void;
pub extern fn ar_touch([*c]const u8) c_int;
pub extern fn ar_member_date([*c]const u8) time_t;
pub const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;
pub extern fn ar_scan(archive: [*c]const u8, function: ar_member_func_t, arg: ?*const anyopaque) intmax_t;
pub extern fn ar_name_equal(name: [*c]const u8, mem: [*c]const u8, truncated: c_int) c_int;
pub extern fn ar_member_touch(arname: [*c]const u8, memname: [*c]const u8) c_int;
pub extern fn dir_file_exists_p([*c]const u8, [*c]const u8) c_int;
pub extern fn file_exists_p([*c]const u8) c_int;
pub extern fn file_impossible_p([*c]const u8) c_int;
pub extern fn file_impossible([*c]const u8) void;
pub extern fn dir_name([*c]const u8) [*c]const u8;
pub extern fn print_dir_data_base() void;
pub extern fn dir_setup_glob([*c]glob_t) void;
pub extern fn hash_init_directories() void;
pub extern fn define_default_variables() void;
pub extern fn undefine_default_variables() void;
pub extern fn set_default_suffixes() void;
pub extern fn install_default_suffix_rules() void;
pub extern fn install_default_implicit_rules() void;
pub extern fn build_vpath_lists() void;
pub extern fn construct_vpath_list(pattern: [*c]u8, dirpath: [*c]u8) void;
pub extern fn vpath_search(file: [*c]const u8, mtime_ptr: [*c]uintmax_t, vpath_index: [*c]c_uint, path_index: [*c]c_uint) [*c]const u8;
pub extern fn gpath_search(file: [*c]const u8, len: usize) c_int;
pub export fn construct_include_path(arg_arg_dirs: [*c][*c]const u8) void {
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
            dirs[blk: {
                    const ref = &idx;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }] = strcache_add_len(dir, len);
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
                    dirs[blk: {
                            const ref = &idx;
                            const tmp = ref.*;
                            ref.* +%= 1;
                            break :blk tmp;
                        }] = strcache_add_len(cpp.*, len);
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
pub extern fn strip_whitespace(begpp: [*c][*c]const u8, endpp: [*c][*c]const u8) [*c]u8;
pub extern fn show_goal_error() void;
pub extern fn strcache_init() void;
pub extern fn strcache_print_stats(prefix: [*c]const u8) void;
pub extern fn strcache_iscached(str: [*c]const u8) c_int;
pub extern fn strcache_add(str: [*c]const u8) [*c]const u8;
pub extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;
pub extern fn guile_gmake_setup(flocp: [*c]const floc) c_int;
pub const load_func_t = ?*const fn ([*c]const floc) callconv(.C) c_int;
pub extern fn load_file(flocp: [*c]const floc, file: ?*struct_file, noerror: c_int) c_int;
pub extern fn unload_file(name: [*c]const u8) c_int;
pub extern var reading_file: [*c]const floc;
pub extern var expanding_var: [*c][*c]const floc;
pub const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});
pub extern var just_print_flag: c_int;
pub extern var run_silent: c_int;
pub extern var ignore_errors_flag: c_int;
pub extern var keep_going_flag: c_int;
pub extern var print_data_base_flag: c_int;
pub extern var question_flag: c_int;
pub extern var touch_flag: c_int;
pub extern var always_make_flag: c_int;
pub extern var env_overrides: c_int;
pub extern var no_builtin_rules_flag: c_int;
pub extern var no_builtin_variables_flag: c_int;
pub extern var print_version_flag: c_int;
pub extern var check_symlink_flag: c_int;
pub extern var warn_undefined_variables_flag: c_int;
pub extern var posix_pedantic: c_int;
pub extern var not_parallel: c_int;
pub extern var second_expansion: c_int;
pub extern var clock_skew_detected: c_int;
pub extern var rebuilding_makefiles: c_int;
pub extern var one_shell: c_int;
pub extern var output_sync: c_int;
pub extern var verify_flag: c_int;
pub extern var command_count: c_ulong;
pub extern var default_shell: [*c]const u8;
pub extern var batch_mode_shell: c_int;
pub extern var cmd_prefix: u8;
pub extern var no_intermediates: c_uint;
pub extern var jobserver_auth: [*c]u8;
pub extern var job_slots: c_uint;
pub extern var max_load_average: f64;
pub extern var program: [*c]const u8;
pub extern fn remote_setup() void;
pub extern fn remote_cleanup() void;
pub extern fn start_remote_job_p(c_int) c_int;
pub extern fn start_remote_job([*c][*c]u8, [*c][*c]u8, c_int, [*c]c_int, [*c]pid_t, [*c]c_int) c_int;
pub extern fn remote_status([*c]c_int, [*c]c_int, [*c]c_int, c_int) c_int;
pub extern fn block_remote_children() void;
pub extern fn unblock_remote_children() void;
pub extern fn remote_kill(id: pid_t, sig: c_int) c_int;
pub extern fn print_variable_data_base() void;
pub extern fn print_vpath_data_base() void;
pub extern var starting_directory: [*c]u8;
pub extern var makelevel: c_uint;
pub extern var version_string: [*c]u8;
pub extern var remote_description: [*c]u8;
pub extern var make_host: [*c]u8;
pub extern var commands_started: c_uint;
pub extern var handling_fatal_signal: sig_atomic_t;
pub const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
pub const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;
pub const qsort_cmp_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;
pub extern fn hash_load(ht: [*c]struct_hash_table, item_table: ?*anyopaque, cardinality: c_ulong, size: c_ulong) void;
pub extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
pub extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
pub extern fn hash_insert(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;
pub extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;
pub extern fn hash_delete(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;
pub extern fn hash_delete_at(ht: [*c]struct_hash_table, slot: ?*const anyopaque) ?*anyopaque;
pub extern fn hash_delete_items(ht: [*c]struct_hash_table) void;
pub extern fn hash_free_items(ht: [*c]struct_hash_table) void;
pub extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;
pub extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
pub extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
pub extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;
pub extern fn hash_dump(ht: [*c]struct_hash_table, vector_0: [*c]?*anyopaque, compare: qsort_cmp_t) [*c]?*anyopaque;
pub extern fn jhash(key: [*c]const u8, n: c_int) c_uint;
pub extern fn jhash_string(key: [*c]const u8) c_uint;
pub extern var hash_deleted_item: ?*anyopaque;
pub extern var default_file: ?*struct_file;
pub extern fn lookup_file(name: [*c]const u8) ?*struct_file;
pub extern fn enter_file(name: [*c]const u8) ?*struct_file;
pub extern fn split_prereqs(prereqstr: [*c]u8) ?*struct_dep;
pub extern fn enter_prereqs(prereqs: ?*struct_dep, stem: [*c]const u8) ?*struct_dep;
pub extern fn expand_deps(f: ?*struct_file) void;
pub extern fn expand_extra_prereqs(extra: ?*const struct_variable) ?*struct_dep;
pub extern fn remove_intermediates(sig: c_int) void;
pub extern fn snap_deps() void;
pub extern fn rename_file(file: ?*struct_file, name: [*c]const u8) void;
pub extern fn rehash_file(file: ?*struct_file, name: [*c]const u8) void;
pub const cs_not_started: c_int = 0;
pub const cs_deps_running: c_int = 1;
pub const cs_running: c_int = 2;
pub const cs_finished: c_int = 3;
pub const enum_cmd_state_39 = c_uint;
pub extern fn set_command_state(file: ?*struct_file, state: enum_cmd_state_39) void;
pub extern fn notice_finished_file(file: ?*struct_file) void;
pub extern fn init_hash_files() void;
pub extern fn verify_file_data_base() void;
pub extern fn build_target_list(old_list: [*c]u8) [*c]u8;
pub extern fn print_prereqs(deps: ?*const struct_dep) void;
pub extern fn print_file_data_base() void;
pub extern fn try_implicit_rule(file: ?*struct_file, depth: c_uint) c_int;
pub extern fn stemlen_compare(v1: ?*const anyopaque, v2: ?*const anyopaque) c_int;
pub extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;
pub extern fn file_timestamp_now([*c]c_int) uintmax_t;
pub extern fn file_timestamp_sprintf(p: [*c]u8, ts: uintmax_t) void;
pub extern fn f_mtime(file: ?*struct_file, search: c_int) uintmax_t;
pub extern var snapped_deps: c_int;
pub const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
pub const struct_goaldep = opaque {};
pub export fn parse_file_seq(arg_stringp: [*c][*c]u8, arg_size: usize, arg_stopmap: c_int, arg_prefix: [*c]const u8, arg_flags: c_int) ?*anyopaque {
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
                tp[blk: {
                        const ref = &nlen;
                        const tmp = ref.*;
                        ref.* +%= 1;
                        break :blk tmp;
                    }] = ')';
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
                    @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
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
                            @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
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
                    @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
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
pub const struct_passwd = extern struct {
    pw_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_passwd: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    pw_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    pw_gecos: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_dir: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_shell: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub export fn tilde_expand(arg_name: [*c]const u8) [*c]u8 {
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
            home_dir = allocated_variable_expand_for_file("$(HOME)", @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
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
pub extern fn ar_glob(arname: [*c]const u8, member_pattern: [*c]const u8, size: usize) [*c]struct_nameseq;
pub extern fn free_ns_chain(n: [*c]struct_nameseq) void;
pub extern fn copy_dep_chain(d: ?*const struct_dep) ?*struct_dep;
pub export fn read_all_makefiles(arg_makefiles: [*c][*c]const u8) ?*struct_goaldep {
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
        value = allocated_variable_expand_for_file("$(MAKEFILES)", @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
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
        var d: ?*struct_goaldep = eval_makefile(makefiles.*, @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 0))))));
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
                    var d: ?*struct_goaldep = @as(?*struct_goaldep, @ptrCast(xcalloc(@sizeOf(struct_goaldep))));
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
pub const struct_ebuffer = extern struct {
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufnext: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufstart: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: usize = @import("std").mem.zeroes(usize),
    fp: [*c]FILE = @import("std").mem.zeroes([*c]FILE),
    floc: floc = @import("std").mem.zeroes(floc),
};
pub const struct_conditionals = extern struct {
    if_cmds: c_uint = @import("std").mem.zeroes(c_uint),
    allocated: c_uint = @import("std").mem.zeroes(c_uint),
    ignoring: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    seen_else: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub export fn eval_buffer(arg_buffer: [*c]u8, arg_flocp: [*c]const floc) void {
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
pub const us_success: c_int = 0;
pub const us_none: c_int = 1;
pub const us_question: c_int = 2;
pub const us_failed: c_int = 3;
pub const enum_update_status_40 = c_uint;
pub extern fn update_goal_chain(goals: ?*struct_goaldep) enum_update_status_40;
// src/output.h:21:18: warning: struct demoted to opaque type - has bitfield
pub const struct_output = opaque {};
pub extern var output_context: ?*struct_output;
pub extern var stdio_traced: c_uint;
pub extern fn output_write(fd: c_int, buffer: ?*const anyopaque, len: usize) c_int;
pub extern fn output_init(out: ?*struct_output) void;
pub extern fn output_close(out: ?*struct_output) void;
pub extern fn output_start() void;
pub extern fn outputs(is_err: c_int, msg: [*c]const u8) void;
pub extern fn output_dump(out: ?*struct_output) void;
pub const struct_childbase = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
};
// src/job.h:59:19: warning: struct demoted to opaque type - has bitfield
pub const struct_child = opaque {};
pub extern var children: ?*struct_child;
pub extern fn child_handler(sig: c_int) void;
pub extern fn is_bourne_compatible_shell(path: [*c]const u8) c_int;
pub extern fn new_job(file: ?*struct_file) void;
pub extern fn reap_children(block: c_int, err: c_int) void;
pub extern fn start_waiting_jobs() void;
pub extern fn free_childbase(child: ?*struct_childbase) void;
pub extern fn construct_command_argv(line: [*c]u8, restp: [*c][*c]u8, file: ?*struct_file, cmd_flags: c_int, batch_file: [*c][*c]u8) [*c][*c]u8;
pub extern fn child_execute_job(child: ?*struct_childbase, good_stdin: c_int, argv: [*c][*c]u8) pid_t;
pub extern fn exec_command(argv: [*c][*c]u8, envp: [*c][*c]u8) pid_t;
pub extern fn unblock_all_sigs() void;
pub extern var job_slots_used: c_uint;
pub extern var jobserver_tokens: c_uint;
pub extern fn check_io_state() c_uint;
pub extern fn fd_inherit(c_int) void;
pub extern fn fd_noinherit(c_int) void;
pub extern fn fd_set_append(c_int) void;
pub extern fn os_anontmp() c_int;
pub extern fn jobserver_enabled() c_uint;
pub extern fn jobserver_setup(job_slots: c_int, style: [*c]const u8) c_uint;
pub extern fn jobserver_parse_auth(auth: [*c]const u8) c_uint;
pub extern fn jobserver_get_auth() [*c]u8;
pub extern fn jobserver_get_invalid_auth() [*c]const u8;
pub extern fn jobserver_clear() void;
pub extern fn jobserver_acquire_all() c_uint;
pub extern fn jobserver_release(is_fatal: c_int) void;
pub extern fn jobserver_signal() void;
pub extern fn jobserver_pre_child(c_int) void;
pub extern fn jobserver_post_child(c_int) void;
pub extern fn jobserver_pre_acquire() void;
pub extern fn jobserver_acquire(timeout: c_int) c_uint;
pub extern fn osync_enabled() c_uint;
pub extern fn osync_setup() void;
pub extern fn osync_get_mutex() [*c]u8;
pub extern fn osync_parse_mutex(mutex: [*c]const u8) c_uint;
pub extern fn osync_clear() void;
pub extern fn osync_acquire() c_uint;
pub extern fn osync_release() void;
pub extern fn get_bad_stdin() c_int;
pub extern fn fatal_error_signal(sig: c_int) void;
pub extern fn execute_file_commands(file: ?*struct_file) void;
pub extern fn print_commands(cmds: ?*const struct_commands) void;
pub extern fn delete_child_targets(child: ?*struct_child) void;
pub extern fn chop_commands(cmds: ?*struct_commands) void;
pub extern fn set_file_variables(file: ?*struct_file, stem: [*c]const u8) void;
pub const f_bogus: c_int = 0;
pub const f_simple: c_int = 1;
pub const f_recursive: c_int = 2;
pub const f_expand: c_int = 3;
pub const f_append: c_int = 4;
pub const f_conditional: c_int = 5;
pub const f_shell: c_int = 6;
pub const f_append_value: c_int = 7;
pub const enum_variable_flavor = c_uint;
pub const v_default: c_int = 0;
pub const v_export: c_int = 1;
pub const v_noexport: c_int = 2;
pub const v_ifset: c_int = 3;
pub const enum_variable_export = c_uint;
pub const struct_pattern_var = extern struct {
    next: ?*struct_pattern_var = @import("std").mem.zeroes(?*struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};
pub extern var env_recursion: c_ulonglong;
pub extern var variable_buffer: [*c]u8;
pub extern var current_variable_set_list: [*c]struct_variable_set_list;
pub extern var default_goal_var: ?*struct_variable;
pub extern var shell_var: struct_variable;
pub extern fn variable_buffer_output(ptr: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;
pub extern fn variable_expand(line: [*c]const u8) [*c]u8;
pub extern fn variable_expand_for_file(line: [*c]const u8, file: ?*struct_file) [*c]u8;
pub extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: ?*struct_file) [*c]u8;
pub extern fn expand_argument(str: [*c]const u8, end: [*c]const u8) [*c]u8;
pub extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;
pub extern fn initialize_variable_output() [*c]u8;
pub extern fn install_variable_buffer(bufp: [*c][*c]u8, lenp: [*c]usize) void;
pub extern fn restore_variable_buffer(buf: [*c]u8, len: usize) void;
pub extern fn handle_function(op: [*c][*c]u8, stringp: [*c][*c]const u8) c_int;
pub extern fn pattern_matches(pattern: [*c]const u8, percent: [*c]const u8, str: [*c]const u8) c_int;
pub extern fn subst_expand(o: [*c]u8, text: [*c]const u8, subst: [*c]const u8, replace: [*c]const u8, slen: usize, rlen: usize, by_word: c_int) [*c]u8;
pub extern fn patsubst_expand_pat(o: [*c]u8, text: [*c]const u8, pattern: [*c]const u8, replace: [*c]const u8, pattern_percent: [*c]const u8, replace_percent: [*c]const u8) [*c]u8;
pub extern fn patsubst_expand(o: [*c]u8, text: [*c]const u8, pattern: [*c]u8, replace: [*c]u8) [*c]u8;
pub extern fn func_shell_base(o: [*c]u8, argv: [*c][*c]u8, trim_newlines: c_int) [*c]u8;
pub extern fn shell_completed(exit_code: c_int, exit_sig: c_int) void;
pub extern fn recursively_expand_for_file(v: ?*struct_variable, file: ?*struct_file) [*c]u8;
pub extern fn create_new_variable_set() [*c]struct_variable_set_list;
pub extern fn free_variable_set([*c]struct_variable_set_list) void;
pub extern fn push_new_variable_scope() [*c]struct_variable_set_list;
pub extern fn pop_variable_scope() void;
pub extern fn define_automatic_variables() void;
pub extern fn initialize_file_variables(file: ?*struct_file, reading: c_int) void;
pub extern fn print_file_variables(file: ?*const struct_file) void;
pub extern fn print_target_variables(file: ?*const struct_file) void;
pub extern fn merge_variable_set_lists(to_list: [*c][*c]struct_variable_set_list, from_list: [*c]struct_variable_set_list) void;
pub extern fn do_variable_definition(flocp: [*c]const floc, name: [*c]const u8, value: [*c]const u8, origin: enum_variable_origin, flavor: enum_variable_flavor, target_var: c_int) ?*struct_variable;
pub extern fn parse_variable_definition(line: [*c]const u8, v: ?*struct_variable) [*c]u8;
pub extern fn assign_variable_definition(v: ?*struct_variable, line: [*c]const u8) ?*struct_variable;
pub extern fn try_variable_definition(flocp: [*c]const floc, line: [*c]const u8, origin: enum_variable_origin, target_var: c_int) ?*struct_variable;
pub extern fn init_hash_global_variable_set() void;
pub extern fn hash_init_function_table() void;
pub extern fn define_new_function(flocp: [*c]const floc, name: [*c]const u8, min: c_uint, max: c_uint, flags: c_uint, func: gmk_func_ptr) void;
pub extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;
pub extern fn lookup_variable_for_file(name: [*c]const u8, length: usize, file: ?*struct_file) ?*struct_variable;
pub extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) ?*struct_variable;
pub extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) ?*struct_variable;
pub extern fn warn_undefined(name: [*c]const u8, length: usize) void;
pub extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;
pub extern fn target_environment(file: ?*struct_file, recursive: c_int) [*c][*c]u8;
pub extern fn create_pattern_var(target: [*c]const u8, suffix: [*c]const u8) ?*struct_pattern_var;
pub extern var export_all_variables: c_int;
pub const struct_rule = extern struct {
    next: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    targets: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    lens: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    suffixes: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    deps: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    cmds: ?*struct_commands = @import("std").mem.zeroes(?*struct_commands),
    _defn: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num: c_ushort = @import("std").mem.zeroes(c_ushort),
    terminal: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
};
pub const struct_pspec = extern struct {
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dep: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    commands: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub extern var pattern_rules: [*c]struct_rule;
pub extern var last_pattern_rule: [*c]struct_rule;
pub extern var num_pattern_rules: c_uint;
pub extern var max_pattern_deps: c_uint;
pub extern var max_pattern_targets: c_uint;
pub extern var max_pattern_dep_length: usize;
pub extern var suffix_file: ?*struct_file;
pub extern fn snap_implicit_rules() void;
pub extern fn convert_to_pattern() void;
pub extern fn install_pattern_rule(p: [*c]struct_pspec, terminal: c_int) void;
pub extern fn create_pattern_rule(targets: [*c][*c]const u8, target_percents: [*c][*c]const u8, num: c_ushort, terminal: c_int, deps: ?*struct_dep, commands: ?*struct_commands, override: c_int) void;
pub extern fn get_rule_defn(rule: [*c]struct_rule) [*c]const u8;
pub extern fn print_rule_data_base() void;
pub extern var db_level: c_int;
pub extern fn setpwent() void;
pub extern fn endpwent() void;
pub extern fn getpwent() [*c]struct_passwd;
pub extern fn fgetpwent(__stream: [*c]FILE) [*c]struct_passwd;
pub extern fn putpwent(noalias __p: [*c]const struct_passwd, noalias __f: [*c]FILE) c_int;
pub extern fn getpwuid(__uid: __uid_t) [*c]struct_passwd;
pub extern fn getpwnam(__name: [*c]const u8) [*c]struct_passwd;
pub extern fn getpwent_r(noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
pub extern fn getpwuid_r(__uid: __uid_t, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
pub extern fn getpwnam_r(noalias __name: [*c]const u8, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
pub extern fn fgetpwent_r(noalias __stream: [*c]FILE, noalias __resultbuf: [*c]struct_passwd, noalias __buffer: [*c]u8, __buflen: usize, noalias __result: [*c][*c]struct_passwd) c_int;
pub extern fn getpw(__uid: __uid_t, __buffer: [*c]u8) c_int;
// src/read.c:63:18: warning: struct demoted to opaque type - has bitfield
pub const struct_vmodifiers = opaque {};
pub const w_bogus: c_int = 0;
pub const w_eol: c_int = 1;
pub const w_static: c_int = 2;
pub const w_variable: c_int = 3;
pub const w_colon: c_int = 4;
pub const w_dcolon: c_int = 5;
pub const w_semicolon: c_int = 6;
pub const w_varassign: c_int = 7;
pub const w_ampcolon: c_int = 8;
pub const w_ampdcolon: c_int = 9;
pub const enum_make_word_type = c_uint;
pub var toplevel_conditionals: struct_conditionals = @import("std").mem.zeroes(struct_conditionals);
pub var conditionals: [*c]struct_conditionals = &toplevel_conditionals;
pub var default_include_directories: [4][*c]const u8 = [4][*c]const u8{
    "/usr/gnu/include",
    "/usr/local/include",
    "/usr/include",
    null,
};
pub var include_directories: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8);
pub var max_incl_len: usize = @import("std").mem.zeroes(usize);
pub var read_files: ?*struct_goaldep = null;
pub fn eval_makefile(arg_filename: [*c]const u8, arg_flags: c_ushort) callconv(.C) ?*struct_goaldep {
    var filename = arg_filename;
    _ = &filename;
    var flags = arg_flags;
    _ = &flags;
    var deps: ?*struct_goaldep = undefined;
    _ = &deps;
    var ebuf: struct_ebuffer = undefined;
    _ = &ebuf;
    var curfile: [*c]const floc = undefined;
    _ = &curfile;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    deps = @as(?*struct_goaldep, @ptrCast(xcalloc(@sizeOf(struct_goaldep))));
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
// src/read.c:634:25: warning: local variable has opaque type

// src/read.c:570:1: warning: unable to translate function, demoted to extern
pub extern fn eval(arg_ebuf: [*c]struct_ebuffer, arg_set_default: c_int) callconv(.C) void;
// src/read.c:2697:9: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:2651:1: warning: unable to translate function, demoted to extern
pub extern fn readline(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long;
pub fn do_undefine(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) void {
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
    @"var" = allocated_variable_expand_for_file(name, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
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
// src/read.c:1409:19: warning: local variable has opaque type

// src/read.c:1406:1: warning: unable to translate function, demoted to extern
pub extern fn do_define(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) ?*struct_variable;
// src/read.c:1565:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:1526:1: warning: unable to translate function, demoted to extern
pub extern fn conditional_line(arg_line: [*c]u8, arg_len: usize, arg_flocp: [*c]const floc) callconv(.C) c_int;
pub fn check_specials(arg_files: [*c]struct_nameseq, arg_set_default: c_int) callconv(.C) void {
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
                var d: ?*struct_dep = undefined;
                _ = &d;
                var reject: c_int = 0;
                _ = &reject;
                if (strchr(nm, @as(c_int, '%')) != null) break;
                if ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '.')) and (strchr(nm, @as(c_int, '/')) == null)) continue;
                {
                    d = suffix_file.*.deps;
                    while (d != null) : (d = d.*.next) {
                        var d2: ?*struct_dep = undefined;
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
pub fn check_special_file(arg_file_1: ?*struct_file, arg_flocp: [*c]const floc) callconv(.C) void {
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
pub fn record_files(arg_filenames: [*c]struct_nameseq, arg_are_also_makes: c_int, arg_pattern: [*c]const u8, arg_pattern_percent: [*c]const u8, arg_depstr: [*c]u8, arg_cmds_started: c_uint, arg_commands_1: [*c]u8, arg_commands_idx: usize, arg_two_colon: c_int, arg_prefix: u8, arg_flocp: [*c]const floc) callconv(.C) void {
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
    var cmds: ?*struct_commands = undefined;
    _ = &cmds;
    var deps: ?*struct_dep = undefined;
    _ = &deps;
    var also_make: ?*struct_dep = null;
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
        cmds = @as(?*struct_commands, @ptrCast(xmalloc(@sizeOf(struct_commands))));
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
            deps = @as(?*struct_dep, @ptrCast(xcalloc(@sizeOf(struct_dep))));
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
        var f: ?*struct_file = undefined;
        _ = &f;
        var this: ?*struct_dep = null;
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
            } else if (((cmds != null) and (f.*.cmds != null)) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
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
            if (((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) and !(f.*.double_colon != null)) {
                fatal(flocp, strlen(f.*.name), gettext("target file '%s' has both : and :: entries"), f.*.name);
            }
            f = enter_file(strcache_add(name));
            if (f.*.double_colon == null) {
                f.*.double_colon = f;
            }
            f.*.cmds = cmds;
        }
        if (are_also_makes != 0) {
            var also: ?*struct_dep = @as(?*struct_dep, @ptrCast(xcalloc(@sizeOf(struct_dep))));
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
                var d: ?*struct_dep = this;
                _ = &d;
                while (d.*.next != null) {
                    d = d.*.next;
                }
                d.*.next = f.*.deps;
                f.*.deps = this;
            } else {
                var d: ?*struct_dep = f.*.deps;
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
        var i: ?*struct_dep = undefined;
        _ = &i;
        {
            i = also_make;
            while (i != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (i = i.*.next) {
                var f: ?*struct_file = i.*.file;
                _ = &f;
                var cpy: ?*struct_dep = if (i.*.next != null) copy_dep_chain(also_make) else also_make;
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
pub fn record_target_var(arg_filenames: [*c]struct_nameseq, arg_defn: [*c]u8, arg_origin: enum_variable_origin, arg_vmod: ?*struct_vmodifiers, arg_flocp: [*c]const floc) callconv(.C) void {
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
        var v: ?*struct_variable = undefined;
        _ = &v;
        var name: [*c]const u8 = filenames.*.name;
        _ = &name;
        var percent: [*c]const u8 = undefined;
        _ = &percent;
        var p: ?*struct_pattern_var = undefined;
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
            if (@as(c_int, @bitCast(v.*.flavor)) == f_simple) {
                v.*.value = allocated_variable_expand_for_file(v.*.value, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
            } else {
                v.*.value = xstrdup(v.*.value);
            }
        } else {
            var f: ?*struct_file = undefined;
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
        if (@as(c_int, @bitCast(vmod.*.export_v)) != v_default) {
            v.*.@"export" = vmod.*.export_v;
        }
        if (@as(c_int, @bitCast(v.*.origin)) != o_override) {
            var gv: ?*struct_variable = undefined;
            _ = &gv;
            var len: usize = strlen(v.*.name);
            _ = &len;
            gv = lookup_variable(v.*.name, len);
            if (((gv != null) and (v != gv)) and ((@as(c_int, @bitCast(gv.*.origin)) == o_env_override) or (@as(c_int, @bitCast(gv.*.origin)) == o_command))) {
                free(@as(?*anyopaque, @ptrCast(v.*.value)));
                v.*.value = xstrdup(gv.*.value);
                v.*.origin = gv.*.origin;
                v.*.recursive = gv.*.recursive;
                v.*.append = 0;
            }
        }
    }
}
// src/read.c:2794:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:2776:1: warning: unable to translate function, demoted to extern
pub extern fn get_next_mword(arg_buffer: [*c]u8, arg_startp: [*c][*c]u8, arg_length: [*c]usize) callconv(.C) enum_make_word_type;
pub fn remove_comments(arg_line: [*c]u8) callconv(.C) void {
    var line = arg_line;
    _ = &line;
    var comment: [*c]u8 = undefined;
    _ = &comment;
    comment = find_map_unquote(line, @as(c_int, 8) | @as(c_int, 16384));
    if (comment != null) {
        comment.* = '\x00';
    }
}
pub fn find_map_unquote(arg_string: [*c]u8, arg_stopmap: c_int) callconv(.C) [*c]u8 {
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
pub fn find_char_unquote(arg_string: [*c]u8, arg_stop: c_int) callconv(.C) [*c]u8 {
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
pub fn unescape_char(arg_string: [*c]u8, arg_c: c_int) callconv(.C) [*c]u8 {
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
pub fn install_conditionals(arg_new: [*c]struct_conditionals) callconv(.C) [*c]struct_conditionals {
    var new = arg_new;
    _ = &new;
    var save: [*c]struct_conditionals = conditionals;
    _ = &save;
    _ = memset(@as(?*anyopaque, @ptrCast(new)), @as(c_int, '\x00'), @sizeOf(struct_conditionals));
    conditionals = new;
    return save;
}
pub fn restore_conditionals(arg_saved: [*c]struct_conditionals) callconv(.C) void {
    var saved = arg_saved;
    _ = &saved;
    free(@as(?*anyopaque, @ptrCast(conditionals.*.ignoring)));
    free(@as(?*anyopaque, @ptrCast(conditionals.*.seen_else)));
    conditionals = saved;
}
// src/read.c:515:23: warning: local variable has opaque type

// src/read.c:500:1: warning: unable to translate function, demoted to extern
pub extern fn parse_var_assignment(arg_line: [*c]const u8, arg_targvar: c_int, arg_vmod: ?*struct_vmodifiers) callconv(.C) [*c]u8;
pub fn readstring(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long {
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
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):101:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):198:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):220:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):228:9
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):358:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):359:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 31);
pub const _DEBUG = @as(c_int, 1);
pub const HAVE_CONFIG_H = @as(c_int, 1);
pub const LIBDIR = @compileError("unable to translate macro: undefined identifier `usr`");
// (no file):412:9
pub const LOCALEDIR = @compileError("unable to translate macro: undefined identifier `usr`");
// (no file):413:9
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const ENABLE_NLS = @as(c_int, 1);
pub const FILE_TIMESTAMP_HI_RES = @as(c_int, 1);
pub const GNULIB_TEST_GETLOADAVG = @as(c_int, 1);
pub const HAVE_ALLOCA = @as(c_int, 1);
pub const HAVE_ALLOCA_H = @as(c_int, 1);
pub const HAVE_ATEXIT = @as(c_int, 1);
pub const HAVE_CLOCK_GETTIME = @as(c_int, 1);
pub const HAVE_DCGETTEXT = @as(c_int, 1);
pub const HAVE_DECL_BSD_SIGNAL = @as(c_int, 0);
pub const HAVE_DECL_DLERROR = @as(c_int, 1);
pub const HAVE_DECL_DLOPEN = @as(c_int, 1);
pub const HAVE_DECL_DLSYM = @as(c_int, 1);
pub const HAVE_DECL_GETLOADAVG = @as(c_int, 1);
pub const HAVE_DECL_SYS_SIGLIST = @as(c_int, 1);
pub const HAVE_DECL__SYS_SIGLIST = @as(c_int, 1);
pub const HAVE_DECL___SYS_SIGLIST = @as(c_int, 0);
pub const HAVE_DIRENT_H = @as(c_int, 1);
pub const HAVE_DUP = @as(c_int, 1);
pub const HAVE_DUP2 = @as(c_int, 1);
pub const HAVE_FCNTL_H = @as(c_int, 1);
pub const HAVE_FDOPEN = @as(c_int, 1);
pub const HAVE_FORK = @as(c_int, 1);
pub const HAVE_GETCWD = @as(c_int, 1);
pub const HAVE_GETGROUPS = @as(c_int, 1);
pub const HAVE_GETRLIMIT = @as(c_int, 1);
pub const HAVE_GETTEXT = @as(c_int, 1);
pub const HAVE_GETTIMEOFDAY = @as(c_int, 1);
pub const HAVE_INTMAX_T = @as(c_int, 1);
pub const HAVE_INTTYPES_H = @as(c_int, 1);
pub const HAVE_ISATTY = @as(c_int, 1);
pub const HAVE_LIMITS_H = @as(c_int, 1);
pub const HAVE_LOCALE_H = @as(c_int, 1);
pub const HAVE_LONG_LONG_INT = @as(c_int, 1);
pub const HAVE_LSTAT = @as(c_int, 1);
pub const HAVE_MEMORY_H = @as(c_int, 1);
pub const HAVE_MEMPCPY = @as(c_int, 1);
pub const HAVE_MEMRCHR = @as(c_int, 1);
pub const HAVE_MKFIFO = @as(c_int, 1);
pub const HAVE_MKSTEMP = @as(c_int, 1);
pub const HAVE_MKTEMP = @as(c_int, 1);
pub const HAVE_PIPE = @as(c_int, 1);
pub const HAVE_POSIX_SPAWN = @as(c_int, 1);
pub const HAVE_POSIX_SPAWNATTR_SETSIGMASK = @as(c_int, 1);
pub const HAVE_PSELECT = @as(c_int, 1);
pub const HAVE_READLINK = @as(c_int, 1);
pub const HAVE_REALPATH = @as(c_int, 1);
pub const HAVE_SA_RESTART = @as(c_int, 1);
pub const HAVE_SETEGID = @as(c_int, 1);
pub const HAVE_SETEUID = @as(c_int, 1);
pub const HAVE_SETLINEBUF = @as(c_int, 1);
pub const HAVE_SETREGID = @as(c_int, 1);
pub const HAVE_SETREUID = @as(c_int, 1);
pub const HAVE_SETRLIMIT = @as(c_int, 1);
pub const HAVE_SETVBUF = @as(c_int, 1);
pub const HAVE_SIGACTION = @as(c_int, 1);
pub const HAVE_SIGSETMASK = @as(c_int, 1);
pub const HAVE_SIG_ATOMIC_T = @as(c_int, 1);
pub const HAVE_SPAWN_H = @as(c_int, 1);
pub const HAVE_STDBOOL_H = @as(c_int, 1);
pub const HAVE_STDINT_H = @as(c_int, 1);
pub const HAVE_STDLIB_H = @as(c_int, 1);
pub const HAVE_STPCPY = @as(c_int, 1);
pub const HAVE_STRCASECMP = @as(c_int, 1);
pub const HAVE_STRCOLL = @as(c_int, 1);
pub const HAVE_STRDUP = @as(c_int, 1);
pub const HAVE_STRERROR = @as(c_int, 1);
pub const HAVE_STRINGS_H = @as(c_int, 1);
pub const HAVE_STRING_H = @as(c_int, 1);
pub const HAVE_STRNCASECMP = @as(c_int, 1);
pub const HAVE_STRNDUP = @as(c_int, 1);
pub const HAVE_STRSIGNAL = @as(c_int, 1);
pub const HAVE_STRTOLL = @as(c_int, 1);
pub const HAVE_STRUCT_DIRENT_D_TYPE = @as(c_int, 1);
pub const HAVE_SYS_FILE_H = @as(c_int, 1);
pub const HAVE_SYS_PARAM_H = @as(c_int, 1);
pub const HAVE_SYS_RESOURCE_H = @as(c_int, 1);
pub const HAVE_SYS_SELECT_H = @as(c_int, 1);
pub const HAVE_SYS_STAT_H = @as(c_int, 1);
pub const HAVE_SYS_TIMEB_H = @as(c_int, 1);
pub const HAVE_SYS_TIME_H = @as(c_int, 1);
pub const HAVE_SYS_TYPES_H = @as(c_int, 1);
pub const HAVE_SYS_WAIT_H = @as(c_int, 1);
pub const HAVE_TTYNAME = @as(c_int, 1);
pub const HAVE_UINTMAX_T = @as(c_int, 1);
pub const HAVE_UMASK = @as(c_int, 1);
pub const HAVE_UNISTD_H = @as(c_int, 1);
pub const HAVE_UNSIGNED_LONG_LONG_INT = @as(c_int, 1);
pub const HAVE_VFORK = @as(c_int, 1);
pub const HAVE_WAIT3 = @as(c_int, 1);
pub const HAVE_WAITPID = @as(c_int, 1);
pub const HAVE_WCHAR_H = @as(c_int, 1);
pub const HAVE_WORKING_FORK = @as(c_int, 1);
pub const HAVE_WORKING_VFORK = @as(c_int, 1);
pub const MAKE_CXX = "g++";
pub const MAKE_HOST = "x86_64-pc-linux-gnu";
pub const MAKE_JOBSERVER = @as(c_int, 1);
pub const MAKE_LOAD = @as(c_int, 1);
pub const MAKE_SYMLINKS = @as(c_int, 1);
pub const MK_CONFIGURE = @as(c_int, 1);
pub const PACKAGE = "make";
pub const PACKAGE_BUGREPORT = "bug-make@gnu.org";
pub const PACKAGE_NAME = "GNU Make";
pub const PACKAGE_STRING = "GNU Make 4.4.1";
pub const PACKAGE_TARNAME = "make";
pub const PACKAGE_URL = "http://www.gnu.org/software/make/";
pub const PACKAGE_VERSION = "4.4.1";
pub const PATH_SEPARATOR_CHAR = ':';
pub const SCCS_GET = "get";
pub const STDC_HEADERS = @as(c_int, 1);
pub const ST_MTIM_NSEC = @compileError("unable to translate macro: undefined identifier `st_mtim`");
// src/config.h:573:9
pub const USE_POSIX_SPAWN = @as(c_int, 1);
pub const _ALL_SOURCE = @as(c_int, 1);
pub const _DARWIN_C_SOURCE = @as(c_int, 1);
pub const __EXTENSIONS__ = @as(c_int, 1);
pub const _GNU_SOURCE = @as(c_int, 1);
pub const _HPUX_ALT_XOPEN_SOCKET_API = @as(c_int, 1);
pub const _NETBSD_SOURCE = @as(c_int, 1);
pub const _OPENBSD_SOURCE = @as(c_int, 1);
pub const _POSIX_PTHREAD_SEMANTICS = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_ATTRIBS_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_BFP_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_DFP_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_FUNCS_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_TYPES_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_LIB_EXT2__ = @as(c_int, 1);
pub const __STDC_WANT_MATH_SPEC_FUNCS__ = @as(c_int, 1);
pub const _TANDEM_SOURCE = @as(c_int, 1);
pub const VERSION = "4.4.1";
pub inline fn _GL_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf(major < (__GNUC__ + @intFromBool(minor <= __GNUC_MINOR__))) {
    _ = &major;
    _ = &minor;
    return major < (__GNUC__ + @intFromBool(minor <= __GNUC_MINOR__));
}
pub const _GL_ASYNC_SAFE = "";
pub const _GL_HAS_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// src/config.h:794:10
pub const _GL_ATTRIBUTE_ALLOC_SIZE = @compileError("unable to translate macro: undefined identifier `__alloc_size__`");
// src/config.h:842:11
pub const _GL_ATTRIBUTE_ALWAYS_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// src/config.h:853:11
pub const _GL_ATTRIBUTE_ARTIFICIAL = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// src/config.h:865:11
pub const _GL_ATTRIBUTE_COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// src/config.h:879:12
pub const _GL_ATTRIBUTE_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// src/config.h:897:11
pub const _GL_ATTRIBUTE_DEALLOC = @compileError("unable to translate C expr: unexpected token ''");
// src/config.h:913:11
pub const _GL_ATTRIBUTE_DEALLOC_FREE = _GL_ATTRIBUTE_DEALLOC(free, @as(c_int, 1));
pub const _GL_ATTRIBUTE_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// src/config.h:941:12
pub const _GL_ATTRIBUTE_ERROR = @compileError("unable to translate macro: undefined identifier `__error__`");
// src/config.h:959:11
pub const _GL_ATTRIBUTE_WARNING = @compileError("unable to translate macro: undefined identifier `__warning__`");
// src/config.h:960:11
pub const _GL_ATTRIBUTE_EXTERNALLY_VISIBLE = "";
pub const _GL_ATTRIBUTE_FALLTHROUGH = @compileError("unable to translate macro: undefined identifier `__fallthrough__`");
// src/config.h:989:12
pub const _GL_ATTRIBUTE_FORMAT = @compileError("unable to translate macro: undefined identifier `__format__`");
// src/config.h:1013:11
pub const _GL_ATTRIBUTE_LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`");
// src/config.h:1026:11
pub const _GL_ATTRIBUTE_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// src/config.h:1037:11
pub const _GL_ATTRIBUTE_MAY_ALIAS = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// src/config.h:1050:11
pub const _GL_ATTRIBUTE_MAYBE_UNUSED = @compileError("unable to translate macro: undefined identifier `__maybe_unused__`");
// src/config.h:1077:12
pub const _GL_UNUSED = _GL_ATTRIBUTE_MAYBE_UNUSED;
pub const _UNUSED_PARAMETER_ = _GL_ATTRIBUTE_MAYBE_UNUSED;
pub const _GL_ATTRIBUTE_NODISCARD = @compileError("unable to translate macro: undefined identifier `__nodiscard__`");
// src/config.h:1106:12
pub const _GL_ATTRIBUTE_NOINLINE = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// src/config.h:1122:11
pub const _GL_ATTRIBUTE_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// src/config.h:1135:11
pub const _GL_ATTRIBUTE_NONSTRING = "";
pub const _GL_ATTRIBUTE_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// src/config.h:1160:11
pub const _GL_ATTRIBUTE_PACKED = @compileError("unable to translate macro: undefined identifier `__packed__`");
// src/config.h:1174:11
pub const _GL_ATTRIBUTE_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// src/config.h:1189:11
pub const _GL_ATTRIBUTE_RETURNS_NONNULL = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// src/config.h:1200:11
pub const _GL_ATTRIBUTE_SENTINEL = @compileError("unable to translate macro: undefined identifier `__sentinel__`");
// src/config.h:1213:11
pub const _GL_ATTRIBUTE_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// src/config.h:1222:11
pub const _GL_UNUSED_LABEL = _GL_ATTRIBUTE_UNUSED;
pub inline fn _GL_CMP(n1: anytype, n2: anytype) @TypeOf(@intFromBool(n1 > n2) - @intFromBool(n1 < n2)) {
    _ = &n1;
    _ = &n2;
    return @intFromBool(n1 > n2) - @intFromBool(n1 < n2);
}
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const _ALLOCA_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:179:9
pub const _ISOC95_SOURCE = @as(c_int, 1);
pub const _ISOC99_SOURCE = @as(c_int, 1);
pub const _ISOC11_SOURCE = @as(c_int, 1);
pub const _ISOC2X_SOURCE = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const _XOPEN_SOURCE_EXTENDED = @as(c_int, 1);
pub const _LARGEFILE64_SOURCE = @as(c_int, 1);
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 1);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const __USE_XOPEN = @as(c_int, 1);
pub const __USE_XOPEN_EXTENDED = @as(c_int, 1);
pub const __USE_UNIX98 = @as(c_int, 1);
pub const _LARGEFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K8XSI = @as(c_int, 1);
pub const __USE_XOPEN2KXSI = @as(c_int, 1);
pub const __USE_LARGEFILE = @as(c_int, 1);
pub const __USE_LARGEFILE64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_GNU = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:56:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:57:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:58:11
pub const __glibc_clang_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:92:10
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:105:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:106:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub const __warndecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:133:10
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:134:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:135:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:143:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:174:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:181:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:183:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:186:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:208:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:219:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:226:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:233:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:242:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:243:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:251:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:261:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:274:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:284:10
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:293:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:301:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:319:10
pub const __attribute_artificial__ = "";
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:346:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:347:11
pub const __fortify_function = __extern_always_inline;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:387:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:410:10
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:441:10
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __LONG_DOUBLE_USES_FLOAT128 = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:479:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:493:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:494:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_lchmod = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_sstk = "";
pub const __stub_stty = "";
pub const __need_size_t = "";
pub const _SIZE_T = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const _PTRDIFF_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /snap/zig/11625/lib/include/__stddef_offsetof.h:16:9
pub const free_alloca = @compileError("unable to translate C expr: unexpected token ''");
// src/makeint.h:29:12
pub const NDEBUG = @as(c_int, 1);
pub const _GNUMAKE_H_ = "";
pub const GMK_EXPORT = "";
pub const GMK_FUNC_DEFAULT = @as(c_int, 0x00);
pub const GMK_FUNC_NOEXPAND = @as(c_int, 0x01);
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __TIMESIZE = __WORDSIZE;
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/x86_64-linux-gnu/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/x86_64-linux-gnu/bits/typesizes.h:72:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __ino64_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __off64_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __useconds_t_defined = "";
pub const __suseconds_t_defined = "";
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO_STOS = "stosq";
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__d0`");
// /usr/include/x86_64-linux-gnu/bits/select.h:33:10
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/x86_64-linux-gnu/bits/select.h:58:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/x86_64-linux-gnu/bits/select.h:60:9
pub inline fn __FD_ISSET(d: anytype, set: anytype) @TypeOf((__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &set;
    return (__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.fds_bits) {
    _ = &set;
    return set.*.fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _SYS_STAT_H = @as(c_int, 1);
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _STAT_VER_KERNEL = @as(c_int, 0);
pub const _STAT_VER_LINUX = @as(c_int, 1);
pub const _MKNOD_VER_LINUX = @as(c_int, 0);
pub const _STAT_VER = _STAT_VER_LINUX;
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`");
// /usr/include/x86_64-linux-gnu/bits/stat.h:94:10
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`");
// /usr/include/x86_64-linux-gnu/bits/stat.h:95:10
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`");
// /usr/include/x86_64-linux-gnu/bits/stat.h:96:10
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub inline fn __S_ISTYPE(mode: anytype, mask: anytype) @TypeOf((mode & __S_IFMT) == mask) {
    _ = &mode;
    _ = &mask;
    return (mode & __S_IFMT) == mask;
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFDIR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFDIR);
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFCHR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFCHR);
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFBLK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFBLK);
}
pub inline fn S_ISREG(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFREG)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFREG);
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFIFO)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFIFO);
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFLNK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFLNK);
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFSOCK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFSOCK);
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(__S_TYPEISMQ(buf)) {
    _ = &buf;
    return __S_TYPEISMQ(buf);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(__S_TYPEISSEM(buf)) {
    _ = &buf;
    return __S_TYPEISSEM(buf);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(__S_TYPEISSHM(buf)) {
    _ = &buf;
    return __S_TYPEISSHM(buf);
}
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISVTX) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const _MKNOD_VER = @as(c_int, 0);
pub const _LINUX_STAT_H = "";
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`");
// /usr/include/linux/stddef.h:18:9
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __bitwise__ = "";
pub const __bitwise = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:43:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:44:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:45:9
pub const STATX_TYPE = @as(c_uint, 0x00000001);
pub const STATX_MODE = @as(c_uint, 0x00000002);
pub const STATX_NLINK = @as(c_uint, 0x00000004);
pub const STATX_UID = @as(c_uint, 0x00000008);
pub const STATX_GID = @as(c_uint, 0x00000010);
pub const STATX_ATIME = @as(c_uint, 0x00000020);
pub const STATX_MTIME = @as(c_uint, 0x00000040);
pub const STATX_CTIME = @as(c_uint, 0x00000080);
pub const STATX_INO = @as(c_uint, 0x00000100);
pub const STATX_SIZE = @as(c_uint, 0x00000200);
pub const STATX_BLOCKS = @as(c_uint, 0x00000400);
pub const STATX_BASIC_STATS = @as(c_uint, 0x000007ff);
pub const STATX_BTIME = @as(c_uint, 0x00000800);
pub const STATX_ALL = @as(c_uint, 0x00000fff);
pub const STATX__RESERVED = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const STATX_ATTR_COMPRESSED = @as(c_int, 0x00000004);
pub const STATX_ATTR_IMMUTABLE = @as(c_int, 0x00000010);
pub const STATX_ATTR_APPEND = @as(c_int, 0x00000020);
pub const STATX_ATTR_NODUMP = @as(c_int, 0x00000040);
pub const STATX_ATTR_ENCRYPTED = @as(c_int, 0x00000800);
pub const STATX_ATTR_AUTOMOUNT = @as(c_int, 0x00001000);
pub const __statx_timestamp_defined = @as(c_int, 1);
pub const __statx_defined = @as(c_int, 1);
pub const _SIGNAL_H = "";
pub const _BITS_SIGNUM_H = @as(c_int, 1);
pub const _BITS_SIGNUM_GENERIC_H = @as(c_int, 1);
pub const SIG_ERR = @import("std").zig.c_translation.cast(__sighandler_t, -@as(c_int, 1));
pub const SIG_DFL = @import("std").zig.c_translation.cast(__sighandler_t, @as(c_int, 0));
pub const SIG_IGN = @import("std").zig.c_translation.cast(__sighandler_t, @as(c_int, 1));
pub const SIG_HOLD = @import("std").zig.c_translation.cast(__sighandler_t, @as(c_int, 2));
pub const SIGINT = @as(c_int, 2);
pub const SIGILL = @as(c_int, 4);
pub const SIGABRT = @as(c_int, 6);
pub const SIGFPE = @as(c_int, 8);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGTERM = @as(c_int, 15);
pub const SIGHUP = @as(c_int, 1);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGKILL = @as(c_int, 9);
pub const SIGBUS = @as(c_int, 10);
pub const SIGSYS = @as(c_int, 12);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGURG = @as(c_int, 16);
pub const SIGSTOP = @as(c_int, 17);
pub const SIGTSTP = @as(c_int, 18);
pub const SIGCONT = @as(c_int, 19);
pub const SIGCHLD = @as(c_int, 20);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGPOLL = @as(c_int, 23);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGUSR1 = @as(c_int, 30);
pub const SIGUSR2 = @as(c_int, 31);
pub const SIGWINCH = @as(c_int, 28);
pub const SIGIO = SIGPOLL;
pub const SIGIOT = SIGABRT;
pub const SIGCLD = SIGCHLD;
pub const __SIGRTMIN = @as(c_int, 32);
pub const __SIGRTMAX = __SIGRTMIN;
pub const _NSIG = __SIGRTMAX + @as(c_int, 1);
pub const SIGSTKFLT = @as(c_int, 16);
pub const SIGPWR = @as(c_int, 30);
pub const __sig_atomic_t_defined = @as(c_int, 1);
pub const __siginfo_t_defined = @as(c_int, 1);
pub const ____sigval_t_defined = "";
pub const __SI_MAX_SIZE = @as(c_int, 128);
pub const __SI_PAD_SIZE = @import("std").zig.c_translation.MacroArithmetic.div(__SI_MAX_SIZE, @import("std").zig.c_translation.sizeof(c_int)) - @as(c_int, 4);
pub const _BITS_SIGINFO_ARCH_H = @as(c_int, 1);
pub const __SI_ALIGNMENT = "";
pub const __SI_BAND_TYPE = c_long;
pub const __SI_CLOCK_T = __clock_t;
pub const __SI_ERRNO_THEN_CODE = @as(c_int, 1);
pub const __SI_HAVE_SIGSYS = @as(c_int, 1);
pub const __SI_SIGFAULT_ADDL = "";
pub const si_pid = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:128:9
pub const si_uid = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:129:9
pub const si_timerid = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:130:9
pub const si_overrun = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:131:9
pub const si_status = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:132:9
pub const si_utime = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:133:9
pub const si_stime = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:134:9
pub const si_value = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:135:9
pub const si_int = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:136:9
pub const si_ptr = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:137:9
pub const si_addr = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:138:9
pub const si_addr_lsb = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:139:9
pub const si_lower = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:140:9
pub const si_upper = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:141:9
pub const si_pkey = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:142:9
pub const si_band = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:143:9
pub const si_fd = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:144:9
pub const si_call_addr = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:146:10
pub const si_syscall = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:147:10
pub const si_arch = @compileError("unable to translate macro: undefined identifier `_sifields`");
// /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h:148:10
pub const _BITS_SIGINFO_CONSTS_H = @as(c_int, 1);
pub const __SI_ASYNCIO_AFTER_SIGIO = @as(c_int, 1);
pub const _BITS_SIGINFO_CONSTS_ARCH_H = @as(c_int, 1);
pub const __sigval_t_defined = "";
pub const __sigevent_t_defined = @as(c_int, 1);
pub const __SIGEV_MAX_SIZE = @as(c_int, 64);
pub const __SIGEV_PAD_SIZE = @import("std").zig.c_translation.MacroArithmetic.div(__SIGEV_MAX_SIZE, @import("std").zig.c_translation.sizeof(c_int)) - @as(c_int, 4);
pub const sigev_notify_function = @compileError("unable to translate macro: undefined identifier `_sigev_un`");
// /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h:45:9
pub const sigev_notify_attributes = @compileError("unable to translate macro: undefined identifier `_sigev_un`");
// /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h:46:9
pub const _BITS_SIGEVENT_CONSTS_H = @as(c_int, 1);
pub inline fn sigmask(sig: anytype) c_int {
    _ = &sig;
    return @import("std").zig.c_translation.cast(c_int, @as(c_uint, 1) << (sig - @as(c_int, 1)));
}
pub const NSIG = _NSIG;
pub const _BITS_SIGACTION_H = @as(c_int, 1);
pub const sa_handler = @compileError("unable to translate macro: undefined identifier `__sigaction_handler`");
// /usr/include/x86_64-linux-gnu/bits/sigaction.h:39:10
pub const sa_sigaction = @compileError("unable to translate macro: undefined identifier `__sigaction_handler`");
// /usr/include/x86_64-linux-gnu/bits/sigaction.h:40:10
pub const SA_NOCLDSTOP = @as(c_int, 1);
pub const SA_NOCLDWAIT = @as(c_int, 2);
pub const SA_SIGINFO = @as(c_int, 4);
pub const SA_ONSTACK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex);
pub const SA_RESTART = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const SA_NODEFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const SA_RESETHAND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const SA_INTERRUPT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const SA_NOMASK = SA_NODEFER;
pub const SA_ONESHOT = SA_RESETHAND;
pub const SA_STACK = SA_ONSTACK;
pub const SIG_BLOCK = @as(c_int, 0);
pub const SIG_UNBLOCK = @as(c_int, 1);
pub const SIG_SETMASK = @as(c_int, 2);
pub const _BITS_SIGCONTEXT_H = @as(c_int, 1);
pub const FP_XSTATE_MAGIC1 = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x46505853, .hex);
pub const FP_XSTATE_MAGIC2 = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x46505845, .hex);
pub const FP_XSTATE_MAGIC2_SIZE = @import("std").zig.c_translation.sizeof(FP_XSTATE_MAGIC2);
pub const __stack_t_defined = @as(c_int, 1);
pub const _SYS_UCONTEXT_H = @as(c_int, 1);
pub inline fn __ctx(fld: anytype) @TypeOf(fld) {
    _ = &fld;
    return fld;
}
pub const __NGREG = @as(c_int, 23);
pub const NGREG = __NGREG;
pub const _BITS_SIGSTACK_H = @as(c_int, 1);
pub const MINSIGSTKSZ = @as(c_int, 2048);
pub const SIGSTKSZ = @as(c_int, 8192);
pub const _BITS_SS_FLAGS_H = @as(c_int, 1);
pub const __sigstack_defined = @as(c_int, 1);
pub const _BITS_SIGTHREAD_H = @as(c_int, 1);
pub const SIGRTMIN = __libc_current_sigrtmin();
pub const SIGRTMAX = __libc_current_sigrtmax();
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 1);
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_DATA = @as(c_int, 3);
pub const SEEK_HOLE = @as(c_int, 4);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const L_cuserid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const RENAME_NOREPLACE = @as(c_int, 1) << @as(c_int, 0);
pub const RENAME_EXCHANGE = @as(c_int, 1) << @as(c_int, 1);
pub const RENAME_WHITEOUT = @as(c_int, 1) << @as(c_int, 2);
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    _ = &bit;
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    return __ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    _ = &c;
    return c & @as(c_int, 0x7f);
}
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__res`");
// /usr/include/ctype.h:155:9
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    _ = &locale;
    return locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:244:10
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __toascii_l(c, l);
}
pub const _SYS_TIMEB_H = @as(c_int, 1);
pub const _SYS_TIME_H = @as(c_int, 1);
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/sys/time.h:38:10
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/sys/time.h:42:10
pub inline fn timerisset(tvp: anytype) @TypeOf((tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0)) {
    _ = &tvp;
    return (tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0);
}
pub const timerclear = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/x86_64-linux-gnu/sys/time.h:161:10
pub inline fn timercmp(a: anytype, b: anytype, CMP: anytype) @TypeOf(if (a.*.tv_sec == b.*.tv_sec) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec) {
    _ = &a;
    _ = &b;
    _ = &CMP;
    return if (a.*.tv_sec == b.*.tv_sec) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec;
}
pub const timeradd = @compileError("unable to translate C expr: unexpected token 'do'");
// /usr/include/x86_64-linux-gnu/sys/time.h:166:10
pub const timersub = @compileError("unable to translate C expr: unexpected token 'do'");
// /usr/include/x86_64-linux-gnu/sys/time.h:176:10
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const _BITS_TIMEX_H = @as(c_int, 1);
pub const ADJ_OFFSET = @as(c_int, 0x0001);
pub const ADJ_FREQUENCY = @as(c_int, 0x0002);
pub const ADJ_MAXERROR = @as(c_int, 0x0004);
pub const ADJ_ESTERROR = @as(c_int, 0x0008);
pub const ADJ_STATUS = @as(c_int, 0x0010);
pub const ADJ_TIMECONST = @as(c_int, 0x0020);
pub const ADJ_TAI = @as(c_int, 0x0080);
pub const ADJ_SETOFFSET = @as(c_int, 0x0100);
pub const ADJ_MICRO = @as(c_int, 0x1000);
pub const ADJ_NANO = @as(c_int, 0x2000);
pub const ADJ_TICK = @as(c_int, 0x4000);
pub const ADJ_OFFSET_SINGLESHOT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8001, .hex);
pub const ADJ_OFFSET_SS_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xa001, .hex);
pub const MOD_OFFSET = ADJ_OFFSET;
pub const MOD_FREQUENCY = ADJ_FREQUENCY;
pub const MOD_MAXERROR = ADJ_MAXERROR;
pub const MOD_ESTERROR = ADJ_ESTERROR;
pub const MOD_STATUS = ADJ_STATUS;
pub const MOD_TIMECONST = ADJ_TIMECONST;
pub const MOD_CLKB = ADJ_TICK;
pub const MOD_CLKA = ADJ_OFFSET_SINGLESHOT;
pub const MOD_TAI = ADJ_TAI;
pub const MOD_MICRO = ADJ_MICRO;
pub const MOD_NANO = ADJ_NANO;
pub const STA_PLL = @as(c_int, 0x0001);
pub const STA_PPSFREQ = @as(c_int, 0x0002);
pub const STA_PPSTIME = @as(c_int, 0x0004);
pub const STA_FLL = @as(c_int, 0x0008);
pub const STA_INS = @as(c_int, 0x0010);
pub const STA_DEL = @as(c_int, 0x0020);
pub const STA_UNSYNC = @as(c_int, 0x0040);
pub const STA_FREQHOLD = @as(c_int, 0x0080);
pub const STA_PPSSIGNAL = @as(c_int, 0x0100);
pub const STA_PPSJITTER = @as(c_int, 0x0200);
pub const STA_PPSWANDER = @as(c_int, 0x0400);
pub const STA_PPSERROR = @as(c_int, 0x0800);
pub const STA_CLOCKERR = @as(c_int, 0x1000);
pub const STA_NANO = @as(c_int, 0x2000);
pub const STA_MODE = @as(c_int, 0x4000);
pub const STA_CLK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const STA_RONLY = ((((((STA_PPSSIGNAL | STA_PPSJITTER) | STA_PPSWANDER) | STA_PPSERROR) | STA_CLOCKERR) | STA_NANO) | STA_MODE) | STA_CLK;
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    _ = &year;
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const _ERRNO_H = @as(c_int, 1);
pub const _BITS_ERRNO_H = @as(c_int, 1);
pub const _ASM_GENERIC_ERRNO_H = "";
pub const _ASM_GENERIC_ERRNO_BASE_H = "";
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EAGAIN = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EDEADLK = @as(c_int, 35);
pub const ENAMETOOLONG = @as(c_int, 36);
pub const ENOLCK = @as(c_int, 37);
pub const ENOSYS = @as(c_int, 38);
pub const ENOTEMPTY = @as(c_int, 39);
pub const ELOOP = @as(c_int, 40);
pub const EWOULDBLOCK = EAGAIN;
pub const ENOMSG = @as(c_int, 42);
pub const EIDRM = @as(c_int, 43);
pub const ECHRNG = @as(c_int, 44);
pub const EL2NSYNC = @as(c_int, 45);
pub const EL3HLT = @as(c_int, 46);
pub const EL3RST = @as(c_int, 47);
pub const ELNRNG = @as(c_int, 48);
pub const EUNATCH = @as(c_int, 49);
pub const ENOCSI = @as(c_int, 50);
pub const EL2HLT = @as(c_int, 51);
pub const EBADE = @as(c_int, 52);
pub const EBADR = @as(c_int, 53);
pub const EXFULL = @as(c_int, 54);
pub const ENOANO = @as(c_int, 55);
pub const EBADRQC = @as(c_int, 56);
pub const EBADSLT = @as(c_int, 57);
pub const EDEADLOCK = EDEADLK;
pub const EBFONT = @as(c_int, 59);
pub const ENOSTR = @as(c_int, 60);
pub const ENODATA = @as(c_int, 61);
pub const ETIME = @as(c_int, 62);
pub const ENOSR = @as(c_int, 63);
pub const ENONET = @as(c_int, 64);
pub const ENOPKG = @as(c_int, 65);
pub const EREMOTE = @as(c_int, 66);
pub const ENOLINK = @as(c_int, 67);
pub const EADV = @as(c_int, 68);
pub const ESRMNT = @as(c_int, 69);
pub const ECOMM = @as(c_int, 70);
pub const EPROTO = @as(c_int, 71);
pub const EMULTIHOP = @as(c_int, 72);
pub const EDOTDOT = @as(c_int, 73);
pub const EBADMSG = @as(c_int, 74);
pub const EOVERFLOW = @as(c_int, 75);
pub const ENOTUNIQ = @as(c_int, 76);
pub const EBADFD = @as(c_int, 77);
pub const EREMCHG = @as(c_int, 78);
pub const ELIBACC = @as(c_int, 79);
pub const ELIBBAD = @as(c_int, 80);
pub const ELIBSCN = @as(c_int, 81);
pub const ELIBMAX = @as(c_int, 82);
pub const ELIBEXEC = @as(c_int, 83);
pub const EILSEQ = @as(c_int, 84);
pub const ERESTART = @as(c_int, 85);
pub const ESTRPIPE = @as(c_int, 86);
pub const EUSERS = @as(c_int, 87);
pub const ENOTSOCK = @as(c_int, 88);
pub const EDESTADDRREQ = @as(c_int, 89);
pub const EMSGSIZE = @as(c_int, 90);
pub const EPROTOTYPE = @as(c_int, 91);
pub const ENOPROTOOPT = @as(c_int, 92);
pub const EPROTONOSUPPORT = @as(c_int, 93);
pub const ESOCKTNOSUPPORT = @as(c_int, 94);
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EAFNOSUPPORT = @as(c_int, 97);
pub const EADDRINUSE = @as(c_int, 98);
pub const EADDRNOTAVAIL = @as(c_int, 99);
pub const ENETDOWN = @as(c_int, 100);
pub const ENETUNREACH = @as(c_int, 101);
pub const ENETRESET = @as(c_int, 102);
pub const ECONNABORTED = @as(c_int, 103);
pub const ECONNRESET = @as(c_int, 104);
pub const ENOBUFS = @as(c_int, 105);
pub const EISCONN = @as(c_int, 106);
pub const ENOTCONN = @as(c_int, 107);
pub const ESHUTDOWN = @as(c_int, 108);
pub const ETOOMANYREFS = @as(c_int, 109);
pub const ETIMEDOUT = @as(c_int, 110);
pub const ECONNREFUSED = @as(c_int, 111);
pub const EHOSTDOWN = @as(c_int, 112);
pub const EHOSTUNREACH = @as(c_int, 113);
pub const EALREADY = @as(c_int, 114);
pub const EINPROGRESS = @as(c_int, 115);
pub const ESTALE = @as(c_int, 116);
pub const EUCLEAN = @as(c_int, 117);
pub const ENOTNAM = @as(c_int, 118);
pub const ENAVAIL = @as(c_int, 119);
pub const EISNAM = @as(c_int, 120);
pub const EREMOTEIO = @as(c_int, 121);
pub const EDQUOT = @as(c_int, 122);
pub const ENOMEDIUM = @as(c_int, 123);
pub const EMEDIUMTYPE = @as(c_int, 124);
pub const ECANCELED = @as(c_int, 125);
pub const ENOKEY = @as(c_int, 126);
pub const EKEYEXPIRED = @as(c_int, 127);
pub const EKEYREVOKED = @as(c_int, 128);
pub const EKEYREJECTED = @as(c_int, 129);
pub const EOWNERDEAD = @as(c_int, 130);
pub const ENOTRECOVERABLE = @as(c_int, 131);
pub const ERFKILL = @as(c_int, 132);
pub const EHWPOISON = @as(c_int, 133);
pub const ENOTSUP = EOPNOTSUPP;
pub const errno = __errno_location().*;
pub const __error_t_defined = @as(c_int, 1);
pub const _UNISTD_H = @as(c_int, 1);
pub const _POSIX_VERSION = @as(c_long, 200809);
pub const __POSIX2_THIS_VERSION = @as(c_long, 200809);
pub const _POSIX2_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_BIND = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_SW_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_LOCALEDEF = __POSIX2_THIS_VERSION;
pub const _XOPEN_VERSION = @as(c_int, 700);
pub const _XOPEN_XCU_VERSION = @as(c_int, 4);
pub const _XOPEN_XPG2 = @as(c_int, 1);
pub const _XOPEN_XPG3 = @as(c_int, 1);
pub const _XOPEN_XPG4 = @as(c_int, 1);
pub const _XOPEN_UNIX = @as(c_int, 1);
pub const _XOPEN_ENH_I18N = @as(c_int, 1);
pub const _XOPEN_LEGACY = @as(c_int, 1);
pub const _BITS_POSIX_OPT_H = @as(c_int, 1);
pub const _POSIX_JOB_CONTROL = @as(c_int, 1);
pub const _POSIX_SAVED_IDS = @as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_SYNCHRONIZED_IO = @as(c_long, 200809);
pub const _POSIX_FSYNC = @as(c_long, 200809);
pub const _POSIX_MAPPED_FILES = @as(c_long, 200809);
pub const _POSIX_MEMLOCK = @as(c_long, 200809);
pub const _POSIX_MEMLOCK_RANGE = @as(c_long, 200809);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200809);
pub const _POSIX_CHOWN_RESTRICTED = @as(c_int, 0);
pub const _POSIX_VDISABLE = '\x00';
pub const _POSIX_NO_TRUNC = @as(c_int, 1);
pub const _XOPEN_REALTIME = @as(c_int, 1);
pub const _XOPEN_REALTIME_THREADS = @as(c_int, 1);
pub const _XOPEN_SHM = @as(c_int, 1);
pub const _POSIX_THREADS = @as(c_long, 200809);
pub const _POSIX_REENTRANT_FUNCTIONS = @as(c_int, 1);
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_PROTECT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_PROTECT = -@as(c_int, 1);
pub const _POSIX_SEMAPHORES = @as(c_long, 200809);
pub const _POSIX_REALTIME_SIGNALS = @as(c_long, 200809);
pub const _POSIX_ASYNCHRONOUS_IO = @as(c_long, 200809);
pub const _POSIX_ASYNC_IO = @as(c_int, 1);
pub const _LFS_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _POSIX_PRIORITIZED_IO = @as(c_long, 200809);
pub const _LFS64_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _LFS_LARGEFILE = @as(c_int, 1);
pub const _LFS64_LARGEFILE = @as(c_int, 1);
pub const _LFS64_STDIO = @as(c_int, 1);
pub const _POSIX_SHARED_MEMORY_OBJECTS = @as(c_long, 200809);
pub const _POSIX_CPUTIME = @as(c_int, 0);
pub const _POSIX_THREAD_CPUTIME = @as(c_int, 0);
pub const _POSIX_REGEXP = @as(c_int, 1);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200809);
pub const _POSIX_SHELL = @as(c_int, 1);
pub const _POSIX_TIMEOUTS = @as(c_long, 200809);
pub const _POSIX_SPIN_LOCKS = @as(c_long, 200809);
pub const _POSIX_SPAWN = @as(c_long, 200809);
pub const _POSIX_TIMERS = @as(c_long, 200809);
pub const _POSIX_BARRIERS = @as(c_long, 200809);
pub const _POSIX_MESSAGE_PASSING = @as(c_long, 200809);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200809);
pub const _POSIX_MONOTONIC_CLOCK = @as(c_int, 0);
pub const _POSIX_CLOCK_SELECTION = @as(c_long, 200809);
pub const _POSIX_ADVISORY_INFO = @as(c_long, 200809);
pub const _POSIX_IPV6 = @as(c_long, 200809);
pub const _POSIX_RAW_SOCKETS = @as(c_long, 200809);
pub const _POSIX2_CHAR_TERM = @as(c_long, 200809);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_TRACE = -@as(c_int, 1);
pub const _POSIX_TRACE_EVENT_FILTER = -@as(c_int, 1);
pub const _POSIX_TRACE_INHERIT = -@as(c_int, 1);
pub const _POSIX_TRACE_LOG = -@as(c_int, 1);
pub const _POSIX_TYPED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX_V7_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V6_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _XBS5_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V7_LP64_OFF64 = @as(c_int, 1);
pub const _POSIX_V6_LP64_OFF64 = @as(c_int, 1);
pub const _XBS5_LP64_OFF64 = @as(c_int, 1);
pub const __ILP32_OFF32_CFLAGS = "-m32";
pub const __ILP32_OFF32_LDFLAGS = "-m32";
pub const __ILP32_OFFBIG_CFLAGS = "-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64";
pub const __ILP32_OFFBIG_LDFLAGS = "-m32";
pub const __LP64_OFF64_CFLAGS = "-m64";
pub const __LP64_OFF64_LDFLAGS = "-m64";
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const __intptr_t_defined = "";
pub const __socklen_t_defined = "";
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const L_SET = SEEK_SET;
pub const L_INCR = SEEK_CUR;
pub const L_XTND = SEEK_END;
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = _CS_V6_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = _CS_V5_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = _CS_V7_WIDTH_RESTRICTED_ENVS;
pub const _GETOPT_POSIX_H = @as(c_int, 1);
pub const _GETOPT_CORE_H = @as(c_int, 1);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const TEMP_FAILURE_RETRY = @compileError("unable to translate macro: undefined identifier `__result`");
// /usr/include/unistd.h:1099:10
pub const POSIX = @as(c_int, 1);
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const CHAR_WIDTH = @as(c_int, 8);
pub const SCHAR_WIDTH = @as(c_int, 8);
pub const UCHAR_WIDTH = @as(c_int, 8);
pub const SHRT_WIDTH = @as(c_int, 16);
pub const USHRT_WIDTH = @as(c_int, 16);
pub const INT_WIDTH = @as(c_int, 32);
pub const UINT_WIDTH = @as(c_int, 32);
pub const LONG_WIDTH = __WORDSIZE;
pub const ULONG_WIDTH = __WORDSIZE;
pub const LLONG_WIDTH = @as(c_int, 64);
pub const ULLONG_WIDTH = @as(c_int, 64);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_FD_SETSIZE = _POSIX_OPEN_MAX;
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_QLIMIT = @as(c_int, 1);
pub const _POSIX_HIWAT = _POSIX_PIPE_BUF;
pub const _POSIX_UIO_MAXIOV = @as(c_int, 16);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const _XOPEN_LIM_H = @as(c_int, 1);
pub const _XOPEN_IOV_MAX = _POSIX_UIO_MAXIOV;
pub const _BITS_UIO_LIM_H = @as(c_int, 1);
pub const __IOV_MAX = @as(c_int, 1024);
pub const IOV_MAX = __IOV_MAX;
pub const NL_ARGMAX = _POSIX_ARG_MAX;
pub const NL_LANGMAX = _POSIX2_LINE_MAX;
pub const NL_MSGMAX = INT_MAX;
pub const NL_NMAX = INT_MAX;
pub const NL_SETMAX = INT_MAX;
pub const NL_TEXTMAX = INT_MAX;
pub const NZERO = @as(c_int, 20);
pub const WORD_BIT = @as(c_int, 32);
pub const LONG_BIT = @as(c_int, 64);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _SYS_PARAM_H = @as(c_int, 1);
pub const _LINUX_PARAM_H = "";
pub const __ASM_GENERIC_PARAM_H = "";
pub const HZ = @as(c_int, 100);
pub const EXEC_PAGESIZE = @as(c_int, 4096);
pub const NOGROUP = -@as(c_int, 1);
pub const MAXHOSTNAMELEN = @as(c_int, 64);
pub const MAXSYMLINKS = @as(c_int, 20);
pub const NOFILE = @as(c_int, 256);
pub const NCARGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const NBBY = CHAR_BIT;
pub const NGROUPS = NGROUPS_MAX;
pub const CANBSIZ = MAX_CANON;
pub const MAXPATHLEN = PATH_MAX;
pub const NODEV = @import("std").zig.c_translation.cast(dev_t, -@as(c_int, 1));
pub const DEV_BSIZE = @as(c_int, 512);
pub const setbit = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/x86_64-linux-gnu/sys/param.h:83:9
pub const clrbit = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/x86_64-linux-gnu/sys/param.h:84:9
pub inline fn isset(a: anytype, i: anytype) @TypeOf(a[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_int, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) {
    _ = &a;
    _ = &i;
    return a[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_int, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY));
}
pub inline fn isclr(a: anytype, i: anytype) @TypeOf((a[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_int, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) == @as(c_int, 0)) {
    _ = &a;
    _ = &i;
    return (a[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_int, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) == @as(c_int, 0);
}
pub inline fn howmany(x: anytype, y: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y)) {
    _ = &x;
    _ = &y;
    return @import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y);
}
pub inline fn roundup(x: anytype, y: anytype) @TypeOf(if ((__builtin_constant_p(y) != 0) and (powerof2(y) != 0)) ((x + y) - @as(c_int, 1)) & ~(y - @as(c_int, 1)) else @import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y) * y) {
    _ = &x;
    _ = &y;
    return if ((__builtin_constant_p(y) != 0) and (powerof2(y) != 0)) ((x + y) - @as(c_int, 1)) & ~(y - @as(c_int, 1)) else @import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y) * y;
}
pub inline fn powerof2(x: anytype) @TypeOf(((x - @as(c_int, 1)) & x) == @as(c_int, 0)) {
    _ = &x;
    return ((x - @as(c_int, 1)) & x) == @as(c_int, 0);
}
pub inline fn MIN(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    _ = &a;
    _ = &b;
    return if (a < b) a else b;
}
pub inline fn MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    _ = &a;
    _ = &b;
    return if (a > b) a else b;
}
pub const GET_PATH_MAX = PATH_MAX;
pub inline fn PATH_VAR(@"var": anytype) @TypeOf(u8 ++ @"var"[@as(usize, @intCast(PATH_MAX + @as(c_int, 1)))]) {
    _ = &@"var";
    return u8 ++ @"var"[@as(usize, @intCast(PATH_MAX + @as(c_int, 1)))];
}
pub inline fn INTEGER_TYPE_SIGNED(t: anytype) @TypeOf((t - @as(c_int, 1)) <= @as(c_int, 0)) {
    _ = &t;
    return (t - @as(c_int, 1)) <= @as(c_int, 0);
}
pub const INTEGER_TYPE_MINIMUM = @compileError("unable to translate C expr: expected ':' instead got 'A number'");
// src/makeint.h:176:9
pub const INTEGER_TYPE_MAXIMUM = @compileError("unable to translate C expr: expected ')' instead got 'A number'");
// src/makeint.h:178:9
pub const ATTRIBUTE = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// src/makeint.h:221:10
pub const UNUSED = @compileError("unable to translate macro: undefined identifier `unused`");
// src/makeint.h:231:9
pub const NORETURN = @compileError("unable to translate macro: undefined identifier `noreturn`");
// src/makeint.h:232:9
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const __ENUM_IDTYPE_T = @as(c_int, 1);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:292:13
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const __COMPAR_FN_T = "";
pub const _STRING_H = @as(c_int, 1);
pub const strdupa = @compileError("unable to translate macro: undefined identifier `__old`");
// /usr/include/string.h:181:10
pub const strndupa = @compileError("unable to translate macro: undefined identifier `__old`");
// /usr/include/string.h:191:10
pub const _STRINGS_H = @as(c_int, 1);
pub const ANSI_STRING = @as(c_int, 1);
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_WIDTH = @as(c_int, 8);
pub const UINT8_WIDTH = @as(c_int, 8);
pub const INT16_WIDTH = @as(c_int, 16);
pub const UINT16_WIDTH = @as(c_int, 16);
pub const INT32_WIDTH = @as(c_int, 32);
pub const UINT32_WIDTH = @as(c_int, 32);
pub const INT64_WIDTH = @as(c_int, 64);
pub const UINT64_WIDTH = @as(c_int, 64);
pub const INT_LEAST8_WIDTH = @as(c_int, 8);
pub const UINT_LEAST8_WIDTH = @as(c_int, 8);
pub const INT_LEAST16_WIDTH = @as(c_int, 16);
pub const UINT_LEAST16_WIDTH = @as(c_int, 16);
pub const INT_LEAST32_WIDTH = @as(c_int, 32);
pub const UINT_LEAST32_WIDTH = @as(c_int, 32);
pub const INT_LEAST64_WIDTH = @as(c_int, 64);
pub const UINT_LEAST64_WIDTH = @as(c_int, 64);
pub const INT_FAST8_WIDTH = @as(c_int, 8);
pub const UINT_FAST8_WIDTH = @as(c_int, 8);
pub const INT_FAST16_WIDTH = __WORDSIZE;
pub const UINT_FAST16_WIDTH = __WORDSIZE;
pub const INT_FAST32_WIDTH = __WORDSIZE;
pub const UINT_FAST32_WIDTH = __WORDSIZE;
pub const INT_FAST64_WIDTH = @as(c_int, 64);
pub const UINT_FAST64_WIDTH = @as(c_int, 64);
pub const INTPTR_WIDTH = __WORDSIZE;
pub const UINTPTR_WIDTH = __WORDSIZE;
pub const INTMAX_WIDTH = @as(c_int, 64);
pub const UINTMAX_WIDTH = @as(c_int, 64);
pub const PTRDIFF_WIDTH = __WORDSIZE;
pub const SIG_ATOMIC_WIDTH = @as(c_int, 32);
pub const SIZE_WIDTH = __WORDSIZE;
pub const WCHAR_WIDTH = @as(c_int, 32);
pub const WINT_WIDTH = @as(c_int, 32);
pub const ____gwchar_t_defined = @as(c_int, 1);
pub const __PRI64_PREFIX = "l";
pub const __PRIPTR_PREFIX = "l";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRId64 = __PRI64_PREFIX ++ "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI64_PREFIX ++ "d";
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST64 = __PRI64_PREFIX ++ "d";
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI64_PREFIX ++ "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI64_PREFIX ++ "i";
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST64 = __PRI64_PREFIX ++ "i";
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI64_PREFIX ++ "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI64_PREFIX ++ "o";
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST64 = __PRI64_PREFIX ++ "o";
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI64_PREFIX ++ "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI64_PREFIX ++ "u";
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST64 = __PRI64_PREFIX ++ "u";
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI64_PREFIX ++ "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI64_PREFIX ++ "x";
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST64 = __PRI64_PREFIX ++ "x";
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI64_PREFIX ++ "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI64_PREFIX ++ "X";
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST32 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST64 = __PRI64_PREFIX ++ "X";
pub const PRIdMAX = __PRI64_PREFIX ++ "d";
pub const PRIiMAX = __PRI64_PREFIX ++ "i";
pub const PRIoMAX = __PRI64_PREFIX ++ "o";
pub const PRIuMAX = __PRI64_PREFIX ++ "u";
pub const PRIxMAX = __PRI64_PREFIX ++ "x";
pub const PRIXMAX = __PRI64_PREFIX ++ "X";
pub const PRIdPTR = __PRIPTR_PREFIX ++ "d";
pub const PRIiPTR = __PRIPTR_PREFIX ++ "i";
pub const PRIoPTR = __PRIPTR_PREFIX ++ "o";
pub const PRIuPTR = __PRIPTR_PREFIX ++ "u";
pub const PRIxPTR = __PRIPTR_PREFIX ++ "x";
pub const PRIXPTR = __PRIPTR_PREFIX ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI64_PREFIX ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI64_PREFIX ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST64 = __PRI64_PREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI64_PREFIX ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI64_PREFIX ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST64 = __PRI64_PREFIX ++ "i";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI64_PREFIX ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI64_PREFIX ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST64 = __PRI64_PREFIX ++ "u";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI64_PREFIX ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI64_PREFIX ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST64 = __PRI64_PREFIX ++ "o";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI64_PREFIX ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI64_PREFIX ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST64 = __PRI64_PREFIX ++ "x";
pub const SCNdMAX = __PRI64_PREFIX ++ "d";
pub const SCNiMAX = __PRI64_PREFIX ++ "i";
pub const SCNoMAX = __PRI64_PREFIX ++ "o";
pub const SCNuMAX = __PRI64_PREFIX ++ "u";
pub const SCNxMAX = __PRI64_PREFIX ++ "x";
pub const SCNdPTR = __PRIPTR_PREFIX ++ "d";
pub const SCNiPTR = __PRIPTR_PREFIX ++ "i";
pub const SCNoPTR = __PRIPTR_PREFIX ++ "o";
pub const SCNuPTR = __PRIPTR_PREFIX ++ "u";
pub const SCNxPTR = __PRIPTR_PREFIX ++ "x";
pub const MK_PRI64_PREFIX = "ll";
pub const FILE_TIMESTAMP = uintmax_t;
pub inline fn ISDIGIT(c: anytype) @TypeOf((@import("std").zig.c_translation.cast(c_uint, c) - '0') <= @as(c_int, 9)) {
    _ = &c;
    return (@import("std").zig.c_translation.cast(c_uint, c) - '0') <= @as(c_int, 9);
}
pub inline fn streq(a: anytype, b: anytype) @TypeOf((a == b) or ((a.* == b.*) and ((a.* == '\x00') or !(strcmp(a + @as(c_int, 1), b + @as(c_int, 1)) != 0)))) {
    _ = &a;
    _ = &b;
    return (a == b) or ((a.* == b.*) and ((a.* == '\x00') or !(strcmp(a + @as(c_int, 1), b + @as(c_int, 1)) != 0)));
}
pub inline fn patheq(a: anytype, b: anytype) @TypeOf(streq(a, b)) {
    _ = &a;
    _ = &b;
    return streq(a, b);
}
pub inline fn strneq(a: anytype, b: anytype, l: anytype) @TypeOf(strncmp(a, b, l) == @as(c_int, 0)) {
    _ = &a;
    _ = &b;
    _ = &l;
    return strncmp(a, b, l) == @as(c_int, 0);
}
pub const ENUM_BITFIELD = @compileError("unable to translate C expr: unexpected token ':'");
// src/makeint.h:345:10
pub const _LOCALE_H = @as(c_int, 1);
pub const _BITS_LOCALE_H = @as(c_int, 1);
pub const __LC_CTYPE = @as(c_int, 0);
pub const __LC_NUMERIC = @as(c_int, 1);
pub const __LC_TIME = @as(c_int, 2);
pub const __LC_COLLATE = @as(c_int, 3);
pub const __LC_MONETARY = @as(c_int, 4);
pub const __LC_MESSAGES = @as(c_int, 5);
pub const __LC_ALL = @as(c_int, 6);
pub const __LC_PAPER = @as(c_int, 7);
pub const __LC_NAME = @as(c_int, 8);
pub const __LC_ADDRESS = @as(c_int, 9);
pub const __LC_TELEPHONE = @as(c_int, 10);
pub const __LC_MEASUREMENT = @as(c_int, 11);
pub const __LC_IDENTIFICATION = @as(c_int, 12);
pub const LC_CTYPE = __LC_CTYPE;
pub const LC_NUMERIC = __LC_NUMERIC;
pub const LC_TIME = __LC_TIME;
pub const LC_COLLATE = __LC_COLLATE;
pub const LC_MONETARY = __LC_MONETARY;
pub const LC_MESSAGES = __LC_MESSAGES;
pub const LC_ALL = __LC_ALL;
pub const LC_PAPER = __LC_PAPER;
pub const LC_NAME = __LC_NAME;
pub const LC_ADDRESS = __LC_ADDRESS;
pub const LC_TELEPHONE = __LC_TELEPHONE;
pub const LC_MEASUREMENT = __LC_MEASUREMENT;
pub const LC_IDENTIFICATION = __LC_IDENTIFICATION;
pub const LC_CTYPE_MASK = @as(c_int, 1) << __LC_CTYPE;
pub const LC_NUMERIC_MASK = @as(c_int, 1) << __LC_NUMERIC;
pub const LC_TIME_MASK = @as(c_int, 1) << __LC_TIME;
pub const LC_COLLATE_MASK = @as(c_int, 1) << __LC_COLLATE;
pub const LC_MONETARY_MASK = @as(c_int, 1) << __LC_MONETARY;
pub const LC_MESSAGES_MASK = @as(c_int, 1) << __LC_MESSAGES;
pub const LC_PAPER_MASK = @as(c_int, 1) << __LC_PAPER;
pub const LC_NAME_MASK = @as(c_int, 1) << __LC_NAME;
pub const LC_ADDRESS_MASK = @as(c_int, 1) << __LC_ADDRESS;
pub const LC_TELEPHONE_MASK = @as(c_int, 1) << __LC_TELEPHONE;
pub const LC_MEASUREMENT_MASK = @as(c_int, 1) << __LC_MEASUREMENT;
pub const LC_IDENTIFICATION_MASK = @as(c_int, 1) << __LC_IDENTIFICATION;
pub const LC_ALL_MASK = ((((((((((LC_CTYPE_MASK | LC_NUMERIC_MASK) | LC_TIME_MASK) | LC_COLLATE_MASK) | LC_MONETARY_MASK) | LC_MESSAGES_MASK) | LC_PAPER_MASK) | LC_NAME_MASK) | LC_ADDRESS_MASK) | LC_TELEPHONE_MASK) | LC_MEASUREMENT_MASK) | LC_IDENTIFICATION_MASK;
pub const LC_GLOBAL_LOCALE = @import("std").zig.c_translation.cast(locale_t, -@as(c_long, 1));
pub const _LIBGETTEXT_H = @as(c_int, 1);
pub const _LIBINTL_H = @as(c_int, 1);
pub const __USE_GNU_GETTEXT = @as(c_int, 1);
pub inline fn __GNU_GETTEXT_SUPPORTED_REVISION(major: anytype) @TypeOf(if (major == @as(c_int, 0)) @as(c_int, 1) else -@as(c_int, 1)) {
    _ = &major;
    return if (major == @as(c_int, 0)) @as(c_int, 1) else -@as(c_int, 1);
}
pub inline fn gettext_noop(String: anytype) @TypeOf(String) {
    _ = &String;
    return String;
}
pub inline fn @"_"(msgid: anytype) @TypeOf(gettext(msgid)) {
    _ = &msgid;
    return gettext(msgid);
}
pub inline fn N_(msgid: anytype) @TypeOf(gettext_noop(msgid)) {
    _ = &msgid;
    return gettext_noop(msgid);
}
pub inline fn S_(msg1: anytype, msg2: anytype, num: anytype) @TypeOf(ngettext(msg1, msg2, num)) {
    _ = &msg1;
    _ = &msg2;
    _ = &num;
    return ngettext(msg1, msg2, num);
}
pub inline fn ANY_SET(_v: anytype, _m: anytype) @TypeOf((_v & _m) != @as(c_int, 0)) {
    _ = &_v;
    _ = &_m;
    return (_v & _m) != @as(c_int, 0);
}
pub inline fn NONE_SET(_v: anytype, _m: anytype) @TypeOf(!(ANY_SET(_v, _m) != 0)) {
    _ = &_v;
    _ = &_m;
    return !(ANY_SET(_v, _m) != 0);
}
pub inline fn ALL_SET(_v: anytype, _m: anytype) @TypeOf((_v & _m) == _m) {
    _ = &_v;
    _ = &_m;
    return (_v & _m) == _m;
}
pub const MAP_NUL = @as(c_int, 0x0001);
pub const MAP_BLANK = @as(c_int, 0x0002);
pub const MAP_NEWLINE = @as(c_int, 0x0004);
pub const MAP_COMMENT = @as(c_int, 0x0008);
pub const MAP_SEMI = @as(c_int, 0x0010);
pub const MAP_EQUALS = @as(c_int, 0x0020);
pub const MAP_COLON = @as(c_int, 0x0040);
pub const MAP_VARSEP = @as(c_int, 0x0080);
pub const MAP_PIPE = @as(c_int, 0x0100);
pub const MAP_DOT = @as(c_int, 0x0200);
pub const MAP_COMMA = @as(c_int, 0x0400);
pub const MAP_USERFUNC = @as(c_int, 0x2000);
pub const MAP_VARIABLE = @as(c_int, 0x4000);
pub const MAP_DIRSEP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const MAP_VMSCOMMA = @as(c_int, 0x0000);
pub const MAP_SPACE = MAP_BLANK | MAP_NEWLINE;
pub const MAP_PATHSEP = MAP_COLON;
pub inline fn STOP_SET(_v: anytype, _m: anytype) @TypeOf(ANY_SET(stopchar_map[@as(usize, @intCast(@import("std").zig.c_translation.cast(u8, _v)))], _m)) {
    _ = &_v;
    _ = &_m;
    return ANY_SET(stopchar_map[@as(usize, @intCast(@import("std").zig.c_translation.cast(u8, _v)))], _m);
}
pub inline fn ISBLANK(c: anytype) @TypeOf(STOP_SET(c, MAP_BLANK)) {
    _ = &c;
    return STOP_SET(c, MAP_BLANK);
}
pub inline fn ISSPACE(c: anytype) @TypeOf(STOP_SET(c, MAP_SPACE)) {
    _ = &c;
    return STOP_SET(c, MAP_SPACE);
}
pub inline fn END_OF_TOKEN(c: anytype) @TypeOf(STOP_SET(c, MAP_SPACE | MAP_NUL)) {
    _ = &c;
    return STOP_SET(c, MAP_SPACE | MAP_NUL);
}
pub const NEXT_TOKEN = @compileError("unable to translate C expr: unexpected token 'while'");
// src/makeint.h:473:9
pub inline fn ISDIRSEP(c: anytype) @TypeOf(STOP_SET(c, MAP_DIRSEP)) {
    _ = &c;
    return STOP_SET(c, MAP_DIRSEP);
}
pub inline fn HAS_DRIVESPEC(_s: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &_s;
    return @as(c_int, 0);
}
pub const _GLOB_H = @as(c_int, 1);
pub const GLOB_ERR = @as(c_int, 1) << @as(c_int, 0);
pub const GLOB_MARK = @as(c_int, 1) << @as(c_int, 1);
pub const GLOB_NOSORT = @as(c_int, 1) << @as(c_int, 2);
pub const GLOB_DOOFFS = @as(c_int, 1) << @as(c_int, 3);
pub const GLOB_NOCHECK = @as(c_int, 1) << @as(c_int, 4);
pub const GLOB_APPEND = @as(c_int, 1) << @as(c_int, 5);
pub const GLOB_NOESCAPE = @as(c_int, 1) << @as(c_int, 6);
pub const GLOB_PERIOD = @as(c_int, 1) << @as(c_int, 7);
pub const GLOB_MAGCHAR = @as(c_int, 1) << @as(c_int, 8);
pub const GLOB_ALTDIRFUNC = @as(c_int, 1) << @as(c_int, 9);
pub const GLOB_BRACE = @as(c_int, 1) << @as(c_int, 10);
pub const GLOB_NOMAGIC = @as(c_int, 1) << @as(c_int, 11);
pub const GLOB_TILDE = @as(c_int, 1) << @as(c_int, 12);
pub const GLOB_ONLYDIR = @as(c_int, 1) << @as(c_int, 13);
pub const GLOB_TILDE_CHECK = @as(c_int, 1) << @as(c_int, 14);
pub const __GLOB_FLAGS = ((((((((((((GLOB_ERR | GLOB_MARK) | GLOB_NOSORT) | GLOB_DOOFFS) | GLOB_NOESCAPE) | GLOB_NOCHECK) | GLOB_APPEND) | GLOB_PERIOD) | GLOB_ALTDIRFUNC) | GLOB_BRACE) | GLOB_NOMAGIC) | GLOB_TILDE) | GLOB_ONLYDIR) | GLOB_TILDE_CHECK;
pub const GLOB_NOSPACE = @as(c_int, 1);
pub const GLOB_ABORTED = @as(c_int, 2);
pub const GLOB_NOMATCH = @as(c_int, 3);
pub const GLOB_NOSYS = @as(c_int, 4);
pub const GLOB_ABEND = GLOB_ABORTED;
pub const NILF = @import("std").zig.c_translation.cast([*c]floc, @as(c_int, 0));
pub inline fn CSTRLEN(_s: anytype) @TypeOf(@import("std").zig.c_translation.sizeof(_s) - @as(c_int, 1)) {
    _ = &_s;
    return @import("std").zig.c_translation.sizeof(_s) - @as(c_int, 1);
}
pub inline fn STRING_SIZE_TUPLE(_s: anytype) @TypeOf(CSTRLEN(_s)) {
    _ = &_s;
    return blk: {
        _ = &_s;
        break :blk CSTRLEN(_s);
    };
}
pub const INTSTR_LENGTH = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 53) * @import("std").zig.c_translation.sizeof(uintmax_t), @as(c_int, 22)) + @as(c_int, 3);
pub const DEFAULT_TTYNAME = "true";
pub inline fn TTYNAME(_f: anytype) @TypeOf(ttyname(_f)) {
    _ = &_f;
    return ttyname(_f);
}
pub const DEFAULT_TMPDIR = P_tmpdir;
pub inline fn O(_t: anytype, _a: anytype, _f: anytype) @TypeOf(_t(_a, @as(c_int, 0), _f)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    return _t(_a, @as(c_int, 0), _f);
}
pub inline fn OS(_t: anytype, _a: anytype, _f: anytype, _s: anytype) @TypeOf(_t(_a, strlen(_s), _f, _s)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_s;
    return _t(_a, strlen(_s), _f, _s);
}
pub inline fn OSS(_t: anytype, _a: anytype, _f: anytype, _s1: anytype, _s2: anytype) @TypeOf(_t(_a, strlen(_s1) + strlen(_s2), _f, _s1, _s2)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_s1;
    _ = &_s2;
    return _t(_a, strlen(_s1) + strlen(_s2), _f, _s1, _s2);
}
pub inline fn OSSS(_t: anytype, _a: anytype, _f: anytype, _s1: anytype, _s2: anytype, _s3: anytype) @TypeOf(_t(_a, (strlen(_s1) + strlen(_s2)) + strlen(_s3), _f, _s1, _s2, _s3)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_s1;
    _ = &_s2;
    _ = &_s3;
    return _t(_a, (strlen(_s1) + strlen(_s2)) + strlen(_s3), _f, _s1, _s2, _s3);
}
pub inline fn ON(_t: anytype, _a: anytype, _f: anytype, _n: anytype) @TypeOf(_t(_a, INTSTR_LENGTH, _f, _n)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_n;
    return _t(_a, INTSTR_LENGTH, _f, _n);
}
pub inline fn ONN(_t: anytype, _a: anytype, _f: anytype, _n1: anytype, _n2: anytype) @TypeOf(_t(_a, INTSTR_LENGTH * @as(c_int, 2), _f, _n1, _n2)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_n1;
    _ = &_n2;
    return _t(_a, INTSTR_LENGTH * @as(c_int, 2), _f, _n1, _n2);
}
pub inline fn OSN(_t: anytype, _a: anytype, _f: anytype, _s: anytype, _n: anytype) @TypeOf(_t(_a, strlen(_s) + INTSTR_LENGTH, _f, _s, _n)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_s;
    _ = &_n;
    return _t(_a, strlen(_s) + INTSTR_LENGTH, _f, _s, _n);
}
pub inline fn ONS(_t: anytype, _a: anytype, _f: anytype, _n: anytype, _s: anytype) @TypeOf(_t(_a, INTSTR_LENGTH + strlen(_s), _f, _n, _s)) {
    _ = &_t;
    _ = &_a;
    _ = &_f;
    _ = &_n;
    _ = &_s;
    return _t(_a, INTSTR_LENGTH + strlen(_s), _f, _n, _s);
}
pub inline fn xstrlen(_s: anytype) @TypeOf(if (_s == NULL) @as(c_int, 0) else strlen(_s)) {
    _ = &_s;
    return if (_s == NULL) @as(c_int, 0) else strlen(_s);
}
pub const SPIN = @compileError("unable to translate C expr: unexpected token ''");
// src/makeint.h:675:10
pub const DBG = @compileError("unable to translate macro: undefined identifier `compile`");
// src/makeint.h:677:10
pub const OUTPUT_SYNC_NONE = @as(c_int, 0);
pub const OUTPUT_SYNC_LINE = @as(c_int, 1);
pub const OUTPUT_SYNC_TARGET = @as(c_int, 2);
pub const OUTPUT_SYNC_RECURSE = @as(c_int, 3);
pub const GNUMAKEFLAGS_NAME = "GNUMAKEFLAGS";
pub const MAKEFLAGS_NAME = "MAKEFLAGS";
pub const RECIPEPREFIX_NAME = ".RECIPEPREFIX";
pub const RECIPEPREFIX_DEFAULT = '\t';
pub const JOBSERVER_USE_FIFO = @as(c_int, 1);
pub const JOBSERVER_AUTH_OPT = "jobserver-auth";
pub const MAKE_SUCCESS = @as(c_int, 0);
pub const MAKE_TROUBLE = @as(c_int, 1);
pub const MAKE_FAILURE = @as(c_int, 2);
pub const initialize_main = @compileError("unable to translate C expr: unexpected token ''");
// src/makeint.h:840:11
pub const EINTRLOOP = @compileError("unable to translate C expr: unexpected token 'while'");
// src/makeint.h:874:9
pub const ENULLLOOP = @compileError("unable to translate C expr: unexpected token 'do'");
// src/makeint.h:883:9
pub const _ASSERT_H = @as(c_int, 1);
pub const __ASSERT_VOID_CAST = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/assert.h:40:10
pub inline fn assert(expr: anytype) @TypeOf(__ASSERT_VOID_CAST(@as(c_int, 0))) {
    _ = &expr;
    return __ASSERT_VOID_CAST(@as(c_int, 0));
}
pub inline fn assert_perror(errnum: anytype) @TypeOf(__ASSERT_VOID_CAST(@as(c_int, 0))) {
    _ = &errnum;
    return __ASSERT_VOID_CAST(@as(c_int, 0));
}
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// /usr/include/assert.h:143:10
pub const _hash_h_ = "";
pub inline fn HASH_VACANT(item: anytype) @TypeOf((item == @as(c_int, 0)) or (@import("std").zig.c_translation.cast(?*anyopaque, item) == hash_deleted_item)) {
    _ = &item;
    return (item == @as(c_int, 0)) or (@import("std").zig.c_translation.cast(?*anyopaque, item) == hash_deleted_item);
}
pub const STRING_HASH_1 = @compileError("unable to translate macro: undefined identifier `_key_`");
// src/hash.h:88:9
pub const return_STRING_HASH_1 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:92:9
pub const STRING_HASH_2 = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:101:9
pub const return_STRING_HASH_2 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:104:9
pub const STRING_COMPARE = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:110:9
pub const return_STRING_COMPARE = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:113:9
pub const STRING_N_HASH_1 = @compileError("unable to translate macro: undefined identifier `_key_`");
// src/hash.h:118:9
pub const return_STRING_N_HASH_1 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:123:9
pub const STRING_N_HASH_2 = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:132:9
pub const return_STRING_N_HASH_2 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:137:9
pub const STRING_N_COMPARE = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:143:9
pub const return_STRING_N_COMPARE = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:146:9
pub inline fn ISTRING_HASH_1(KEY: anytype, RESULT: anytype) @TypeOf(STRING_HASH_1(KEY, RESULT)) {
    _ = &KEY;
    _ = &RESULT;
    return STRING_HASH_1(KEY, RESULT);
}
pub inline fn return_ISTRING_HASH_1(KEY: anytype) @TypeOf(return_STRING_HASH_1(KEY)) {
    _ = &KEY;
    return return_STRING_HASH_1(KEY);
}
pub inline fn ISTRING_HASH_2(KEY: anytype, RESULT: anytype) @TypeOf(STRING_HASH_2(KEY, RESULT)) {
    _ = &KEY;
    _ = &RESULT;
    return STRING_HASH_2(KEY, RESULT);
}
pub inline fn return_ISTRING_HASH_2(KEY: anytype) @TypeOf(return_STRING_HASH_2(KEY)) {
    _ = &KEY;
    return return_STRING_HASH_2(KEY);
}
pub inline fn ISTRING_COMPARE(X: anytype, Y: anytype, RESULT: anytype) @TypeOf(STRING_COMPARE(X, Y, RESULT)) {
    _ = &X;
    _ = &Y;
    _ = &RESULT;
    return STRING_COMPARE(X, Y, RESULT);
}
pub inline fn return_ISTRING_COMPARE(X: anytype, Y: anytype) @TypeOf(return_STRING_COMPARE(X, Y)) {
    _ = &X;
    _ = &Y;
    return return_STRING_COMPARE(X, Y);
}
pub const INTEGER_HASH_1 = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:198:9
pub const return_INTEGER_HASH_1 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:201:9
pub const INTEGER_HASH_2 = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:207:9
pub const return_INTEGER_HASH_2 = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:210:9
pub const INTEGER_COMPARE = @compileError("unable to translate C expr: unexpected token 'do'");
// src/hash.h:216:9
pub const return_INTEGER_COMPARE = @compileError("unable to translate macro: undefined identifier `_result_`");
// src/hash.h:219:9
pub inline fn ADDRESS_HASH_1(KEY: anytype, RESULT: anytype) @TypeOf(INTEGER_HASH_1(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3), RESULT)) {
    _ = &KEY;
    _ = &RESULT;
    return INTEGER_HASH_1(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3), RESULT);
}
pub inline fn ADDRESS_HASH_2(KEY: anytype, RESULT: anytype) @TypeOf(INTEGER_HASH_2(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3), RESULT)) {
    _ = &KEY;
    _ = &RESULT;
    return INTEGER_HASH_2(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3), RESULT);
}
pub inline fn ADDRESS_COMPARE(X: anytype, Y: anytype, RESULT: anytype) @TypeOf(INTEGER_COMPARE(X, Y, RESULT)) {
    _ = &X;
    _ = &Y;
    _ = &RESULT;
    return INTEGER_COMPARE(X, Y, RESULT);
}
pub inline fn return_ADDRESS_HASH_1(KEY: anytype) @TypeOf(return_INTEGER_HASH_1(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3))) {
    _ = &KEY;
    return return_INTEGER_HASH_1(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3));
}
pub inline fn return_ADDRESS_HASH_2(KEY: anytype) @TypeOf(return_INTEGER_HASH_2(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3))) {
    _ = &KEY;
    return return_INTEGER_HASH_2(@import("std").zig.c_translation.cast(c_ulong, KEY) >> @as(c_int, 3));
}
pub inline fn return_ADDRESS_COMPARE(X: anytype, Y: anytype) @TypeOf(return_INTEGER_COMPARE(X, Y)) {
    _ = &X;
    _ = &Y;
    return return_INTEGER_COMPARE(X, Y);
}
pub inline fn FILE_TIMESTAMP_STAT_MODTIME(fname: anytype, st: anytype) @TypeOf(file_timestamp_cons(fname, st.st_mtime, st.ST_MTIM_NSEC)) {
    _ = &fname;
    _ = &st;
    return file_timestamp_cons(fname, st.st_mtime, st.ST_MTIM_NSEC);
}
pub const FILE_TIMESTAMPS_PER_S = if (FILE_TIMESTAMP_HI_RES) @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000000, .decimal) else @as(c_int, 1);
pub const FILE_TIMESTAMP_LO_BITS = if (FILE_TIMESTAMP_HI_RES) @as(c_int, 30) else @as(c_int, 0);
pub inline fn FILE_TIMESTAMP_S(ts: anytype) @TypeOf((ts - ORDINARY_MTIME_MIN) >> FILE_TIMESTAMP_LO_BITS) {
    _ = &ts;
    return (ts - ORDINARY_MTIME_MIN) >> FILE_TIMESTAMP_LO_BITS;
}
pub inline fn FILE_TIMESTAMP_NS(ts: anytype) c_int {
    _ = &ts;
    return @import("std").zig.c_translation.cast(c_int, (ts - ORDINARY_MTIME_MIN) & ((@as(c_int, 1) << FILE_TIMESTAMP_LO_BITS) - @as(c_int, 1)));
}
pub const FLOOR_LOG2_SECONDS_PER_YEAR = @as(c_int, 24);
pub const FILE_TIMESTAMP_PRINT_LEN_BOUND = (((@import("std").zig.c_translation.MacroArithmetic.div((((@import("std").zig.c_translation.sizeof(FILE_TIMESTAMP) * CHAR_BIT) - @as(c_int, 1)) - FLOOR_LOG2_SECONDS_PER_YEAR) * @as(c_int, 302), @as(c_int, 1000)) + @as(c_int, 1)) + @as(c_int, 1)) + @as(c_int, 4)) + @as(c_int, 25);
pub inline fn file_mtime(f: anytype) @TypeOf(file_mtime_1(f, @as(c_int, 1))) {
    _ = &f;
    return file_mtime_1(f, @as(c_int, 1));
}
pub inline fn file_mtime_no_search(f: anytype) @TypeOf(file_mtime_1(f, @as(c_int, 0))) {
    _ = &f;
    return file_mtime_1(f, @as(c_int, 0));
}
pub inline fn file_mtime_1(f: anytype, v: anytype) @TypeOf(if (f.*.last_mtime == UNKNOWN_MTIME) f_mtime(f, v) else f.*.last_mtime) {
    _ = &f;
    _ = &v;
    return if (f.*.last_mtime == UNKNOWN_MTIME) f_mtime(f, v) else f.*.last_mtime;
}
pub const UNKNOWN_MTIME = @as(c_int, 0);
pub const NONEXISTENT_MTIME = @as(c_int, 1);
pub const OLD_MTIME = @as(c_int, 2);
pub const ORDINARY_MTIME_MIN = OLD_MTIME + @as(c_int, 1);
pub const ORDINARY_MTIME_MAX = (((FILE_TIMESTAMP_S(NEW_MTIME) << FILE_TIMESTAMP_LO_BITS) + ORDINARY_MTIME_MIN) + FILE_TIMESTAMPS_PER_S) - @as(c_int, 1);
pub inline fn is_ordinary_mtime(_t: anytype) @TypeOf((_t >= ORDINARY_MTIME_MIN) and (_t <= ORDINARY_MTIME_MAX)) {
    _ = &_t;
    return (_t >= ORDINARY_MTIME_MIN) and (_t <= ORDINARY_MTIME_MAX);
}
pub const NEW_MTIME = INTEGER_TYPE_MAXIMUM(FILE_TIMESTAMP);
pub const check_renamed = @compileError("unable to translate C expr: unexpected token 'while'");
// src/filedef.h:225:9
pub const NAMESEQ = @compileError("unable to translate macro: undefined identifier `next`");
// src/dep.h:20:9
pub const RM_NOFLAG = @as(c_int, 0);
pub const RM_NO_DEFAULT_GOAL = @as(c_int, 1) << @as(c_int, 0);
pub const RM_INCLUDED = @as(c_int, 1) << @as(c_int, 1);
pub const RM_DONTCARE = @as(c_int, 1) << @as(c_int, 2);
pub const RM_NO_TILDE = @as(c_int, 1) << @as(c_int, 3);
pub const DEP = @compileError("unable to translate macro: undefined identifier `shuf`");
// src/dep.h:46:9
pub const PARSEFS_NONE = @as(c_int, 0x0000);
pub const PARSEFS_NOSTRIP = @as(c_int, 0x0001);
pub const PARSEFS_NOAR = @as(c_int, 0x0002);
pub const PARSEFS_NOGLOB = @as(c_int, 0x0004);
pub const PARSEFS_EXISTS = @as(c_int, 0x0008);
pub const PARSEFS_NOCACHE = @as(c_int, 0x0010);
pub const PARSEFS_ONEWORD = @as(c_int, 0x0020);
pub const PARSEFS_WAIT = @as(c_int, 0x0040);
pub const PARSE_FILE_SEQ = @compileError("unable to translate C expr: unexpected token ')'");
// src/dep.h:87:9
pub const PARSE_SIMPLE_SEQ = @compileError("unable to translate C expr: unexpected token ')'");
// src/dep.h:89:9
pub inline fn dep_name(d: anytype) @TypeOf(if (d.*.name) d.*.name else d.*.file.*.name) {
    _ = &d;
    return if (d.*.name) d.*.name else d.*.file.*.name;
}
pub inline fn alloc_seq_elt(_t: anytype) @TypeOf(xcalloc(@import("std").zig.c_translation.sizeof(_t))) {
    _ = &_t;
    return xcalloc(@import("std").zig.c_translation.sizeof(_t));
}
pub inline fn alloc_ns() @TypeOf(alloc_seq_elt(struct_nameseq)) {
    return alloc_seq_elt(struct_nameseq);
}
pub inline fn alloc_dep() @TypeOf(alloc_seq_elt(struct_dep)) {
    return alloc_seq_elt(struct_dep);
}
pub inline fn alloc_goaldep() @TypeOf(alloc_seq_elt(struct_goaldep)) {
    return alloc_seq_elt(struct_goaldep);
}
pub inline fn free_ns(_n: anytype) @TypeOf(free(_n)) {
    _ = &_n;
    return free(_n);
}
pub inline fn free_dep(_d: anytype) @TypeOf(free_ns(_d)) {
    _ = &_d;
    return free_ns(_d);
}
pub inline fn free_goaldep(_g: anytype) @TypeOf(free_dep(_g)) {
    _ = &_g;
    return free_dep(_g);
}
pub inline fn free_dep_chain(_d: anytype) @TypeOf(free_ns_chain(@import("std").zig.c_translation.cast([*c]struct_nameseq, _d))) {
    _ = &_d;
    return free_ns_chain(@import("std").zig.c_translation.cast([*c]struct_nameseq, _d));
}
pub inline fn free_goal_chain(_g: anytype) @TypeOf(free_ns_chain(@import("std").zig.c_translation.cast([*c]struct_nameseq, _g))) {
    _ = &_g;
    return free_ns_chain(@import("std").zig.c_translation.cast([*c]struct_nameseq, _g));
}
// src/output.h:27:9: warning: macro 'FD_STDIN' contains a runtime value, translated to function
pub inline fn FD_STDIN() @TypeOf(fileno(stdin)) {
    return fileno(stdin);
}
// src/output.h:28:9: warning: macro 'FD_STDOUT' contains a runtime value, translated to function
pub inline fn FD_STDOUT() @TypeOf(fileno(stdout)) {
    return fileno(stdout);
}
// src/output.h:29:9: warning: macro 'FD_STDERR' contains a runtime value, translated to function
pub inline fn FD_STDERR() @TypeOf(fileno(stderr)) {
    return fileno(stderr);
}
pub const OUTPUT_SET = @compileError("unable to translate C expr: unexpected token 'do'");
// src/output.h:31:9
pub const OUTPUT_UNSET = @compileError("unable to translate C expr: unexpected token 'do'");
// src/output.h:32:9
pub const OUTPUT_TRACED = @compileError("unable to translate C expr: unexpected token 'do'");
// src/output.h:34:9
pub inline fn OUTPUT_IS_TRACED() @TypeOf(!!(stdio_traced != 0)) {
    return !!(stdio_traced != 0);
}
pub const VMSCHILD = "";
pub const CHILDBASE = @compileError("unable to translate macro: undefined identifier `cmd_name`");
// src/job.h:31:9
pub const IO_UNKNOWN = @as(c_int, 0x0001);
pub const IO_COMBINED_OUTERR = @as(c_int, 0x0002);
pub const IO_STDIN_OK = @as(c_int, 0x0004);
pub const IO_STDOUT_OK = @as(c_int, 0x0008);
pub const IO_STDERR_OK = @as(c_int, 0x0010);
pub const COMMANDS_RECURSE = @as(c_int, 1);
pub const COMMANDS_SILENT = @as(c_int, 2);
pub const COMMANDS_NOERROR = @as(c_int, 4);
pub const EXP_COUNT_BITS = @as(c_int, 15);
pub const EXP_COUNT_MAX = (@as(c_int, 1) << EXP_COUNT_BITS) - @as(c_int, 1);
pub const allocated_variable_expand = @compileError("unable to translate C expr: expected ')' instead got 'line'");
// src/variable.h:132:9
pub inline fn recursively_expand(v: anytype) @TypeOf(recursively_expand_for_file(v, NULL)) {
    _ = &v;
    return recursively_expand_for_file(v, NULL);
}
pub inline fn define_variable(n: anytype, l: anytype, v: anytype, o: anytype, r: anytype) @TypeOf(define_variable_in_set(n, l, v, o, r, current_variable_set_list.*.set, NILF)) {
    _ = &n;
    _ = &l;
    _ = &v;
    _ = &o;
    _ = &r;
    return define_variable_in_set(n, l, v, o, r, current_variable_set_list.*.set, NILF);
}
pub inline fn define_variable_cname(n: anytype, v: anytype, o: anytype, r: anytype) @TypeOf(define_variable_in_set(n, @import("std").zig.c_translation.sizeof(n) - @as(c_int, 1), v, o, r, current_variable_set_list.*.set, NILF)) {
    _ = &n;
    _ = &v;
    _ = &o;
    _ = &r;
    return define_variable_in_set(n, @import("std").zig.c_translation.sizeof(n) - @as(c_int, 1), v, o, r, current_variable_set_list.*.set, NILF);
}
pub inline fn define_variable_loc(n: anytype, l: anytype, v: anytype, o: anytype, r: anytype, f: anytype) @TypeOf(define_variable_in_set(n, l, v, o, r, current_variable_set_list.*.set, f)) {
    _ = &n;
    _ = &l;
    _ = &v;
    _ = &o;
    _ = &r;
    _ = &f;
    return define_variable_in_set(n, l, v, o, r, current_variable_set_list.*.set, f);
}
pub inline fn define_variable_global(n: anytype, l: anytype, v: anytype, o: anytype, r: anytype, f: anytype) @TypeOf(define_variable_in_set(n, l, v, o, r, NULL, f)) {
    _ = &n;
    _ = &l;
    _ = &v;
    _ = &o;
    _ = &r;
    _ = &f;
    return define_variable_in_set(n, l, v, o, r, NULL, f);
}
pub inline fn define_variable_for_file(n: anytype, l: anytype, v: anytype, o: anytype, r: anytype, f: anytype) @TypeOf(define_variable_in_set(n, l, v, o, r, f.*.variables.*.set, NILF)) {
    _ = &n;
    _ = &l;
    _ = &v;
    _ = &o;
    _ = &r;
    _ = &f;
    return define_variable_in_set(n, l, v, o, r, f.*.variables.*.set, NILF);
}
pub inline fn undefine_variable_global(n: anytype, l: anytype, o: anytype) @TypeOf(undefine_variable_in_set(n, l, o, NULL)) {
    _ = &n;
    _ = &l;
    _ = &o;
    return undefine_variable_in_set(n, l, o, NULL);
}
pub const MAKELEVEL_NAME = "MAKELEVEL";
pub const MAKELEVEL_LENGTH = CSTRLEN(MAKELEVEL_NAME);
pub const DB_NONE = @as(c_int, 0x000);
pub const DB_BASIC = @as(c_int, 0x001);
pub const DB_VERBOSE = @as(c_int, 0x002);
pub const DB_JOBS = @as(c_int, 0x004);
pub const DB_IMPLICIT = @as(c_int, 0x008);
pub const DB_PRINT = @as(c_int, 0x010);
pub const DB_WHY = @as(c_int, 0x020);
pub const DB_MAKEFILES = @as(c_int, 0x100);
pub const DB_ALL = @as(c_int, 0xfff);
pub inline fn ISDB(_l: anytype) @TypeOf(_l & db_level) {
    _ = &_l;
    return _l & db_level;
}
pub const DBS = @compileError("unable to translate macro: undefined identifier `depth`");
// src/debug.h:34:9
pub const DBF = @compileError("unable to translate macro: undefined identifier `depth`");
// src/debug.h:37:9
pub const DB = @compileError("unable to translate C expr: unexpected token 'do'");
// src/debug.h:41:9
pub const _PWD_H = @as(c_int, 1);
pub const NSS_BUFLEN_PASSWD = @as(c_int, 1024);
pub const word1eq = @compileError("unable to translate macro: undefined identifier `wlen`");
// src/read.c:169:9
pub const record_waiting_files = @compileError("unable to translate macro: undefined identifier `filenames`");
// src/read.c:591:9
pub const chkword = @compileError("unable to translate macro: undefined identifier `cmdtype`");
// src/read.c:1535:9
pub const EXTRATEXT = @compileError("unable to translate macro: undefined identifier `flocp`");
// src/read.c:1551:9
pub const EXTRACMD = @compileError("unable to translate macro: undefined identifier `flocp`");
// src/read.c:1552:9
pub const NEWELT = @compileError("unable to translate macro: undefined identifier `_ns`");
// src/read.c:3195:9
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const statx_timestamp = struct_statx_timestamp;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const _fpx_sw_bytes = struct__fpx_sw_bytes;
pub const _fpreg = struct__fpreg;
pub const _fpxreg = struct__fpxreg;
pub const _xmmreg = struct__xmmreg;
pub const _fpstate = struct__fpstate;
pub const sigcontext = struct_sigcontext;
pub const _xsave_hdr = struct__xsave_hdr;
pub const _ymmh_state = struct__ymmh_state;
pub const _xstate = struct__xstate;
pub const _libc_fpxreg = struct__libc_fpxreg;
pub const _libc_xmmreg = struct__libc_xmmreg;
pub const _libc_fpstate = struct__libc_fpstate;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const obstack = struct_obstack;
pub const __locale_struct = struct___locale_struct;
pub const timeb = struct_timeb;
pub const __itimer_which = enum___itimer_which;
pub const itimerval = struct_itimerval;
pub const timex = struct_timex;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const lconv = struct_lconv;
pub const dep = struct_dep;
pub const commands = struct_commands;
pub const hash_table = struct_hash_table;
pub const variable_set = struct_variable_set;
pub const variable_set_list = struct_variable_set_list;
pub const file = struct_file;
pub const variable_origin = enum_variable_origin;
pub const variable = struct_variable;
pub const nameseq = struct_nameseq;
pub const goaldep = struct_goaldep;
pub const passwd = struct_passwd;
pub const ebuffer = struct_ebuffer;
pub const output = struct_output;
pub const childbase = struct_childbase;
pub const child = struct_child;
pub const variable_flavor = enum_variable_flavor;
pub const variable_export = enum_variable_export;
pub const pattern_var = struct_pattern_var;
pub const rule = struct_rule;
pub const pspec = struct_pspec;
pub const vmodifiers = struct_vmodifiers;
pub const make_word_type = enum_make_word_type;
