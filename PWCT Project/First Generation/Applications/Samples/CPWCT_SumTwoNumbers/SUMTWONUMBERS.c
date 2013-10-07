#include <stdio.h>
#include <stdlib.h>
int main( int argc, char *argv)
{
	int x,y  ;
	printf( "Enter the first number  " ) ;
	scanf( "%d" , &x ) ;
	printf( "\nEnter the second number  " ) ;
	scanf( "%d" , &y ) ;
	printf( "\nSum = %d  ",x+y ) ;
	getch();
	return 0;
}

