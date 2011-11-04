*---------------------------------------------------------------------------*
* Time : 16:25:01    Date : 11/04/2011
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
BACKCOLOR {128,128,255} 

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

@ 45 ,59 BUTTONEX btn1;
CAPTION "First record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK first()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 119 ,59 BUTTONEX btn2;
CAPTION "Next record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK next()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 193 ,59 BUTTONEX btn3;
CAPTION "Prev record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK prev()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 266 ,59 BUTTONEX btn4;
CAPTION "Last record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK lastrecord()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 332 ,260 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {0,64,64};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
DO show
@ 259 ,385 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
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
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc close
DO disconnect
win1.Release ( )
Return Nil
Proc show
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cName
win1.textaddress.Value := cAddress
win1.textphone.Value := cPhone
Return Nil
Proc first
mymax := oRS:RecordCount
IF mymax > 0
DO show
oRS:MOVEFIRST()
ENDIF
Return Nil
Proc next
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("It is the last","Sorry")
ELSE
DO show
ENDIF
ENDIF
Return Nil
Proc prev
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVEFIRST()
MyOut := MSGBOX("It is the first","sorry")
ELSE
DO show
ENDIF
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO show
ENDIF
Return Nil
Proc mydel
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure to delete?","Delete")
IF myout = true
oRS:DELETE()
ENDIF
oRS:UPDATE()
mymax := oRS:RecordCount
IF myout = false
Return 0
ENDIF
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVEFIRST()
ELSE
ENDIF
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
DO show
ELSE
MyOut := MSGBOX("No record to delete","delete")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
Return
*-------------------------------------------------------------------*
