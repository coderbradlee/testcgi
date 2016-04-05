all:demo

CXXFLAGS ?= -std=c++11 -g -O3 -L. -L/usr/local/lib -L. -lfcgi


demo: demo.cpp 
	g++ $(CXXFLAGS) demo.cpp -odemo
	rm -f *.o

clean:
	rm -f *.o
cleanall:
	rm -f *.o demo
