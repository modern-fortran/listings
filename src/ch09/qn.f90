program qn
  use iso_fortran_env, only: stdin => input_unit, &
                             stdout => output_unit
  implicit none
  integer :: fileunit
  character(len=9999) :: filename, text
  character(len=6) :: pos
  logical :: file_exists

  if (command_argument_count() < 1) stop 'Usage: qn <filename>'
  call get_command_argument(1, filename)

  inquire(file=trim(filename), exist=file_exists)
  pos = 'rewind'

  if (file_exists) then
    write(stdout, '(a)') 'File ' // trim(filename) // ' already exists!'
    do
      write(*, '(a)', advance='no') '[O]verwrite, [A]ppend, [Q]uit: '
      read(stdin, '(a)') text
      if (any(trim(text) == ['O', 'o'])) then
        write(stdout, '(a)') 'Overwriting ' // trim(filename) 
        exit
      elseif (any(trim(text) == ['A', 'a'])) then
        pos = 'append'
        write(stdout, '(a)') 'Appending to ' // trim(filename) 
        exit
      elseif (any(trim(text) == ['Q', 'q'])) then
        stop
      else
        continue
      end if
    end do
  end if

  open(newunit=fileunit, file=trim(filename),&
       action='write', position=pos)

  do
    read(stdin, '(a)') text
    write(fileunit, '(a)') trim(text)
    flush(fileunit)
  end do

end program qn
