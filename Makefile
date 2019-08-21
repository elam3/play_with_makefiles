COMPILER=g++
OPTIONS=-Wall

# Default Target
all:
	$(COMPILER) $(OPTIONS) driver.cpp hello.cpp

hello:
	$(COMPILER) $(OPTIONS) -c hello.cpp

clean:
	rm -f a.out hello.o
