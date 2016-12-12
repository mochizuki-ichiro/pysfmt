from distutils.core import setup, Extension
from Cython.Build import cythonize

ext_type = Extension("pysfmt",
                     sources=["pysfmt.pyx",
                              "SFMT1.4.1/SFMT.c"],
                     extra_compile_args=["-DSFMT_MEXP=19937"])

setup(name="pysfmt",
      ext_modules = cythonize([ext_type]))
