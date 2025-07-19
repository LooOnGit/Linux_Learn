all:
	gcc -o exam hello.c main.c -I .

clean:
	rm -f exam 