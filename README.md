[![Build Status](https://travis-ci.org/scivision/listings.svg?branch=master)](https://travis-ci.org/scivision/listings)

# listings

Code listings for the upcoming Fortran in Action book by Manning Publications.

## Build

```sh
git clone https://github.com/fortran-in-action/listings
make -k
```

-k
: continue to `make` even if one command fails (for those that don't have `caf` compiler wrapper, for example).

or, you can select to make particular programs by:
```sh
make array_copy_mpi
```

### Linux
Get the `mpif90` compiler wrapper on Ubuntu &ge; 12.04:
```sh
apt install libopenmpi-dev openmpi-bin gfortran 
```

Get the `caf` compiler wrapper on Ubuntu &ge; 17.04:
```sh
apt install open-coarrays-bin
```

### Mac
```sh
brew install gcc open-mpi
```

## Run

```sh
mpirun -n 2 ./array_copy_mpi
```





## Problems?

See the list of already open [issues](https://github.com/fortran-in-action/listings/issues/new).
If you can't find your issue, open a [new issue](https://github.com/fortran-in-action/listings/issues/new).
