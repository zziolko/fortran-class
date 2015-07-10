program plot

  implicit none

  real, dimension(:), allocatable :: x
  real, dimension(:), allocatable :: fx
  real :: x0, dx
  integer :: i, n

  integer :: data_unit = 100, script_unit = 200
  character(len=30) :: data_file = 'my_data.dat', script_file = 'gnuplot.script', &
          plot_file = 'function_plot.eps'
  character(len=100) :: command  

  n = 1000
  x0 = 0.0
  dx = 0.01

  allocate( x(n), fx(n) )

  forall( i=1:n) 

    x(i) = x0 + i*dx
    fx(i) = sin(x0 + i*dx)

  end forall

  ! create data file
  open(unit=data_unit,file=data_file,status='replace',form='formatted')
  do i=1,n
    write(data_unit,*) x(i),fx(i)
  end do
  close(data_unit)

  ! create gnuplot script
  open(unit=script_unit,file=script_file,status='replace',form='formatted')

  write(script_unit,'(a)')  'set terminal postscript enhanced eps color 14'
  write(script_unit,'(3a)') 'set output "',trim(plot_file),'"'
  write(script_unit,'(3a)') 'plot "',trim(data_file),'" using 1:2'

  close(script_unit)

  write(command,'("gnuplot ",a)') trim(script_file)

  call execute_command_line(command)

  deallocate(x, fx)

end program plot
