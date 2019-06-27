module mod_field

  implicit none

  private
  public :: Field

  type :: Field
    real, allocatable :: data(:)
  end type Field

end module mod_field

module mod_average

  use mod_field, only: Field

  implicit none

  private
  public :: average

  interface average
    module procedure :: average_int
    module procedure :: average_real
    module procedure :: average_logical
    module procedure :: average_field
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

  pure real function average_field(f) result(res)
    class(Field), intent(in) :: f
    res = average(f % data)
  end function average_field

end module mod_average


program test_average

  use mod_average, only: average
  use mod_field, only: field

  type(Field) :: f

  print *, average([1, 6, 4])
  print *, average([1., 6., 4.])
  print *, average([.true., .true., .false.])

  f % data = [1., 6., 4.]
  print *, average(f)

end program test_average
