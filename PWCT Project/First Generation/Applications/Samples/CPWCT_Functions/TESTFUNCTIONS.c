#include <stdio.h>
#include <stdlib.h>
int sum ( int x , int y ) ;
int main( int argc, char *argv)
{
	int x  ;
	printf( "calling Sum (3,5)  " ) ;
	x = sum(3,5);
	printf( "\n Output = %d  ",x ) ;
	getch();
	return 0;
}
int sum ( int x, int y )
{
	return x+y ;
}

