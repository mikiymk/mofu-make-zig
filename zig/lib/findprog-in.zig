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
extern fn find_in_path(progname: [*c]const u8) [*c]const u8;
const __dev_t = c_ulong;
const __ino_t = c_ulong;
const __nlink_t = c_ulong;
const __mode_t = c_uint;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __off_t = c_long;
const __blksize_t = c_long;
const __blkcnt_t = c_long;
const __time_t = c_long;
const __syscall_slong_t = c_long;
const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
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
export fn find_in_given_path(arg_progname: [*c]const u8, arg_path: [*c]const u8, arg_directory: [*c]const u8, arg_optimize_for_exec: bool) [*c]const u8 {
    var progname = arg_progname;
    _ = &progname;
    var path = arg_path;
    _ = &path;
    var directory = arg_directory;
    _ = &directory;
    var optimize_for_exec = arg_optimize_for_exec;
    _ = &optimize_for_exec;
    {
        var has_slash: bool = @as(c_int, 0) != 0;
        _ = &has_slash;
        {
            var p: [*c]const u8 = undefined;
            _ = &p;
            {
                p = progname;
                while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '/')) {
                    has_slash = @as(c_int, 1) != 0;
                    break;
                };
            }
        }
        if (has_slash) {
            if (optimize_for_exec) return progname else {
                var failure_errno: c_int = undefined;
                _ = &failure_errno;
                var i: usize = undefined;
                _ = &i;
                var directory_as_prefix: [*c]const u8 = if ((directory != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and !(@as(c_int, @bitCast(@as(c_uint, progname[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/'))) directory else "";
                _ = &directory_as_prefix;
                failure_errno = 2;
                {
                    i = 0;
                    while (i < (@sizeOf([1][*c]const u8) / @sizeOf([*c]const u8))) : (i +%= 1) {
                        var suffix: [*c]const u8 = suffixes[i];
                        _ = &suffix;
                        {
                            var progpathname: [*c]u8 = concatenated_filename(directory_as_prefix, progname, suffix);
                            _ = &progpathname;
                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
                            if (eaccess(progpathname, @as(c_int, 1)) == @as(c_int, 0)) {
                                var statbuf: struct_stat = undefined;
                                _ = &statbuf;
                                if (stat(progpathname, &statbuf) >= @as(c_int, 0)) {
                                    if (!((statbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                                        if (strcmp(progpathname, progname) == @as(c_int, 0)) {
                                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                                            return progname;
                                        } else return progpathname;
                                    }
                                    __errno_location().* = 13;
                                }
                            }
                            if (__errno_location().* != @as(c_int, 2)) {
                                failure_errno = __errno_location().*;
                            }
                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                        }
                    }
                }
                __errno_location().* = failure_errno;
                return null;
            }
        }
    }
    if (path == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        path = "";
    }
    {
        var path_copy: [*c]u8 = strdup(path);
        _ = &path_copy;
        if (path_copy == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
        var failure_errno: c_int = undefined;
        _ = &failure_errno;
        var path_rest: [*c]u8 = undefined;
        _ = &path_rest;
        var cp: [*c]u8 = undefined;
        _ = &cp;
        failure_errno = 2;
        {
            path_rest = path_copy;
            while (true) : (path_rest = cp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) {
                var dir: [*c]const u8 = undefined;
                _ = &dir;
                var last: bool = undefined;
                _ = &last;
                var dir_as_prefix_to_free: [*c]u8 = undefined;
                _ = &dir_as_prefix_to_free;
                var dir_as_prefix: [*c]const u8 = undefined;
                _ = &dir_as_prefix;
                var i: usize = undefined;
                _ = &i;
                dir = path_rest;
                {
                    cp = path_rest;
                    while ((@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, ':'))) : (cp += 1) {}
                }
                last = @as(c_int, @bitCast(@as(c_uint, cp.*))) == @as(c_int, '\x00');
                cp.* = '\x00';
                if (dir == @as([*c]const u8, @ptrCast(@alignCast(cp)))) {
                    dir = ".";
                }
                if ((directory != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and !(@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/'))) {
                    dir_as_prefix_to_free = concatenated_filename(directory, dir, null);
                    if (dir_as_prefix_to_free == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        failure_errno = __errno_location().*;
                        {
                            free(@as(?*anyopaque, @ptrCast(path_copy)));
                            __errno_location().* = failure_errno;
                            return null;
                        }
                    }
                    dir_as_prefix = dir_as_prefix_to_free;
                } else {
                    dir_as_prefix_to_free = null;
                    dir_as_prefix = dir;
                }
                {
                    i = 0;
                    while (i < (@sizeOf([1][*c]const u8) / @sizeOf([*c]const u8))) : (i +%= 1) {
                        var suffix: [*c]const u8 = suffixes[i];
                        _ = &suffix;
                        {
                            var progpathname: [*c]u8 = concatenated_filename(dir_as_prefix, progname, suffix);
                            _ = &progpathname;
                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                                failure_errno = __errno_location().*;
                                free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                {
                                    free(@as(?*anyopaque, @ptrCast(path_copy)));
                                    __errno_location().* = failure_errno;
                                    return null;
                                }
                            }
                            if (eaccess(progpathname, @as(c_int, 1)) == @as(c_int, 0)) {
                                var statbuf: struct_stat = undefined;
                                _ = &statbuf;
                                if (stat(progpathname, &statbuf) >= @as(c_int, 0)) {
                                    if (!((statbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                                        if (strcmp(progpathname, progname) == @as(c_int, 0)) {
                                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                                            progpathname = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) +% strlen(progname)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                                                failure_errno = __errno_location().*;
                                                free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                                {
                                                    free(@as(?*anyopaque, @ptrCast(path_copy)));
                                                    __errno_location().* = failure_errno;
                                                    return null;
                                                }
                                            }
                                            progpathname[@as(c_uint, @intCast(@as(c_int, 0)))] = '.';
                                            progpathname[@as(c_uint, @intCast(@as(c_int, 1)))] = '/';
                                            _ = memcpy(@as(?*anyopaque, @ptrCast(progpathname + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @as(?*const anyopaque, @ptrCast(progname)), strlen(progname) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
                                        }
                                        free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                        free(@as(?*anyopaque, @ptrCast(path_copy)));
                                        return progpathname;
                                    }
                                    __errno_location().* = 13;
                                }
                            }
                            if (__errno_location().* != @as(c_int, 2)) {
                                failure_errno = __errno_location().*;
                            }
                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                        }
                    }
                }
                free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                if (last) break;
            }
        }
        free(@as(?*anyopaque, @ptrCast(path_copy)));
        __errno_location().* = failure_errno;
        return null;
    }
}
extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;
const error_t = c_int;
const _Float32 = f32;
const _Float64 = f64;
const _Float32x = f64;
const _Float64x = c_longdouble;
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
const struct___locale_data_1 = opaque {};
const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_1 = @import("std").mem.zeroes([13]?*struct___locale_data_1),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
const __locale_t = [*c]struct___locale_struct;
const locale_t = __locale_t;
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
const __ino64_t = c_ulong;
const __off64_t = c_long;
const __pid_t = c_int;
const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
const __clock_t = c_long;
const __rlim_t = c_ulong;
const __rlim64_t = c_ulong;
const __id_t = c_uint;
const __useconds_t = c_uint;
const __suseconds_t = c_long;
const __suseconds64_t = c_long;
const __daddr_t = c_int;
const __key_t = c_int;
const __clockid_t = c_int;
const __timer_t = ?*anyopaque;
const __blkcnt64_t = c_long;
const __fsblkcnt_t = c_ulong;
const __fsblkcnt64_t = c_ulong;
const __fsfilcnt_t = c_ulong;
const __fsfilcnt64_t = c_ulong;
const __fsword_t = c_long;
const __ssize_t = c_long;
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
const struct_unnamed_2 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
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
const enum_unnamed_3 = c_uint;
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
const enum_unnamed_4 = c_uint;
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
const enum_unnamed_5 = c_uint;
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
extern fn concatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;
extern fn xconcatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;
const suffixes: [1][*c]const u8 = [1][*c]const u8{
    "",
};
