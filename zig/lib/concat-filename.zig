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

export fn concatenated_filename(arg_directory: [*c]const u8, arg_filename: [*c]const u8, arg_suffix: [*c]const u8) [*c]u8 {
    var directory = arg_directory;
    _ = &directory;
    var filename = arg_filename;
    _ = &filename;
    var suffix = arg_suffix;
    _ = &suffix;
    var result: [*c]u8 = undefined;
    _ = &result;
    var p: [*c]u8 = undefined;
    _ = &p;
    if (strcmp(directory, ".") == @as(c_int, 0)) {
        result = @as([*c]u8, @ptrCast(@alignCast(malloc((strlen(filename) +% (if (suffix != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) strlen(suffix) else @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
        if (result == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
        p = result;
    } else {
        var directory_len: usize = strlen(directory);
        _ = &directory_len;
        var need_slash: c_int = @intFromBool((directory_len > @as(usize, @bitCast(@as(c_long, blk: {
            _ = &directory;
            break :blk @as(c_int, 0);
        })))) and !(@as(c_int, @bitCast(@as(c_uint, directory[directory_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '/')));
        _ = &need_slash;
        result = @as([*c]u8, @ptrCast(@alignCast(malloc((((directory_len +% @as(usize, @bitCast(@as(c_long, need_slash)))) +% strlen(filename)) +% (if (suffix != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) strlen(suffix) else @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
        if (result == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
        _ = memcpy(@as(?*anyopaque, @ptrCast(result)), @as(?*const anyopaque, @ptrCast(directory)), directory_len);
        p = result + directory_len;
        if (need_slash != 0) {
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '/';
        }
    }
    p = stpcpy(p, filename);
    if (suffix != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = stpcpy(p, suffix);
    }
    return result;
}

extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
