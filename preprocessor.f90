program preprocessor_example

  implicit none

#ifdef BLOCK_ONE
  print *,'Using block 1'
#else
  print *,'Using default block 2' 
#endif

end program preprocessor_example
