program read_write_list
  implicit none
  character(len=1000) :: text
  integer :: a
  real :: x
  read *, text, a, x
  print *, 'User typed: ', trim(text), a, x
end program read_write_list
