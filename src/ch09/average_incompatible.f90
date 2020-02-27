! Example of passing an argument of incompatible type to a function.
! Listing 9.3 in the book.
module mod_average

  implicit none

  private
  public :: average

contains

  pure real function average(x) result(res)
   real, intent(in) :: x(:)
   res = sum(x) / size(x)
  end function average

end module mod_average


program test_average
  use mod_average, only: average
  print *, average([1, 6, 4])
end program test_average
