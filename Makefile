# Name: Edison Lam
# Course: CS178 Build Automation for DevOps and QA
# CRN: 76718
# Date: 8/21/2019
# Assignment: "Documenting Your First Makefile"
#
# This makefile is used to compile a helloworld program hello.cpp.
# It requires the following yum packages:
# gcc-c++.x86_64                   4.8.5-36.el7_6.2            @rhel-7-server-rpms
# make.x86_64                      1:3.82-23.el7               @anaconda/7.3      
#
COMPILER=g++
OPTIONS=-Wall

# Remove object files & binary files from the list below.
clean:
	rm -f a.out hello.o

# Only compile hello.cpp, creating its object file: hello.o.
hello:
	$(COMPILER) $(OPTIONS) -c hello.cpp

# Compile driver.cpp and its dependency hello.
# Dependencies are space delimited on the same line.
# On success, make will produce a binary file a.out on the current working directory
# that could be run by typeing ./a.out.
driver: hello
	$(COMPILER) $(OPTIONS) driver.cpp hello.o

# Default Target; "all" is called when `make` is run on cli with no arguments.
# Fuctions the same as if `make driver` was run.
all: driver
