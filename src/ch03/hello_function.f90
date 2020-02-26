program hello
  ! Minimal example of calling a function.
  implicit none

  print *, greeting()

contains

  function greeting()
    character(len=5) :: greeting
    greeting = 'hello'
  end function greeting

end program hello
