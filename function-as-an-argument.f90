program function_as_an_argument

  implicit none
  
  print *, 'Linear function'
  call EvaluateRange(-1.0,1.0,0.2,LinearFunction) 

  print *, 'Quadratic function'
  call EvaluateRange(-1.0,1.0,0.2,QuadraticFunction)

  contains 

  ! y = a * x
  real function LinearFunction(a,x) result(y)

    implicit none
    real, intent(in) :: a, x

    y = a * x

  end function LinearFunction

  ! y = a * x^2
  real function QuadraticFunction(a,x) result(y)

    implicit none
    real, intent(in) :: a, x

    y = a * x**2

  end function QuadraticFunction

  ! Evaluate function `func` on grid [x0,x1] with step dx
  subroutine EvaluateRange(x0, x1, dx, my_func)

    implicit none
    real,intent(in) :: x0, x1, dx
    real :: a, x

    interface
      real function my_func(a,x)
        real, intent(in) :: a, x
      end function my_func
    end interface

    a = 1.0

    x = x0
    do while (x <= x1)
      print *,x, my_func(a,x)
      x = x + dx
    end do

  end subroutine EvaluateRange

end program function_as_an_argument
