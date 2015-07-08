program subroutine_argument

  implicit none

  integer :: n
  real, allocatable, dimension(:,:) :: matrix

  external :: zero_matrix, unit_matrix

  n = 3
  allocate( matrix(n,n) )

  print *, 'Zero matrix'
  call initialize_matrix(matrix,n,zero_matrix)

  print *, 'Unit matrix'
  call initialize_matrix(matrix,n,unit_matrix)

  deallocate( matrix )

end program subroutine_argument

subroutine initialize_matrix(A,n,matrix_init)

  implicit none
  integer, intent(in) :: n
  real, dimension(n,n), intent(inout) :: A

  integer :: i,j

  interface
    subroutine matrix_init(matrix,ndim)
      implicit none
      integer, intent(in) :: ndim
      real, dimension(ndim,ndim), intent(inout) :: matrix
    end subroutine matrix_init
  end interface

  call matrix_init(A,n)

  do i=1, n
    print *,( A(i,j), j=1,n )
  end do

end subroutine initialize_matrix

subroutine zero_matrix(A,n)

  implicit none
  integer, intent(in) :: n
  real, dimension(n,n), intent(inout) :: A

  A = 0.0

end subroutine zero_matrix

subroutine unit_matrix(A,n)

  implicit none
  integer, intent(in) :: n
  real, dimension(n,n), intent(inout) :: A
  integer :: i

  A = 0.0
  forall( i=1:n ) A(i,i) = 1.0

end subroutine unit_matrix

