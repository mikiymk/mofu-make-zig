/* External interfaces usable by dynamic objects loaded into GNU Make.
   --THIS API IS A "TECHNOLOGY PREVIEW" ONLY.  IT IS NOT A STABLE INTERFACE-- */

#ifndef _GNUMAKE_H_
#define _GNUMAKE_H_

/* Specify the location of elements read from makefiles.  */
typedef struct
  {
    const char *filenm;
    unsigned long lineno;
  } gmk_floc;

typedef char *(*gmk_func_ptr)(const char *nm, unsigned int argc, char **argv);

# define GMK_EXPORT

/* Free memory returned by the gmk_expand() function.  */
GMK_EXPORT void gmk_free (char *str);

/* Allocate memory in GNU Make's context.  */
GMK_EXPORT char *gmk_alloc (unsigned int len);

/* Run $(eval ...) on the provided string BUFFER.  */
GMK_EXPORT void gmk_eval (const char *buffer, const gmk_floc *floc);

/* Run GNU Make expansion on the provided string STR.
   Returns an allocated buffer that the caller must free with gmk_free().  */
GMK_EXPORT char *gmk_expand (const char *str);

/* Register a new GNU Make function NAME (maximum of 255 chars long).
   When the function is expanded in the makefile, FUNC will be invoked with
   the appropriate arguments.

   The return value of FUNC must be either NULL, in which case it expands to
   the empty string, or a pointer to the result of the expansion in a string
   created by gmk_alloc().  GNU Make will free the memory when it's done.

   MIN_ARGS is the minimum number of arguments the function requires.
   MAX_ARGS is the maximum number of arguments (or 0 if there's no maximum).
   MIN_ARGS and MAX_ARGS may not exceed 255.

   The FLAGS value may be GMK_FUNC_DEFAULT, or one or more of the following
   flags OR'd together:

     GMK_FUNC_NOEXPAND: the arguments to the function will be not be expanded
                        before FUNC is called.
*/
GMK_EXPORT void gmk_add_function (const char *name, gmk_func_ptr func,
                                  unsigned int min_args, unsigned int max_args,
                                  unsigned int flags);

#define GMK_FUNC_DEFAULT    0x00
#define GMK_FUNC_NOEXPAND   0x01

#endif  /* _GNUMAKE_H_ */
