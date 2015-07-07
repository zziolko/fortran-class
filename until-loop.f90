program until_loop

  implicit none

  integer :: i

  i = 0
  do 
    print *,i
    i = i + 1
    if ( .not.(i < 10) ) exit
  end do


end program until_loop
