program optional_arguments
  ! Example of optional arguments.
  ! Listing 3.21 in the book.
  implicit none 

  integer :: res

  call add(3, 5, res)
  call add(3, 5, res, .true.)
  call add(3, 5, res, debug=.true.)

contains

  subroutine add(a, b, res, debug)
    integer, intent(in) :: a, b
    integer, intent(out) :: res
    logical, intent(in), optional :: debug

    if (present(debug)) then
      if (debug) then
        print *, 'DEBUG: subroutine add, a = ', a
        print *, 'DEBUG: subroutine add, b = ', b
      end if
    end if

    res = a + b
    if (present(debug)) then
      if (debug) print *, 'DEBUG: subroutine add, res = ', res
    end if

  end subroutine add

end program optional_arguments
