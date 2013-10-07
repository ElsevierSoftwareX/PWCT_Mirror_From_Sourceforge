#include <stdio.h>
#include <stdlib.h>
int main( int argc, char *argv)
{
	char name[50]  ;
	printf( "Enter your name  " ) ;
	scanf( "%s" , name ) ;
	printf( "Hello %s  " , name ) ;
	getch();
	return 0;
}

