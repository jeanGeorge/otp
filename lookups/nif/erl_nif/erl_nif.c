#include "string.h"
#include "erl_nif.h"

static ERL_NIF_TERM my_custom_nif(ErlNifEnv *env,
                          int argc,
                          const ERL_NIF_TERM argv[])
{
    // ErlNifBinary *output_binary;
    // enif_alloc_binary(sizeof "Hello from C", output_binary);
    // strcpy(output_binary->data, "Hello from C");
    // return enif_make_binary(env, output_binary);
    printf("teste\n");
    return enif_make_atom(env, "HelloFromC");
}

static ErlNifFunc nif_funcs[] = {
    // {"hello", 0, hello},
    {"my_custom_nif", 0, my_custom_nif, ERL_NIF_DIRTY_JOB_CPU_BOUND},
};

ERL_NIF_INIT(erl_nif, nif_funcs, NULL, NULL, NULL, NULL)
