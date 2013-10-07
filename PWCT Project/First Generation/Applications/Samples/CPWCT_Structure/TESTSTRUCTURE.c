#include <stdio.h>
#include <stdlib.h>
int main( int argc, char *argv)
{
	struct Person {
		char name[50]  ;
		int age  ;
	} ;
	struct Person Mahmoud  ;
	strcpy(Mahmoud.name,"Mahmoud Samir Fayed");
	Mahmoud.age = 27 ;
	printf( "Name %s  \n Age %d \n  ", Mahmoud.name, Mahmoud.age ) ;
	getch();
	return 0;
}

