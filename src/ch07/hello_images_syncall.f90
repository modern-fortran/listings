program hello_images_syncall
  ! Synchronizing parallel images to print in order.
  implicit none
  integer :: n
  do n = 1, num_images()
    if (this_image() == n) &
      print *, 'Hello from image', this_image(), 'of', num_images()
    sync all
  end do
end program hello_images_syncall
