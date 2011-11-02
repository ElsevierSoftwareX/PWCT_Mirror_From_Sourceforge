*---------------------------------------------------------------------------*
* Time : 16:39:12    Date : 11/02/2011
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


Resistance R_PHONE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_15speed1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 651 ;
HEIGHT 417 ;
ICON "PWCTICON" ;
TITLE "Phone record" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,0} 

@ 58 ,289 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 127 ,289 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 196 ,289 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 56 ,385 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 127 ,385 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 198 ,385 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,19 BUTTONEX btn1;
CAPTION "First record";
ON CLICK first()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 118 ,19 BUTTONEX btn2;
CAPTION "Next record";
ON CLICK next()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 192 ,19 BUTTONEX btn3;
CAPTION "Prev record";
ON CLICK prev()  ;
WIDTH 114 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 266 ,19 BUTTONEX btn4;
CAPTION "Last record";
ON CLICK lastrecord()  ;
WIDTH 114 HEIGHT 38 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 304 ,323 BUTTONEX btn5;
CAPTION "Close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DO show
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc close
win1.Release ( )
Return Nil
Proc show
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.textname.Value := cName
win1.textaddress.Value := cAddress
win1.textphone.Value := cPhone
Return Nil
Proc first
oRS:MOVEFIRST()
DO show
Return Nil
Proc next
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("It is the last","Sorry")
ELSE
DO show
ENDIF
Return Nil
Proc prev
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVEFIRST()
MyOut := MSGBOX("It is the first","sorry")
ELSE
DO show
ENDIF
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO show
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
Return
*-------------------------------------------------------------------*
