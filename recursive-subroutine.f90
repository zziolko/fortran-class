program recursive_subroutine

  implicit none
  integer :: num

  num = 3

  call Test(num)

end program recursive_subroutine

recursive subroutine Test(n)

  implicit none
  integer, intent(inout) :: n

  if( n > 0 ) then

    print *,n 

    n = n - 1
    call Test(n)

  end if

end subroutine Test
