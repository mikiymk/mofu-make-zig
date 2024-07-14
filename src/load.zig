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

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

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

extern fn xmalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

const load_func_t = ?*const fn ([*c]const floc) callconv(.C) c_int;

extern fn dlopen(__file: [*c]const u8, __mode: c_int) ?*anyopaque;
extern fn dlclose(__handle: ?*anyopaque) c_int;
extern fn dlsym(noalias __handle: ?*anyopaque, noalias __name: [*c]const u8) ?*anyopaque;

extern fn dlerror() [*c]u8;

extern var db_level: c_int;

pub const SYMBOL_EXTENSION = "_gmk_setup";
pub const RTLD_GLOBAL = @as(c_int, 0x00100);

pub const struct_load_list = extern struct {
    next: [*c]struct_load_list = @import("std").mem.zeroes([*c]struct_load_list),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dlp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};

pub var loaded_syms: [*c]struct_load_list = null;

pub fn load_object(arg_flocp: [*c]const floc, arg_noerror: c_int, arg_ldname: [*c]const u8, arg_symname: [*c]const u8) callconv(.C) load_func_t {
    var flocp = arg_flocp;
    _ = &flocp;
    var noerror = arg_noerror;
    _ = &noerror;
    var ldname = arg_ldname;
    _ = &ldname;
    var symname = arg_symname;
    _ = &symname;
    const global_dl = struct {
        var static: ?*anyopaque = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
    };
    _ = &global_dl;
    var symp: load_func_t = undefined;
    _ = &symp;
    if (!(global_dl.static != null)) {
        global_dl.static = dlopen(null, @as(c_int, 2) | @as(c_int, 256));
        if (!(global_dl.static != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            fatal(flocp, strlen(err), gettext("Failed to open global symbol table: %s"), err);
        }
    }
    symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(global_dl.static, symname))));
    if (!(symp != null)) {
        var new: [*c]struct_load_list = undefined;
        _ = &new;
        var dlp: ?*anyopaque = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
        _ = &dlp;
        if (!(strchr(ldname, @as(c_int, '/')) != null)) {
            dlp = dlopen(concat(@as(c_uint, @bitCast(@as(c_int, 2))), "./", ldname), @as(c_int, 1) | @as(c_int, 256));
        }
        if (!(dlp != null)) {
            dlp = dlopen(ldname, @as(c_int, 1) | @as(c_int, 256));
        }
        if (!(dlp != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            if (noerror != 0) {
                while (true) {
                    if ((@as(c_int, 1) & db_level) != 0) {
                        _ = printf("%s\n", err);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            } else {
                @"error"(flocp, strlen(err), "%s", err);
            }
            return null;
        }
        while (true) {
            if ((@as(c_int, 2) & db_level) != 0) {
                _ = printf(gettext("Loaded shared object %s\n"), ldname);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(dlp, "plugin_is_GPL_compatible"))));
        if (!(symp != null)) {
            fatal(flocp, strlen(ldname), gettext("Loaded object %s is not declared to be GPL compatible"), ldname);
        }
        symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(dlp, symname))));
        if (!(symp != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            fatal(flocp, (strlen(symname) +% strlen(ldname)) +% strlen(err), gettext("Failed to load symbol %s from %s: %s"), symname, ldname, err);
        }
        new = @as([*c]struct_load_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_load_list)))));
        new.*.name = xstrdup(ldname);
        new.*.dlp = dlp;
        new.*.next = loaded_syms;
        loaded_syms = new;
    }
    return symp;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/load.c:124:1: warning: unable to translate function, demoted to extern
pub extern fn load_file(arg_flocp: [*c]const floc, arg_file_1: ?*struct_file, arg_noerror: c_int) c_int;

pub export fn unload_file(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var rc: c_int = 0;
    _ = &rc;
    var d: [*c]struct_load_list = undefined;
    _ = &d;
    {
        d = loaded_syms;
        while (d != @as([*c]struct_load_list, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) if (((d.*.name == name) or ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, name.*)))) and ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(d.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) and (d.*.dlp != null)) {
            while (true) {
                if ((@as(c_int, 2) & db_level) != 0) {
                    _ = printf(gettext("Unloading shared object %s\n"), name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            rc = dlclose(d.*.dlp);
            if (rc != 0) {
                perror_with_name("dlclose: ", d.*.name);
            } else {
                d.*.dlp = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
            }
            break;
        };
    }
    return rc;
}
