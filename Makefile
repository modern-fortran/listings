# Fortran in Action
#
# listings build rules

FC=gfortran

.SUFFIXES: .f90 .o

all: array_copy_caf array_copy_mpi data_types hello_coarrays

hello_coarrays: src/ch01/hello_coarrays.f90
	caf $< -o $@

array_copy_caf: src/ch01/array_copy_caf.f90
	caf $< -o $@

array_copy_mpi: src/ch01/array_copy_mpi.f90
	mpif90 $< -o $@

data_types: src/ch02/data_types.f90
	$(FC) $< -o $@

clean:
	$(RM) -v array_copy_{caf,mpi} hello_coarrays data_types
