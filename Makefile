all:demo

CXXFLAGS ?= -std=c++11 -g -O3 -L. -L/usr/local/lib -L. -lfcgi


demo: main_v1.cpp
        g++ $(CXXFLAGS) main_v1.cpp -odemo
        rm -f *.o

clean:
        rm -f *.o
cleanall:
        rm -f *.o demo