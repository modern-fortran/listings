program array_copy_caf
implicit none

integer, dimension(5), codimension[*] :: array
integer, parameter :: sender = 1, receiver = 2

if (num_images() /= 2) then
  stop 'Error: This program must be run on 2 parallel processes'
end if

if (this_image() == sender) then
  array = [1, 2, 3, 4, 5]
else
  array = 0
end if

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', this_image(),&
  ' before copy:', array

sync all

if (this_image() == receiver) array = array[sender]

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', this_image(),&
  ' after copy: ', array

end program array_copy_caf
