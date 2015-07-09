program allocating_pointer

  implicit none

  integer :: i,n
  real, pointer, dimension(:) :: pt1
  real, pointer, dimension(:) :: pt2

  n = 5

  allocate( pt1(n) )

  forall( i=1:n ) pt1(i) = i

  print '(5f5.1)',( pt1(i), i=1,n )

  if( associated(pt2) ) print *,'pt2 is in use'
  pt2 => pt1
  if( associated(pt2) ) print *,'pt2 is in use'

  deallocate( pt1 )

end program allocating_pointer
