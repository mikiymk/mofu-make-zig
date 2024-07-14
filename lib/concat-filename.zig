extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn malloc(__size: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;
extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

pub export fn concatenated_filename(arg_directory: [*c]const u8, arg_filename: [*c]const u8, arg_suffix: [*c]const u8) [*c]u8 {
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
pub extern fn xconcatenated_filename(directory: [*c]const u8, filename: [*c]const u8, suffix: [*c]const u8) [*c]u8;
