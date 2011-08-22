*---------------------------------------------------------------------------*
* Time : 13:03:09    Date : 08/22/2011
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


Resistance R_TEL_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEL_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 472 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·Â« ›" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 19 ,26 ;
BROWSE browse1 ;
WIDTH 425 ;
HEIGHT 277 ;
HEADERS {"—ﬁ„ «·Â« ›","«·⁄‰Ê«‰","«·«”„"} ;
WIDTHS {100,175,150} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->name","tel->address","tel->phone"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 307 ,210 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK btnadd()  ;
WIDTH 216 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 306 ,24 BUTTONEX btndel;
CAPTION "Õ–›";
ON CLICK btndel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
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
Proc btnadd
SELECT AREA tel
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc btndel
SELECT AREA tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec-1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
myrec := win1.browse1.Value
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEL
START DOUBLES
Return
*-------------------------------------------------------------------*
