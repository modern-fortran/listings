program coarrays

  implicit none

  integer :: a[*]

  if (num_images() /= 2) &
    error stop 'Error: This program must be run on 2 images'

  a = 0

  if (this_image() == 1) then
    a = 1
    print *, 'Image ', this_image(), ' has value ', a
    print *, 'Image ', this_image(), ' sending new value to image 2.'
    a[2] = 2 * a
  end if

  sync all

  if (this_image() == 2) then
    print *, 'Image ', this_image(), ' has value ', a
    print *, 'Image ', this_image(), ' sending new value to image 1.'
    a[1] = 2 * a
  end if

  sync all

  if (this_image() == 2) &
    print *, 'Image ', this_image(), ' sees that image 1 now has value ', a[1]

end program coarrays
