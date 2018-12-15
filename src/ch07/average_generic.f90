module mod_average

  implicit none

  private
  public :: average

  interface average
    module procedure :: average_int, average_real
  end interface average

contains

  pure real function average_int(x) result(res)
    integer, intent(in) :: x(:)
    res = real(sum(x)) / size(x)
  end function average_int

  pure real function average_real(x) result(res)
    real, intent(in) :: x(:)
    res = sum(x) / size(x)
  end function average_real

end module mod_average


program test_average
  use mod_average, only: average
  print *, average([1, 6, 4])
end program test_average
