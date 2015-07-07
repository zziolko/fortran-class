program case_condition

  implicit none

  integer :: val 

  val = 10

  select case (val)
    case (1) 
      print *, 'One', val
    case (2)
      print *, 'Two', val
    case (3) 
      print *, 'Three', val
    case default 
      print *, 'Value different than 1,2,3 : ', val
  end select 

end program case_condition
