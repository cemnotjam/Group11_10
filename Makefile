CXX      := clang++
CXXFLAGS := -std=c++17 -Wall -Wextra -Wpedantic -Iinclude -Ilibs -g

APP      := app

# App sources
APP_SRC := src/main.cpp \
           src/data_structures/Graph.cpp \
           src/data_structures/PriorityQueue.cpp\
		   src/core/Loader.cpp


# Test sources (start with one; you can add more later)
TEST_SP_BIN := tests_sp
TEST_SP_SRC := tests/unit/test_shortest_path.cpp \
               src/data_structures/Graph.cpp \
               src/data_structures/PriorityQueue.cpp

TEST_GRAPH_BIN := tests_graph
TEST_PQ_BIN    := tests_pq

TEST_GRAPH_SRC := tests/unit/test_graph.cpp \
                  src/data_structures/Graph.cpp \
                  src/data_structures/PriorityQueue.cpp

TEST_PQ_SRC    := tests/unit/test_priority_queue.cpp src/data_structures/PriorityQueue.cpp



.PHONY: deps all run test clean

all: $(APP)

deps:
	@echo "No external deps yet."

$(APP): $(APP_SRC)
	$(CXX) $(CXXFLAGS) $(APP_SRC) -o $(APP)


run: $(APP)
	./$(APP) data/input_default.json

# Build the test executable
test: test_graph test_pq test_sp

$(TEST_GRAPH_BIN): $(TEST_GRAPH_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_GRAPH_SRC) -o $(TEST_GRAPH_BIN)

test_graph: $(TEST_GRAPH_BIN)
	./$(TEST_GRAPH_BIN)

$(TEST_PQ_BIN): $(TEST_PQ_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_PQ_SRC) -o $(TEST_PQ_BIN)

test_pq: $(TEST_PQ_BIN)
	./$(TEST_PQ_BIN)
	
$(TEST_SP_BIN): $(TEST_SP_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SP_SRC) -o $(TEST_SP_BIN)

test_sp: $(TEST_SP_BIN)
	./$(TEST_SP_BIN)


clean:
	rm -f $(APP) $(TEST_GRAPH_BIN) $(TEST_PQ_BIN) $(TEST_SP_BIN)
