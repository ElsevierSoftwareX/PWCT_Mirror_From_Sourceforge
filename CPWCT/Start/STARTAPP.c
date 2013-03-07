#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <string.h>
int main( int argc, char *argv)
{
	printf( "Hello World \n  " ) ;
	char name[50] ;
	strcpy(name,"Mahmoud");
	printf( "%s  ", name ) ;
	getch();
	printf( "enter letter  " ) ;
	char c ;
	c = getch() ;
	putchar(c);
	getch();
	int n ;
	typedef struct card {
		int pips ;
		char suit ;
	} card ;
	n = sizeof(card) ;
	printf( "\n %d  ",n ) ;
	card mycard ;
	mycard.pips = 12 ;
	mycard.suit = 'M' ;
	printf( "%d", mycard.pips ) ;
	putchar(mycard.suit);
	getch();
	card * pcard ;
	pcard = malloc(sizeof(card)) ;
	pcard->pips = 10 ;
	pcard->suit = 'r' ;
	printf( "%d",pcard->pips ) ;
	putchar(pcard->suit);
	free( pcard ) ;
	int x ;
	for ( x = 1 ; x <= 10 ; x++ )
	{
		printf( "%d  ", x ) ;
	}
	getch();
	return 0;
}


