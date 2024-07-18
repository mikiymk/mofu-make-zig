const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;

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

const FILE = struct__IO_FILE;

extern var stdout: [*c]FILE;

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strlen(__s: [*c]const u8) c_ulong;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn find_percent([*c]u8) [*c]u8;

const dir_name = @import("dir.zig").dir_name;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

const variable_expand = @import("expand.zig").variable_expand;

const pattern_matches = @import("function.zig").pattern_matches;

pub const struct_vpath = extern struct {
    next: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath),
    pattern: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    percent: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    patlen: usize = @import("std").mem.zeroes(usize),
    searchpath: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    maxlen: usize = @import("std").mem.zeroes(usize),
};
pub const vpath = struct_vpath;

pub var vpaths: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);

pub var general_vpath: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);

pub var gpaths: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);

pub export fn build_vpath_lists() void {
    var new: [*c]struct_vpath = null;
    _ = &new;
    var old: [*c]struct_vpath = undefined;
    _ = &old;
    var nexto: [*c]struct_vpath = undefined;
    _ = &nexto;
    var p: [*c]u8 = undefined;
    _ = &p;
    {
        old = vpaths;
        while (old != null) : (old = nexto) {
            nexto = old.*.next;
            old.*.next = new;
            new = old;
        }
    }
    vpaths = new;
    p = variable_expand("$(strip $(VPATH))");
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var save_vpaths: [*c]struct_vpath = vpaths;
        _ = &save_vpaths;
        var gp: [1:0]u8 = "%".*;
        _ = &gp;
        vpaths = null;
        construct_vpath_list(@as([*c]u8, @ptrCast(@alignCast(&gp))), p);
        general_vpath = vpaths;
        vpaths = save_vpaths;
    }
    p = variable_expand("$(strip $(GPATH))");
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var save_vpaths: [*c]struct_vpath = vpaths;
        _ = &save_vpaths;
        var gp: [1:0]u8 = "%".*;
        _ = &gp;
        vpaths = null;
        construct_vpath_list(@as([*c]u8, @ptrCast(@alignCast(&gp))), p);
        gpaths = vpaths;
        vpaths = save_vpaths;
    }
}

pub export fn construct_vpath_list(arg_pattern: [*c]u8, arg_dirpath: [*c]u8) void {
    var pattern = arg_pattern;
    _ = &pattern;
    var dirpath = arg_dirpath;
    _ = &dirpath;
    var elem: c_uint = undefined;
    _ = &elem;
    var p: [*c]u8 = undefined;
    _ = &p;
    var vpath_1: [*c][*c]const u8 = undefined;
    _ = &vpath_1;
    var maxvpath: usize = undefined;
    _ = &maxvpath;
    var maxelem: c_uint = undefined;
    _ = &maxelem;
    var percent: [*c]const u8 = null;
    _ = &percent;
    if (pattern != null) {
        percent = find_percent(pattern);
    }
    if (dirpath == null) {
        var path: [*c]struct_vpath = undefined;
        _ = &path;
        var lastpath: [*c]struct_vpath = undefined;
        _ = &lastpath;
        lastpath = null;
        path = vpaths;
        while (path != null) {
            var next: [*c]struct_vpath = path.*.next;
            _ = &next;
            if ((pattern == null) or ((((percent == null) and (path.*.percent == null)) or (@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)) == @divExact(@as(c_long, @bitCast(@intFromPtr(path.*.percent) -% @intFromPtr(path.*.pattern))), @sizeOf(u8)))) and ((pattern == @as([*c]u8, @ptrCast(@volatileCast(@constCast(path.*.pattern))))) or ((@as(c_int, @bitCast(@as(c_uint, pattern.*))) == @as(c_int, @bitCast(@as(c_uint, path.*.pattern.*)))) and ((@as(c_int, @bitCast(@as(c_uint, pattern.*))) == @as(c_int, '\x00')) or !(strcmp(pattern + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), path.*.pattern + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))))) {
                if (lastpath == null) {
                    vpaths = path.*.next;
                } else {
                    lastpath.*.next = next;
                }
                free(@as(?*anyopaque, @ptrCast(path.*.searchpath)));
                free(@as(?*anyopaque, @ptrCast(path)));
            } else {
                lastpath = path;
            }
            path = next;
        }
        return;
    }
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(dirpath.*))]))) & (@as(c_int, 2) | @as(c_int, 64))) != @as(c_int, 0)) {
        dirpath += 1;
    }
    maxelem = 2;
    p = dirpath;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*))
    ]))) & (@as(c_int, 2) | @as(c_int, 64))) != @as(c_int, 0)) {
        maxelem +%= 1;
    };
    vpath_1 = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, maxelem))) *% @sizeOf([*c]const u8)))));
    maxvpath = 0;
    elem = 0;
    p = dirpath;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var v: [*c]u8 = undefined;
        _ = &v;
        var len: usize = undefined;
        _ = &len;
        v = p;
        while (((@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, ':'))) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
            p += 1;
        }
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(v))), @sizeOf(u8))));
        if ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '/'))) {
            len -%= 1;
        }
        if ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) or (@as(c_int, @bitCast(@as(c_uint, v.*))) != @as(c_int, '.'))) {
            vpath_1[
                blk: {
                    const ref = &elem;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = dir_name(strcache_add_len(v, len));
            if (len > maxvpath) {
                maxvpath = len;
            }
        }
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 64))) != @as(c_int, 0)) {
            p += 1;
        }
    }
    if (elem > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        var path: [*c]struct_vpath = undefined;
        _ = &path;
        if (elem < (maxelem -% @as(c_uint, @bitCast(@as(c_int, 1))))) {
            vpath_1 = @as([*c][*c]const u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(vpath_1)), @as(c_ulong, @bitCast(@as(c_ulong, elem +% @as(c_uint, @bitCast(@as(c_int, 1)))))) *% @sizeOf([*c]const u8)))));
        }
        vpath_1[elem] = null;
        path = @as([*c]struct_vpath, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_vpath)))));
        path.*.searchpath = vpath_1;
        path.*.maxlen = maxvpath;
        path.*.next = vpaths;
        vpaths = path;
        path.*.pattern = strcache_add(pattern);
        path.*.patlen = strlen(pattern);
        path.*.percent = if (percent != null) path.*.pattern + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)))))) else null;
    } else {
        free(@as(?*anyopaque, @ptrCast(vpath_1)));
    }
}

pub export fn gpath_search(arg_file_1: [*c]const u8, arg_len: usize) c_int {
    var file_1 = arg_file_1;
    _ = &file_1;
    var len = arg_len;
    _ = &len;
    if ((gpaths != null) and (len <= gpaths.*.maxlen)) {
        var gp: [*c][*c]const u8 = undefined;
        _ = &gp;
        {
            gp = gpaths.*.searchpath;
            while (gp.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (gp += 1) if ((strncmp(gp.*, file_1, len) == @as(c_int, 0)) and (@as(c_int, @bitCast(@as(c_uint, gp.*[len]))) == @as(c_int, '\x00'))) return 1;
        }
    }
    return 0;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/vpath.c:309:1: warning: unable to translate function, demoted to extern
pub extern fn selective_vpath_search(arg_path: [*c]struct_vpath, arg_file_1: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t, arg_path_index: [*c]c_uint) callconv(.C) [*c]const u8;

pub export fn vpath_search(arg_file_1: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t, arg_vpath_index: [*c]c_uint, arg_path_index: [*c]c_uint) [*c]const u8 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var mtime_ptr = arg_mtime_ptr;
    _ = &mtime_ptr;
    var vpath_index = arg_vpath_index;
    _ = &vpath_index;
    var path_index = arg_path_index;
    _ = &path_index;
    var v: [*c]struct_vpath = undefined;
    _ = &v;
    if ((@as(c_int, @bitCast(@as(c_uint, file_1[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/')) or ((vpaths == null) and (general_vpath == null))) return null;
    if (vpath_index != null) {
        vpath_index.* = 0;
        path_index.* = 0;
    }
    {
        v = vpaths;
        while (v != null) : (v = v.*.next) {
            if (pattern_matches(v.*.pattern, v.*.percent, file_1) != 0) {
                var p: [*c]const u8 = selective_vpath_search(v, file_1, mtime_ptr, path_index);
                _ = &p;
                if (p != null) return p;
            }
            if (vpath_index != null) {
                vpath_index.* +%= 1;
            }
        }
    }
    if (general_vpath != null) {
        var p: [*c]const u8 = selective_vpath_search(general_vpath, file_1, mtime_ptr, path_index);
        _ = &p;
        if (p != null) return p;
    }
    return null;
}

pub export fn print_vpath_data_base() void {
    var nvpaths: c_uint = undefined;
    _ = &nvpaths;
    var v: [*c]struct_vpath = undefined;
    _ = &v;
    _ = puts(gettext("\n# VPATH Search Paths\n"));
    nvpaths = 0;
    {
        v = vpaths;
        while (v != null) : (v = v.*.next) {
            var i: c_uint = undefined;
            _ = &i;
            nvpaths +%= 1;
            _ = printf("vpath %s ", v.*.pattern);
            {
                i = 0;
                while (v.*.searchpath[i] != null) : (i +%= 1) {
                    _ = printf("%s%c", v.*.searchpath[i], if (v.*.searchpath[i +% @as(c_uint, @bitCast(@as(c_int, 1)))] == null) @as(c_int, '\n') else @as(c_int, ':'));
                }
            }
        }
    }
    if (vpaths == null) {
        _ = puts(gettext("# No 'vpath' search paths."));
    } else {
        _ = printf(gettext("\n# %u 'vpath' search paths.\n"), nvpaths);
    }
    if (general_vpath == null) {
        _ = puts(gettext("\n# No general ('VPATH' variable) search path."));
    } else {
        var path: [*c][*c]const u8 = general_vpath.*.searchpath;
        _ = &path;
        var i: c_uint = undefined;
        _ = &i;
        _ = fputs(gettext("\n# General ('VPATH' variable) search path:\n# "), stdout);
        {
            i = 0;
            while (path[i] != null) : (i +%= 1) {
                _ = printf("%s%c", path[i], if (path[i +% @as(c_uint, @bitCast(@as(c_int, 1)))] == null) @as(c_int, '\n') else @as(c_int, ':'));
            }
        }
    }
}
