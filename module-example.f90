module square_matrix_operations

  implicit none

  contains

    subroutine set_to(A,n, val)
      implicit none
      integer, intent(in) :: n
      real, dimension(n,n), intent(inout) :: A
      real, intent(in) :: val
      A = val 
    end subroutine set_to

    subroutine print_matrix(A,n)
      implicit none
      integer, intent(in) :: n
      real, dimension(n,n), intent(in) :: A
      integer :: i, j
      
      do i=1, n
        print *,( A(i,j), j=1,n)
      end do
    end subroutine print_matrix
    
end module square_matrix_operations

program module_example

  use square_matrix_operations

  implicit none

  integer :: n
  real, dimension(:,:), allocatable :: A

  n = 5
  allocate( A(n,n) )
  
  call set_to(A,n,1.0)
  call print_matrix(A,n)
  
  deallocate( A )

end program module_example
