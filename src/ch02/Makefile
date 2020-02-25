FC = gfortran

.PHONY: all clean

all: hello data_types

hello: hello.f90
	$(FC) $< -o $@

data_types: data_types.f90
	$(FC) $< -o $@

clean:
	$(RM) hello data_types

