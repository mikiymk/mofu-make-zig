extern fn alloca(__size: c_ulong) ?*anyopaque;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;
const struct_option = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    has_arg: c_int = @import("std").mem.zeroes(c_int),
    flag: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    val: c_int = @import("std").mem.zeroes(c_int),
};
extern fn getopt(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8) c_int;
extern fn getopt_long(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
extern fn getopt_long_only(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int) c_int;
extern fn _getopt_internal(argc: c_int, argv: [*c]const [*c]u8, shortopts: [*c]const u8, longopts: [*c]const struct_option, longind: [*c]c_int, long_only: c_int) c_int;
const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};

const __off_t = c_long;
const __off64_t = c_long;

const __ssize_t = c_long;

const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
const __fpos_t = struct__G_fpos_t;
const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
const __fpos64_t = struct__G_fpos64_t;
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
const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
const cookie_io_functions_t = struct__IO_cookie_io_functions_t;

const fpos_t = __fpos_t;
const fpos64_t = __fpos64_t;
extern var stdin: [*c]FILE;
extern var stdout: [*c]FILE;
extern var stderr: [*c]FILE;
extern fn remove(__filename: [*c]const u8) c_int;
extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
extern fn renameat2(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8, __flags: c_uint) c_int;
extern fn fclose(__stream: [*c]FILE) c_int;
extern fn tmpfile() [*c]FILE;
extern fn tmpfile64() [*c]FILE;
extern fn tmpnam([*c]u8) [*c]u8;
extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
extern fn fflush(__stream: [*c]FILE) c_int;
extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
extern fn fcloseall() c_int;
extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
extern fn fopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
extern fn freopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
extern fn setlinebuf(__stream: [*c]FILE) void;
extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;

extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn fgetc(__stream: [*c]FILE) c_int;
extern fn getc(__stream: [*c]FILE) c_int;
extern fn getchar() c_int;
extern fn getc_unlocked(__stream: [*c]FILE) c_int;
extern fn getchar_unlocked() c_int;
extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putchar(__c: c_int) c_int;
extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putchar_unlocked(__c: c_int) c_int;
extern fn getw(__stream: [*c]FILE) c_int;
extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
extern fn fgets_unlocked(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;
extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
extern fn fputs_unlocked(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
extern fn ftell(__stream: [*c]FILE) c_long;
extern fn rewind(__stream: [*c]FILE) void;
extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
extern fn ftello(__stream: [*c]FILE) __off_t;
extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
extern fn fseeko64(__stream: [*c]FILE, __off: __off64_t, __whence: c_int) c_int;
extern fn ftello64(__stream: [*c]FILE) __off64_t;
extern fn fgetpos64(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos64_t) c_int;
extern fn fsetpos64(__stream: [*c]FILE, __pos: [*c]const fpos64_t) c_int;
extern fn clearerr(__stream: [*c]FILE) void;
extern fn feof(__stream: [*c]FILE) c_int;
extern fn ferror(__stream: [*c]FILE) c_int;
extern fn clearerr_unlocked(__stream: [*c]FILE) void;
extern fn feof_unlocked(__stream: [*c]FILE) c_int;
extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
extern fn perror(__s: [*c]const u8) void;
extern fn fileno(__stream: [*c]FILE) c_int;
extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
extern fn pclose(__stream: [*c]FILE) c_int;
extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
extern fn ctermid(__s: [*c]u8) [*c]u8;
extern fn cuserid(__s: [*c]u8) [*c]u8;
const struct_obstack = opaque {};
extern fn obstack_printf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, ...) c_int;
extern fn obstack_vprintf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, __args: [*c]struct___va_list_tag_1) c_int;
extern fn flockfile(__stream: [*c]FILE) void;
extern fn ftrylockfile(__stream: [*c]FILE) c_int;
extern fn funlockfile(__stream: [*c]FILE) void;
extern fn __uflow([*c]FILE) c_int;
extern fn __overflow([*c]FILE, c_int) c_int;
