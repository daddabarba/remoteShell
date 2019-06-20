CC=gcc
DEPS = CommandList.h Process.h Program.h Parsing.h prompt.h builtInCommand.h
OBJ = main.o CommandList.o Process.o Program.o Parsing.o prompt.o builtInCommand.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

shell: $(OBJ)
	$(CC) -o $@ $^
