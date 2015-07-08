program overload_function

  implicit none

  interface add
    real function add_real(x,y) result(val)
      real, intent(in) :: x,y
    end function add_real

    integer function add_integer(x,y) result(val)
      integer, intent(in) :: x,y
    end function add_integer
  end interface add

  integer :: a = 1, b = 2
  real :: c = 1.0, d = 2.0

  print *,'integer : ', add(a,b)
  print *,'real : ', add(c,d)  

end program overload_function

integer function add_integer(x,y) result(val)

  implicit none
  integer, intent(in) :: x,y

  val = x + y

end function add_integer

real function add_real(x,y) result(val)

  implicit none
  real, intent(in) :: x,y

  val = x + y

end function add_real
