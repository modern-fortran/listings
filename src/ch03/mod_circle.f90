module mod_circle

  implicit none
  private :: pi
  real, parameter :: pi = 3.14159256

contains

  real pure elemental function circle_area(r) result(a)
    real, intent(in) :: r
    a = r**2 * pi
  end function circle_area

end module mod_circle
