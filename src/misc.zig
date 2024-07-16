const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const mode_t = __mode_t;

const pid_t = __pid_t;

const time_t = __time_t;

const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};

extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

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

extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putchar(__c: c_int) c_int;

extern fn time(__timer: [*c]time_t) time_t;

extern fn __errno_location() [*c]c_int;

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;

extern fn unlink(__name: [*c]const u8) c_int;

extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;

extern fn malloc(__size: c_ulong) ?*anyopaque;
extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn getenv(__name: [*c]const u8) [*c]u8;

extern fn mkstemp(__template: [*c]u8) c_int;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strdup(__s: [*c]const u8) [*c]u8;
extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
const struct_dep = opaque {};

const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;

extern fn out_of_memory() noreturn;

const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

extern var posix_pedantic: c_int;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn os_anontmp() c_int;

var mk_state: c_uint = 0;

pub export fn make_toui(arg_str: [*c]const u8, arg_error_1: [*c][*c]const u8) c_uint {
    var str = arg_str;
    _ = &str;
    var error_1 = arg_error_1;
    _ = &error_1;
    var end: [*c]u8 = undefined;
    _ = &end;
    var val: c_ulong = strtoul(str, &end, @as(c_int, 10));
    _ = &val;
    if (error_1 != null) {
        if (@as(c_int, @bitCast(@as(c_uint, str[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
            error_1.* = "Missing value";
        } else if (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) {
            error_1.* = "Invalid value";
        } else {
            error_1.* = null;
        }
    }
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(val))));
}

pub export fn make_lltoa(arg_val: c_longlong, arg_buf: [*c]u8) [*c]u8 {
    var val = arg_val;
    _ = &val;
    var buf = arg_buf;
    _ = &buf;
    _ = sprintf(buf, "%lld", val);
    return buf;
}

pub export fn make_ulltoa(arg_val: c_ulonglong, arg_buf: [*c]u8) [*c]u8 {
    var val = arg_val;
    _ = &val;
    var buf = arg_buf;
    _ = &buf;
    _ = sprintf(buf, "%llu", val);
    return buf;
}

pub export fn make_seed(arg_seed: c_uint) void {
    var seed = arg_seed;
    _ = &seed;
    mk_state = seed;
}

pub export fn make_rand() c_uint {
    if (mk_state == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        mk_state = @as(c_uint, @bitCast(@as(c_int, @truncate(time(null) ^ @as(time_t, @bitCast(@as(c_long, make_pid()))))))) +% @as(c_uint, @bitCast(@as(c_int, 1)));
    }
    mk_state ^= mk_state << @intCast(13);
    mk_state ^= mk_state >> @intCast(17);
    mk_state ^= mk_state << @intCast(5);
    return mk_state;
}

pub export fn alpha_compare(arg_v1: ?*const anyopaque, arg_v2: ?*const anyopaque) c_int {
    var v1 = arg_v1;
    _ = &v1;
    var v2 = arg_v2;
    _ = &v2;
    var s1: [*c]const u8 = @as([*c][*c]u8, @ptrCast(@volatileCast(@constCast(v1)))).*;
    _ = &s1;
    var s2: [*c]const u8 = @as([*c][*c]u8, @ptrCast(@volatileCast(@constCast(v2)))).*;
    _ = &s2;
    if (@as(c_int, @bitCast(@as(c_uint, s1.*))) != @as(c_int, @bitCast(@as(c_uint, s2.*)))) return @as(c_int, @bitCast(@as(c_uint, s1.*))) - @as(c_int, @bitCast(@as(c_uint, s2.*)));
    return strcmp(s1, s2);
}

pub export fn collapse_continuations(arg_line: [*c]u8) void {
    var line = arg_line;
    _ = &line;
    var out: [*c]u8 = line;
    _ = &out;
    var in: [*c]u8 = line;
    _ = &in;
    var q: [*c]u8 = undefined;
    _ = &q;
    q = strchr(in, @as(c_int, '\n'));
    if (q == null) return;
    while (true) {
        var p: [*c]u8 = q;
        _ = &p;
        var i: c_int = undefined;
        _ = &i;
        var out_line_length: usize = undefined;
        _ = &out_line_length;
        if ((q > line) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk q + @as(usize, @intCast(tmp)) else break :blk q - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            i = -@as(c_int, 2);
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= line) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
        } else {
            i = 0;
        }
        out_line_length = @as(usize, @bitCast((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(in))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, i)))) - @as(c_long, @bitCast(@as(c_long, @divTrunc(i, @as(c_int, 2)))))));
        if (out != in) {
            _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), out_line_length);
        }
        out += @as([*c]u8, @ptrFromInt(out_line_length));
        in = q + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        if ((i & @as(c_int, 1)) != 0) {
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & @as(c_int, 2)) != @as(c_int, 0)) {
                in += 1;
            }
            if (!(posix_pedantic != 0)) while ((out > line) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                @as(u8, @bitCast((blk: {
                    const tmp = -@as(c_int, 1);
                    if (tmp >= 0) break :blk out + @as(usize, @intCast(tmp)) else break :blk out - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))
            ]))) & @as(c_int, 2)) != @as(c_int, 0))) {
                out -= 1;
            };
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        } else {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\n';
        }
        q = strchr(in, @as(c_int, '\n'));
        if (!(q != null)) break;
    }
    _ = memmove(@as(?*anyopaque, @ptrCast(out)), @as(?*const anyopaque, @ptrCast(in)), strlen(in) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
}

pub export fn print_spaces(arg_n: c_uint) void {
    var n = arg_n;
    _ = &n;
    while ((blk: {
        const ref = &n;
        const tmp = ref.*;
        ref.* -%= 1;
        break :blk tmp;
    }) > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        _ = putchar(@as(c_int, ' '));
    }
}

// src/misc.c:204:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn concat(num: c_uint, ...) [*c]const u8;

pub extern fn getpid() __pid_t;

pub export fn make_pid() pid_t {
    return getpid();
}

pub export fn xmalloc(arg_size: usize) ?*anyopaque {
    var size = arg_size;
    _ = &size;
    var result: ?*anyopaque = malloc(if (size != 0) size else @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    _ = &result;
    if (result == null) {
        out_of_memory();
    }
    return result;
}

pub export fn xcalloc(arg_size: usize) ?*anyopaque {
    var size = arg_size;
    _ = &size;
    var result: ?*anyopaque = calloc(if (size != 0) size else @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
    _ = &result;
    if (result == null) {
        out_of_memory();
    }
    return result;
}

pub export fn xrealloc(arg_ptr: ?*anyopaque, arg_size: usize) ?*anyopaque {
    var ptr = arg_ptr;
    _ = &ptr;
    var size = arg_size;
    _ = &size;
    var result: ?*anyopaque = undefined;
    _ = &result;
    if (!(size != 0)) {
        size = 1;
    }
    result = if (ptr != null) realloc(ptr, size) else malloc(size);
    if (result == null) {
        out_of_memory();
    }
    return result;
}

pub export fn xstrdup(arg_ptr: [*c]const u8) [*c]u8 {
    var ptr = arg_ptr;
    _ = &ptr;
    var result: [*c]u8 = undefined;
    _ = &result;
    result = strdup(ptr);
    if (result == null) {
        out_of_memory();
    }
    return result;
}

pub export fn xstrndup(arg_str: [*c]const u8, arg_length: usize) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var length = arg_length;
    _ = &length;
    var result: [*c]u8 = undefined;
    _ = &result;
    result = strndup(str, length);
    if (result == null) {
        out_of_memory();
    }
    return result;
}

pub extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;

pub export fn lindex(arg_s: [*c]const u8, arg_limit: [*c]const u8, arg_c: c_int) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var limit = arg_limit;
    _ = &limit;
    var c = arg_c;
    _ = &c;
    while (s < limit) if (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const ref = &s;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).*))) == c) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))))));
    return null;
}

pub export fn end_of_token(arg_s: [*c]const u8) [*c]u8 {
    var s = arg_s;
    _ = &s;
    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(s.*))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0))) {
        s += 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s))));
}

pub export fn next_token(arg_s: [*c]const u8) [*c]u8 {
    var s = arg_s;
    _ = &s;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(s.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        s += 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(s))));
}

pub export fn find_next_token(arg_ptr: [*c][*c]const u8, arg_lengthptr: [*c]usize) [*c]u8 {
    var ptr = arg_ptr;
    _ = &ptr;
    var lengthptr = arg_lengthptr;
    _ = &lengthptr;
    var p: [*c]const u8 = next_token(ptr.*);
    _ = &p;
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) return null;
    ptr.* = end_of_token(p);
    if (lengthptr != null) {
        lengthptr.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ptr.*) -% @intFromPtr(p))), @sizeOf(u8))));
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
}

pub export fn writebuf(arg_fd: c_int, arg_buffer: ?*const anyopaque, arg_len: usize) isize {
    var fd = arg_fd;
    _ = &fd;
    var buffer = arg_buffer;
    _ = &buffer;
    var len = arg_len;
    _ = &len;
    var msg: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(buffer)));
    _ = &msg;
    var l: usize = len;
    _ = &l;
    while (l != 0) {
        var r: isize = undefined;
        _ = &r;
        while (((blk: {
            const tmp = write(fd, @as(?*const anyopaque, @ptrCast(msg)), l);
            r = tmp;
            break :blk tmp;
        }) == @as(isize, @bitCast(@as(c_long, -@as(c_int, 1))))) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(isize, @bitCast(@as(c_long, @as(c_int, 0))))) return r;
        l -%= @as(usize, @bitCast(r));
        msg += @as(usize, @bitCast(@as(isize, @intCast(r))));
    }
    return @as(isize, @bitCast(len));
}

pub export fn readbuf(arg_fd: c_int, arg_buffer: ?*anyopaque, arg_len: usize) isize {
    var fd = arg_fd;
    _ = &fd;
    var buffer = arg_buffer;
    _ = &buffer;
    var len = arg_len;
    _ = &len;
    var msg: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(buffer)));
    _ = &msg;
    while (len != 0) {
        var r: isize = undefined;
        _ = &r;
        while (((blk: {
            const tmp = read(fd, @as(?*anyopaque, @ptrCast(msg)), len);
            r = tmp;
            break :blk tmp;
        }) == @as(isize, @bitCast(@as(c_long, -@as(c_int, 1))))) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(isize, @bitCast(@as(c_long, @as(c_int, 0))))) return r;
        if (r == @as(isize, @bitCast(@as(c_long, @as(c_int, 0))))) break;
        len -%= @as(usize, @bitCast(r));
        msg += @as(usize, @bitCast(@as(isize, @intCast(r))));
    }
    return @as(isize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(msg) -% @intFromPtr(@as([*c]u8, @ptrCast(@alignCast(buffer)))))), @sizeOf(u8))));
}

pub export fn copy_dep_chain(arg_d: ?*const struct_dep) ?*struct_dep {
    var d = arg_d;
    _ = &d;
    var firstnew: ?*struct_dep = null;
    _ = &firstnew;
    var lastnew: ?*struct_dep = null;
    _ = &lastnew;
    while (d != null) {
        var c: ?*struct_dep = @as(?*struct_dep, @ptrCast(xmalloc(@sizeOf(struct_dep))));
        _ = &c;
        _ = memcpy(@as(?*anyopaque, @ptrCast(c)), @as(?*const anyopaque, @ptrCast(d)), @sizeOf(struct_dep));
        if (c.*.need_2nd_expansion != 0) {
            c.*.name = xstrdup(c.*.name);
        }
        c.*.next = null;
        if (firstnew == null) {
            firstnew = blk: {
                const tmp = c;
                lastnew = tmp;
                break :blk tmp;
            };
        } else {
            lastnew = blk: {
                const tmp = c;
                lastnew.*.next = tmp;
                break :blk tmp;
            };
        }
        d = d.*.next;
    }
    return firstnew;
}

pub export fn free_ns_chain(arg_ns: [*c]struct_nameseq) void {
    var ns = arg_ns;
    _ = &ns;
    while (ns != null) {
        var t: [*c]struct_nameseq = ns;
        _ = &t;
        ns = ns.*.next;
        free(@as(?*anyopaque, @ptrCast(t)));
    }
}

pub extern fn umask(__mask: __mode_t) __mode_t;

pub const DEFAULT_TMPFILE = "GmXXXXXX";

pub export fn get_tmpdir() [*c]const u8 {
    const tmpdir = struct {
        var static: [*c]const u8 = null;
    };
    _ = &tmpdir;
    if (!(tmpdir.static != null)) {
        var tlist: [3][*c]const u8 = [3][*c]const u8{
            "MAKE_TMPDIR",
            "TMPDIR",
            null,
        };
        _ = &tlist;
        var tp: [*c][*c]const u8 = undefined;
        _ = &tp;
        var found: c_uint = 0;
        _ = &found;
        {
            tp = @as([*c][*c]const u8, @ptrCast(@alignCast(&tlist)));
            while (tp.* != null) : (tp += 1) if (((blk: {
                const tmp = getenv(tp.*);
                tmpdir.static = tmp;
                break :blk tmp;
            }) != null) and (@as(c_int, @bitCast(@as(c_uint, tmpdir.static.*))) != @as(c_int, '\x00'))) {
                var st: struct_stat = undefined;
                _ = &st;
                var r: c_int = undefined;
                _ = &r;
                found = 1;
                while (((blk: {
                    const tmp = stat(tmpdir.static, &st);
                    r = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if (r < @as(c_int, 0)) {
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (strlen(tp.*) +% strlen(tmpdir.static)) +% strlen(strerror(__errno_location().*)), gettext("%s value %s: %s"), tp.*, tmpdir.static, strerror(__errno_location().*));
                } else if (!((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(tp.*) +% strlen(tmpdir.static), gettext("%s value %s: not a directory"), tp.*, tmpdir.static);
                } else return tmpdir.static;
            };
        }
        tmpdir.static = "/tmp";
        if (found != 0) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(tmpdir.static), gettext("using default temporary directory '%s'"), tmpdir.static);
        }
    }
    return tmpdir.static;
}

pub fn get_tmptemplate() callconv(.C) [*c]u8 {
    var tmpdir: [*c]const u8 = get_tmpdir();
    _ = &tmpdir;
    var template: [*c]u8 = undefined;
    _ = &template;
    var cp: [*c]u8 = undefined;
    _ = &cp;
    template = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(tmpdir) +% (@sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))))));
    cp = stpcpy(template, tmpdir);
    if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        (blk: {
            const ref = &cp;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = '/';
    }
    _ = strcpy(cp, "GmXXXXXX");
    return template;
}

pub export fn get_tmpfd(arg_name: [*c][*c]u8) c_int {
    var name = arg_name;
    _ = &name;
    var fd: c_int = -@as(c_int, 1);
    _ = &fd;
    var tmpnm: [*c]u8 = undefined;
    _ = &tmpnm;
    var mask: mode_t = undefined;
    _ = &mask;
    if (name != null) {
        name.* = null;
    } else {
        fd = os_anontmp();
        if (fd >= @as(c_int, 0)) return fd;
    }
    mask = umask(@as(__mode_t, @bitCast(@as(c_int, 63))));
    tmpnm = get_tmptemplate();
    while (((blk: {
        const tmp = mkstemp(tmpnm);
        fd = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (fd < @as(c_int, 0)) {
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(tmpnm) +% strlen(strerror(__errno_location().*)), gettext("cannot create temporary file %s: %s"), tmpnm, strerror(__errno_location().*));
        free(@as(?*anyopaque, @ptrCast(tmpnm)));
        return -@as(c_int, 1);
    }
    if (name != null) {
        name.* = tmpnm;
    } else {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = unlink(tmpnm);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(c_int, 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(tmpnm) +% strlen(strerror(__errno_location().*)), gettext("cannot unlink temporary file %s: %s"), tmpnm, strerror(__errno_location().*));
        }
        free(@as(?*anyopaque, @ptrCast(tmpnm)));
    }
    _ = umask(mask);
    return fd;
}

pub export fn get_tmpfile(arg_name: [*c][*c]u8) [*c]FILE {
    var name = arg_name;
    _ = &name;
    var tmpfile_mode: [*c]const u8 = "wb+";
    _ = &tmpfile_mode;
    var file_1: [*c]FILE = undefined;
    _ = &file_1;
    var fd: c_int = undefined;
    _ = &fd;
    _ = @as(c_int, 0);
    fd = get_tmpfd(name);
    if (fd < @as(c_int, 0)) return null;
    _ = @as(c_int, 0);
    while (true) {
        __errno_location().* = 0;
        file_1 = fdopen(fd, tmpfile_mode);
        if (!((file_1 == null) and (__errno_location().* == @as(c_int, 4)))) break;
    }
    if (file_1 == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name.*) +% strlen(strerror(__errno_location().*)), gettext("fdopen: temporary file %s: %s"), name.*, strerror(__errno_location().*));
    }
    return file_1;
}

pub extern fn ttyname(__fd: c_int) [*c]u8;

pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

pub extern fn strerror(__errnum: c_int) [*c]u8;
