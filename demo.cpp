#include <fcgi_stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;
int main()
{
	int count=0;
	while(FCGI_Accept()>=0)
	{
		//printf("Content-type: text/html\r\n"  
	                // "\r\n"  
	                // ""  
	                // "FastCGI Hello!"  
	                // "Request number %d running on host", ++count);  
	                //cout<<"Content-type: text/html\r\n\r\nFastCGI Hello!"<<endl;
	    fprintf(FCGI_stdout, "Content-Type: text/plain\n\n");
        fprintf(FCGI_stdout, "demo.cpp");
	}

	return 0;

}
