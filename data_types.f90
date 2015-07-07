program data_types

  implicit none

  logical   :: a
  integer   :: b
  real      :: c
  character :: d
  complex   :: e

  print *,'Before assignement'
  print *,'logical   : ',a
  print *,'integer   : ',b
  print *,'real      : ',c
  print *,'character : ',d
  print *,'complex   : ',e

  a = .false.
  b = 1
  c = 3.14
  d = 'a'
  e = (1.0,0.0)

  print *,'After assignement'
  print *,'logical   : ',a
  print *,'integer   : ',b
  print *,'real      : ',c
  print *,'character : ',d
  print *,'complex   : ',e

end program data_types
