program file_format

  implicit none

  integer :: io_unit = 100
  integer :: i, max_i = 10

  character(len=20) :: file_name

  file_name = 'File1.txt'

  ! Text file 
  open( unit=io_unit, file=file_name, status='new', form='formatted', &
    access='sequential')

  do i=1, max_i
    write(io_unit,'(i4)') i
  end do

  close( io_unit )

  ! Binary file
  file_name = 'File2.txt'

  open( unit=io_unit, file=file_name, status='new', form='unformatted', &
    access='sequential')

  do i=1, max_i
    write(io_unit) i
  end do

  close( io_unit )

end program file_format
