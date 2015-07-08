program string_io

  use iso_fortran_env

  implicit none

  character(len=50) :: string
  integer :: num

  num = 1

  write(string,'("matrix_",i3.3,".data")') num

  write(OUTPUT_UNIT, '(a)') string

end program string_io
