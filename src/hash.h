/* hash.h -- decls for hash table */

#ifndef _hash_h_
#define _hash_h_

#include <stdio.h>
#include <ctype.h>

# undef	__P
# define __P(protos)	()
/* We can get away without defining 'const' here only because in this file
   it is used only inside the prototype for 'fnmatch', which is elided in
   non-ANSI C where 'const' is problematical.  */

typedef unsigned long (*hash_func_t) __P((void const *key));
typedef int (*hash_cmp_func_t) __P((void const *x, void const *y));
typedef void (*hash_map_func_t) __P((void const *item));
typedef void (*hash_map_arg_func_t) __P((void const *item, void *arg));

struct hash_table
{
  void **ht_vec;
  hash_func_t ht_hash_1;	/* primary hash function */
  hash_func_t ht_hash_2;	/* secondary hash function */
  hash_cmp_func_t ht_compare;	/* comparison function */
  unsigned long ht_size;	/* total number of slots (power of 2) */
  unsigned long ht_capacity;	/* usable slots, limited by loading-factor */
  unsigned long ht_fill;	/* items in table */
  unsigned long ht_empty_slots;	/* empty slots not including deleted slots */
  unsigned long ht_collisions;	/* # of failed calls to comparison function */
  unsigned long ht_lookups;	/* # of queries */
  unsigned int ht_rehashes;	/* # of times we've expanded table */
};

typedef int (*qsort_cmp_t) __P((void const *, void const *));

void hash_init __P((struct hash_table *ht, unsigned long size,
                    hash_func_t hash_1, hash_func_t hash_2, hash_cmp_func_t hash_cmp));
void hash_load __P((struct hash_table *ht, void *item_table,
                    unsigned long cardinality, unsigned long size));
void **hash_find_slot __P((struct hash_table *ht, void const *key));
void *hash_find_item __P((struct hash_table *ht, void const *key));
void *hash_insert __P((struct hash_table *ht, const void *item));
void *hash_insert_at __P((struct hash_table *ht, const void *item, void const *slot));
void *hash_delete __P((struct hash_table *ht, void const *item));
void *hash_delete_at __P((struct hash_table *ht, void const *slot));
void hash_delete_items __P((struct hash_table *ht));
void hash_free_items __P((struct hash_table *ht));
void hash_free __P((struct hash_table *ht, int free_items));
void hash_map __P((struct hash_table *ht, hash_map_func_t map));
void hash_map_arg __P((struct hash_table *ht, hash_map_arg_func_t map, void *arg));
void hash_print_stats __P((struct hash_table *ht, FILE *out_FILE));
void **hash_dump __P((struct hash_table *ht, void **vector_0, qsort_cmp_t compare));

extern unsigned jhash(unsigned char const *key, int n);
extern unsigned jhash_string(unsigned char const *key);

extern void *hash_deleted_item;
#define HASH_VACANT(item) ((item) == 0 || (void *) (item) == hash_deleted_item)


/* hash and comparison macros for case-sensitive string keys. */

/* Due to the strcache, it's not uncommon for the string pointers to
   be identical.  Take advantage of that to short-circuit string compares.  */

#define STRING_HASH_1(KEY, RESULT) do { \
  unsigned char const *_key_ = (unsigned char const *) (KEY); \
  (RESULT) += jhash_string(_key_); \
} while (0)
#define return_STRING_HASH_1(KEY) do { \
  unsigned long _result_ = 0; \
  STRING_HASH_1 ((KEY), _result_); \
  return _result_; \
} while (0)

/* No need for a second hash because jhash already provides
   pretty good results.  However, do evaluate the arguments
   to avoid warnings.  */
#define STRING_HASH_2(KEY, RESULT) do { \
  (void)(KEY); \
} while (0)
#define return_STRING_HASH_2(KEY) do { \
  unsigned long _result_ = 0; \
  STRING_HASH_2 ((KEY), _result_); \
  return _result_; \
} while (0)

#define STRING_COMPARE(X, Y, RESULT) do { \
    RESULT = (X) == (Y) ? 0 : strcmp ((X), (Y)); \
} while (0)
#define return_STRING_COMPARE(X, Y) do { \
  return (X) == (Y) ? 0 : strcmp ((X), (Y)); \
} while (0)


#define STRING_N_HASH_1(KEY, N, RESULT) do { \
  unsigned char const *_key_ = (unsigned char const *) (KEY); \
  (RESULT) += jhash(_key_, N); \
} while (0)

#define return_STRING_N_HASH_1(KEY, N) do { \
  unsigned long _result_ = 0; \
  STRING_N_HASH_1 ((KEY), (N), _result_); \
  return _result_; \
} while (0)

/* No need for a second hash because jhash already provides
   pretty good results.  However, do evaluate the arguments
   to avoid warnings.  */
#define STRING_N_HASH_2(KEY, N, RESULT) do { \
  (void)(KEY); \
  (void)(N); \
} while (0)

#define return_STRING_N_HASH_2(KEY, N) do { \
  unsigned long _result_ = 0; \
  STRING_N_HASH_2 ((KEY), (N), _result_); \
  return _result_; \
} while (0)

#define STRING_N_COMPARE(X, Y, N, RESULT) do { \
  RESULT = (X) == (Y) ? 0 : memcmp ((X), (Y), (N)); \
} while (0)
#define return_STRING_N_COMPARE(X, Y, N) do { \
  return (X) == (Y) ? 0 : memcmp ((X), (Y), (N)); \
} while (0)

#define ISTRING_HASH_1(KEY, RESULT) STRING_HASH_1 ((KEY), (RESULT))
#define return_ISTRING_HASH_1(KEY) return_STRING_HASH_1 (KEY)

#define ISTRING_HASH_2(KEY, RESULT) STRING_HASH_2 ((KEY), (RESULT))
#define return_ISTRING_HASH_2(KEY) return_STRING_HASH_2 (KEY)

#define ISTRING_COMPARE(X, Y, RESULT) STRING_COMPARE ((X), (Y), (RESULT))
#define return_ISTRING_COMPARE(X, Y) return_STRING_COMPARE ((X), (Y))

/* hash and comparison macros for integer _key_s. */

#define INTEGER_HASH_1(KEY, RESULT) do { \
  (RESULT) += ((unsigned long)(KEY)); \
} while (0)
#define return_INTEGER_HASH_1(KEY) do { \
  unsigned long _result_ = 0; \
  INTEGER_HASH_1 ((KEY), _result_); \
  return _result_; \
} while (0)

#define INTEGER_HASH_2(KEY, RESULT) do { \
  (RESULT) += ~((unsigned long)(KEY)); \
} while (0)
#define return_INTEGER_HASH_2(KEY) do { \
  unsigned long _result_ = 0; \
  INTEGER_HASH_2 ((KEY), _result_); \
  return _result_; \
} while (0)

#define INTEGER_COMPARE(X, Y, RESULT) do { \
  (RESULT) = X - Y; \
} while (0)
#define return_INTEGER_COMPARE(X, Y) do { \
  int _result_; \
  INTEGER_COMPARE (X, Y, _result_); \
  return _result_; \
} while (0)

/* hash and comparison macros for address keys. */

#define ADDRESS_HASH_1(KEY, RESULT) INTEGER_HASH_1 (((unsigned long)(KEY)) >> 3, (RESULT))
#define ADDRESS_HASH_2(KEY, RESULT) INTEGER_HASH_2 (((unsigned long)(KEY)) >> 3, (RESULT))
#define ADDRESS_COMPARE(X, Y, RESULT) INTEGER_COMPARE ((X), (Y), (RESULT))
#define return_ADDRESS_HASH_1(KEY) return_INTEGER_HASH_1 (((unsigned long)(KEY)) >> 3)
#define return_ADDRESS_HASH_2(KEY) return_INTEGER_HASH_2 (((unsigned long)(KEY)) >> 3)
#define return_ADDRESS_COMPARE(X, Y) return_INTEGER_COMPARE ((X), (Y))

#endif /* not _hash_h_ */
