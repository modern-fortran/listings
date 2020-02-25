integer function sum(a, b) result(res)
  ! Version 3 of the example sum function.
  ! Listing 3.6 in the book.
  integer, intent(in) :: a, b
  res = a + b
end function sum
