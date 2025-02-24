const std = @import("std");
const root = @import("root.zig");

const stdin = std.io.getStdIn();
const stdout = std.io.getStdOut();
const stderr = std.io.getStdErr();

pub fn print(comptime format: []const u8, args: anytype) !void {
    return stdout.writer().print(format, args);
}

pub inline fn gettext(s: []const u8) []const u8 {
    return s;
}

pub fn strchr(s: []const u8, c: u8) ?[]u8 {
    const index = try std.mem.indexOf(u8, s, c);
    return s[index..];
}

pub fn strrchr(s: []const u8, c: u8) ?[]u8 {
    const lastIndex = try std.mem.lastIndexOf(u8, s, c);
    return s[lastIndex..];
}
