# listings

[![Build Status](https://travis-ci.org/modern-fortran/listings.svg?branch=master)](https://travis-ci.org/modern-fortran/listings)
[![GitHub issues](https://img.shields.io/github/issues/modern-fortran/listings.svg)](https://github.com/modern-fortran/listings/issues)

Code listings for [Modern Fortran: Building Efficient Parallel Applications](https://www.manning.com/books/modern-fortran?a_aid=modernfortran&a_bid=2dc4d442).

## Try it in the cloud

Click on the button below to create a free cloud server for up to 2 hours:

[![Dply](https://dply.co/b.svg)](https://dply.co/b/lHbdM5wp)

You will need a Github account with an SSH key associated with it.

The cloud-init script creates a `fortran` user, installs all the
prerequisites such as the GNU Fortran compiler, OpenMPI, and OpenCoarrays.
It also clones the listings and tsunami repositories in the home directory.

Log in with ssh:

```
ssh fortran@ip-address
```

**Note: it may take up to several minutes before you can log in
due to server configuring and installing packages.**

This is a passwordless log-in that will use the SSH key that you
select in the server configuration step.
Once you log in as `fortran` you will have the following tools available:

* `gfortran`: The GNU Fortran compiler; use it to compile serial programs.
* `caf`: The coarray compile script; use it to compile parallel coarray programs.
* `cafrun`: The coarray execute script; use it to run parallel coarray programs.
* `mpif90`: The MPI compile script; use it to compile parallel MPI programs.
* `mpiexec`: The MPI execute script; use it to run parallel MPI programs.

## Build locally

To build and run the examples on your local machine, get the code using git:

```sh
git clone https://github.com/fortran-in-action/listings
cd listings
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

See the list of already open [issues](https://github.com/fortran-in-action/listings/issues).
If you can't find your issue, open a [new issue](https://github.com/fortran-in-action/listings/issues/new).

## Acknowledgements

Big thank you to contributors:

* [Izaak Beekman](https://github.com/zbeekman)
* [Michael Hirsch](https://github.com/scivision)
