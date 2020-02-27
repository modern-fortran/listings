FC = gfortran

PROGRAMS = average_generic strcat

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) *.o *.mod ${PROGRAMS}
