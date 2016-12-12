cimport pysfmt
from libc.time cimport tm, mktime


cdef class sfmt:
    cdef pysfmt.sfmt_t *_thisptr

    def __cinit__(self,int seed):

        self._thisptr = pysfmt.make_sfmt()


        if self._thisptr == NULL:
            raise MemoryError()
        pysfmt.sfmt_init_gen_rand(self._thisptr, seed)

    def __dealloc__(self):

        free_sfmt(self._thisptr)

    cpdef double sfmt_rand(self):
        return pysfmt.sfmt_genrand_real1(self._thisptr)
