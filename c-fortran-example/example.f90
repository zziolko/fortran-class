program c_function_call

  use iso_c_binding

  implicit none

  integer(c_int) :: a,b,c
  integer(c_int) :: d

  interface
    integer(c_int) function triplet(a,b,c) bind(c,name='C_name')
      use iso_c_binding
      implicit none
      integer(c_int), value :: a,b,c
    end function triplet
  end interface

  a = 1
  b = 2
  c = 3

  d = triplet(a,b,c)

  print *,'d = ', d

end program c_function_call


