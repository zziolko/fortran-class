program wall_time 

  use iso_fortran_env

  implicit none
  integer :: start_time, end_time, count_rate
  integer :: i, i_max, val
  
  i_max = 1000000000 

  call system_clock(start_time, count_rate)
  do i=1, i_max
    val = i**2  
  end do

  call system_clock(end_time)
  write(output_unit,'(a,f20.3,a)') 'Total Wall time :  ',dble(end_time-start_time)/dble(count_rate),' s'

end program wall_time 
