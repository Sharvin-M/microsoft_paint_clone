# OS X
ifeq "$(OSTYPE)" "darwin"
LDFLAGS = -framework Carbon -framework OpenGL -framework GLUT
CFLAGS += -D__APPLE__ -Wno-deprecated-declarations # Suppress deprecated warnings on macOS
endif
main: main.c
        gcc $(CFLAGS) -o $(TARGET) main.c $(LDFLAGS)
clean:
        rm -f $(TARGET)
