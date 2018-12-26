module mod_person

  implicit none

  type :: Person
    character(len=20) :: name
    integer :: age
    character(len=20) :: occupation
    character(len=20) :: greeting_message
  end type Person

  interface Person
    module procedure :: person_constructor
  end interface Person

contains

  pure type(Person) function person_constructor(name, age, occupation) result(res)
    character(len=*), intent(in) :: name
    integer, intent(in) :: age
    character(len=*), intent(in) :: occupation
    res % name = name
    res % age = age
    res % occupation = occupation
    if (occupation == 'Pirate') then
      res % greeting_message = 'Ahoy, matey!'
    else
      res % greeting_message = 'Hi, there.'
    end if
  end function person_constructor

end module mod_person

program derived_type_constructor
  use mod_person, only: Person
  implicit none
  type(Person) :: some_person
  some_person = Person('Bob', 32, 'Engineer')
  print *, trim(some_person % name) // &
    ' says ' // trim(some_person % greeting_message)
  some_person = Person('Davey', 44, 'Pirate')
  print *, trim(some_person % name) // &
    ' says ' // trim(some_person % greeting_message)
end program derived_type_constructor
