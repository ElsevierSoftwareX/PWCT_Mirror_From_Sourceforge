#include <stdio.h>
#include <stdlib.h>
int main( int argc, char *argv)
{
	int x  ;
	for ( x = 1 ; x <= 10 ; x++ )
	{
		printf( "Number %d  \n",x ) ;
		if ( x == 6 )
		{
			break ;
		}
	}
	getch();
	return 0;
}

