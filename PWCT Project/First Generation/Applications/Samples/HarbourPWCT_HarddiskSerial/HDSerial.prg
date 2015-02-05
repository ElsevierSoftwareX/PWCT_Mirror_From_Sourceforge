// Functions From HMG Extended project
// Can be used directed from PWCT 
// Just use Set procedure to hdserial.prg
// then you can use the function GetHardDiskSerial()

Function GetHardDiskSerial()
Local cVolName
Local nSerNum
Local nMaxName
Local nFlags
Local cFATName
Local cDiskSerial
Local cInfo := ""
cDiskSerial = "SystemCannotGetHardDiskSerial"

If GetVolumeInformation( "c:\" , @cVolName, @nSerNum , @nMaxName , @nFlags , @cFATName )

	cDiskSerial := I2Hex( nSerNum / 65535 ) + "-" + I2Hex( nSerNum )

EndIf

return alltrim(cDiskSerial)

#pragma BEGINDUMP

#include <windows.h>
#include "hbapi.h"
#include "hbapiitm.h"

#ifndef __XHARBOUR__
   #define ISBYREF( n )          HB_ISBYREF( n )
   #define ISNIL( n )            HB_ISNIL( n )
#endif

static char * u2Hex( WORD wWord )
{
    static far char szHex[ 5 ];

    WORD i= 3;

    do
    {
        szHex[ i ] = 48 + ( wWord & 0x000F );

        if( szHex[ i ] > 57 )
            szHex[ i ] += 7;

        wWord >>= 4;

    }
    while( i-- > 0 );

    szHex[ 4 ] = 0;

    return szHex;
}

HB_FUNC( I2HEX )
{
   hb_retc( u2Hex( hb_parni( 1 ) ) );
}

// Code From WHAT32 by AJ Wos <andrwos@aust1.net>

HB_FUNC(GETVOLUMEINFORMATION)
{
  char *VolumeNameBuffer     = (char *) hb_xgrab( MAX_PATH ) ;
  DWORD VolumeSerialNumber                              ;
  DWORD MaximumComponentLength                          ;
  DWORD FileSystemFlags                                 ;
  char *FileSystemNameBuffer = (char *) hb_xgrab( MAX_PATH )  ;
  BOOL bRet;

  bRet = GetVolumeInformation( ISNIL(1) ? NULL : (LPCTSTR) hb_parc(1) ,
                                  (LPTSTR) VolumeNameBuffer              ,
                                  MAX_PATH                               ,
                                  &VolumeSerialNumber                    ,
                                  &MaximumComponentLength                ,
                                  &FileSystemFlags                       ,
                                  (LPTSTR)FileSystemNameBuffer           ,
                                  MAX_PATH ) ;
  if ( bRet  )
  {
     if ( ISBYREF( 2 ) )  hb_storc ((char *) VolumeNameBuffer, 2 ) ;
     if ( ISBYREF( 3 ) )  hb_stornl( (LONG)  VolumeSerialNumber, 3 ) ;
     if ( ISBYREF( 4 ) )  hb_stornl( (LONG)  MaximumComponentLength, 4 ) ;
     if ( ISBYREF( 5 ) )  hb_stornl( (LONG)  FileSystemFlags, 5 );
     if ( ISBYREF( 6 ) )  hb_storc ((char *) FileSystemNameBuffer, 6 );
  }

  hb_retl(bRet);
  hb_xfree( VolumeNameBuffer );
  hb_xfree( FileSystemNameBuffer );
}

#pragma ENDDUMP


