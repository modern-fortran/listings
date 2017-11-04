# Fortran in Action
#
# listings build rules

.SUFFIXES: .f90 .o

all: array_copy_caf array_copy_mpi

array_copy_caf: src/ch01/array_copy_caf.f90
	caf $< -o $@

array_copy_mpi: src/ch01/array_copy_mpi.f90
	mpif90 $< -o $@

clean:
	rm -v array_copy_{caf,mpi}
