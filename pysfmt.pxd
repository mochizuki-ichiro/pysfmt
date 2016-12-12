cdef extern from "SFMT1.4.1/SFMT.h":
    ctypedef struct sfmt_t
    sfmt_t *make_sfmt()
    void free_sfmt(sfmt_t *sfm)
    void sfmt_init_gen_rand(sfmt_t *sfm,int seed)
    void sfmt_fill_array64(sfmt_t *sfm, unsigned long long *array,int size)
    double sfmt_genrand_real1(sfmt_t *sfm)
