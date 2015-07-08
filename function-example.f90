function SimpleFunction(n) result(total)

  implicit none

  integer, intent(in) :: n
  integer :: total

  total = 2 * n

end function SimpleFunction

program function_example

  implicit none

  integer :: input, output
  integer, external :: SimpleFunction

  input = 3

  output = SimpleFunction(input)

  print *,'Result = ', output

end program function_example
