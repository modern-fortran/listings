CAF = caf
MPI = mpif90

.PHONY: all clean

all: hello_coarrays array_copy_mpi array_copy_caf

hello_coarrays: hello_coarrays.f90
	$(CAF) $< -o $@

array_copy_mpi: array_copy_mpi.f90
	$(MPI) $< -o $@

array_copy_caf: array_copy_caf.f90
	$(CAF) $< -o $@

clean:
	$(RM) hello_coarrays array_copy_mpi array_copy_caf

