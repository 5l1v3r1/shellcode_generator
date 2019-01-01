all:
	cc s-proc.c -o s-proc
	nasm -f macho64 example.s
	ld -macosx_version_min 10.7.0 -lSystem -o example example.o
	cc -fno-stack-protector vuln.c -o vuln
	cc getenvaddr.c -o getenvaddr

install:
	cp s-proc /usr/local/bin

clean:
	rm -rf s-proc example *.o
