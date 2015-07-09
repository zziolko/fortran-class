program derived_type

  implicit none

  type Matrix

    integer :: num_cols = 0
    integer :: num_rows = 0

    real, dimension(:,:), allocatable :: elements

  end type Matrix

  integer :: n
  integer :: i, j
  type(Matrix) :: A, B

  n = 4

  A%num_cols = n
  A%num_rows = n
  allocate( A%elements(n,n) )

  A%elements = 1.0

  do i=1, n
   print *,( A%elements(i,j), j=1, n) 
  end do

  deallocate( A%elements )

end program derived_type
