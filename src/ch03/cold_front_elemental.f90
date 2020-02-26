program cold_front
  ! This program calculates temperature due to cold front
  ! passage for different times using an external elemental 
  ! function.
  ! Listing 3.25 in the book.
  implicit none
  real :: nhours(8) = [6., 12., 18., 24., 30., 36., 42., 48.]
  real :: temp1(8) = 12
  real :: temp2(8) = 24
  real :: c(8) = 20
  real :: dx(8) = 960

  print *, cold_front_temperature(temp1, temp2, c, dx, nhours)

contains

  real pure elemental function cold_front_temperature( &
    temp1, temp2, c, dx, dt) result(res)
    ! Returns the temperature after dt hours, given initial 
    ! temperatures at origin (temp1) and destination (temp2),
    ! front speed (c), and distance between the two locations (dx).
    ! Works with input scalars or arrays.
    real, intent(in) :: temp1, temp2, c, dx, dt
    res = temp2 - c * (temp2 - temp1) / dx * dt
  end function cold_front_temperature

end program cold_front
