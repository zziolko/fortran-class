program subroutine_example

  implicit none

  real, allocatable, dimension(:,:) :: A
  integer :: n

  n = 3

  call PrintInfo()

  allocate( A(n,n) )

  call UnitMatrix(A,n) 
  call PrintMatrix(A,n)

  deallocate(A) 

end program subroutine_example

! Print info
subroutine PrintInfo

  print *,' Example subroutine which only offloads some part of code '

end subroutine PrintInfo

! Sets matrix A to a unit matrix 
subroutine UnitMatrix(matrix,n)

  implicit none
  integer, intent(in) :: n
  real, dimension(n,n), intent(out) :: matrix 
  integer :: i

  matrix = 0.0

  forall( i=1:n ) matrix(i,i) = 1.0

end subroutine UnitMatrix

! Print matrix in human readable format
subroutine PrintMatrix(matrix,n)

  implicit none
  integer :: n
  real, dimension(n,n), intent(in) :: matrix
  integer :: i, j

  do i=1,n
    print *,( matrix(i,j), j=1,n )
  end do

end subroutine PrintMatrix
