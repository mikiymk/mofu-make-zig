const root = @import("root.zig");

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
extern var stderr: [*c]FILE;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;

extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;

extern fn perror(__s: [*c]const u8) void;

extern fn fileno(__stream: [*c]FILE) c_int;

extern fn __errno_location() [*c]c_int;

extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;

extern fn close(__fd: c_int) c_int;
extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;

extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;

extern fn exit(__status: c_int) noreturn;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = @import("makeint.zig").floc;

extern fn should_print_dir() c_int;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn get_tmpfd([*c][*c]u8) c_int;

extern fn writebuf(c_int, ?*const anyopaque, usize) isize;

extern var print_data_base_flag: c_int;

extern var output_sync: c_int;

extern var program: [*c]const u8;

extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;

extern fn fd_set_append(c_int) void;

extern fn osync_clear() void;
extern fn osync_acquire() c_uint;
extern fn osync_release() void;

// src/output.h:21:18: warning: struct demoted to opaque type - has bitfield
pub const struct_output = opaque {};

pub extern var output_context: ?*struct_output;
pub extern var stdio_traced: c_uint;

pub const OUTPUT_NONE = -@as(c_int, 1);

pub inline fn OUTPUT_ISSET(_out: anytype) @TypeOf((_out.*.out >= @as(c_int, 0)) or (_out.*.err >= @as(c_int, 0))) {
    _ = &_out;
    return (_out.*.out >= @as(c_int, 0)) or (_out.*.err >= @as(c_int, 0));
}

pub fn _outputs(arg_out: ?*struct_output, arg_is_err: c_int, arg_msg: [*c]const u8) callconv(.C) void {
    var out = arg_out;
    _ = &out;
    var is_err = arg_is_err;
    _ = &is_err;
    var msg = arg_msg;
    _ = &msg;
    var f: [*c]FILE = undefined;
    _ = &f;
    if ((out != null) and (@as(c_int, @bitCast(out.*.syncout)) != 0)) {
        var fd: c_int = if (is_err != 0) out.*.err else out.*.out;
        _ = &fd;
        if (fd != -@as(c_int, 1)) {
            var len: usize = strlen(msg);
            _ = &len;
            var r: c_int = undefined;
            _ = &r;
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(lseek(fd, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 2))))));
                r = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            _ = writebuf(fd, @as(?*const anyopaque, @ptrCast(msg)), len);
            return;
        }
    }
    f = if (is_err != 0) stderr else stdout;
    _ = fputs(msg, f);
    _ = fflush(f);
}

pub fn log_working_directory(arg_entering: c_int) callconv(.C) c_int {
    var entering = arg_entering;
    _ = &entering;
    const buf = struct {
        var static: [*c]u8 = null;
    };
    _ = &buf;
    const len = struct {
        var static: usize = 0;
    };
    _ = &len;
    var need: usize = undefined;
    _ = &need;
    var fmt: [*c]const u8 = undefined;
    _ = &fmt;
    var p: [*c]u8 = undefined;
    _ = &p;
    need = ((strlen(program) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
    if (starting_directory != null) {
        need +%= @as(usize, @bitCast(strlen(starting_directory)));
    }
    if (makelevel == @as(c_uint, @bitCast(@as(c_int, 0)))) if (starting_directory == null) if (entering != 0) {
        fmt = gettext("%s: Entering an unknown directory\n");
    } else {
        fmt = gettext("%s: Leaving an unknown directory\n");
    } else if (entering != 0) {
        fmt = gettext("%s: Entering directory '%s'\n");
    } else {
        fmt = gettext("%s: Leaving directory '%s'\n");
    } else if (starting_directory == null) if (entering != 0) {
        fmt = gettext("%s[%u]: Entering an unknown directory\n");
    } else {
        fmt = gettext("%s[%u]: Leaving an unknown directory\n");
    } else if (entering != 0) {
        fmt = gettext("%s[%u]: Entering directory '%s'\n");
    } else {
        fmt = gettext("%s[%u]: Leaving directory '%s'\n");
    }
    need +%= @as(usize, @bitCast(strlen(fmt)));
    if (need > len.static) {
        buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), need))));
        len.static = need;
    }
    p = buf.static;
    if (print_data_base_flag != 0) {
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = '#';
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = ' ';
    }
    if (makelevel == @as(c_uint, @bitCast(@as(c_int, 0)))) if (starting_directory == null) {
        _ = sprintf(p, fmt, program);
    } else {
        _ = sprintf(p, fmt, program, starting_directory);
    } else if (starting_directory == null) {
        _ = sprintf(p, fmt, program, makelevel);
    } else {
        _ = sprintf(p, fmt, program, makelevel, starting_directory);
    }
    _outputs(null, @as(c_int, 0), buf.static);
    return 1;
}

pub fn pump_from_tmp(arg_from: c_int, arg_to: [*c]FILE) callconv(.C) void {
    var from = arg_from;
    _ = &from;
    var to = arg_to;
    _ = &to;
    const buffer = struct {
        var static: [8192]u8 = @import("std").mem.zeroes([8192]u8);
    };
    _ = &buffer;
    if (lseek(from, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0)) == @as(__off_t, @bitCast(@as(c_long, -@as(c_int, 1))))) {
        perror("lseek()");
    }
    while (true) {
        var len: c_int = undefined;
        _ = &len;
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(from, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @sizeOf([8192]u8))))));
            len = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (len < @as(c_int, 0)) {
            perror("read()");
        }
        if (len <= @as(c_int, 0)) break;
        if (fwrite(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @as(c_ulong, @bitCast(@as(c_long, len))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), to) < @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) {
            perror("fwrite()");
            break;
        }
        _ = fflush(to);
    }
}

pub export fn output_tmpfd() c_int {
    var fd: c_int = get_tmpfd(null);
    _ = &fd;
    fd_set_append(fd);
    return fd;
}

// src/output.c:220:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/output.c:203:1: warning: unable to translate function, demoted to extern
pub extern fn setup_tmpfile(arg_out: ?*struct_output) callconv(.C) void;

pub export fn output_dump(arg_out: ?*struct_output) void {
    var out = arg_out;
    _ = &out;
    var outfd_not_empty: c_int = @intFromBool((out.*.out != -@as(c_int, 1)) and (lseek(out.*.out, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 2)) > @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0))))));
    _ = &outfd_not_empty;
    var errfd_not_empty: c_int = @intFromBool((out.*.err != -@as(c_int, 1)) and (lseek(out.*.err, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 2)) > @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0))))));
    _ = &errfd_not_empty;
    if ((outfd_not_empty != 0) or (errfd_not_empty != 0)) {
        var traced: c_int = 0;
        _ = &traced;
        if (!(osync_acquire() != 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("warning: Cannot acquire output lock, disabling output sync."));
            osync_clear();
        }
        if ((output_sync != @as(c_int, 3)) and (should_print_dir() != 0)) {
            traced = log_working_directory(@as(c_int, 1));
        }
        if (outfd_not_empty != 0) {
            pump_from_tmp(out.*.out, stdout);
        }
        if ((errfd_not_empty != 0) and (out.*.err != out.*.out)) {
            pump_from_tmp(out.*.err, stderr);
        }
        if (traced != 0) {
            _ = log_working_directory(@as(c_int, 0));
        }
        osync_release();
        if (out.*.out != -@as(c_int, 1)) {
            var e: c_int = undefined;
            _ = &e;
            _ = lseek(out.*.out, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0));
            while (((blk: {
                const tmp = ftruncate(out.*.out, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))));
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        }
        if ((out.*.err != -@as(c_int, 1)) and (out.*.err != out.*.out)) {
            var e: c_int = undefined;
            _ = &e;
            _ = lseek(out.*.err, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0));
            while (((blk: {
                const tmp = ftruncate(out.*.err, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))));
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        }
    }
}

pub export fn output_init(arg_out: ?*struct_output) void {
    var out = arg_out;
    _ = &out;
    if (out != null) {
        out.*.out = blk: {
            const tmp = -@as(c_int, 1);
            out.*.err = tmp;
            break :blk tmp;
        };
        out.*.syncout = @as(c_uint, @intFromBool(!!(output_sync != 0)));
        return;
    }
    fd_set_append(fileno(stdout));
    fd_set_append(fileno(stderr));
}

pub export fn output_close(arg_out: ?*struct_output) void {
    var out = arg_out;
    _ = &out;
    if (!(out != null)) {
        if (stdio_traced != 0) {
            _ = log_working_directory(@as(c_int, 0));
        }
        return;
    }
    output_dump(out);
    if (out.*.out >= @as(c_int, 0)) {
        _ = close(out.*.out);
    }
    if ((out.*.err >= @as(c_int, 0)) and (out.*.err != out.*.out)) {
        _ = close(out.*.err);
    }
    output_init(out);
}

pub export fn output_start() void {
    if ((output_context != null) and (@as(c_int, @bitCast(output_context.*.syncout)) != 0)) if (!((output_context.*.out >= @as(c_int, 0)) or (output_context.*.err >= @as(c_int, 0)))) {
        setup_tmpfile(output_context);
    };
    if ((output_sync == @as(c_int, 0)) or (output_sync == @as(c_int, 3))) if (!(stdio_traced != 0) and (should_print_dir() != 0)) {
        stdio_traced = @as(c_uint, @bitCast(log_working_directory(@as(c_int, 1))));
    };
}

pub export fn outputs(arg_is_err: c_int, arg_msg: [*c]const u8) void {
    var is_err = arg_is_err;
    _ = &is_err;
    var msg = arg_msg;
    _ = &msg;
    if (!(msg != null) or (@as(c_int, @bitCast(@as(c_uint, msg.*))) == @as(c_int, '\x00'))) return;
    output_start();
    _outputs(output_context, is_err, msg);
}

pub const struct_fmtstring = extern struct {
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: usize = @import("std").mem.zeroes(usize),
};
pub var fmtbuf: struct_fmtstring = struct_fmtstring{
    .buffer = null,
    .size = @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))),
};

pub fn get_buffer(arg_need: usize) callconv(.C) [*c]u8 {
    var need = arg_need;
    _ = &need;
    if (need > fmtbuf.size) {
        fmtbuf.size +%= need *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
        fmtbuf.buffer = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(fmtbuf.buffer)), fmtbuf.size))));
    }
    fmtbuf.buffer[need -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
    return fmtbuf.buffer;
}

// src/output.c:413:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn message(prefix: c_int, len: usize, fmt: [*c]const u8, ...) void;

// src/output.c:444:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn @"error"(flocp: [*c]const floc, len: usize, fmt: [*c]const u8, ...) void;

// src/output.c:476:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fatal(flocp: [*c]const floc, len: usize, fmt: [*c]const u8, ...) noreturn;

pub export fn perror_with_name(arg_str: [*c]const u8, arg_name: [*c]const u8) void {
    var str = arg_str;
    _ = &str;
    var name = arg_name;
    _ = &name;
    var err: [*c]const u8 = strerror(__errno_location().*);
    _ = &err;
    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (strlen(str) +% strlen(name)) +% strlen(err), gettext("%s%s: %s"), str, name, err);
}

pub export fn pfatal_with_name(arg_name: [*c]const u8) noreturn {
    var name = arg_name;
    _ = &name;
    var err: [*c]const u8 = strerror(__errno_location().*);
    _ = &err;
    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name) +% strlen(err), gettext("%s: %s"), name, err);
}

pub export fn out_of_memory() noreturn {
    _ = writebuf(fileno(stdout), @as(?*const anyopaque, @ptrCast(program)), strlen(program));
    _ = writebuf(fileno(stdout), @as(?*const anyopaque, @ptrCast(": *** virtual memory exhausted\n")), @sizeOf([32]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
    exit(@as(c_int, 2));
}
