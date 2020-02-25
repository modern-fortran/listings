program standard_streams
  ! Example program of standard input and output streams.
  ! Listing 6.6 in the book.
  use iso_fortran_env, only: stdin => input_unit, &
                             stdout => output_unit, &
                             stderr => error_unit
  implicit none
  character(len=1000) :: text
  read(stdin, '(a)') text
  write(stdout, '(a)') trim(text)
  write(stderr, '(a)') 'This is an error message'
end program standard_streams

