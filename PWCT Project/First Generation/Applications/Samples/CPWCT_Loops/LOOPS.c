#include <stdlib.h>
#include <stdio.h>
int main( int argc, char *argv)
{
	int x  ;
	for ( x = 1 ; x <= 10 ; x++ )
	{
		printf( "Number %d  ",x ) ;
	}
	while ( x > 0 )
	{
		printf( "\n Number %d",x ) ;
		x = x-1 ;
	}
	do
	{
		printf( " Number %d  ",x ) ;
		x++ ;
	} while (x < 10)  ;
	getch();
	return 0;
}

