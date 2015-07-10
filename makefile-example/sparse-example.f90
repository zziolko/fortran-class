program sparse

  use config
  use sparse_algebra
  
  implicit none
  real(prec), allocatable, dimension(:,:) :: A
  type(sparse_matrix) :: B
  integer :: n = 5 
  integer :: i,j

  allocate( A(n,n) )
  A = 0.0
  forall ( i=1:n ) A(i,i) = real(i)

  print *,'Dense matrix'
  do i=1,n
    print *,( A(i,j), j=1,n )
  end do
  
  B = dense_to_sparse(A,n)

  print *,'Sparse matrix'
  call print_sparse_matrix(B)

  deallocate(A)
  call delete_sparse_matrix(B)

end program sparse


