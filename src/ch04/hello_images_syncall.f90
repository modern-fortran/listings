program hello_images_syncall
  implicit none
  integer :: n
  do n = 1, num_images()
    if (this_image() == n) then
      write(*,*) 'Hello from image',&
        this_image(), 'of', num_images()
    end if
    sync all
  end do
end program hello_images_syncall
