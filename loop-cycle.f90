program loop_cycle

  implicit none

  integer :: i

  do i=1,10

    if ( i == 5 ) cycle
    print *,i

  end do 

end program loop_cycle
