main: libmylib.so
	cc -Wall -o main -L. -lmylib main.c

libmylib.so: mylib.o
	ld --shared -o libmylib.so mylib.o

mylib.o: mylib.c
	cc -Wall -c mylib.c

.PHONY: clean
clean:
	rm -f *.o *.so main

run: main
	LD_LIBRARY_PATH=. ./main

