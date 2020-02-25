FC = gfortran

PROGRAMS = echo_robot \
           read_write \
           read_write_list \
           read_write_list_formatted \
	   standard_streams \
	   dashboard \
	   qn \
	   redirect_stdout_to_file \
	   write_pi_to_text_and_binary

.PHONY: all clean

all: ${PROGRAMS}

%: %.f90
	$(FC) $< -o $@

clean:
	$(RM) ${PROGRAMS}
