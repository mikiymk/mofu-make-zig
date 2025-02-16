/* Declarations for target shuffling support. */

struct dep;
struct goaldep;

void shuffle_set_mode (const char *cmdarg);
const char *shuffle_get_mode (void);
void shuffle_deps_recursive (struct dep* g);

#define shuffle_goaldeps_recursive(_g) do{              \
        shuffle_deps_recursive ((struct dep *)_g);      \
    } while(0)
