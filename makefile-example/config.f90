module config

  use iso_fortran_env

  implicit none

  integer, parameter :: sp = REAL32
  integer, parameter :: dp = REAL64
  integer, parameter :: qp = REAL128

  integer, parameter :: prec = qp

end module config
