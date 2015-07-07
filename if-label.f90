program if_label

  implicit none

  integer :: val = 3.0

  IfLabel: if (val > 0.0 ) then
    print *, 'Value larger than 0.0'
  end if IfLabel

end program if_label
