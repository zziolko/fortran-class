program overload_subroutine

  implicit none

  interface print_matrix
    subroutine print_matrix_real(A,n)
      integer, intent(in) :: n
      real, dimension(n,n), intent(in) :: A
    end subroutine print_matrix_real

    subroutine print_matrix_integer(A,n)
      integer, intent(in) :: n
      integer, dimension(n,n), intent(in) :: A
    end subroutine print_matrix_integer
  end interface print_matrix

  integer :: n = 4
  real, allocatable, dimension(:,:) :: A
  integer, allocatable, dimension(:,:) :: B
  integer :: i

  allocate( A(n,n), B(n,n) )

  A = 0.0
  B = 0

  forall( i=1:n ) 
    A(i,i) = 1.0
    B(i,i) = 1
  end forall

  print *,'real matrix'
  call print_matrix(A,n)
  print *,'integer matrix'
  call print_matrix(B,n)

  deallocate( A, B )

end program overload_subroutine

subroutine print_matrix_real(A,n)
  implicit none
  integer, intent(in) :: n
  real, dimension(n,n), intent(in) :: A
  integer :: i,j

  do i=1, n
    print *,( A(i,j), j=1,n )
  end do 
end subroutine print_matrix_real

subroutine print_matrix_integer(A,n)
  implicit none
  integer, intent(in) :: n
  integer, dimension(n,n), intent(in) :: A
  integer :: i,j

  do i=1, n
    print *,( A(i,j), j=1,n )
  end do 
end subroutine print_matrix_integer
