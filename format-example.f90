program format_example

  use iso_fortran_env

  integer none

  integer :: int1, int2, int3
  real :: var1, var2, var3
  character(len=10) :: string1, string2
  
  string1 = 'String1'
  string2 = 'String2'

  int1 = 123
  int2 = 1234
  int3 = 12345

  var1 = 3.1415
  var2 = 123.456789
  var3 = 0.0345678

  write(OUTPUT_UNIT, '(2a10)') string1, string2
  write(OUTPUT_UNIT, '(2a8,f16.4,2i10)') string1, string2, var1, int1, int2

  write(OUTPUT_UNIT, '(a8,f6.4,i5)') string1, var1, int1
  write(OUTPUT_UNIT, '(2e12.4)') var1, var2

  write(OUTPUT_UNIT, '(4(a7,3x))') string1, string2, string1, string2

end program format_example
