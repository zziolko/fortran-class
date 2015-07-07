program loop_label

  implicit none

  integer :: i, max_i

  max_i = 3

  SimpleLoop: do i=1, max_i

    print *, i

  end do SimpleLoop

end program loop_label
