module real_precision

  implicit none

  integer, parameter :: sp = selected_real_kind(6)
  integer, parameter :: dp = selected_real_kind(15)

end module real_precision

program real_numbers

  use real_precision

  implicit none

  real(sp) :: a = 1.0_sp
  real(dp) :: b = 1.0_dp

  print *,a
  print *,b

end program real_numbers
