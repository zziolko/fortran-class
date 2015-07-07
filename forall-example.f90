program forall_example

  implicit none

  real, allocatable, dimension(:,:) :: A
  integer :: n

  n = 100
  
  allocate( A(n,n) )

  forall( i=1:n ) A(i,i) = 1.0

  deallocate(A)

end program forall_example
