program matmul_example

  implicit none

  real, allocatable, dimension(:,:) :: A, B, C
  integer :: n
  integer :: i, j

  n = 3

  allocate( A(n,n), B(n,n), C(n,n) )

  ! Make A and B unit matrices
  A = 0.0
  B = 0.0

  do i=1,n
    A(i,i) = 1.0
    B(i,i) = 1.0
  end do

  ! Make C a zero matrix
  C = 0.0

  ! Multiply C = A * B, C should be a unit matrix now
  C = matmul(A,B)

  do i=1,n
      print *, ( C(i,j), j=1,n )
  end do

  deallocate(A,B,C)

end program matmul_example
