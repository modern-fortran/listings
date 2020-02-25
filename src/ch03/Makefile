FC = gfortran

.PHONY: all clean

all: cold_front_program cold_front_function example_elemental optional_arguments

cold_front_program: cold_front_program.f90
	$(FC) $< -o $@

cold_front_function: cold_front_function.f90
	$(FC) $< -o $@

example_elemental: example_elemental.f90
	$(FC) $< -o $@

optional_arguments: optional_arguments.f90
	$(FC) $< -o $@

clean:
	$(RM) cold_front_program cold_front_function example_elemental optional_arguments
