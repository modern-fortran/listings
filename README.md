# listings

Code listings for the upcoming Fortran in Action book by Manning Publications.

## Build

```sh
git clone https://github.com/fortran-in-action/listings
make -k
```

-k
: continue to `make` even if one command fails (for those that don't have `caf` compiler, for example).

## Run

```sh
mpirun -n 2 ./array_copy_mpi
```

## Problems?

See the list of already open [issues](https://github.com/fortran-in-action/listings/issues/new).
If you can't find your issue, open a [new issue](https://github.com/fortran-in-action/listings/issues/new).
