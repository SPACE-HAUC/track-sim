CXX = g++
COBJS = main.o
CXXFLAGS = -I ./include/ -Wall
TARGET = track.out

all: $(COBJS)
	$(CXX) $(CXXFLAGS) $(COBJS) -o $(TARGET)
	./$(TARGET)

%.o: %.c
	$(CXX) $(CXXFLAGS) -o $@ -c $<

.PHONY: clean

clean:
	$(RM) *.out
	$(RM) *.o
	$(RM) src/*.o