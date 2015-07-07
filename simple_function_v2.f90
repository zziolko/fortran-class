program simple_function

  implicit none

  integer :: val = -4
  logical :: res = .true.

  logical, external :: sign_test

  res = sign_test(val)

  print *,'Is the value positive ? : ', res
  
end program simple_function

logical function sign_test(input) result(output)
                                                
  integer :: input

  if( input >= 0 ) then
    output = .true.
  else 
    output = .false.
  endif

end function sign_test

