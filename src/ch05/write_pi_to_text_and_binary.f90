program write_pi

  implicit none
  integer :: fileunit, record_length
  real, parameter :: pi = 4 * atan(1.)

  open(newunit=fileunit, file='pi.txt')
  write(fileunit, *) pi
  close(fileunit)

  record_length = storage_size(pi) / 8
  open(newunit=fileunit, file='pi.dat', access='direct', recl=record_length)
  write(fileunit, rec=1) pi
  close(fileunit)

end program write_pi
