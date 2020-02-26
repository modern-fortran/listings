FC = caf

PROGRAMS = hello_images hello_images_syncall coarrays

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) ${PROGRAMS}
