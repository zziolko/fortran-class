program save_variable

  implicit none

  print *, ' One   : ', CounterFunction()
  print *, ' Two   : ', CounterFunction()
  print *, ' Three : ', CounterFunction()
  print *, ' Four  : ', CounterFunction()

  contains 

  integer function CounterFunction() result(num)

    implicit none

    integer, save :: counter = 0

    counter = counter + 1
    num = counter

  end function CounterFunction

end program save_variable
