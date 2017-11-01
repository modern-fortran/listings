program array_copy_caf
implicit none

integer, dimension(5), codimension[*] :: array

if (num_images() /= 2) then
  stop 'Error: This program must be run on 2 parallel processes'
end if

if (this_image() == 1) then
  array = [1, 2, 3, 4, 5]
else
  array = 0
end if

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', this_image(),&
  ' before copy:', array

sync all

array(:)[2] = array(:)[1]

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', this_image(),&
  ' after copy: ', array

end program array_copy_caf
