const root = @import("root.zig");

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const struct_dep = @import("dep.zig").struct_dep;

const struct_file = @import("filedef.zig").struct_file;
const floc = @import("makeint.zig").floc;

const fatal = @import("output.zig").fatal;

const make_toui = @import("misc.zig").make_toui;

extern fn make_seed(c_uint) void;
extern fn make_rand() c_uint;

extern fn xmalloc(usize) ?*anyopaque;

extern var not_parallel: c_int;

pub const sm_none: c_int = 0;
pub const sm_random: c_int = 1;
pub const sm_reverse: c_int = 2;
pub const sm_identity: c_int = 3;
pub const enum_shuffle_mode = c_uint;

const struct_unnamed_41 = extern struct {
    mode: enum_shuffle_mode = @import("std").mem.zeroes(enum_shuffle_mode),
    seed: c_uint = @import("std").mem.zeroes(c_uint),
    shuffler: ?*const fn ([*c]?*anyopaque, usize) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]?*anyopaque, usize) callconv(.C) void),
    strval: [23]u8 = @import("std").mem.zeroes([23]u8),
};
pub var config: struct_unnamed_41 = struct_unnamed_41{
    .mode = @as(c_uint, @bitCast(sm_none)),
    .seed = @as(c_uint, @bitCast(@as(c_int, 0))),
    .shuffler = null,
    .strval = "",
};

pub export fn shuffle_get_mode() [*c]const u8 {
    return if (@as(c_int, @bitCast(@as(c_uint, config.strval[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) null else @as([*c]u8, @ptrCast(@alignCast(&config.strval)));
}

pub export fn shuffle_set_mode(arg_cmdarg: [*c]const u8) void {
    var cmdarg = arg_cmdarg;
    _ = &cmdarg;
    if (strcasecmp(cmdarg, "reverse") == @as(c_int, 0)) {
        config.mode = @as(c_uint, @bitCast(sm_reverse));
        config.shuffler = &reverse_shuffle_array;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "reverse");
    } else if (strcasecmp(cmdarg, "identity") == @as(c_int, 0)) {
        config.mode = @as(c_uint, @bitCast(sm_identity));
        config.shuffler = &identity_shuffle_array;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "identity");
    } else if (strcasecmp(cmdarg, "none") == @as(c_int, 0)) {
        config.mode = @as(c_uint, @bitCast(sm_none));
        config.shuffler = null;
        config.strval[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    } else {
        if (strcasecmp(cmdarg, "random") == @as(c_int, 0)) {
            config.seed = make_rand();
        } else {
            var err: [*c]const u8 = undefined;
            _ = &err;
            config.seed = make_toui(cmdarg, &err);
            if (err != null) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(err) +% strlen(cmdarg), gettext("invalid shuffle mode: %s: '%s'"), err, cmdarg);
            }
        }
        config.mode = @as(c_uint, @bitCast(sm_random));
        config.shuffler = &random_shuffle_array;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "%u", config.seed);
    }
}

pub fn random_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
    var i: usize = undefined;
    _ = &i;
    {
        i = 0;
        while (i < len) : (i +%= 1) {
            var t: ?*anyopaque = undefined;
            _ = &t;
            var j: c_uint = @as(c_uint, @bitCast(@as(c_uint, @truncate(@as(usize, @bitCast(@as(c_ulong, make_rand()))) % len))));
            _ = &j;
            if (i == @as(usize, @bitCast(@as(c_ulong, j)))) continue;
            t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
}

pub fn reverse_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
    var i: usize = undefined;
    _ = &i;
    {
        i = 0;
        while (i < (len / @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))))) : (i +%= 1) {
            var t: ?*anyopaque = undefined;
            _ = &t;
            var j: usize = (len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) -% i;
            _ = &j;
            t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
}

pub fn identity_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
}

pub fn shuffle_deps(arg_deps: ?*struct_dep) callconv(.C) void {
    var deps = arg_deps;
    _ = &deps;
    var ndeps: usize = 0;
    _ = &ndeps;
    var dep_1: ?*struct_dep = undefined;
    _ = &dep_1;
    var da: [*c]?*anyopaque = undefined;
    _ = &da;
    var dp: [*c]?*anyopaque = undefined;
    _ = &dp;
    {
        dep_1 = deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            if (dep_1.*.wait_here != 0) return;
            ndeps +%= 1;
        }
    }
    if (ndeps == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return;
    da = @as([*c]?*anyopaque, @ptrCast(@alignCast(xmalloc(@sizeOf(?*struct_dep) *% ndeps))));
    {
        _ = blk: {
            dep_1 = deps;
            break :blk blk_1: {
                const tmp = da;
                dp = tmp;
                break :blk_1 tmp;
            };
        };
        while (dep_1 != null) : (_ = blk: {
            dep_1 = dep_1.*.next;
            break :blk blk_1: {
                const ref = &dp;
                const tmp = ref.*;
                ref.* += 1;
                break :blk_1 tmp;
            };
        }) {
            dp.* = @as(?*anyopaque, @ptrCast(dep_1));
        }
    }
    config.shuffler.?(da, ndeps);
    {
        _ = blk: {
            dep_1 = deps;
            break :blk blk_1: {
                const tmp = da;
                dp = tmp;
                break :blk_1 tmp;
            };
        };
        while (dep_1 != null) : (_ = blk: {
            dep_1 = dep_1.*.next;
            break :blk blk_1: {
                const ref = &dp;
                const tmp = ref.*;
                ref.* += 1;
                break :blk_1 tmp;
            };
        }) {
            dep_1.*.shuf = @as(?*struct_dep, @ptrCast(dp.*));
        }
    }
    free(@as(?*anyopaque, @ptrCast(da)));
}

pub fn shuffle_file_deps_recursive(arg_f: ?*struct_file) callconv(.C) void {
    var f = arg_f;
    _ = &f;
    var dep_1: ?*struct_dep = undefined;
    _ = &dep_1;
    if (!(f != null)) return;
    if (f.*.was_shuffled != 0) return;
    f.*.was_shuffled = 1;
    shuffle_deps(f.*.deps);
    {
        dep_1 = f.*.deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            shuffle_file_deps_recursive(dep_1.*.file);
        }
    }
}

pub export fn shuffle_deps_recursive(arg_deps: ?*struct_dep) void {
    var deps = arg_deps;
    _ = &deps;
    var dep_1: ?*struct_dep = undefined;
    _ = &dep_1;
    if (config.mode == @as(c_uint, @bitCast(sm_none))) return;
    if (not_parallel != 0) return;
    if (config.mode == @as(c_uint, @bitCast(sm_random))) {
        make_seed(config.seed);
    }
    shuffle_deps(deps);
    {
        dep_1 = deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            shuffle_file_deps_recursive(dep_1.*.file);
        }
    }
}
