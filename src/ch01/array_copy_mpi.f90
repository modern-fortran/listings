program array_copy_mpi
  ! Example of sending/receiving an array of integers using MPI.
  ! Listing 1.2 in the book.
  use mpi
  implicit none

  integer :: ierr, nproc, procsize, request
  integer :: stat(mpi_status_size)

  integer :: array(5) = 0
  integer, parameter :: sender = 0, receiver = 1

  call mpi_init(ierr)
  call mpi_comm_rank(mpi_comm_world, nproc, ierr)
  call mpi_comm_size(mpi_comm_world, procsize, ierr)

  if (procsize /= 2) then
    call mpi_finalize(ierr)
    error stop 'Error: This program must be run on 2 parallel processes'
  end if

  if (nproc == sender) array = [1, 2, 3, 4, 5]

  print '(a,i2,a,5(4x,i2))', 'array on proc ', nproc, ' before copy:', array

  call mpi_barrier(mpi_comm_world, ierr)

  if (nproc == sender) then
    call mpi_isend(array, size(array), mpi_int, receiver, 1, &
                   mpi_comm_world, request, ierr)
  else if (nproc == receiver) then
    call mpi_irecv(array, size(array), mpi_int, sender, 1, &
                   mpi_comm_world, request, ierr)
    call mpi_wait(request, stat, ierr)
  end if

  print '(a,i2,a,5(4x,i2))', 'array on proc ', nproc, ' after copy: ', array

  call mpi_finalize(ierr)

end program array_copy_mpi
