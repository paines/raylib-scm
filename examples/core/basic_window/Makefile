.PHONY: clean

TARGET = basic_window

all: $(TARGET).scm
	csc -include-path `chicken-install -repository` ${TARGET}.scm -o ${TARGET}
clean:
	rm -f *~ *.o ${TARGET}

