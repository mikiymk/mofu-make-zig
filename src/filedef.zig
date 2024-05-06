// /* Definition of target file data structures for GNU Make.
// Copyright (C) 1988-2023 Free Software Foundation, Inc.
// This file is part of GNU Make.

// GNU Make is free software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the Free Software
// Foundation; either version 3 of the License, or (at your option) any later
// version.

// GNU Make is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://www.gnu.org/licenses/>.  */

// /* Structure that represents the info on one file
//    that the makefile says how to make.
//    All of these are chained together through 'next'.  */

// #include "hash.h"
const dep = @import("./dep.zig");
const commands = @import("./commands.zig");
const variable = @import("./variable.zig");
const makeint = @import("./makeint.zig");

// struct commands;
// struct dep;
// struct variable;
// struct variable_set_list;

pub const file = struct {
    /// Status of the last attempt to update.
    const update_status = enum(u2) {
        /// Successfully updated.  Must be 0!
        us_success = 0,
        /// No attempt to update has been made.
        us_none,
        /// Needs to be updated (-q is is set).
        us_question,
        ///Update failed.
        us_failed,
    };

    /// State of commands.  ORDER IS IMPORTANT!
    const cmd_state = enum(u2) {
        /// Not yet started.  Must be 0!
        cs_not_started = 0,
        /// Dep commands running.
        cs_deps_running,
        /// Commands running.
        cs_running,
        /// Commands finished.
        cs_finished,
    };

    name: *const c_char,
    /// Hashed filename
    hname: *const c_char,
    /// VPATH/vpath pathname
    vpath: *const c_char,
    /// all dependencies, including duplicates
    deps: *dep.dep,
    /// Commands to execute for this target.
    cmds: *commands.commands,
    /// Implicit stem, if an implicit rule has been used
    stem: *const c_char,
    /// Targets that are made by making this.
    also_make: *dep.dep,
    /// Previous entry for same file name; used when there are multiple double-colon entries for the same file.
    prev: *file,
    /// Last entry for the same file name.
    last: *file,

    /// File that this file was renamed to.
    /// After any time that a file could be renamed, call 'check_renamed' (below).
    renamed: *file,

    /// List of variable sets used for this file.
    variables: *variable.variable_set_list,

    /// Pattern-specific variable reference for this target, or null if there isn't one.
    /// Also see the pat_searched flag, below.
    pat_variables: *variable.variable_set_list,

    /// Immediate dependent that caused this target to be remade, or nil if there isn't one.
    parent: *file,

    /// For a double-colon entry, this is the first double-colon entry for the same file.
    /// Otherwise this is null.
    double_colon: *file,

    /// File's modtime, if already known.
    last_mtime: makeint.FILE_TIMESTAMP,
    /// File's modtime before any updating has been performed.
    mtime_before_update: makeint.FILE_TIMESTAMP,
    /// equal to 'considered' if file has been considered on current scan of goal chain
    considered: c_uint,
    /// Flags OR'd in for cmds; see commands.h.
    command_flags: c_int,

    packed_struct: packed struct {
        update_status: update_status,

        command_state: cmd_state,

        /// True if the file is a builtin rule.
        builtin: u1,
        /// Non-0 means don't delete file on quit
        precious: u1,
        /// True if the file is a loaded object.
        loaded: u1,
        /// True if this loaded object was unloaded.
        unloaded: u1,
        /// Nonzero if this file's time stamp has only one-second resolution.
        low_resolution_time: u1,
        /// Nonzero if have searched for implicit rule for making this file; don't search again.
        tried_implicit: u1,
        /// Nonzero while updating deps of this file
        updating: u1,
        /// Nonzero if this file has been remade.
        updated: u1,
        /// Nonzero if file is described as target.
        is_target: u1,
        /// Nonzero if file was given on cmd line.
        cmd_target: u1,
        /// Nonzero if this is a phony file i.e., a prerequisite of .PHONY.
        phony: u1,
        /// Nonzero if this is an intermediate file.
        intermediate: u1,
        /// Nonzero if explicitly mentioned.
        is_explicit: u1,
        /// Nonzero means remove_intermediates should not delete it.
        secondary: u1,
        /// Nonzero means a file is a prereq to .NOTINTERMEDIATE.
        notintermediate: u1,
        /// Nonzero if no complaint is to be made if this target cannot be remade.
        dontcare: u1,
        /// Nonzero if we threw out VPATH name.
        ignore_vpath: u1,
        /// Nonzero if we already searched for pattern-specific variables.
        pat_searched: u1,
        /// True if the file failed to update and no diagnostics has been issued (dontcare).
        no_diag: u1,
        /// Did we already shuffle 'deps'? used when --shuffle passes through the graph.
        was_shuffled: u1,
        /// True if the deps of this file have been secondary expanded.
        snapped: u1,
    },
};

// extern struct file *default_file;

// struct file *lookup_file (const char *name);
// struct file *enter_file (const char *name);
// struct dep *split_prereqs (char *prereqstr);
// struct dep *enter_prereqs (struct dep *prereqs, const char *stem);
// void expand_deps (struct file *f);
// struct dep *expand_extra_prereqs (const struct variable *extra);
// void remove_intermediates (int sig);
// void snap_deps (void);
// void rename_file (struct file *file, const char *name);
// void rehash_file (struct file *file, const char *name);
// void set_command_state (struct file *file, enum cmd_state state);
// void notice_finished_file (struct file *file);
// void init_hash_files (void);
// void verify_file_data_base (void);
// char *build_target_list (char *old_list);
// void print_prereqs (const struct dep *deps);
// void print_file_data_base (void);
// int try_implicit_rule (struct file *file, unsigned int depth);
// int stemlen_compare (const void *v1, const void *v2);

// #if FILE_TIMESTAMP_HI_RES
// # define FILE_TIMESTAMP_STAT_MODTIME(fname, st) \
//     file_timestamp_cons (fname, (st).st_mtime, (st).ST_MTIM_NSEC)
// #else
// # define FILE_TIMESTAMP_STAT_MODTIME(fname, st) \
//     file_timestamp_cons (fname, (st).st_mtime, 0)
// #endif

// /* If FILE_TIMESTAMP is 64 bits (or more), use nanosecond resolution.
//    (Multiply by 2**30 instead of by 10**9 to save time at the cost of
//    slightly decreasing the number of available timestamps.)  With
//    64-bit FILE_TIMESTAMP, this stops working on 2514-05-30 01:53:04
//    UTC, but by then uintmax_t should be larger than 64 bits.  */
// #define FILE_TIMESTAMPS_PER_S (FILE_TIMESTAMP_HI_RES ? 1000000000 : 1)
// #define FILE_TIMESTAMP_LO_BITS (FILE_TIMESTAMP_HI_RES ? 30 : 0)

// #define FILE_TIMESTAMP_S(ts) (((ts) - ORDINARY_MTIME_MIN) \
//                               >> FILE_TIMESTAMP_LO_BITS)
// #define FILE_TIMESTAMP_NS(ts) ((int) (((ts) - ORDINARY_MTIME_MIN) \
//                                       & ((1 << FILE_TIMESTAMP_LO_BITS) - 1)))

// /* Upper bound on length of string "YYYY-MM-DD HH:MM:SS.NNNNNNNNN"
//    representing a file timestamp.  The upper bound is not necessarily 29,
//    since the year might be less than -999 or greater than 9999.

//    Subtract one for the sign bit if in case file timestamps can be negative;
//    subtract FLOOR_LOG2_SECONDS_PER_YEAR to yield an upper bound on how many
//    file timestamp bits might affect the year;
//    302 / 1000 is log10 (2) rounded up;
//    add one for integer division truncation;
//    add one more for a minus sign if file timestamps can be negative;
//    add 4 to allow for any 4-digit epoch year (e.g. 1970);
//    add 25 to allow for "-MM-DD HH:MM:SS.NNNNNNNNN".  */
// #define FLOOR_LOG2_SECONDS_PER_YEAR 24
// #define FILE_TIMESTAMP_PRINT_LEN_BOUND \
//   (((sizeof (FILE_TIMESTAMP) * CHAR_BIT - 1 - FLOOR_LOG2_SECONDS_PER_YEAR) \
//     * 302 / 1000) \
//    + 1 + 1 + 4 + 25)

// FILE_TIMESTAMP file_timestamp_cons (char const *, time_t, long int);
// FILE_TIMESTAMP file_timestamp_now (int *);
// void file_timestamp_sprintf (char *p, FILE_TIMESTAMP ts);

// /* Return the mtime of file F (a struct file *), caching it.
//    The value is NONEXISTENT_MTIME if the file does not exist.  */
// #define file_mtime(f) file_mtime_1 ((f), 1)
// /* Return the mtime of file F (a struct file *), caching it.
//    Don't search using vpath for the file--if it doesn't actually exist,
//    we don't find it.
//    The value is NONEXISTENT_MTIME if the file does not exist.  */
// #define file_mtime_no_search(f) file_mtime_1 ((f), 0)
// FILE_TIMESTAMP f_mtime (struct file *file, int search);
// #define file_mtime_1(f, v) \
//   ((f)->last_mtime == UNKNOWN_MTIME ? f_mtime ((f), v) : (f)->last_mtime)

// /* Special timestamp values.  */

// /* The file's timestamp is not yet known.  */
// #define UNKNOWN_MTIME 0

// /* The file does not exist.  */
// #define NONEXISTENT_MTIME 1

// /* The file does not exist, and we assume that it is older than any
//    actual file.  */
// #define OLD_MTIME 2

// /* The smallest and largest ordinary timestamps.  */
// #define ORDINARY_MTIME_MIN (OLD_MTIME + 1)
// #define ORDINARY_MTIME_MAX ((FILE_TIMESTAMP_S (NEW_MTIME) \
//                              << FILE_TIMESTAMP_LO_BITS) \
//                             + ORDINARY_MTIME_MIN + FILE_TIMESTAMPS_PER_S - 1)

// #define is_ordinary_mtime(_t) ((_t) >= ORDINARY_MTIME_MIN && (_t) <= ORDINARY_MTIME_MAX)

// /* Modtime value to use for 'infinitely new'.  We used to get the current time
//    from the system and use that whenever we wanted 'new'.  But that causes
//    trouble when the machine running make and the machine holding a file have
//    different ideas about what time it is; and can also lose for 'force'
//    targets, which need to be considered newer than anything that depends on
//    them, even if said dependents' modtimes are in the future.  */
// #define NEW_MTIME INTEGER_TYPE_MAXIMUM (FILE_TIMESTAMP)

// #define check_renamed(file) \
//   while ((file)->renamed != 0) (file) = (file)->renamed /* No ; here.  */

// /* Have we snapped deps yet?  */
// extern int snapped_deps;
