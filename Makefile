CC=gcc
CFLAGS=-Wall -g -pthread -lm -Ilib/
LIBS=lib/get_num.c lib/error_functions.c

PROG=write_bytes

.PHONY: all
all: $(PROG)

%: %.c $(LIBS)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(PROG)
