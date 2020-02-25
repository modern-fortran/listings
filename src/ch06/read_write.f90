program read_write
  ! Reading from stdin and writing to stdout.
  implicit none
  character(len=100) :: text
  read '(a)', text
  print '(a)', trim(text)
end program read_write
