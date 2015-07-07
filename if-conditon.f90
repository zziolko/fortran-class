program if_condition

  implicit none

  real :: val

  call random_number(val)

  if (val > 0.5 ) then
    print *, 'Value larger than 0.5 : ', val
  else
    print *, 'Value smaller than 0.5 : ', val
  end if

end program if_condition
