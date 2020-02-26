FC = caf

PROGRAMS = hello_images hello_images_ordered coarrays

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) ${PROGRAMS}
