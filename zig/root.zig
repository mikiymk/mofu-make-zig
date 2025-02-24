pub const lib = struct {
    pub const concat_filename = @import("lib/concat-filename.zig");
    pub const findprog_in = @import("lib/findprog-in.zig");
};

pub const ar = @import("ar.zig");
pub const arscan = @import("arscan.zig");
pub const commands = @import("commands.zig");
pub const default = @import("default.zig");
pub const dir = @import("dir.zig");
pub const expand = @import("expand.zig");
pub const file = @import("file.zig");
pub const function = @import("function.zig");
pub const getopt = @import("getopt.zig");
pub const getopt1 = @import("getopt1.zig");
pub const guile = @import("guile.zig");
pub const hash = @import("hash.zig");
pub const implicit = @import("implicit.zig");
pub const job = @import("job.zig");
pub const load = @import("load.zig");
pub const loadapi = @import("loadapi.zig");
pub const main_ = @import("main.zig");
pub const misc = @import("misc.zig");
pub const output = @import("output.zig");
pub const posixos = @import("posixos.zig");
pub const read = @import("read.zig");
pub const remake = @import("remake.zig");
pub const remote_stub = @import("remote-stub.zig");
pub const rule = @import("rule.zig");
pub const shuffle = @import("shuffle.zig");
pub const signame = @import("signame.zig");
pub const strcache = @import("strcache.zig");
pub const variable = @import("variable.zig");
pub const version = @import("version.zig");
pub const vpath = @import("vpath.zig");

pub const std = @import("std");
pub const cstd = @import("cstd.zig");
pub const struct_def = @import("struct-def.zig");

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const args: [][:0]u8 = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    var env = try std.process.getEnvMap(allocator);
    defer env.deinit();

    const argc = args.len;
    const argv = try allocator.alloc([]u8, args.len);
    for (args, argv) |as, *av| {
        av.* = try allocator.alloc(u8, as.len);
        @memcpy(av.*, as);
    }
    defer {
        for (argv) |a| {
            allocator.free(a);
        }
        allocator.free(argv);
    }

    const envp = try allocator.alloc([]u8, env.count());
    var env_iter = env.iterator();
    var i: usize = 0;
    while (env_iter.next()) |kv| {
        envp[i] = try std.fmt.allocPrint(allocator, "{s}={s}", .{ kv.key_ptr, kv.value_ptr });
        i += 1;
    }
    defer {
        for (envp) |a| {
            allocator.free(a);
        }
        allocator.free(envp);
    }

    const result = main_.main(argc, argv, envp);
    if (result != 0) {
        return @errorFromInt(@as(std.meta.Int(.unsigned, @bitSizeOf(anyerror)), @intCast(result)));
    }
}
