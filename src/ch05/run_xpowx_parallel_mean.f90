program test_xpowx_parallel_mean

  implicit none

  integer, parameter :: n = 10**8
  integer :: i, is, ie
  integer :: tile_size
  real, dimension(:), codimension[:], allocatable :: x
  real, codimension[*] :: local_sum
  real :: mean

  if (this_image() == 1) write(*,*) 'We have a total of ', n, ' elements.'

  ! calculate start and end indices on each image
  tile_size = n / num_images()
  is = (this_image() - 1) * tile_size + 1
  ie = is + tile_size - 1 

  allocate(x(is:ie)[*])

  write(*,*) 'Image ', this_image(), ' calling xpowx with ', size(x), ' elements.'

  call random_number(x)

  x = xpowx(x)

  local_sum = sum(x)

  if (this_image() == 1) then
    mean = 0
    do i = 1, num_images()
      mean = mean + local_sum[i]
      write(*,*)mean
    end do
    mean = mean / n
    write(*,*) 'Global mean of xpowx(x) is ', mean 
  end if

contains

  pure elemental real function xpowx(x)
    real, intent(in) :: x
    xpowx = x**x
  end function xpowx

end program test_xpowx_parallel_mean
