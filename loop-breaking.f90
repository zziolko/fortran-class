program loop_breaking

  implicit none

  integer :: i,total
  integer, parameter :: max_value = 50

  total = 0

  do i=1,10

    total = total + 10

    if ( total > max_value ) exit
    print *,i, total

  end do 

  print *,'final total value : ', total

end program loop_breaking
