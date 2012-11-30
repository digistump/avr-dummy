EXE_SUFFIX=.exe
CC=				g++
PROGRAM=	avrdude$(EXE_SUFFIX)
SOURCE= avrdude-dummy.cpp
all: $(PROGRAM)

$(PROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o$(PROGRAM)

clean:
	rm -f $(PROGRAM)