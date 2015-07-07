program type_convertion

  implicit none

  real :: a, b
  integer :: e, f
  complex :: g, h

  a = 1.0
  b = 2.0

  e = 1
  f = 2

  print *, a, int(a)
  print *, b, dble(b)
  g = cmplx(a,b)
  print *, g

  print *, real(e)
  print *, dble(f) 
  h = cmplx(e,f)
  print *, h


end program type_convertion
