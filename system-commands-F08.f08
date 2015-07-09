program system_command

  implicit none

  integer :: error

  call execute_command_line ("ls -l", exitstat=error)

end program system_command

