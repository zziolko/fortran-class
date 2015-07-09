program derived_type

  implicit none

  type Matrix

    integer :: num_cols = 0
    integer :: num_rows = 0

    real, dimension(:,:), allocatable :: elements

  end type Matrix

  integer :: n, matrix_size
  integer :: i, j, k
  type(Matrix), dimension(:), allocatable :: A

  n = 4

  allocate( A(n) )

  do i=1, n

    allocate( A(i)%elements(n,n) )

    A(i)%num_cols = i
    A(i)%num_rows = i

    A(i)%elements = real(i)

  end do 

  do i=1, n
    print *,'Element ', i

    do j=1, A(i)%num_rows
      print *,( A(i)%elements(j,k), k=1, A(i)%num_cols) 
    end do

  end do  

  do i=1, n
    deallocate( A(i)%elements )
  end do

  deallocate( A )
  
end program derived_type
