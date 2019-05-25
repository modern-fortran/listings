program dashboard
  use iso_fortran_env, only: dash => output_unit
  implicit none

  real :: lat = 59.329444, lon = 18.068611, alt = 11678.3, vel = 267.5
  integer :: eng(4) = 96
  logical :: airborne = .true.

  character(len=:), allocatable :: dashfmt

  dashfmt = '(2(f9.5, 2x), f7.1, 2x, f5.1, 2x, 4(i3.3, 2x), l)'
  write (dash, dashfmt) lat, lon, alt, vel, eng, airborne

end program dashboard
