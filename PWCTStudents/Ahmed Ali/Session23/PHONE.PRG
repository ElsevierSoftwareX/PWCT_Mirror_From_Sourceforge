*---------------------------------------------------------------------------*
* Time : 00:57:19    Date : 11/08/2011
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
savemode := 1
Public savemode
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 925 ;
HEIGHT 541 ;
ICON "PWCTICON" ;
TITLE "Phone record" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 128 ,549 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 197 ,549 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,549 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 126 ,645 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 197 ,645 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 268 ,645 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 75 ,229 BUTTONEX btn1;
CAPTION "First record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK first()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,229 BUTTONEX btn2;
CAPTION "Next record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK next()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 223 ,229 BUTTONEX btn3;
CAPTION "Prev record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK prev()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 296 ,229 BUTTONEX btn4;
CAPTION "Last record";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK lastrecord()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 451 ,791 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {0,64,64};
ON CLICK close()  ;
WIDTH 81 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 379 ,385 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {0,64,0};
BACKCOLOR {255,128,0};
ON CLICK mydel()  ;
WIDTH 78 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 379 ,667 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,64,0};
BACKCOLOR {255,128,0};
ON CLICK myedit()  ;
WIDTH 78 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 379 ,479 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,64,0};
BACKCOLOR {255,128,0};
ON CLICK mysave()  ;
WIDTH 78 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 379 ,573 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,64,64};
BACKCOLOR {255,128,0};
ON CLICK mycancel()  ;
WIDTH 78 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 93 ,645 BUTTONEX btnadd;
CAPTION "Add";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,64};
ON CLICK myadd()  ;
WIDTH 78 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 54 ,23 IMAGE image1;
PICTURE "PHONE.WMF";
STRETCH ;
WIDTH 145 HEIGHT 179
END WINDOW

DO mode WITH 2
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
oRS:MOVEFIRST()
DO show
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
ELSE
cname := ""
caddress := ""
cphone := ""
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
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO show
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
Return Nil
Proc mydel
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure to delete?","Delete")
IF myout = true
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
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
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btnedit.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btnadd.Enabled := true
ENDIF
Return Nil
Proc myedit
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
ELSE
ENDIF
Return Nil
Proc mysave
DO mode WITH 2
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
Return Nil
Proc mycancel
DO mode WITH 2
DO show
IF savemode = 2
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
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
ENDIF
Return Nil
Proc myadd
DO mode WITH 1
savemode := 2
oRS:ADDNEW()
DO show
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
Return
*-------------------------------------------------------------------*
