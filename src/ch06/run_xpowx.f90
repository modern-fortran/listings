program test_xpowx

  implicit none

  integer, parameter :: n = 10**8
  real, dimension(n) :: x
  real :: t0, t1

  write(*,*) 'Call xpowx with ', n, ' elements.'

  call random_number(x)

  call cpu_time(t0)
  x = xpowx(x)
  call cpu_time(t1)

  write(*,*) 'Elapsed time: ', t1 - t0, 'seconds.'

contains

  pure elemental real function xpowx(x)
    real, intent(in) :: x
    xpowx = x**x
  end function xpowx

end program test_xpowx
