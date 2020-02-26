program example_elemental
  ! Example of calling an elemental function 
  ! with scalars or arrays as arguments.
  ! Listing 3.20 in the book.
  implicit none

  print *, sum(3, 5)
  print *, sum([1, 2], 3)
  print *, sum(1, [2, 3, 4])
  print *, sum([1, 2, 3], [2, 3, 4])

  ! uncomment the line below to trigger compiler error
  ! print *, sum([1, 2], [2, 3, 4])

contains

  pure elemental integer function sum(a, b) result(r)
    integer, intent(in) :: a, b
    r = a + b
  end function sum

end program example_elemental
