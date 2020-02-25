subroutine add(a, b, res)
  ! Example Fortran subroutine.
  ! Listing 3.13 in the book.
  integer, intent(in) :: a, b
  integer, intent(out) :: res
  res = a + b
end subroutine add
