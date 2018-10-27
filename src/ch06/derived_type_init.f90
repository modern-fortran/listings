module mod_person
  type :: Person
    character(len=20) :: name
    integer :: age
    character(len=20) :: occupation
  end type Person
end module mod_person

program hello_derived_types
  use mod_person, only: Person
  implicit none
  type(Person) :: some_person
  some_person = Person('Bob', 32, 'Engineer')
  print *, 'Hi, I am ' // trim(some_person % name) // ', a ', &
    some_person % age, 'year old ' // some_person % occupation
end program hello_derived_types
