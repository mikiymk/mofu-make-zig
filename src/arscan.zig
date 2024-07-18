const __intmax_t = c_long;
const __uintmax_t = c_ulong;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = @import("makeint.zig").floc;

const fatal = @import("output.zig").fatal;

const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;

pub const PORTAR = @as(c_int, 1);

pub const struct_ar_hdr = extern struct {
    ar_name: [16]u8 = @import("std").mem.zeroes([16]u8),
    ar_date: [12]u8 = @import("std").mem.zeroes([12]u8),
    ar_uid: [6]u8 = @import("std").mem.zeroes([6]u8),
    ar_gid: [6]u8 = @import("std").mem.zeroes([6]u8),
    ar_mode: [8]u8 = @import("std").mem.zeroes([8]u8),
    ar_size: [10]u8 = @import("std").mem.zeroes([10]u8),
    ar_fmag: [2]u8 = @import("std").mem.zeroes([2]u8),
};
pub const ar_hdr = struct_ar_hdr;

pub const ARMAG = "!<arch>\n";
pub const SARMAG = @as(c_int, 8);

pub const AR_HDR_SIZE = @import("std").zig.c_translation.sizeof(struct_ar_hdr);

pub fn parse_int(arg_ptr: [*c]const u8, len: usize, base: c_int, arg_max: uintmax_t, arg_type: [*c]const u8, arg_archive: [*c]const u8, arg_name: [*c]const u8) callconv(.C) uintmax_t {
    var ptr = arg_ptr;
    _ = &ptr;
    _ = &len;
    _ = &base;
    var max = arg_max;
    _ = &max;
    var @"type" = arg_type;
    _ = &@"type";
    var archive = arg_archive;
    _ = &archive;
    var name = arg_name;
    _ = &name;
    const ep: [*c]const u8 = ptr + len;
    _ = &ep;
    const maxchar: c_int = (@as(c_int, '0') + base) - @as(c_int, 1);
    _ = &maxchar;
    var val: uintmax_t = 0;
    _ = &val;
    while ((ptr < ep) and (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, ' '))) {
        ptr += 1;
    }
    while ((ptr < ep) and (@as(c_int, @bitCast(@as(c_uint, ptr.*))) != @as(c_int, ' '))) {
        var nv: uintmax_t = undefined;
        _ = &nv;
        if ((@as(c_int, @bitCast(@as(c_uint, ptr.*))) < @as(c_int, '0')) or (@as(c_int, @bitCast(@as(c_uint, ptr.*))) > maxchar)) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (strlen(@"type") +% strlen(archive)) +% strlen(name), gettext("Invalid %s for archive %s member %s"), @"type", archive, name);
        }
        nv = (val *% @as(uintmax_t, @bitCast(@as(c_long, base)))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, ptr.*))) - @as(c_int, '0'))));
        if ((nv < val) or (nv > max)) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (strlen(@"type") +% strlen(archive)) +% strlen(name), gettext("Invalid %s for archive %s member %s"), @"type", archive, name);
        }
        val = nv;
        ptr += 1;
    }
    return val;
}

// src/arscan.c:463:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/arscan.c:442:1: warning: unable to translate function, demoted to extern
pub extern fn ar_scan(arg_archive: [*c]const u8, arg_function: ar_member_func_t, arg_arg: ?*const anyopaque) intmax_t;

pub export fn ar_name_equal(arg_name: [*c]const u8, arg_mem: [*c]const u8, arg_truncated: c_int) c_int {
    var name = arg_name;
    _ = &name;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var p: [*c]const u8 = undefined;
    _ = &p;
    p = strrchr(name, @as(c_int, '/'));
    if (p != null) {
        name = p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    }
    if (truncated != 0) {
        var hdr: struct_ar_hdr = undefined;
        _ = &hdr;
        return @intFromBool(strncmp(name, mem, @sizeOf([16]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0));
    }
    return @intFromBool(!(strcmp(name, mem) != 0));
}

pub fn ar_member_pos(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_name: ?*const anyopaque) callconv(.C) intmax_t {
    var desc = arg_desc;
    _ = &desc;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var hdrpos = arg_hdrpos;
    _ = &hdrpos;
    var datapos = arg_datapos;
    _ = &datapos;
    var size = arg_size;
    _ = &size;
    var date = arg_date;
    _ = &date;
    var uid = arg_uid;
    _ = &uid;
    var gid = arg_gid;
    _ = &gid;
    var mode = arg_mode;
    _ = &mode;
    var name = arg_name;
    _ = &name;
    if (!(ar_name_equal(@as([*c]const u8, @ptrCast(@alignCast(name))), mem, truncated) != 0)) return 0;
    return hdrpos;
}

// src/arscan.c:947:5: warning: TODO implement translation of stmt class GotoStmtClass

// src/arscan.c:923:1: warning: unable to translate function, demoted to extern
pub extern fn ar_member_touch(arg_arname: [*c]const u8, arg_memname: [*c]const u8) c_int;
