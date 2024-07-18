const root = @import("root.zig");

extern fn strlen(__s: [*c]const u8) c_ulong;

const struct_dep = @import("dep.zig").struct_dep;

// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
const struct_commands = opaque {};
const hash_func_t = ?*const fn (?*const anyopaque) callconv(.C) c_ulong;
const hash_cmp_func_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
const struct_hash_table = extern struct {
    ht_vec: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
    ht_hash_1: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_hash_2: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_compare: hash_cmp_func_t = @import("std").mem.zeroes(hash_cmp_func_t),
    ht_size: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_capacity: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_fill: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_empty_slots: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_collisions: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_lookups: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_rehashes: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_variable_set = extern struct {
    table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table),
};
const struct_variable_set_list = extern struct {
    next: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    set: [*c]struct_variable_set = @import("std").mem.zeroes([*c]struct_variable_set),
    next_is_parent: c_int = @import("std").mem.zeroes(c_int),
};

const struct_file = @import("filedef.zig").struct_file;
const floc = @import("makeint.zig").floc;

const o_default: c_int = 0;

const enum_variable_origin = c_int;

const struct_variable = @import("variable.zig").struct_variable;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

const struct_pspec = extern struct {
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dep: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    commands: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

extern var no_builtin_rules_flag: c_int;
extern var no_builtin_variables_flag: c_int;

const enter_file = @import("file.zig").enter_file;

const enter_prereqs = @import("file.zig").enter_prereqs;

extern var current_variable_set_list: [*c]struct_variable_set_list;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) ?*struct_variable;

extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;

extern var suffix_file: ?*struct_file;

extern fn install_pattern_rule(p: [*c]struct_pspec, terminal: c_int) void;

extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

pub var default_suffixes: [146:0]u8 = ".out .a .ln .o .c .cc .C .cpp .p .f .F .m .r .y .l .ym .yl .s .S .mod .sym .def .h .info .dvi .tex .texinfo .texi .txinfo .w .ch .web .sh .elc .el".*;

pub var default_pattern_rules: [5]struct_pspec = [5]struct_pspec{
    struct_pspec{
        .target = "(%)",
        .dep = "%",
        .commands = "$(AR) $(ARFLAGS) $@ $<",
    },
    struct_pspec{
        .target = "%.out",
        .dep = "%",
        .commands = "@rm -f $@ \n cp $< $@",
    },
    struct_pspec{
        .target = "%.c",
        .dep = "%.w %.ch",
        .commands = "$(CTANGLE) $^ $@",
    },
    struct_pspec{
        .target = "%.tex",
        .dep = "%.w %.ch",
        .commands = "$(CWEAVE) $^ $@",
    },
    struct_pspec{
        .target = null,
        .dep = null,
        .commands = null,
    },
};

pub var default_terminal_rules: [6]struct_pspec = [6]struct_pspec{
    struct_pspec{
        .target = "%",
        .dep = "%,v",
        .commands = "$(CHECKOUT,v)",
    },
    struct_pspec{
        .target = "%",
        .dep = "RCS/%,v",
        .commands = "$(CHECKOUT,v)",
    },
    struct_pspec{
        .target = "%",
        .dep = "RCS/%",
        .commands = "$(CHECKOUT,v)",
    },
    struct_pspec{
        .target = "%",
        .dep = "s.%",
        .commands = "$(GET) $(GFLAGS) $(SCCS_OUTPUT_OPTION) $<",
    },
    struct_pspec{
        .target = "%",
        .dep = "SCCS/s.%",
        .commands = "$(GET) $(GFLAGS) $(SCCS_OUTPUT_OPTION) $<",
    },
    struct_pspec{
        .target = null,
        .dep = null,
        .commands = null,
    },
};

pub var default_suffix_rules: [100][*c]const u8 = [100][*c]const u8{
    ".o",
    "$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".s",
    "$(LINK.s) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".S",
    "$(LINK.S) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".c",
    "$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".cc",
    "$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".C",
    "$(LINK.C) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".cpp",
    "$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".f",
    "$(LINK.f) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".m",
    "$(LINK.m) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".p",
    "$(LINK.p) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".F",
    "$(LINK.F) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".r",
    "$(LINK.r) $^ $(LOADLIBES) $(LDLIBS) -o $@",
    ".mod",
    "$(COMPILE.mod) -o $@ -e $@ $^",
    ".def.sym",
    "$(COMPILE.def) -o $@ $<",
    ".sh",
    "cat $< >$@ \n chmod a+x $@",
    ".s.o",
    "$(COMPILE.s) -o $@ $<",
    ".S.o",
    "$(COMPILE.S) -o $@ $<",
    ".c.o",
    "$(COMPILE.c) $(OUTPUT_OPTION) $<",
    ".cc.o",
    "$(COMPILE.cc) $(OUTPUT_OPTION) $<",
    ".C.o",
    "$(COMPILE.C) $(OUTPUT_OPTION) $<",
    ".cpp.o",
    "$(COMPILE.cpp) $(OUTPUT_OPTION) $<",
    ".f.o",
    "$(COMPILE.f) $(OUTPUT_OPTION) $<",
    ".m.o",
    "$(COMPILE.m) $(OUTPUT_OPTION) $<",
    ".p.o",
    "$(COMPILE.p) $(OUTPUT_OPTION) $<",
    ".F.o",
    "$(COMPILE.F) $(OUTPUT_OPTION) $<",
    ".r.o",
    "$(COMPILE.r) $(OUTPUT_OPTION) $<",
    ".mod.o",
    "$(COMPILE.mod) -o $@ $<",
    ".c.ln",
    "$(LINT.c) -C$* $<",
    ".y.ln",
    "$(YACC.y) $< \n $(LINT.c) -C$* y.tab.c \n $(RM) y.tab.c",
    ".l.ln",
    "@$(RM) $*.c\n $(LEX.l) $< > $*.c\n$(LINT.c) -i $*.c -o $@\n $(RM) $*.c",
    ".y.c",
    "$(YACC.y) $< \n mv -f y.tab.c $@",
    ".l.c",
    "@$(RM) $@ \n $(LEX.l) $< > $@",
    ".ym.m",
    "$(YACC.m) $< \n mv -f y.tab.c $@",
    ".lm.m",
    "@$(RM) $@ \n $(LEX.m) $< > $@",
    ".F.f",
    "$(PREPROCESS.F) $(OUTPUT_OPTION) $<",
    ".r.f",
    "$(PREPROCESS.r) $(OUTPUT_OPTION) $<",
    ".l.r",
    "$(LEX.l) $< > $@ \n mv -f lex.yy.r $@",
    ".S.s",
    "$(PREPROCESS.S) $< > $@",
    ".texinfo.info",
    "$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@",
    ".texi.info",
    "$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@",
    ".txinfo.info",
    "$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@",
    ".tex.dvi",
    "$(TEX) $<",
    ".texinfo.dvi",
    "$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<",
    ".texi.dvi",
    "$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<",
    ".txinfo.dvi",
    "$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<",
    ".w.c",
    "$(CTANGLE) $< - $@",
    ".web.p",
    "$(TANGLE) $<",
    ".w.tex",
    "$(CWEAVE) $< - $@",
    ".web.tex",
    "$(WEAVE) $<",
    null,
    null,
};

pub var default_variables: [130][*c]const u8 = [130][*c]const u8{
    "AR",
    "ar",
    "ARFLAGS",
    "-rv",
    "AS",
    "as",
    "CC",
    "cc",
    "OBJC",
    "cc",
    "CXX",
    "g++",
    "CHECKOUT,v",
    "+$(if $(wildcard $@),,$(CO) $(COFLAGS) $< $@)",
    "CO",
    "co",
    "COFLAGS",
    "",
    "CPP",
    "$(CC) -E",
    "FC",
    "f77",
    "F77",
    "$(FC)",
    "F77FLAGS",
    "$(FFLAGS)",
    "GET",
    "get",
    "LD",
    "ld",
    "LEX",
    "lex",
    "LINT",
    "lint",
    "M2C",
    "m2c",
    "PC",
    "pc",
    "YACC",
    "yacc",
    "MAKEINFO",
    "makeinfo",
    "TEX",
    "tex",
    "TEXI2DVI",
    "texi2dvi",
    "WEAVE",
    "weave",
    "CWEAVE",
    "cweave",
    "TANGLE",
    "tangle",
    "CTANGLE",
    "ctangle",
    "RM",
    "rm -f",
    "LINK.o",
    "$(CC) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.c",
    "$(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c",
    "LINK.c",
    "$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.m",
    "$(OBJC) $(OBJCFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c",
    "LINK.m",
    "$(OBJC) $(OBJCFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.cc",
    "$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c",
    "COMPILE.C",
    "$(COMPILE.cc)",
    "COMPILE.cpp",
    "$(COMPILE.cc)",
    "LINK.cc",
    "$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "LINK.C",
    "$(LINK.cc)",
    "LINK.cpp",
    "$(LINK.cc)",
    "YACC.y",
    "$(YACC) $(YFLAGS)",
    "LEX.l",
    "$(LEX) $(LFLAGS) -t",
    "YACC.m",
    "$(YACC) $(YFLAGS)",
    "LEX.m",
    "$(LEX) $(LFLAGS) -t",
    "COMPILE.f",
    "$(FC) $(FFLAGS) $(TARGET_ARCH) -c",
    "LINK.f",
    "$(FC) $(FFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.F",
    "$(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c",
    "LINK.F",
    "$(FC) $(FFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.r",
    "$(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -c",
    "LINK.r",
    "$(FC) $(FFLAGS) $(RFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "COMPILE.def",
    "$(M2C) $(M2FLAGS) $(DEFFLAGS) $(TARGET_ARCH)",
    "COMPILE.mod",
    "$(M2C) $(M2FLAGS) $(MODFLAGS) $(TARGET_ARCH)",
    "COMPILE.p",
    "$(PC) $(PFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c",
    "LINK.p",
    "$(PC) $(PFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)",
    "LINK.s",
    "$(CC) $(ASFLAGS) $(LDFLAGS) $(TARGET_MACH)",
    "COMPILE.s",
    "$(AS) $(ASFLAGS) $(TARGET_MACH)",
    "LINK.S",
    "$(CC) $(ASFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_MACH)",
    "COMPILE.S",
    "$(CC) $(ASFLAGS) $(CPPFLAGS) $(TARGET_MACH) -c",
    "PREPROCESS.S",
    "$(CPP) $(CPPFLAGS)",
    "PREPROCESS.F",
    "$(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -F",
    "PREPROCESS.r",
    "$(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -F",
    "LINT.c",
    "$(LINT) $(LINTFLAGS) $(CPPFLAGS) $(TARGET_ARCH)",
    "OUTPUT_OPTION",
    "-o $@",
    ".LIBPATTERNS",
    "lib%.so lib%.a",
    "GNUMAKEFLAGS",
    "",
    null,
    null,
};

pub export fn set_default_suffixes() void {
    suffix_file = enter_file(strcache_add(".SUFFIXES"));
    suffix_file.*.builtin = 1;
    if (no_builtin_rules_flag != 0) {
        _ = define_variable_in_set("SUFFIXES", @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    } else {
        var d: ?*struct_dep = undefined;
        _ = &d;
        var p: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(&default_suffixes)));
        _ = &p;
        suffix_file.*.deps = enter_prereqs(@as(?*struct_dep, @ptrCast(parse_file_seq(@as([*c][*c]u8, @ptrCast(@alignCast(&p))), @sizeOf(struct_dep), @as(c_int, 1), null, @as(c_int, 0)))), null);
        {
            d = suffix_file.*.deps;
            while (d != null) : (d = d.*.next) {
                d.*.file.*.builtin = 1;
            }
        }
        _ = define_variable_in_set("SUFFIXES", @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&default_suffixes))), @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
}

pub export fn install_default_suffix_rules() void {
    var s: [*c][*c]const u8 = undefined;
    _ = &s;
    if (no_builtin_rules_flag != 0) return;
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_suffix_rules)));
        while (s.* != null) : (s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))) {
            var f: ?*struct_file = enter_file(strcache_add(s[@as(c_uint, @intCast(@as(c_int, 0)))]));
            _ = &f;
            if (!(f.*.cmds != null)) {
                f.*.cmds = @as(?*struct_commands, @ptrCast(xmalloc(@sizeOf(struct_commands))));
                f.*.cmds.*.fileinfo.filenm = null;
                f.*.cmds.*.commands = xstrdup(s[@as(c_uint, @intCast(@as(c_int, 1)))]);
                f.*.cmds.*.command_lines = null;
                f.*.cmds.*.recipe_prefix = '\t';
                f.*.builtin = 1;
            }
        }
    }
}

pub export fn install_default_implicit_rules() void {
    var p: [*c]struct_pspec = undefined;
    _ = &p;
    if (no_builtin_rules_flag != 0) return;
    {
        p = @as([*c]struct_pspec, @ptrCast(@alignCast(&default_pattern_rules)));
        while (p.*.target != null) : (p += 1) {
            install_pattern_rule(p, @as(c_int, 0));
        }
    }
    {
        p = @as([*c]struct_pspec, @ptrCast(@alignCast(&default_terminal_rules)));
        while (p.*.target != null) : (p += 1) {
            install_pattern_rule(p, @as(c_int, 1));
        }
    }
}

pub export fn define_default_variables() void {
    var s: [*c][*c]const u8 = undefined;
    _ = &s;
    if (no_builtin_variables_flag != 0) return;
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_variables)));
        while (s.* != null) : (s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))) {
            _ = define_variable_in_set(s[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(s[@as(c_uint, @intCast(@as(c_int, 0)))]), s[@as(c_uint, @intCast(@as(c_int, 1)))], @as(c_uint, @bitCast(o_default)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        }
    }
}

pub export fn undefine_default_variables() void {
    var s: [*c][*c]const u8 = undefined;
    _ = &s;
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_variables)));
        while (s.* != null) : (s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))) {
            undefine_variable_in_set(s[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(s[@as(c_uint, @intCast(@as(c_int, 0)))]), @as(c_uint, @bitCast(o_default)), null);
        }
    }
}
