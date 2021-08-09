CXX       := g++
CXX_FLAGS := -std=c++17             \
             -pedantic              \
             -Werror                \
             -Wall                  \
             -W                     \
             -Wextra                \
             -Wconversion           \
             -Wcast-qual            \
             -Wwrite-strings        \
             -Wundef                \
             -Wno-unused-parameter

BIN     := bin
SRC     := src
INCLUDE := include
EXECUTABLE  := main


all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	@echo "🚀 Executing..."
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cc
	@echo "🚧 Building..."
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $^ -o $@

clean:
	@echo "🧹 Clearing..."
	-rm $(BIN)/*

