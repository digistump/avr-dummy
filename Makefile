ifeq ($(shell uname), Linux)
	EXE_SUFFIX =
	OSFLAG = -D LINUX
else ifeq ($(shell uname), Darwin)
	EXE_SUFFIX =
	OSFLAG = -D MAC_OS
else
	EXE_SUFFIX = .exe
	OSFLAG = -D WIN -static-libstdc++ -static-libgcc
endif


CC=	g++
PROGRAM= avrdude$(EXE_SUFFIX)
SOURCE= avrdude-dummy.cpp
all: $(PROGRAM)

$(PROGRAM): $(SOURCE)
	$(CC) $(OSFLAG) $(SOURCE) -o $(PROGRAM)

clean:
	rm -f $(PROGRAM)