FC=gfortran-mp-4.9
FCFLAGS=-O2 -Wall
LIBS=
PROGRAM=sparse.x

SRC=config.o \
		sparse-algebra.o \
		sparse-example.o \

all: $(SRC)  
	$(FC) $(FCFLAGS) $(SRC) $(LIBS) -o $(PROGRAM)

	
%.o: %.f90  
	$(FC) $(FCFLAGS) -c $<

clean:  
	rm -r *.o *.mod $(PROGRAM)
