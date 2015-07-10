FC=gfortran-mp-4.9
FCFLAGS=

CC=gcc-mp-4.9
CFLAGS=

LIBS=
PROGRAM=example.x

F_SRC=example.o 
C_SRC=function.o

all: $(F_SRC) $(C_SRC)  
	$(FC) $(FCFLAGS) $(F_SRC) $(C_SRC) $(LIBS) -o $(PROGRAM)

	
%.o: %.f90  
	$(FC) $(FCFLAGS) -c $<

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:  
	rm -r *.o *.mod $(PROGRAM)
