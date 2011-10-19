*---------------------------------------------------------------------------*
* Time : 14:10:07    Date : 10/19/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_PHONENOTE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONENOTE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 428 ;
HEIGHT 365 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "phone notes" ;
MAIN ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 22 ,41 ;
BROWSE browse1 ;
WIDTH 357 ;
HEIGHT 212 ;
HEADERS {"name","address","phone"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 268 ,265 BUTTONEX btnadd;
CAPTION "add";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 268 ,75 BUTTONEX btndel;
CAPTION "delete";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc opendb
CheckFile := File("tel.dbf")
IF checkfile=false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
Return Nil
Proc myadd
SELECT AREA tel
Append Blank
myrec := GET_RECORD_NUMBER
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT AREA tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec -1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONENOTE
START DOUBLES
Return
*-------------------------------------------------------------------*
