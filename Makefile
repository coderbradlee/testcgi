all:demo

CXXFLAGS ?= -std=c++11 -g -O3 -L. -L/usr/local/lib -L. -lfcgi++ -lfcgi -lcrypto


demo: main_v1.cpp
	g++ $(CXXFLAGS) main_v1.cpp -odemo
	rm -f *.o
	killall demo
	spawn-fcgi -p 8288 ./demo

clean:
	rm -f *.o
cleanall:
	rm -f *.o demo
