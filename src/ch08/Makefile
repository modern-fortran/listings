FC = gfortran

PROGRAMS = hello_derived_types \
	   banking_app_example \
	   derived_type_constructor \
	   derived_type_init \
	   hello_derived_types_elemental 

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) *.o *.mod ${PROGRAMS}
