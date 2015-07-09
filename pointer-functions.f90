program pointer_functions

  implicit none

  integer, parameter :: n = 5
  real, dimension(n,n), target :: A

  real, dimension(:,:), pointer :: pt

  A = 1.0
  
  if( associated(pt) ) print *,'Pointer pt is in use'

  pt => A
  
  if( associated(pt) ) print *,'Pointer pt is in use'
  if( associated(pt, target=A) ) print *,'pt in use and points to A'

  nullify( pt )

end program pointer_functions
