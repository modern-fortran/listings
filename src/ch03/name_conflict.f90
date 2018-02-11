module foo
  integer :: bar = 3
end module foo

module qux
  integer :: bar = 5
end module qux

program name_conflict

  use foo
  use qux
 
  write(*,*) bar

end program name_conflict
