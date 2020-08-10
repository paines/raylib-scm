.PHONY: clean

TARGET = input_keys

all: $(TARGET).scm
	csc -include-path `chicken-install -repository` ${TARGET}.scm -o ${TARGET}
clean:
	rm -f *~ *.o ${TARGET}

