FC = gfortran

PROGRAMS = hello data_types

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) ${PROGRAMS}
