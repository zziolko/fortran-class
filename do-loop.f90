program do_loop

  implicit none
  
  integer :: i, max_i, i_step

  max_i = 10
  i_step = 2

  do i=1, max_i, i_step
    print *,i
  end do 


end program do_loop


