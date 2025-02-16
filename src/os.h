/* Declarations for operating system interfaces for GNU Make. */

#define IO_UNKNOWN              0x0001
#define IO_COMBINED_OUTERR      0x0002
#define IO_STDIN_OK             0x0004
#define IO_STDOUT_OK            0x0008
#define IO_STDERR_OK            0x0010

/* Determine the state of stdin/stdout/stderr.  */
unsigned int check_io_state (void);

/* Set a file descriptor to close/not close in a subprocess.  */
void fd_inherit (int);
void fd_noinherit (int);

/* If the file descriptor is for a file put it into append mode.  */
void fd_set_append (int);

/* Return a file descriptor for a new anonymous temp file, or -1.  */
int os_anontmp (void);

/* This section provides OS-specific functions to support the jobserver.  */

#define jobserver_enabled()             (0)
#define jobserver_setup(_slots, _style) (0)
#define jobserver_parse_auth(_auth)     (0)
#define jobserver_get_auth()            (NULL)
#define jobserver_get_invalid_auth()    (NULL)
#define jobserver_clear()               (void)(0)
#define jobserver_release(_fatal)       (void)(0)
#define jobserver_acquire_all()         (0)
#define jobserver_signal()              (void)(0)
#define jobserver_pre_child(_r)         (void)(0)
#define jobserver_post_child(_r)        (void)(0)
#define jobserver_pre_acquire()         (void)(0)
#define jobserver_acquire(_tmout)       (0)

#define osync_enabled()       (0)
#define osync_setup()         (void)(0)
#define osync_get_mutex()     (0)
#define osync_parse_mutex(_s) (0)
#define osync_clear()         (void)(0)
#define osync_acquire()       (1)
#define osync_release()       (void)(0)

/* Create a "bad" file descriptor for stdin when parallel jobs are run.  */
int get_bad_stdin (void);
