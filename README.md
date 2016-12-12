# pysfmt
SIMD-oriented Fast Mersenne Twister for Python


## Faster Random number generator.

This is a Python wrapper of C version SFMT by Atsushi Ito, Mutsuo Saito.

## benchmark

### Mersenne Twister

``` bash
>>> timeit.timeit('random.random()',number=1000000,globals=globals())
0.18563602700305637
```

### SIMD-oriented Fast Mersenne Twister(This Library)

``` bash
>>> timeit.timeit('f.sfmt_rand()',number=1000000,globals=globals())
0.13944932000595145
```
