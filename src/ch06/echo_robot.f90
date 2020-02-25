program echo_robot
  ! A program that echoes back the text from stdin to stdout.
  ! Listing 6.2 in the book.
  implicit none
  character(len=1000) :: text
  read *, text
  print *, trim(text)
end program echo_robot
