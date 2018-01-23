program hello

implicit none

write(*,*) greeting()

contains

  function greeting()
    character(len=5) :: greeting
    greeting = 'hello'
  end function greeting

end program hello
