program cpu_time_example

  use iso_fortran_env

  implicit none
  real :: start_time, end_time
  integer :: i, i_max, val
  
  i_max = 1000000000 

  call cpu_time(start_time)
  do i=1, i_max
    val = i**2  
  end do

  call cpu_time(end_time)
  write(output_unit,'(a,f20.3,a)') 'Total CPU  time :  ',end_time-start_time,' s'

end program cpu_time_example
