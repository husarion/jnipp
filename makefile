CC=g++
CXXFLAGS=-I. -I$(JAVA_HOME)/include -I$(JAVA_HOME)/include/linux -ldl -std=c++11
SRC=jnipp.o main.o
VPATH=tests

%.o: %.cpp
	$(CC) -c -o $@ $< $(CXXFLAGS)

test: $(SRC)
	$(CC) -o test $(SRC) $(CXXFLAGS)

