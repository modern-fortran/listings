program qn
  use iso_fortran_env, only: stdin => input_unit
  implicit none
  integer :: fileunit
  character(len=9999) :: filename, text

  if (command_argument_count() < 1) stop 'Usage: qn <filename>'
  call get_command_argument(1, filename)

  open(newunit=fileunit, file=trim(filename))

  do
    read(stdin, '(a)') text
    write(fileunit, '(a)') trim(text)
    flush(fileunit)
  end do

end program qn
