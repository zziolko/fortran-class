program enviroment

  implicit none
  character(len=100) :: val

  call get_environment_variable('HOME',val)
  print *,'HOME -> ',trim(val)

  call get_environment_variable('USER',val)
  print *,'USER -> ',trim(val)

  call get_environment_variable('SHELL',val)
  print *,'SHELL -> ',trim(val)

  call get_environment_variable('LANG',val)
  print *,'LANG -> ',trim(val)

end program enviroment
