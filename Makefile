COMPILER=g++
OPTIONS=-Wall

# Default Target
all:
	$(COMPILER) $(OPTIONS) driver.cpp hello.cpp

# Only compile hello.cpp, creating its object file.
hello:
	$(COMPILER) $(OPTIONS) -c hello.cpp

# Compile driver.cpp and its dependency hello.
# Dependencies are space delimited on the same line.
driver: hello
	$(COMPILER) $(OPTIONS) driver.cpp hello.o

clean:
	rm -f a.out hello.o
