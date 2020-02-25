program cold_front
  ! This program calculates temperature due to cold front
  ! passage for different times using an external function.
  ! Listing 3.3 in the book.
  implicit none

  integer :: n
  real :: nhours

  do n = 6, 48, 6
    nhours = real(n)
    print *, 'Temparature after ', nhours, ' hours is ', & 
      cold_front_temperature(12., 24., 20., 960., nhours), &
      ' degrees.'
  end do

contains

  real function cold_front_temperature(temp1, temp2, c, dx, dt) result(r)
    ! Returns the temperature after dt hours, given initial 
    ! temperatures at origin (temp1) and destination (temp2),
    ! front speed (c), and distance between the two locations (dx).
    real, intent(in) :: temp1, temp2, c, dx, dt
    r = temp2 - c * (temp2 - temp1) / dx * dt
  end function cold_front_temperature

end program cold_front
