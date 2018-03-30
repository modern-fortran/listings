# Fortran in Action
#
# listings build rules

FC = gfortran
CAF = caf
MPI = mpif90

.SUFFIXES: .f90 .o

all: array_copy_caf array_copy_mpi hello hello_coarrays hello_images data_types cold_front_program cold_front_function sum_function_elemental run_xpowx run_xpowx_parallel

hello_coarrays: src/ch01/hello_coarrays.f90
	$(CAF) $< -o $@

array_copy_caf: src/ch01/array_copy_caf.f90
	$(CAF) $< -o $@

array_copy_mpi: src/ch01/array_copy_mpi.f90
	$(MPI) $< -o $@

hello: src/ch02/hello.f90
	$(FC) $< -o $@

data_types: src/ch02/data_types.f90
	$(FC) $< -o $@

cold_front_program: src/ch03/cold_front_program.f90
	$(FC) $< -o $@

cold_front_function: src/ch03/cold_front_function.f90
	$(FC) $< -o $@

sum_function_elemental: src/ch03/sum_function_elemental.f90
	$(FC) $< -o $@

hello_images: src/ch04/hello_images.f90
	$(CAF) $< -o $@

run_xpowx: src/ch04/run_xpowx.f90
	$(CAF) $< -o $@

run_xpowx_parallel: src/ch04/run_xpowx_parallel.f90
	$(CAF) $< -o $@

clean:
	$(RM) -v array_copy_{caf,mpi} hello_{coarrays,images} hello data_types cold_front_program cold_front_function sum_function_elemental run_xpowx run_xpowx_parallel
