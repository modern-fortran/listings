program cold_front

! This program calculates the temperature after nhours, 
! given initial temperatures at two locations, distance 
! between the two locations, and front speed.

implicit none

real :: temp1 = 12 ! temperature at origin in deg. C
real :: temp2 = 24 ! temperature at destination in deg. C
real :: dx = 960 ! distance in km
real :: c = 20 ! front speed in km per hour
real :: dt = 24 ! time interval in hours

real :: res ! result in deg. C

res = temp2 - c * (temp2 - temp1) / dx * dt

write(*,*) 'Temparature after ', dt, &
  'hours is ', res, 'degrees.'

end program cold_front
