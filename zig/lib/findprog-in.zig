extern fn alloca(__size: c_ulong) ?*anyopaque;

const wchar_t = c_int;

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

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __ino64_t = c_ulong;
const __off64_t = c_long;
const __pid_t = c_int;

const __useconds_t = c_uint;
const __suseconds_t = c_long;

const __blkcnt64_t = c_long;

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

const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
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
extern fn concatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;
extern fn xconcatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;
const suffixes: [1][*c]const u8 = [1][*c]const u8{
    "",
};
