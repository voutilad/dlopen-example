main: main.o libmylib.so
	cc -o main -L. -lmylib main.c

libmylib.so: mylib.o
	ld --shared -o libmylib.so mylib.o

mylib.o: mylib.c
	cc -c mylib.c

.PHONY: clean
clean:
	rm -v *.o *.so main

run: main
	LD_LIBRARY_PATH=. ./main

