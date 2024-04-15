CXX=g++
CXXFLAGS=-std=c++11 -Wall

OBJS=main.o Parser.o Solver.o
EXEC=graph_coloring

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

main.o: main.cpp Graph.h
	$(CXX) $(CXXFLAGS) -c main.cpp

Parser.o: Parser.cpp Graph.h
	$(CXX) $(CXXFLAGS) -c Parser.cpp

Solver.o: Solver.cpp Graph.h
	$(CXX) $(CXXFLAGS) -c Solver.cpp

clean:
	rm -f $(OBJS) $(EXEC)

rebuild: clean all
