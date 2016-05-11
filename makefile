all:
	g++ -o $(PROG) $(PROG).cpp
	./$(PROG)
	g++ -fopenmp -o omp-$(PROG) omp-$(PROG).cpp
	./omp-$(PROG)
	mpic++ mpi-$(PROG).cpp -o mpi-$(PROG)
	mpirun -np $(NP) ./mpi-$(PROG)
run-all:
	./$(PROG)
	./omp-$(PROG)
	mpirun -np $(NP) ./mpi-$(PROG)

mpi:
	mpic++ mpi-$(PROG).cpp -o mpi-$(PROG)
	mpirun -np $(NP) ./mpi-$(PROG)
run-mpi:
	mpirun -np $(NP) ./mpi-$(PROG)

omp:
	g++ -fopenmp -o omp-$(PROG) omp-$(PROG).cpp
	./omp-$(PROG)
run-omp:
	./omp-$(PROG)

cpp:
	g++ -o $(PROG) $(PROG).cpp
	./$(PROG)
run-cpp:
	./$(PROG)

rm:
	rm *.o
