/* Definition of data structures describing shell commands for GNU Make. */

/* Structure that gives the commands to make a file
   and information about where these commands came from.  */

struct commands
  {
    floc fileinfo;              /* Where commands were defined.  */
    char *commands;             /* Commands text.  */
    char **command_lines;       /* Commands chopped up into lines.  */
    unsigned char *lines_flags; /* One set of flag bits for each line.  */
    unsigned short ncommand_lines;/* Number of command lines.  */
    char recipe_prefix;         /* Recipe prefix for this command set.  */
    unsigned int any_recurse:1; /* Nonzero if any 'lines_flags' elt has */
                                /* the COMMANDS_RECURSE bit set.  */
  };

/* Bits in 'lines_flags'.  */
#define COMMANDS_RECURSE        1 /* Recurses: + or $(MAKE).  */
#define COMMANDS_SILENT         2 /* Silent: @.  */
#define COMMANDS_NOERROR        4 /* No errors: -.  */

struct file;
struct child;

void fatal_error_signal (int sig);
void execute_file_commands (struct file *file);
void print_commands (const struct commands *cmds);
void delete_child_targets (struct child *child);
void chop_commands (struct commands *cmds);
void set_file_variables (struct file *file, const char *stem);
