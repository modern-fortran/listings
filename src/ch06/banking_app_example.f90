module mod_banking

  implicit none

  type :: datetime
    integer :: year, month, day, hour, minute, second
  end type datetime

  type :: Transaction
    character(:), allocatable :: name
    integer :: id, status
    type(datetime) :: time_created, time_processes
    real :: amount
  end type Transaction

  type :: Account
    character(:), allocatable :: name
    integer :: id, status
    type(datetime) :: time_opened, time_closed
    type(Transaction), allocatable :: transactions(:)
  end type Account

  type :: Customer
    character(:), allocatable :: name
    integer :: id, status
    type(datetime) :: time_created
    type(Account), allocatable :: accounts(:)
  end type Customer

end module mod_banking

program banking_app_example
  use mod_banking
  implicit none
  type(Customer) :: cust
  type(Account), allocatable :: accounts(:)
  allocate(accounts(0))
  cust = Customer('Jill Jones', 1, 0, datetime(2018, 3, 26, 15, 21, 55), accounts)
  print *, 'Customer ' // cust % name // ' joined on ', cust % time_created
end program banking_app_example
