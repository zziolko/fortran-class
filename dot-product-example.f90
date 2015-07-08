program dot_product_example

  implicit none

  real, allocatable, dimension(:) :: a, b
  real :: total
  integer :: n

  n = 10
  allocate( a(n), b(n) )

  a = 1.0
  b = 1.0

  total = dot_product(a,b)

  ! total should be 10
  print *,'Total (should be : ',n,' ) is : ', total

  deallocate(a,b)

end program dot_product_example
