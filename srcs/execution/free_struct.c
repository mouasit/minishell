# include "execution.h"

void    free_envp(t_envp *env)
{
    free(env->key);
    free(env->value);
    free(env);
}