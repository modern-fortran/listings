program read_write
  implicit none
  character(len=100) :: text
  read '(a)', text
  print '(a)', trim(text)
end program read_write
