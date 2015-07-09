program simple_pointer

  implicit none

  real, dimension(:,:), allocatable, target :: A
  real, dimension(:,:), pointer :: B
  real, dimension(:,:), pointer :: C
  integer :: i,j,n

  n = 5

  allocate( A(n,n) )

  A = 0.0
  forall( i=1:n) A(i,i) = i

  B => A
  C => A(1:2,1:2)

  do i=1,n
    print *,( B(i,j), j=1,n )
  end do

  print *,shape(B)
  print *,shape(C)

  nullify(B)

  deallocate( A ) 

end program simple_pointer
