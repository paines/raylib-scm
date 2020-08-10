.PHONY: clean

TARGET = drop_files

all: $(TARGET).scm
	csc -include-path `chicken-install -repository` ${TARGET}.scm -o ${TARGET}
clean:
	rm -f *~ *.o ${TARGET}

