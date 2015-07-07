program value_if_condition

  implicit none

  integer :: a, b, c

  a = -1
  b = 0
  c = 1

  call value_check(a)
  call value_check(b)
  call value_check(c)

end program value_if_condition

subroutine value_check(val)

  implicit none
  integer, intent(in) :: val

  if( val ) 10, 20, 30

10 print *, 'Value < 0'
   goto 100

20 print *, 'Value = 0'
   goto 100

30 print *, 'Value > 0'
   goto 100

100 print *, 'Done'  
    continue 

end subroutine value_check
