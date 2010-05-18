/*----------------------------------------------------------------------------
 MINIGUI - Harbour Win32 GUI library source code

 Copyright 2002-2007 Roberto Lopez <harbourminigui@gmail.com>
 http://harbourminigui.googlepages.com/

 This program is free software; you can redistribute it and/or modify it under 
 the terms of the GNU General Public License as published by the Free Software 
 Foundation; either version 2 of the License, or (at your option) any later 
 version. 

 This program is distributed in the hope that it will be useful, but WITHOUT 
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
 FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

 You should have received a copy of the GNU General Public License along with 
 this software; see the file COPYING. If not, write to the Free Software 
 Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA (or 
 visit the web site http://www.gnu.org/).

 As a special exception, you have permission for additional uses of the text 
 contained in this release of Harbour Minigui.

 The exception is that, if you link the Harbour Minigui library with other 
 files to produce an executable, this does not by itself cause the resulting 
 executable to be covered by the GNU General Public License.
 Your use of that executable is in no way restricted on account of linking the 
 Harbour-Minigui library code into it.

 Parts of this project are based upon:

	"Harbour GUI framework for Win32"
 	Copyright 2001 Alexander S.Kresin <alex@belacy.belgorod.su>
 	Copyright 2001 Antonio Linares <alinares@fivetech.com>
	www - http://www.harbour-project.org

	"Harbour Project"
	Copyright 1999-2007, http://www.harbour-project.org/

	"WHAT32"
	Copyright 2002 AJ Wos <andrwos@aust1.net> 

	"HWGUI"
  	Copyright 2001-2007 Alexander S.Kresin <alex@belacy.belgorod.su>

---------------------------------------------------------------------------*/

#include "minigui.ch"
#include "error.ch"

*------------------------------------------------------------------------------
PROCEDURE ErrorSys
*------------------------------------------------------------------------------

   ErrorBlock( { | oError | DefError( oError ) } )

   Init()

RETURN

*------------------------------------------------------------------------------
STATIC FUNCTION DefError( oError )
*------------------------------------------------------------------------------
   LOCAL cMessage
   LOCAL n := 2, cText

   //Html Arch to ErrorLog
   LOCAL HtmArch, HtmText

   // By default, division by zero results in zero
   IF oError:genCode == EG_ZERODIV
      RETURN 0
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

   HtmArch := Html_ErrorLog()
   cMessage := ErrorMessage( oError )
   IF ! Empty( oError:osCode )
      cMessage += " " + "(DOS Error " + LTrim( Str( oError:osCode ) ) + ")"
   ENDIF

   Html_LineText(HtmArch, '<p class="updated">Date: ' + Dtoc(Date()) + "  " + "Time: " + Time() )
   Html_LineText(HtmArch, cMessage + "</p>" )

   cText := cMessage + CRLF + CRLF

    ai = cText
     xText := "Error Details:" +CHR(13) +CHR(10)
      ai = ai + xText
      Html_LineText(HtmArch,xText)
   cText = ai
   WHILE ! Empty( ProcName( n ) )
	Htmtext := SS_ESMAP(ProcName( n ) , ProcLine( n++ ) )
      cText += HtmText
      Html_LineText(HtmArch, HtmText)
   ENDDO
   Html_Line(HtmArch)
   Html_End(HtmArch)

   ShowError(cText, oError)

RETURN .F.

*------------------------------------------------------------------------------
STATIC FUNCTION ErrorMessage( oError )
*------------------------------------------------------------------------------
   LOCAL cMessage

   // start error message
   cMessage := iif( oError:severity > ES_WARNING, "Error", "Warning" ) + " "

   // add subsystem name if available
   IF ISCHARACTER( oError:subsystem )
      cMessage += oError:subsystem()
   ELSE
      cMessage += "???"
   ENDIF

   // add subsystem's error code if available
   IF ISNUMBER( oError:subCode )
      cMessage += "/" + LTrim( Str( oError:subCode ) )
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

*------------------------------------------------------------------------------
PROCEDURE ShowError( ErrorMessage, oError )
*------------------------------------------------------------------------------
   LOCAL x

   For x := 1 To Len ( _HMG_aControlHandles )
	if _HMG_aControlType [x] == 'HOTKEY'
		ReleaseHotKey ( _HMG_aControlParentHandles [x] , _HMG_aControlIds [x] )
	ElseIf _HMG_aControlType [x] == 'FONT'
		_EraseFontDef (x)
	EndIf
   Next x

   dbcloseall()

   MsgStop( IIf( _lShowDetailError() .OR. oError==NIL, ErrorMessage, ;
                ErrorMessage( oError ) ), 'Runtime Error', NIL, .F. )

   ExitProcess(0)

RETURN

/*
  Date Created: 14/11/2005
  Author: Antonio Novo antonionovo@gmail.com
  Enable/Disable Error Detail
*/
*------------------------------------------------------------------------------
FUNCTION _lShowDetailError( lNewValue )
*------------------------------------------------------------------------------
Static _lShowDetailError := .T.
Local lOldValue := _lShowDetailError

   If lNewValue <> Nil
      _lShowDetailError := lNewValue
   Endif

RETURN lOldValue

*-01-01-2003
*-AUTHOR: Antonio Novo
*-Create/Open the ErrorLog.Htm file
*-Note: Is used in: errorsys.prg and h_error.prg
*------------------------------------------------------------------------------
FUNCTION HTML_ERRORLOG
*------------------------------------------------------------------------------
LOCAL HtmArch := -1, cErrorLogFile := _GetErrorlogFile()

IF IsErrorLogActive()
   If .Not. File(cErrorLogFile)
        HtmArch := Html_Ini(cErrorLogFile,"Runtime Errorlog File<br>" )
	if HtmArch > 0
		Html_Line(HtmArch)
	endif
   Else
	HtmArch := FOPEN(cErrorLogFile, 2)
	if HtmArch > 0
		FSeek(HtmArch, 0, 2)    //End Of File
	endif
   EndIf
ENDIF
RETURN (HtmArch)

*-30-12-2002
*-AUTHOR: Antonio Novo
*-HTML Page Head
*------------------------------------------------------------------------------
FUNCTION HTML_INI( ARCH, TIT )
*------------------------------------------------------------------------------
LOCAL HtmArch := -1
LOCAL cStilo  := "<style> "                     +;
                 "body{ "                       +;
                   "font-family: sans-serif;"   +;
                   "background-color: #ffffff;" +;
                   "font-size: 75%;"            +;
                   "color: #000000;"            +;
                   "}"                          +;
                 "h1{"                          +;
                   "font-family: sans-serif;"   +;
                   "font-size: 150%;"           +;
                   "color: #0000cc;"            +;
                   "font-weight: bold;"         +;
                   "background-color: #f0f0f0;" +;
                   "}"                          +;
                 ".updated{"                    +;
                   "font-family: sans-serif;"   +;
                   "color: #cc0000;"            +;
                   "font-size: 110%;"           +;
                   "}"                          +;
                 ".normaltext{"                 +;
                  "font-family: sans-serif;"    +;
                  "font-size: 100%;"            +;
                  "color: #000000;"             +;
                  "font-weight: normal;"        +;
                  "text-transform: none;"       +;
                  "text-decoration: none;"      +;
                 "}"                            +;
                 "</style>"
IF IsErrorLogActive()
   HtmArch := FCREATE(ARCH)
   IF FERROR() != 0
      MsgStop("Can`t open errorlog file "+ARCH,"Error")
      RETURN (-1)
   ENDIF
   FWRITE(HtmArch,"<HTML><HEAD><TITLE>"+TIT+"</TITLE></HEAD>" + cStilo +"<BODY>"+CHR(13)+CHR(10))
   FWRITE(HtmArch,'<H1 Align=Center>'+TIT+'</H1><BR>'+CHR(13)+CHR(10))
ENDIF
RETURN (HtmArch)

*-30-12-2002
*-AUTHOR: Antonio Novo
*-HTM Page Line
*------------------------------------------------------------------------------
PROCEDURE HTML_LINETEXT( HTMARCH, LINEA )
*------------------------------------------------------------------------------
IF HTMARCH > 0 .AND. IsErrorLogActive()
   FWRITE(HTMARCH, RTRIM( LINEA ) + "<BR>"+CHR(13)+CHR(10))
ENDIF
RETURN

*-30-12-2002
*-AUTHOR: Antonio Novo
*-HTM Line
*------------------------------------------------------------------------------
PROCEDURE HTML_LINE( HTMARCH )
*------------------------------------------------------------------------------
IF HTMARCH > 0 .AND. IsErrorLogActive()
   FWRITE(HTMARCH,"<HR>"+CHR(13)+CHR(10))
ENDIF
RETURN

*------------------------------------------------------------------------------
PROCEDURE HTML_END( HTMARCH )
*------------------------------------------------------------------------------
IF HTMARCH > 0 .AND. IsErrorLogActive()
   FWRITE(HTMARCH, "</BODY></HTML>")
   FCLOSE(HTMARCH)
ENDIF
RETURN

// (JK) HMG 1.0 Build 6
*------------------------------------------------------------------------------
PROCEDURE _SetErrorLogFile( cFile )
*------------------------------------------------------------------------------
   _HMG_ErrorLogFile := IFEMPTY(cFile, GetStartUpFolder() + "\ErrorLog.htm", cFile)
RETURN

FUNCTION SS_ESMAP(P1,P2) && Map Procedure name, line number to RPWI
LOCAL X,MYRET
p1 = p1 + "()"
MYRET = ""
RPWI = .F.
* get file name
		FOR X2 = 1 TO LEN(SS_RESISTANCES)
			IF UPPER(ALLTRIM(SS_RESISTANCES[X2][2])) == UPPER(ALLTRIM(P1))
				MYRES = SS_RESISTANCES[X2][3]
				FOR X4 = 1 TO LEN(SS_ESGOAL)
					IF UPPER(ALLTRIM(MYRES)) == UPPER(ALLTRIM(SS_ESGOAL[X4][1]))
						MYGOAL = SS_ESGOAL[X4][2]
						MYRET = MYRET + " Goal: " + MYGOAL
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
										MYRET = MYRET + " Step: " + SS_ESSTEP[X5][2]
										EXIT
								ENDIF
							NEXT
						ENDIF
						MYRET = MYRET + " Resistance: " + MYRES + " Line: " + ALLTRIM(STR(MYLINE)) + " ( " + P1 + " , " + ALLTRIM(STR(P2))+ " ) "  + CHR(13) + CHR(10)
						EXIT
					ENDIF
				NEXT
				EXIT
			ENDIF
		NEXT
* get goal name
* get step name
IF .NOT. EMPTY(ALLTRIM(MYRET))
MYRET = "Called From: " + MYRET
ENDIF
RETURN MYRET