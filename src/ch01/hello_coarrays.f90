program hello_coarrays
implicit none

integer, codimension[*] :: a
integer :: i

a = this_image()

if (this_image() == 1) then
  do i = 1, num_images()
    write(*,*) 'Value on image', i, 'is', a[i]
  end do
end if

end program hello_coarrays
