CC=g++
CFLAGS=-I.
DEPS = 
OBJ = main.o 
PREFIX = /usr

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

energy-saver: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(OBJ) energy-saver

.PHONY: install
install: energy-saver
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/energy-saver
