program hello_coarrays
  ! A coarray variant of a hello world program.
  ! Listing 1.1 in the book.
  implicit none

  integer :: a[*]
  integer :: i

  a = this_image()

  if (this_image() == 1) then
    do i = 1, num_images()
      print *, 'Value on image', i, 'is', a[i]
    end do
  end if

end program hello_coarrays
