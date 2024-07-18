const root = @import("root.zig");

const gmk_floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
};
const gmk_func_ptr = ?*const fn ([*c]const u8, c_uint, [*c][*c]u8) callconv(.C) [*c]u8;

const struct_file = @import("filedef.zig").struct_file;

extern fn free(__ptr: ?*anyopaque) void;

const floc = @import("makeint.zig").floc;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

extern var reading_file: [*c]const floc;

const allocated_variable_expand_for_file = @import("expand.zig").allocated_variable_expand_for_file;
const install_variable_buffer = @import("expand.zig").install_variable_buffer;
const restore_variable_buffer = @import("expand.zig").restore_variable_buffer;

extern fn define_new_function(flocp: [*c]const floc, name: [*c]const u8, min: c_uint, max: c_uint, flags: c_uint, func: gmk_func_ptr) void;

extern fn eval_buffer(buffer: [*c]u8, floc: [*c]const floc) void;

pub export fn gmk_alloc(arg_len: c_uint) [*c]u8 {
    var len = arg_len;
    _ = &len;
    return @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_ulong, len)))))));
}

pub export fn gmk_free(arg_s: [*c]u8) void {
    var s = arg_s;
    _ = &s;
    free(@as(?*anyopaque, @ptrCast(s)));
}

pub export fn gmk_eval(arg_buffer: [*c]const u8, arg_gfloc: [*c]const gmk_floc) void {
    var buffer = arg_buffer;
    _ = &buffer;
    var gfloc = arg_gfloc;
    _ = &gfloc;
    var pbuf: [*c]u8 = undefined;
    _ = &pbuf;
    var plen: usize = undefined;
    _ = &plen;
    var s: [*c]u8 = undefined;
    _ = &s;
    var fl: floc = undefined;
    _ = &fl;
    var flp: [*c]floc = undefined;
    _ = &flp;
    if (gfloc != null) {
        fl.filenm = gfloc.*.filenm;
        fl.lineno = gfloc.*.lineno;
        fl.offset = 0;
        flp = &fl;
    } else {
        flp = null;
    }
    install_variable_buffer(&pbuf, &plen);
    s = xstrdup(buffer);
    eval_buffer(s, flp);
    free(@as(?*anyopaque, @ptrCast(s)));
    restore_variable_buffer(pbuf, plen);
}

pub export fn gmk_expand(arg_ref: [*c]const u8) [*c]u8 {
    var ref = arg_ref;
    _ = &ref;
    return allocated_variable_expand_for_file(ref, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
}

pub export fn gmk_add_function(arg_name: [*c]const u8, arg_func: gmk_func_ptr, arg_min: c_uint, arg_max: c_uint, arg_flags: c_uint) void {
    var name = arg_name;
    _ = &name;
    var func = arg_func;
    _ = &func;
    var min = arg_min;
    _ = &min;
    var max = arg_max;
    _ = &max;
    var flags = arg_flags;
    _ = &flags;
    define_new_function(reading_file, name, min, max, flags, func);
}
