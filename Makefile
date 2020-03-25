.POSIX:

CC ?= cc
CFLAGS ?= -std=c99 -pedantic -Wall -Os
LIBS ?= -lX11
LDFLAGS ?= $(LIBS) -s
PREFIX ?= /usr/local

all: dwmblocks

config.h:
	cp -f config.def.h config.h

dwmblocks: dwmblocks.o
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c config.h
	$(CC) -o $@ -c $<

clean:
	rm -f *.o dwmblocks

install: dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks

.PHONY: all config.h dwmblocks clean install uninstall
