# Fortran in Action
#
# listings build rules

FC = gfortran
CAF = caf
MPI = mpif90

.SUFFIXES: .f90 .o

all: array_copy_caf array_copy_mpi banking_app_example coarrays derived_type_init derived_type_constructor hello hello_coarrays hello_images hello_images_syncall hello_derived_types hello_derived_types_elemental data_types cold_front_program cold_front_function sum_function_elemental run_xpowx run_xpowx_parallel run_xpowx_parallel_mean strcat qn

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

hello_images: src/ch05/hello_images.f90
	$(CAF) $< -o $@

hello_images_syncall: src/ch05/hello_images_syncall.f90
	$(CAF) $< -o $@

run_xpowx: src/ch05/run_xpowx.f90
	$(CAF) $< -o $@

run_xpowx_parallel: src/ch05/run_xpowx_parallel.f90
	$(CAF) $< -o $@

run_xpowx_parallel_mean: src/ch05/run_xpowx_parallel_mean.f90
	$(CAF) $< -o $@

coarrays: src/ch04/coarrays.f90
	$(CAF) $< -o $@

derived_type_constructor: src/ch06/derived_type_constructor.f90
	$(FC) $< -o $@

derived_type_init: src/ch06/derived_type_init.f90
	$(FC) $< -o $@

hello_derived_types: src/ch06/hello_derived_types.f90
	$(FC) $< -o $@

hello_derived_types_elemental: src/ch06/hello_derived_types_elemental.f90
	$(FC) $< -o $@

banking_app_example: src/ch06/banking_app_example.f90
	$(FC) $< -o $@

strcat: src/ch07/strcat.f90
	$(FC) $< -o $@

qn: src/ch09/qn.f90
	$(FC) $< -o $@

clean:
	$(RM) -v *.mod array_copy_{caf,mpi} banking_app_example coarrays derived_type_{constructor,init} hello_{coarrays,derived_types,derived_types_elemental,images,images_syncall} hello data_types cold_front_program cold_front_function sum_function_elemental run_xpowx run_xpowx_parallel run_xpowx_parallel_mean strcat qn
