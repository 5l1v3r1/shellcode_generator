all:
	cc s-proc.c -o s-proc
	nasm -f macho64 example.s
	ld -macosx_version_min 10.7.0 -lSystem -o example example.o

install:
	cp s-proc /usr/local/bin

clean:
	rm -rf s-proc example *.o
