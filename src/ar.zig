const __intmax_t = c_long;
const __uintmax_t = c_ulong;

const __time_t = c_long;

const time_t = __time_t;

extern fn free(__ptr: ?*anyopaque) void;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
const struct_file = opaque {};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};
extern fn concat(c_uint, ...) [*c]const u8;

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xcalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;
extern fn ar_scan(archive: [*c]const u8, function: ar_member_func_t, arg: ?*const anyopaque) intmax_t;
extern fn ar_name_equal(name: [*c]const u8, mem: [*c]const u8, truncated: c_int) c_int;
extern fn ar_member_touch(arname: [*c]const u8, memname: [*c]const u8) c_int;

extern fn file_exists_p([*c]const u8) c_int;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

extern fn lookup_file(name: [*c]const u8) ?*struct_file;
extern fn enter_file(name: [*c]const u8) ?*struct_file;

extern fn f_mtime(file: ?*struct_file, search: c_int) uintmax_t;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn fnmatch(__pattern: [*c]const u8, __name: [*c]const u8, __flags: c_int) c_int;

pub const struct_ar_glob_state = extern struct {
    arname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    pattern: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    size: usize = @import("std").mem.zeroes(usize),
    chain: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    n: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ar_glob_state = struct_ar_glob_state;

pub export fn ar_name(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var p: [*c]const u8 = strchr(name, @as(c_int, '('));
    _ = &p;
    var end: [*c]const u8 = undefined;
    _ = &end;
    if ((p == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (p == name)) return 0;
    end = (p + strlen(p)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    if ((@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, ')')) or (end == (p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))))) return 0;
    if ((@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '(')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk end + @as(usize, @intCast(tmp)) else break :blk end - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, ')'))) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name), gettext("attempt to use unsupported feature: '%s'"), name);
    }
    return 1;
}

pub export fn ar_parse_name(arg_name: [*c]const u8, arg_arname_p: [*c][*c]u8, arg_memname_p: [*c][*c]u8) void {
    var name = arg_name;
    _ = &name;
    var arname_p = arg_arname_p;
    _ = &arname_p;
    var memname_p = arg_memname_p;
    _ = &memname_p;
    var p: [*c]u8 = undefined;
    _ = &p;
    arname_p.* = xstrdup(name);
    p = strchr(arname_p.*, @as(c_int, '('));
    if (!(p != null)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname_p.*), "Internal: ar_parse_name: bad name '%s'", arname_p.*);
    }
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '\x00';
    p[strlen(p) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
    memname_p.* = p;
}

pub fn ar_member_date_1(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_name: ?*const anyopaque) callconv(.C) intmax_t {
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
    return if (ar_name_equal(@as([*c]const u8, @ptrCast(@alignCast(name))), mem, truncated) != 0) date else @as(intmax_t, @bitCast(@as(c_long, @as(c_int, 0))));
}

pub export fn ar_member_date(arg_name: [*c]const u8) time_t {
    var name = arg_name;
    _ = &name;
    var arname: [*c]u8 = undefined;
    _ = &arname;
    var memname: [*c]u8 = undefined;
    _ = &memname;
    var val: intmax_t = undefined;
    _ = &val;
    ar_parse_name(name, &arname, &memname);
    {
        var arfile: ?*struct_file = undefined;
        _ = &arfile;
        arfile = lookup_file(arname);
        if ((arfile == null) and (file_exists_p(arname) != 0)) {
            arfile = enter_file(strcache_add(arname));
        }
        if (arfile != null) {
            _ = f_mtime(arfile, @as(c_int, 0));
        }
    }
    val = ar_scan(arname, &ar_member_date_1, @as(?*const anyopaque, @ptrCast(memname)));
    free(@as(?*anyopaque, @ptrCast(arname)));
    return if ((@as(intmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) < val) and (val <= (if (!!(@as(time_t, @bitCast(@as(c_long, @as(c_int, 0)))) < @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))))) @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))) else (((@as(time_t, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast((@sizeOf(time_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))))) - @as(time_t, @bitCast(@as(c_long, @as(c_int, 1))))) * @as(time_t, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(time_t, @bitCast(@as(c_long, @as(c_int, 1))))))) val else @as(intmax_t, @bitCast(@as(c_long, -@as(c_int, 1))));
}

pub export fn ar_touch(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var arname: [*c]u8 = undefined;
    _ = &arname;
    var memname: [*c]u8 = undefined;
    _ = &memname;
    var val: c_int = undefined;
    _ = &val;
    ar_parse_name(name, &arname, &memname);
    {
        var arfile: ?*struct_file = undefined;
        _ = &arfile;
        arfile = enter_file(strcache_add(arname));
        _ = f_mtime(arfile, @as(c_int, 0));
    }
    val = 1;
    while (true) {
        switch (ar_member_touch(arname, memname)) {
            @as(c_int, -1) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname), gettext("touch: Archive '%s' does not exist"), arname);
                break;
            },
            @as(c_int, -2) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname), gettext("touch: '%s' is not a valid archive"), arname);
                break;
            },
            @as(c_int, -3) => {
                perror_with_name("touch: ", arname);
                break;
            },
            @as(c_int, 1) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(memname) +% strlen(arname), gettext("touch: Member '%s' does not exist in '%s'"), memname, arname);
                break;
            },
            @as(c_int, 0) => {
                val = 0;
                break;
            },
            else => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name), gettext("touch: Bad return code from ar_member_touch on '%s'"), name);
            },
        }
        break;
    }
    free(@as(?*anyopaque, @ptrCast(arname)));
    return val;
}

pub fn ar_glob_match(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_arg: ?*const anyopaque) callconv(.C) intmax_t {
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
    var arg = arg_arg;
    _ = &arg;
    var state: [*c]struct_ar_glob_state = @as([*c]struct_ar_glob_state, @ptrCast(@volatileCast(@constCast(arg))));
    _ = &state;
    if (fnmatch(state.*.pattern, mem, (@as(c_int, 1) << @intCast(0)) | (@as(c_int, 1) << @intCast(2))) == @as(c_int, 0)) {
        var new: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(state.*.size))));
        _ = &new;
        new.*.name = strcache_add(concat(@as(c_uint, @bitCast(@as(c_int, 4))), state.*.arname, "(", mem, ")"));
        new.*.next = state.*.chain;
        state.*.chain = new;
        state.*.n +%= 1;
    }
    return 0;
}

pub fn ar_glob_pattern_p(arg_pattern: [*c]const u8, arg_quote: c_int) callconv(.C) c_int {
    var pattern = arg_pattern;
    _ = &pattern;
    var quote = arg_quote;
    _ = &quote;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var opened: c_int = 0;
    _ = &opened;
    {
        p = pattern;
        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
            while (true) {
                switch (@as(c_int, @bitCast(@as(c_uint, p.*)))) {
                    @as(c_int, 63), @as(c_int, 42) => return 1,
                    @as(c_int, 92) => {
                        if (quote != 0) {
                            p += 1;
                        }
                        break;
                    },
                    @as(c_int, 91) => {
                        opened = 1;
                        break;
                    },
                    @as(c_int, 93) => {
                        if (opened != 0) return 1;
                        break;
                    },
                    else => {},
                }
                break;
            }
        }
    }
    return 0;
}

// src/ar.c:265:1: warning: unable to translate function, demoted to extern
pub extern fn ar_glob(arg_arname: [*c]const u8, arg_member_pattern: [*c]const u8, arg_size: usize) [*c]struct_nameseq;
