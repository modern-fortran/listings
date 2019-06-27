module mod_person
  type :: Person
    character(len=10) :: name
  contains  
    procedure, pass(self) :: greet
  end type Person
contains
  impure elemental subroutine greet(self)
    class(Person), intent(in) :: self
    print *, 'Hello, my name is ' // trim(self % name) // '!'
  end subroutine greet
end module mod_person

program hello_derived_types
  use mod_person, only: Person
  implicit none
  type(Person) :: people(3) = [Person('Jill'), Person('James'), Person('Allison')]
  call people % greet()
end program hello_derived_types
