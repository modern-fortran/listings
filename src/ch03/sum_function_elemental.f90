program example_elemental

implicit none

write(*,*) sum(3, 5)
write(*,*) sum([1, 2], 3)
write(*,*) sum(1, [2, 3, 4])
write(*,*) sum([1, 2, 3], [2, 3, 4])

! uncomment the line below to trigger compiler error
!write(*,*) sum([1, 2], [2, 3, 4])

contains

  pure elemental integer function sum(a, b) result(r)
    integer, intent(in) :: a, b
    r = a + b
  end function sum

end program example_elemental
