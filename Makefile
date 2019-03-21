CC = as
LINKER = ld

CFLAGS = -Wall -g -m32

SRC = run_func
EXT = .s

all: $(SRC)
	$(CC) $(CFLAGS) $(SRC)$(EXT) -o $(SRC).o
	$(LINKER) $(SRC).o -o out.exe
	
.PHONY: clean
clean:
	rm -f *.exe *.o

