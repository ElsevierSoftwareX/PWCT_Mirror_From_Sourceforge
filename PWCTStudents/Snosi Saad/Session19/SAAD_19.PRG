*---------------------------------------------------------------------------*
* Time : 10:02:27    Date : 06/12/2011
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


Resistance R_SAAD_19_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_19_15speed1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 674 ;
HEIGHT 316 ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·Â« ›" ;
MAIN ;
BACKCOLOR {85,148,210} 

@ 14 ,83 LABEL lbl1 ;
VALUE "«·≈”„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,393 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,553 LABEL lbl3 ;
VALUE "—ﬁ„ «·Â« ›" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 44 ,13 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 170 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,183 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 310 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,493 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 160 ;
READONLY ;
FONT "Roman" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,373 BUTTONEX btnfirst;
CAPTION "«·”Ã· «·«Ê·";
FONTCOLOR {128,128,255};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,253 BUTTONEX btnnext;
CAPTION "«·”Ã· «· «·Ì";
FONTCOLOR {0,128,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,133 BUTTONEX btnlast;
CAPTION "«·”Ã· «·«ŒÌ‹—";
FONTCOLOR {0,128,0};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,13 BUTTONEX btnprev;
CAPTION "«·”Ã· «·”«»ﬁ";
FONTCOLOR {128,64,64};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 230 ,553 BUTTONEX btn5;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO showrecord
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
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrecord
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrecord
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrecord
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Â–Â ‰Â«Ì… «·„·›","⁄›Ê«")
ELSE
DO showrecord
ENDIF
DO showrecord
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Â–Â ‰Â«Ì… «·„·›","⁄›Ê«")
ELSE
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_19
START DOUBLES
Return
*-------------------------------------------------------------------*
