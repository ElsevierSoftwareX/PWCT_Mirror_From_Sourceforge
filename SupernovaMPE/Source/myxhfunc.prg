
#pragma BEGINDUMP


#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"

HB_FUNC (CHARXOR)
{
	size_t sStrLen = hb_parclen (1);
	size_t sPos;
	unsigned char *pucString = ( unsigned char * ) hb_parc (1);
	unsigned char *pucResult;

	if ( sStrLen == 0 )
	{
		hb_retc( "" );
		return;
	}

	pucResult = ( unsigned char * ) hb_xgrab (sStrLen);
	char *pucString2 = hb_parc (2);
	size_t sStrLen2 = hb_parclen (2);

	for (sPos = 0; sPos < sStrLen; sPos++)
		pucResult[sPos] = (char)(pucString[sPos] ^ pucString2[sPos%sStrLen2]);

	hb_storclen (( char * ) pucResult, sStrLen, 1);
	hb_retclen (( char * ) pucResult, sStrLen);

	hb_xfree (pucResult);
	return;

}



HB_FUNC( NUMAND )
{
	int x1,x2,myret ;
 	PHB_ITEM p1   = hb_param( 1, HB_IT_NUMERIC ); 
 	PHB_ITEM p2   = hb_param( 2, HB_IT_NUMERIC ); 
	x1 = hb_itemGetNI(p1)   ;  
	x2 = hb_itemGetNI(p2)   ;  
	myret = x1 & x2		;
        hb_retni( myret );
}

HB_FUNC( NUMOR )
{
	int x1,x2,myret ;
 	PHB_ITEM p1   = hb_param( 1, HB_IT_NUMERIC ); 
 	PHB_ITEM p2   = hb_param( 2, HB_IT_NUMERIC ); 
	x1 = hb_itemGetNI(p1)   ;  
	x2 = hb_itemGetNI(p2)   ;  
	myret = x1 | x2		;
        hb_retni( myret );
}

#pragma ENDDUMP