* 2011, Modified for PWCT by Mahmoud Fayed <msfclipper@yahoo.com>
* To show Goal Name & Step Name


/*
 * $Id: errsys.prg 15174 2010-07-25 08:45:50Z vszakats $
 */

/*
 * Harbour Project source code:
 * The default error handler
 *
 * Copyright 1999 Antonio Linares <alinares@fivetech.com>
 * www - http://harbour-project.org
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA 02111-1307 USA (or visit the web site http://www.gnu.org/).
 *
 * As a special exception, the Harbour Project gives permission for
 * additional uses of the text contained in its release of Harbour.
 *
 * The exception is that, if you link the Harbour libraries with other
 * files to produce an executable, this does not by itself cause the
 * resulting executable to be covered by the GNU General Public License.
 * Your use of that executable is in no way restricted on account of
 * linking the Harbour library code into it.
 *
 * This exception does not however invalidate any other reasons why
 * the executable file might be covered by the GNU General Public License.
 *
 * This exception applies only to the code released by the Harbour
 * Project under the name Harbour.  If you copy code from other
 * Harbour Project or Free Software Foundation releases into a copy of
 * Harbour, as the General Public License permits, the exception does
 * not apply to the code that you add in this way.  To avoid misleading
 * anyone as to the status of such modified files, you must delete
 * this exception notice from them.
 *
 * If you write modifications of your own for Harbour, it is your choice
 * whether to permit this exception to apply to your modifications.
 * If you do not wish that, delete this exception notice.
 *
 */

#include "common.ch"
#include "error.ch"

PROCEDURE ErrorSys()

   ErrorBlock( { | oError | DefError( oError ) } )

   RETURN

STATIC FUNCTION DefError( oError )
   LOCAL cMessage
   LOCAL cDOSError

   LOCAL aOptions
   LOCAL nChoice

   LOCAL n

   // By default, division by zero results in zero
   IF oError:genCode == EG_ZERODIV .AND. ;
      oError:canSubstitute
      RETURN 0
   ENDIF

   // By default, retry on RDD lock error failure */
   IF oError:genCode == EG_LOCK .AND. ;
      oError:canRetry
      // oError:tries++
      RETURN .T.
   ENDIF

   // Set NetErr() of there was a database open error
   IF oError:genCode == EG_OPEN .AND. ;
      oError:osCode == 32 .AND. ;
      oError:canDefault
      NetErr( .T. )
      RETURN .F.
   ENDIF

   // Set NetErr() if there was a lock error on dbAppend()
   IF oError:genCode == EG_APPENDLOCK .AND. ;
      oError:canDefault
      NetErr( .T. )
      RETURN .F.
   ENDIF

   cMessage := ErrorMessage( oError )
   IF ! Empty( oError:osCode )
      cDOSError := "(DOS Error " + hb_NToS( oError:osCode ) + ")"
   ENDIF

   // Build buttons

   aOptions := {}

   AAdd( aOptions, "Quit" )

   IF oError:canRetry
      AAdd( aOptions, "Retry" )
   ENDIF

   IF oError:canDefault
      AAdd( aOptions, "Default" )
   ENDIF

   // Show alert box

   nChoice := 0
   DO WHILE nChoice == 0

      IF cDOSError == NIL
         nChoice := Alert( cMessage, aOptions )
      ELSE
         nChoice := Alert( cMessage + ";" + cDOSError, aOptions )
      ENDIF

   ENDDO

   IF ! Empty( nChoice )
      SWITCH aOptions[ nChoice ]
      CASE "Break"
         Break( oError )
      CASE "Retry"
         RETURN .T.
      CASE "Default"
         RETURN .F.
      ENDSWITCH
   ENDIF

   // "Quit" selected

   IF cDOSError != NIL
      cMessage += " " + cDOSError
   ENDIF

   OutErr( hb_eol() )
   OutErr( cMessage )

   n := 1
   DO WHILE ! Empty( ProcName( ++n ) )

      OutErr( hb_eol() )
      * OutErr( "Called from " + ProcName( n ) + ;
      *         "(" + hb_NToS( ProcLine( n ) ) + ")  " )

      OutErr( SS_ESMAP(ProcName( n ) , ProcLine( n ) ) )

   ENDDO

   ErrorLevel( 1 )
   wait ""
   QUIT

   RETURN .F.

STATIC FUNCTION ErrorMessage( oError )

   // start error message
   LOCAL cMessage := iif( oError:severity > ES_WARNING, "Error", "Warning" ) + " "

   // add subsystem name if available
   IF ISCHARACTER( oError:subsystem )
      cMessage += oError:subsystem()
   ELSE
      cMessage += "???"
   ENDIF

   // add subsystem's error code if available
   IF ISNUMBER( oError:subCode )
      cMessage += "/" + hb_NToS( oError:subCode )
   ELSE
      cMessage += "/???"
   ENDIF

   // add error description if available
   IF ISCHARACTER( oError:description )
      cMessage += "  " + oError:description
   ENDIF

   // add either filename or operation
   DO CASE
   CASE !Empty( oError:filename )
      cMessage += ": " + oError:filename
   CASE !Empty( oError:operation )
      cMessage += ": " + oError:operation
   ENDCASE

   RETURN cMessage

* Author : Mahmoud Fayed <msfclipper@yahoo.com>

FUNCTION SS_ESMAP(P1,P2) && Map Procedure name, line number to RPWI
LOCAL X,MYRET
p1 = p1 + "()"
MYRET = ""
RPWI = .F.
STEPFOUND = .F.
* get file name
		FOR X2 = 1 TO LEN(SS_RESISTANCES)
			IF UPPER(ALLTRIM(SS_RESISTANCES[X2][2])) == UPPER(ALLTRIM(P1)) .or. X2 = LEN(SS_RESISTANCES)
				MYRES = SS_RESISTANCES[X2][3]
				FOR X4 = 1 TO LEN(SS_ESGOAL)
					IF UPPER(ALLTRIM(MYRES)) == UPPER(ALLTRIM(SS_ESGOAL[X4][1]))
						MYGOAL = SS_ESGOAL[X4][2]
						MYRET = MYRET + " Goal: " + MYGOAL + CHR(13) + CHR(10)
						RPWI = .T.
						EXIT
					ENDIF
				NEXT
				* Get Line Number
				FOR X3 = 1 TO LEN(SS_ESRES)
					IF UPPER(ALLTRIM(SS_ESRES[X3][1])) == UPPER(ALLTRIM(MYRES)) 
						MYLINE = P2 - SS_ESRES[X3][2]
						IF RPWI = .T.
							FOR X5 = 1 TO LEN(SS_ESSTEP)
								IF UPPER(ALLTRIM(SS_ESSTEP[X5][1])) == UPPER(ALLTRIM(MYRES)) .AND. ;
									MYLINE >= SS_ESSTEP[X5][3] .AND. MYLINE <= SS_ESSTEP[X5][4]
										MYRET = MYRET + " Step: " + SS_ESSTEP[X5][2] + CHR(13) + CHR(10)
										STEPFOUND = .T.
										EXIT
								ENDIF
							NEXT
						ENDIF
						*MYRET = MYRET + " Resistance: " + MYRES + " Line: " + ALLTRIM(STR(MYLINE)) + " ( " + P1 + " , " + ALLTRIM(STR(P2))+ " ) "  + CHR(13) + CHR(10)
						MYRET = MYRET + " Resistance: " + MYRES  + CHR(13) + CHR(10) + " ( " + P1 + " , " + ALLTRIM(STR(P2))+ " ) "  + CHR(13) + CHR(10)
						EXIT
					ENDIF
				NEXT
				EXIT
			ENDIF
		NEXT
* get goal name
* get step name
IF .NOT. EMPTY(ALLTRIM(MYRET))
	MYRET = CHR(13) + CHR(10) + " Called From: " + MYRET
ENDIF
IF STEPFOUND = .F.
	MYRET = ""
ENDIF
RETURN MYRET