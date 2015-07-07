program simple_subroutine

  implicit none
  integer :: i,j

  i = 1
  j = 2

  call print_pair(i,j)

end program simple_subroutine

subroutine print_pair(a,b)

  integer, intent(in) :: a,b

  print *,'Pair of numbers : (',a,',',b,')'

end subroutine print_pair

