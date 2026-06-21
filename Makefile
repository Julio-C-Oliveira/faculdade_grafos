CC = gcc
CFLAGS = -Wall -std=c17
TARGET = graph

SOURCES = main.c Base/adjacentListGraph.c Base/adjacentMatrizGraph.c Algoritmos_de_Busca/dfs.c Algoritmos_de_Busca/bfs.c
OBJECTS = main.o Base/adjacentListGraph.o Base/adjacentMatrizGraph.o Algoritmos_de_Busca/dfs.o Algoritmos_de_Busca/bfs.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.c
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
