program function_optional_parameter

  implicit none

  real :: a, x, b

  a = 1.0
  b = 2.0
  x = 1.0

  print *,'Without b : ', linear_function(a,x)
  print *,'With b : ', linear_function(a,x,b)

  contains

  ! y = a*x + b 
  real function linear_function(a,x,b) result(y)

    implicit none

    real, intent(in) :: a
    real, intent(in) :: x
    real, intent(in), optional :: b

    if( present(b) ) then 
      y = a*x + b
    else
      y = a*x
    end if

  end function linear_function

end program function_optional_parameter
