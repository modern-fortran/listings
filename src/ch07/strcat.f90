module mod_strings

  implicit none

  private
  public :: operator(+)

  interface operator(+)
    module procedure :: strcat
  end interface

contains

  function strcat(s1, s2) result(res)
    character(len=*), intent(in) :: s1, s2
    character(len=:), allocatable :: res
    res = s1 // s2
  end function strcat

end module mod_strings

program strcat
  use mod_strings, only: operator(+)
  print *, 'Hello' + ' world'
end program strcat
