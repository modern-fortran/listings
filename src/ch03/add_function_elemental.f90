program example_elemental

implicit none

write(*,*) add(3, 5)
write(*,*) add([1, 2], 3)
write(*,*) add(1, [2, 3, 4])
write(*,*) add([1, 2, 3], [2, 3, 4])

! uncomment the line below to trigger compiler error
!write(*,*) add([1, 2], [2, 3, 4])

contains

  pure elemental integer function add(a, b) result(r)
    integer, intent(in) :: a, b
    r = a + b
  end function add

end program example_elemental
