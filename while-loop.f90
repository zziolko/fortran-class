program while_loop

  implicit none

  integer :: input, idx, factorial

  input = 5
  idx = input

  factorial = 1
  do while ( idx > 0 )

    factorial = factorial * idx
    print *, idx, factorial

    idx = idx - 1

  end do 

  print *,'Value of factorial ', input, '! = ', factorial

end program while_loop
