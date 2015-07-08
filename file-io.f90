program file_io

  implicit none

  integer :: i, max_i, io_unit
  character(len=20) :: file_name

  io_unit = 100
  file_name = "TestFile.txt"
  max_i = 10

  open(unit=io_unit, file=file_name, status="new")

  do i=1, max_i
    write(io_unit,*) i, 2*i
  end do

  close(io_unit)

end program file_io
