program simple_array

  implicit none

  integer, parameter :: n = 3

  real, dimension(n) :: vector
  real, dimension(n,n) :: matrix

  vector = 0.0
  print *, vector

  matrix = 1.0 
  print *, matrix

end program simple_array
