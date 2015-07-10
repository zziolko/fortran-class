module sparse_algebra

  use config

  implicit none 

  real :: zero_threshold = 1e-6

  type element
    integer :: x
    integer :: y 
    real(prec) :: val
  end type element

  type sparse_matrix
    integer :: nelements
    type(element), dimension(:), allocatable :: elements
  end type sparse_matrix

  contains

  function dense_to_sparse(A,n) result(B)

    implicit none

    integer, intent(in) :: n
    real(prec), dimension(n,n), intent(in) :: A

    type(sparse_matrix) :: B

    integer :: nonzero = 0
    integer :: counter, i, j

    ! count nonzero values in dense
    do i=1,n
      do j=1,n
        if( abs(A(j,i) ) > zero_threshold ) nonzero = nonzero + 1
      end do
    end do

    ! allocate space for all nonzero elements
    B%nelements = nonzero
    allocate( B%elements(nonzero) )

    ! assign nonzero elements to sparse matrix 
    counter = 0
    do i=1,n
      do j=1,n
        if( abs( A(j,i) ) > zero_threshold ) then
          counter = counter + 1
          B%elements(counter) = element(j,i,A(j,i))
        end if 
      end do
    end do

    if( counter /= nonzero ) stop "Terror error in convertion"

  end function dense_to_sparse

  subroutine print_sparse_matrix(A)

    implicit none

    type(sparse_matrix), intent(in) :: A
    integer :: i

    print *,'Number of elements = ', A%nelements
    do i=1, A%nelements
      print '(2i4,f10.6)',A%elements(i)%x, A%elements(i)%y, A%elements(i)%val
    end do

  end subroutine print_sparse_matrix

  subroutine delete_sparse_matrix(A)
    implicit none
    type(sparse_matrix), intent(inout) :: A
    
    deallocate( A%elements )
  end subroutine delete_sparse_matrix


end module sparse_algebra

