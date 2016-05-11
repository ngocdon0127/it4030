=====
# Bài tập lớn Lập trình song song

Integrate parallel computing in merge sort algorithm

=====

## Install MPI
	$ sudo apt-get install libcr-dev mpich2 mpich2-doc
## Input
### Input in file: [input-merge-sort.txt](https://github.com/ngocdon0127/it4030/blob/master/input-merge-sort.txt)
- The first line contains a number n - number of integer elements in array
- The next n lines, each line contains 1 array elements
### Generete input
You can generate an array with 10000 random integer elements by running:

	$ g++ -o generate-array generate-array.cpp && ./generate-array 10000
## Run
Run in single core

    $ make cpp PROG=merge-sort
Run merge sort in 4 cores

    $ make mpi PROG=merge-sort NP=4

`` The number of cores must be a powers of 2. Such as 2, 4, 8, 16, 32, ...``

## Output
By changing OUTPUT constant from 0 to 1, you can write sorted array to file.
The name of output file is declared in [mpi-merge-sort.cpp](https://github.com/ngocdon0127/it4030/blob/master/mpi-merge-sort.cpp#L16)
