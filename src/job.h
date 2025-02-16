/* Definitions for managing subprocesses in GNU Make. */

#include "output.h"

/* Structure describing a running or dead child process.  */

#define VMSCHILD

#define CHILDBASE                                               \
    char *cmd_name;       /* Allocated copy of command run.  */ \
    char **environment;   /* Environment for commands. */       \
    VMSCHILD                                                    \
    struct output output  /* Output for this child.  */


struct childbase
  {
    CHILDBASE;
  };

struct child
  {
    CHILDBASE;

    struct child *next;         /* Link in the chain.  */

    struct file *file;          /* File being remade.  */

    char *sh_batch_file;        /* Script file for shell commands */
    char **command_lines;       /* Array of variable-expanded cmd lines.  */
    char *command_ptr;          /* Ptr into command_lines[command_line].  */

    unsigned int  command_line; /* Index into command_lines.  */

    pid_t pid;                  /* Child process's ID number.  */

    unsigned int  remote:1;     /* Nonzero if executing remotely.  */
    unsigned int  noerror:1;    /* Nonzero if commands contained a '-'.  */
    unsigned int  good_stdin:1; /* Nonzero if this child has a good stdin.  */
    unsigned int  deleted:1;    /* Nonzero if targets have been deleted.  */
    unsigned int  recursive:1;  /* Nonzero for recursive command ('+' etc.)  */
    unsigned int  jobslot:1;    /* Nonzero if it's reserved a job slot.  */
    unsigned int  dontcare:1;   /* Saved dontcare flag.  */
  };

extern struct child *children;

/* A signal handler for SIGCHLD, if needed.  */
void child_handler (int sig);
int is_bourne_compatible_shell(const char *path);
void new_job (struct file *file);
void reap_children (int block, int err);
void start_waiting_jobs (void);
void free_childbase (struct childbase* child);

char **construct_command_argv (char *line, char **restp, struct file *file,
                               int cmd_flags, char** batch_file);

pid_t child_execute_job (struct childbase *child, int good_stdin, char **argv);

pid_t exec_command (char **argv, char **envp);

void unblock_all_sigs (void);

extern unsigned int job_slots_used;
extern unsigned int jobserver_tokens;
