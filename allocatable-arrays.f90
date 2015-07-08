program allocatable_arrays

  implicit none

  real, allocatable, dimension(:) :: vector
  real, allocatable, dimension(:,:) :: matrix 

  integer :: n, MemoryError

  n = 10

  allocate( vector(n), stat=MemoryError )
  if(MemoryError /= 0) stop "Cannot allocate vector"

  allocate( matrix(n,n), stat=MemoryError )
  if(MemoryError /= 0) stop "Cannot allocate matrix"

  vector = 1.0
  matrix = 0.0

  deallocate( vector, stat=MemoryError )
  if(MemoryError /= 0) stop "Cannot deallocate vector"

  deallocate( matrix, stat=MemoryError )
  if(MemoryError /= 0) stop "Cannot deallocate matrix"

end program allocatable_arrays
