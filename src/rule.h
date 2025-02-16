/* Definitions for using pattern rules in GNU Make. */


/* Structure used for pattern (implicit) rules.  */

struct rule
  {
    struct rule *next;
    const char **targets;       /* Targets of the rule.  */
    unsigned int *lens;         /* Lengths of each target.  */
    const char **suffixes;      /* Suffixes (after '%') of each target.  */
    struct dep *deps;           /* Dependencies of the rule.  */
    struct commands *cmds;      /* Commands to execute.  */
    char *_defn;                /* Definition of the rule. */
    unsigned short num;         /* Number of targets.  */
    char terminal;              /* If terminal (double-colon).  */
    char in_use;                /* If in use by a parent pattern_search.  */
  };

/* For calling install_pattern_rule.  */
struct pspec
  {
    const char *target, *dep, *commands;
  };


extern struct rule *pattern_rules;
extern struct rule *last_pattern_rule;
extern unsigned int num_pattern_rules;

extern unsigned int max_pattern_deps;
extern unsigned int max_pattern_targets;
extern size_t max_pattern_dep_length;

extern struct file *suffix_file;


void snap_implicit_rules (void);
void convert_to_pattern (void);
void install_pattern_rule (struct pspec *p, int terminal);
void create_pattern_rule (const char **targets, const char **target_percents,
                          unsigned short num, int terminal, struct dep *deps,
                          struct commands *commands, int override);
const char *get_rule_defn (struct rule *rule);
void print_rule_data_base (void);
