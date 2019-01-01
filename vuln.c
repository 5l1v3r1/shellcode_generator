#include <stdio.h>
#include <unistd.h>

int vuln() {
    char buf[80];
    int r;
    r = read(0, buf, 400);
    printf("\nMembaca %d bytes. isinya adalah %s\n", r, buf);
    puts("Semuanya oke!");
    return 0;
}

int main(int argc, char *argv[]) {
    setuid(0);
    setgid(0);
    printf("Welcome to my simple program");
    vuln();
    return 0;
}
