const std = @import("std");
const root = @import("../root.zig");

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
        var has_slash: bool = 0 != 0;
        _ = &has_slash;
        {
            var p: [*c]const u8 = undefined;
            _ = &p;
            {
                p = progname;
                while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '/')) {
                    has_slash = 1 != 0;
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
                var directory_as_prefix: [*c]const u8 = if ((directory != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) and !(@as(c_int, @bitCast(@as(c_uint, progname[0]))) == @as(c_int, '/'))) directory else "";
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
                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) return null;
                            if (eaccess(progpathname, 1) == 0) {
                                var statbuf: struct_stat = undefined;
                                _ = &statbuf;
                                if (stat(progpathname, &statbuf) >= 0) {
                                    if (!((statbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                                        if (strcmp(progpathname, progname) == 0) {
                                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                                            return progname;
                                        } else return progpathname;
                                    }
                                    __errno_location().* = 13;
                                }
                            }
                            if (__errno_location().* != 2) {
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
    if (path == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        path = "";
    }
    {
        var path_copy: [*c]u8 = strdup(path);
        _ = &path_copy;
        if (path_copy == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) return null;
        var failure_errno: c_int = undefined;
        _ = &failure_errno;
        var path_rest: [*c]u8 = undefined;
        _ = &path_rest;
        var cp: [*c]u8 = undefined;
        _ = &cp;
        failure_errno = 2;
        {
            path_rest = path_copy;
            while (true) : (path_rest = cp + @as(usize, @bitCast(@as(isize, @intCast(1))))) {
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
                if ((directory != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) and !(@as(c_int, @bitCast(@as(c_uint, dir[0]))) == @as(c_int, '/'))) {
                    dir_as_prefix_to_free = concatenated_filename(directory, dir, null);
                    if (dir_as_prefix_to_free == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
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
                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
                                failure_errno = __errno_location().*;
                                free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                {
                                    free(@as(?*anyopaque, @ptrCast(path_copy)));
                                    __errno_location().* = failure_errno;
                                    return null;
                                }
                            }
                            if (eaccess(progpathname, 1) == 0) {
                                var statbuf: struct_stat = undefined;
                                _ = &statbuf;
                                if (stat(progpathname, &statbuf) >= 0) {
                                    if (!((statbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                                        if (strcmp(progpathname, progname) == 0) {
                                            free(@as(?*anyopaque, @ptrCast(progpathname)));
                                            progpathname = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(c_ulong, 2) +% strlen(progname)) +% @as(c_ulong, 1)))));
                                            if (progpathname == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
                                                failure_errno = __errno_location().*;
                                                free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                                {
                                                    free(@as(?*anyopaque, @ptrCast(path_copy)));
                                                    __errno_location().* = failure_errno;
                                                    return null;
                                                }
                                            }
                                            progpathname[0] = '.';
                                            progpathname[1] = '/';
                                            _ = memcpy(@as(?*anyopaque, @ptrCast(progpathname + @as(usize, @bitCast(@as(isize, @intCast(2)))))), @as(?*const anyopaque, @ptrCast(progname)), strlen(progname) +% @as(c_ulong, 1));
                                        }
                                        free(@as(?*anyopaque, @ptrCast(dir_as_prefix_to_free)));
                                        free(@as(?*anyopaque, @ptrCast(path_copy)));
                                        return progpathname;
                                    }
                                    __errno_location().* = 13;
                                }
                            }
                            if (__errno_location().* != 2) {
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

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

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

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strdup(__s: [*c]const u8) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn eaccess(__name: [*c]const u8, __type: c_int) c_int;

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;

extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

extern fn concatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;

const suffixes: [1][*c]const u8 = [1][*c]const u8{
    "",
};
