program read_write_list_formatted
  implicit none
  character(len=1000) :: text
  character(len=:), allocatable :: fmt_string
  integer :: a
  real :: x
  read *, text, a, x
  fmt_string = '(2a, 2x, i2, 2x, f5.3)'
  print fmt_string, 'User typed: ', trim(text), a, x
end program read_write_list_formatted
