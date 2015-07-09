program date_time

  use iso_fortran_env

  integer, dimension(8) :: time_values
               
  call date_and_time(VALUES=time_values)

  write(output_unit, '(a,3x,i4)') '        Year : ', time_values(1)
  write(output_unit, '(a,3x,i4)') '       Month : ', time_values(2)
  write(output_unit, '(a,3x,i4)') '         Day : ', time_values(3)
  write(output_unit, '(a,3x,i4,3x,a,3x,i4,a)') &
                                  '    UTC diff : ', time_values(4), '-> ', time_values(4)/60,' hours '
  write(output_unit, '(a,3x,i4)') '        Hour : ', time_values(5)
  write(output_unit, '(a,3x,i4)') '     Minutes : ', time_values(6)
  write(output_unit, '(a,3x,i4)') '     Seconds : ', time_values(7)
  write(output_unit, '(a,3x,i4)') ' Miliseconds : ', time_values(8)


  write(output_unit, '(2(a,i2.2),a,i4.4,3(a,i2.2))') &
     'Program finished   : Date: ',time_values(3),'/',time_values(2),'/',time_values(1), &
                       '   Time: ',time_values(5),':',time_values(6),':',time_values(7)

end program date_time
