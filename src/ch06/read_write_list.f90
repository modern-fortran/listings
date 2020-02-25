program read_write_list
  ! Example of list-directed I/O.
  ! Listing 6.4 in the book.
  implicit none
  character(len=1000) :: text
  integer :: a
  real :: x
  read *, text, a, x
  print *, 'User typed: ', trim(text), a, x
end program read_write_list
