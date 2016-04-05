#include <fcgi_stdio.h>
#include <stdlib.h>
#include <stdio>
using namespace std;
{
	int count=0;
	while(FCGI_Accept()>=0)
{
	//printf("Content-type: text/html\r\n"  
                // "\r\n"  
                // ""  
                // "FastCGI Hello!"  
                // "Request number %d running on host", ++count);  
                cout<<"test cgi"<<endl;
}
return 0;

}
