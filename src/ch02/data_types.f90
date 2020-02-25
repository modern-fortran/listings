program data_types

! This program prints the maximum values for intrinsic integer data types,
! and minimum and maximum values for intrinsic real data types.

  use iso_fortran_env, only: int8, int16, int32, int64, real32, real64, real128

  implicit none

  integer(int8) :: i8
  integer(int16) :: i16
  integer(int32) :: i32
  integer(int64) :: i64

  real(real32) :: r32
  real(real64) :: r64
  real(real128) :: r128

  print *, 'This program prints the range of standard integer &
            and real kinds available in iso_fortran_env'

  print *, 'Largest int8: ', huge(i8)
  print *, 'Largest int16: ', huge(i16)
  print *, 'Largest int32: ', huge(i32)
  print *, 'Largest int64: ', huge(i64)

  print *, 'Smallest/largest real32: ', tiny(r32), huge(r32)
  print *, 'Smallest/largest real64: ', tiny(r64), huge(r64)
  print *, 'Smallest/largest real128: ', tiny(r128), huge(r128)

end program data_types
