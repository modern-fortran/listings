program array_copy_mpi
use mpi

implicit none

integer :: ierr, nproc, procsize, request
integer, dimension(mpi_status_size) :: stat

integer, dimension(5) :: array

call mpi_init(ierr)
call mpi_comm_rank(mpi_comm_world, nproc, ierr)
call mpi_comm_size(mpi_comm_world, procsize, ierr)

if (procsize /= 2) then
  call mpi_finalize(ierr)
  error stop 'Error: This program must be run on 2 parallel processes'
end if

if (nproc == 0) then
  array = [1, 2, 3, 4, 5]
else
  array = 0
end if

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', nproc,&
  ' before copy:', array

call mpi_barrier(mpi_comm_world, ierr)

if (nproc == 0) then
  call mpi_isend(array, size(array), mpi_int, 1, 1,&
                 mpi_comm_world, request, ierr)
else if (nproc == 1) then
  call mpi_irecv(array, size(array), mpi_int, 0, 1,&
                 mpi_comm_world, request, ierr)
  call mpi_wait(request, stat, ierr)
end if

write(*,'(a,i2,a,5(4x,i2))')'array on proc ', nproc,&
  ' after copy: ', array

call mpi_finalize(ierr)

end program array_copy_mpi
