program redirect_stdout_to_file
  ! Redirecting standard output to a file.
  ! Listing 6.27 in the book.
  use iso_fortran_env, only: stdout => output_unit, &
                             stderr => error_unit
  implicit none

  open(unit=stdout, file='log.out')
  open(unit=stderr, file='log.err')

  write(stdout, *) 'This goes to stdout.'
  write(stderr, *) 'This goes to stderr.'
  
  close(stdout)
  close(stderr)

end program redirect_stdout_to_file
