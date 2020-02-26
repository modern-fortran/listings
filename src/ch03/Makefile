FC = gfortran

PROGRAMS = cold_front_program \
	   cold_front_function \
	   cold_front_elemental \
           hello_function \
	   example_elemental \
	   optional_arguments

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) ${PROGRAMS}
