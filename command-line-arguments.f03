program command_line_arguments

  implicit none

  integer :: narg
  integer :: i
  character(len=20) :: argument

  ! Get number of arguments given to the program
  narg = command_argument_count()

  print *,'Number of command line arguments : ', narg

  ! If any arguments present
  if(narg > 0) then

    ! Loop over the arguments, print number and value of the parameter
    do i=1,narg

      call get_command_argument(i,argument)
      print *,i,' -> ',argument
      
    end do

  end if

end program command_line_arguments
