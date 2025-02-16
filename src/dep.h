/* Definitions of dependency data structures for GNU Make. */


/* Structure used in chains of names, for parsing and globbing.  */

#define NAMESEQ(_t)     \
    _t *next;           \
    const char *name

struct nameseq
  {
    NAMESEQ (struct nameseq);
  };

/* Flag bits for the second argument to 'read_makefile'.
   These flags are saved in the 'flags' field of each
   'struct goaldep' in the chain returned by 'read_all_makefiles'.  */

#define RM_NOFLAG               0
#define RM_NO_DEFAULT_GOAL      (1 << 0) /* Do not set default goal.  */
#define RM_INCLUDED             (1 << 1) /* Search makefile search path.  */
#define RM_DONTCARE             (1 << 2) /* No error if it doesn't exist.  */
#define RM_NO_TILDE             (1 << 3) /* Don't expand ~ in file name.  */

/* Structure representing one dependency of a file.
   Each struct file's 'deps' points to a chain of these, through 'next'.
   'stem' is the stem for this dep line of static pattern rule or NULL.
   explicit is set when implicit rule search is performed and the prerequisite
   does not contain %. When explicit is set the file is not intermediate.  */


#define DEP(_t)                                 \
    NAMESEQ (_t);                               \
    struct file *file;                          \
    _t *shuf;                                   \
    const char *stem;                           \
    unsigned int flags : 8;                     \
    unsigned int changed : 1;                   \
    unsigned int ignore_mtime : 1;              \
    unsigned int staticpattern : 1;             \
    unsigned int need_2nd_expansion : 1;        \
    unsigned int ignore_automatic_vars : 1;     \
    unsigned int is_explicit : 1;               \
    unsigned int wait_here : 1

struct dep
  {
    DEP (struct dep);
  };

/* Structure representing one goal.
   The goals to be built constitute a chain of these, chained through 'next'.
   'stem' is not used, but it's simpler to include and ignore it.  */

struct goaldep
  {
    DEP (struct goaldep);
    int error;
    floc floc;
  };

/* Options for parsing lists of filenames.  */

#define PARSEFS_NONE    0x0000
#define PARSEFS_NOSTRIP 0x0001
#define PARSEFS_NOAR    0x0002
#define PARSEFS_NOGLOB  0x0004
#define PARSEFS_EXISTS  0x0008
#define PARSEFS_NOCACHE 0x0010
#define PARSEFS_ONEWORD 0x0020
#define PARSEFS_WAIT    0x0040

#define PARSE_FILE_SEQ(_s,_t,_c,_p,_f) \
            (_t *)parse_file_seq ((_s),sizeof (_t),(_c),(_p),(_f))
#define PARSE_SIMPLE_SEQ(_s,_t) \
            (_t *)parse_file_seq ((_s),sizeof (_t),MAP_NUL,NULL,PARSEFS_NONE)

void *parse_file_seq (char **stringp, size_t size,
                      int stopmap, const char *prefix, int flags);

char *tilde_expand (const char *name);

#define dep_name(d)       ((d)->name ? (d)->name : (d)->file->name)

#define alloc_seq_elt(_t) xcalloc (sizeof (_t))
void free_ns_chain (struct nameseq *n);

# define alloc_ns()          alloc_seq_elt (struct nameseq)
# define alloc_dep()         alloc_seq_elt (struct dep)
# define alloc_goaldep()     alloc_seq_elt (struct goaldep)

# define free_ns(_n)         free (_n)
# define free_dep(_d)        free_ns (_d)
# define free_goaldep(_g)    free_dep (_g)

# define free_dep_chain(_d)  free_ns_chain ((struct nameseq *)(_d))
# define free_goal_chain(_g) free_ns_chain ((struct nameseq *)(_g))

struct dep *copy_dep_chain (const struct dep *d);

struct goaldep *read_all_makefiles (const char **makefiles);
void eval_buffer (char *buffer, const floc *floc);
enum update_status update_goal_chain (struct goaldep *goals);
