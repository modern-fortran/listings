program test_xpowx_parallel

  implicit none

  integer, parameter :: n = 10**8
  integer :: is, ie
  integer :: tile_size
  real, dimension(:), allocatable :: x
  real :: t0, t1

  if (this_image() == 1) write(*,*) 'We have a total of ', n, ' elements.'

  ! calculate start and end indices on each image
  tile_size = n / num_images()
  is = (this_image() - 1) * tile_size + 1
  ie = is + tile_size - 1 

  allocate(x(is:ie))

  write(*,*) 'Image ', this_image(), ' calling xpowx with ', size(x), ' elements.'

  call random_number(x)

  call cpu_time(t0)
  x = xpowx(x)
  call cpu_time(t1)

  write(*,*) 'Elapsed time on image ', this_image(), ': ', t1 - t0, 'seconds.'

contains

  pure elemental real function xpowx(x)
    real, intent(in) :: x
    xpowx = x**x
  end function xpowx

end program test_xpowx_parallel
