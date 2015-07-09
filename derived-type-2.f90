module algebra

  implicit none

  type Matrix

    integer :: num_cols = 0
    integer :: num_rows = 0

    real, dimension(:,:), allocatable :: elements

    contains

      procedure :: create => create_matrix
      procedure :: delete => delete_matrix
      procedure :: print => print_matrix

  end type Matrix

  contains 

    subroutine create_matrix(A,nrow,ncol)

      implicit none
      class(Matrix), intent(inout) :: A
      integer, intent(in) :: nrow, ncol

      A%num_cols = ncol
      A%num_rows = nrow

      allocate( A%elements(nrow,ncol) )
      A%elements = 0.0

    end subroutine create_matrix

    subroutine delete_matrix(A)

      implicit none
      class(Matrix), intent(inout) :: A
      
      A%num_cols = 0      
      A%num_rows = 0
      deallocate( A%elements )
      
    end subroutine delete_matrix

    subroutine print_matrix(A)

      class(Matrix), intent(in) :: A
      integer :: i, j

      do i=1, A%num_rows
        print *,( A%elements(i,j), j=1, A%num_cols )
      end do 

    end subroutine print_matrix

end module algebra

program derived_type

  use algebra

  integer :: n
  integer :: i, j

  type(Matrix) :: A, B

  n = 4

  call A%create(n,n)
  call A%print
  call A%delete

end program derived_type

