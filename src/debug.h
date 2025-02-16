/* Debugging macros and interface. */

#define DB_NONE         (0x000)
#define DB_BASIC        (0x001)
#define DB_VERBOSE      (0x002)
#define DB_JOBS         (0x004)
#define DB_IMPLICIT     (0x008)
#define DB_PRINT        (0x010)
#define DB_WHY          (0x020)
#define DB_MAKEFILES    (0x100)

#define DB_ALL          (0xfff)

extern int db_level;

#define ISDB(_l)    ((_l)&db_level)

/* When adding macros to this list be sure to update the value of
   XGETTEXT_OPTIONS in the po/Makevars file.  */
#define DBS(_l,_x)  do{ if(ISDB(_l)) {print_spaces (depth); \
                                      printf _x; fflush (stdout);} }while(0)

#define DBF(_l,_x)  do{ if(ISDB(_l)) {print_spaces (depth); \
                                      printf (_x, file->name); \
                                      fflush (stdout);} }while(0)

#define DB(_l,_x)   do{ if(ISDB(_l)) {printf _x; fflush (stdout);} }while(0)
