*---------------------------------------------------------------------------*
* Time : 19:14:24    Date : 06/05/2011
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


Resistance R_LESSON17_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON17_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 411 ;
HEIGHT 369 ;
ON INIT OpenDataBase()  ;
ICON "PWCTICON" ;
TITLE "ãÝßÑÉ ÇáåÇÊÝ" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 271 ,257 BUTTONEX AddBtn;
CAPTION "ÅÖÇÝÉ ÓÌá";
FONTCOLOR {0,0,255};
ON CLICK MyAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 267 ,42 BUTTONEX DelBtn;
CAPTION "ÍÐÝ ÓÌá";
FONTCOLOR {255,0,0};
ON CLICK MyDel()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
TRANS_TEMP = "Tel"
@ 26 ,42 ;
BROWSE browse1 ;
WIDTH 316 ;
HEIGHT 219 ;
HEADERS {"ÇáåÇÊÝ" , "ÇáÚäæÇä" , "ÇáÇÓã"} ;
WIDTHS {100, 100, 100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"Tel->Phone" , "Tel->Address" , "Tel->Name"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc OpenDataBase
CheckFile := File("Tel.dbf")
IF CheckFile == False
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "Name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE "Tel" FROM TempStru
ENDIF
Use Tel
Return Nil
Proc MyAdd
SELECT AREA Tel
Append Blank
MyRec := Recno()
win1.Browse1.Value := MyRec
win1.Browse1.SetFocus ( )
Return Nil
Proc MyDel
SELECT AREA Tel
MyRec := win1.Browse1.Value
Goto MyRec
delete
Pack
MyRec := MyRec - 1
win1.Browse1.Value := MyRec
win1.Browse1.Refresh ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON17
START DOUBLES
Return
*-------------------------------------------------------------------*
