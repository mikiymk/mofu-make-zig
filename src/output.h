/* Output to stdout / stderr for GNU Make */

struct output
  {
    int out;
    int err;
    unsigned int syncout:1;     /* True if we want to synchronize output.  */
 };

extern struct output *output_context;
extern unsigned int stdio_traced;

#define FD_STDIN  (fileno (stdin))
#define FD_STDOUT (fileno (stdout))
#define FD_STDERR (fileno (stderr))

#define OUTPUT_SET(_new)    do{ output_context = (_new)->syncout ? (_new) : NULL; }while(0)
#define OUTPUT_UNSET()      do{ output_context = NULL; }while(0)

#define OUTPUT_TRACED()     do{ stdio_traced = 1; }while(0)
#define OUTPUT_IS_TRACED()  (!!stdio_traced)

/* Write a buffer directly to the given file descriptor.
   This handles errors etc.  */
int output_write (int fd, const void *buffer, size_t len);

/* Initialize and close a child output structure: if NULL do this program's
   output (this should only be done once).  */
void output_init (struct output *out);
void output_close (struct output *out);

/* In situations where output may be about to be displayed but we're not
   sure if we've set it up yet, call this.  */
void output_start (void);

/* Show a message on stdout or stderr.  Will start the output if needed.  */
void outputs (int is_err, const char *msg);

# define output_dump(_o) (void)(0)
