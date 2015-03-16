all:
	gcc -fPIC -c A.c -o A.o
	gcc -fPIC -c B.c -o B.o
	gcc -fPIC -c main.c -o main.o
	gcc -shared -o libMyExpA.so A.o
	gcc B.o -shared -L . -lMyExpA -o libMyExpB.so
	gcc -o main main.o -L . -lMyExpB
clean:
	rm -f *.o
	rm -f *.so
	rm -f main
