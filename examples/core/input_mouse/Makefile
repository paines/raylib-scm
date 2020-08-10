.PHONY: clean

TARGET = input_mouse

all: $(TARGET).scm
	csc -include-path `chicken-install -repository` ${TARGET}.scm -o ${TARGET}
clean:
	rm -f *~ *.o ${TARGET}

