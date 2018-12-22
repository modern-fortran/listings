module mod_average

  implicit none

  private
  public :: average

  interface average
    module procedure :: average_int, average_real, average_logical
  end interface average

contains

  pure real function average_int(x) result(res)
    integer, intent(in) :: x(:)
    res = real(sum(x), kind=kind(res)) / size(x)
  end function average_int

  pure real function average_real(x) result(res)
    real, intent(in) :: x(:)
    res = sum(x) / size(x)
  end function average_real

  pure real function average_logical(x) result(res)
    logical, intent(in) :: x(:)
    res = real(count(x), kind=kind(res)) / size(x)
  end function average_logical

end module mod_average


program test_average
  use mod_average, only: average
  print *, average([1, 6, 4])
  print *, average([1., 6., 4.])
  print *, average([.true., .true., .false.])
end program test_average
