program namelist_input_file

  use iso_fortran_env

  implicit none

  integer :: momentum, nelectrons, charge
  real :: mass

  namelist /molecule/ momentum, mass, nelectrons, charge

  read(INPUT_UNIT, molecule)

  print molecule

end program namelist_input_file
