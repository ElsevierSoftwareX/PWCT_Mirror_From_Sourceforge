*---------------------------------------------------------------------------*
* Time : 00:15:30    Date : 10/30/2011
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 635 ;
HEIGHT 436 ;
ICON "PWCTICON" ;
TITLE "telephone database" ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 34 ,210 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {192,192,192}
@ 102 ,210 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {192,192,192}
@ 164 ,206 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 109 ;
HEIGHT 45 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {192,192,192}
@ 25 ,305 TEXTBOX textName;
HEIGHT 43 ;
WIDTH 245 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 88 ,305 TEXTBOX textAddress;
HEIGHT 43 ;
WIDTH 245 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,305 TEXTBOX textPhone;
HEIGHT 43 ;
WIDTH 245 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 38 ,16 BUTTONEX btn1;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK firstrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 112 ,16 BUTTONEX btn2;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK nextrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 191 ,16 BUTTONEX btn3;
CAPTION "prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK prevrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 269 ,16 BUTTONEX btn4;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK lastrecord()  ;
WIDTH 139 HEIGHT 43 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 346 ,341 BUTTONEX btn5;
CAPTION " close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial Narrow" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 339 ,15 BUTTONEX btndel;
CAPTION "delete";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK mydel()  ;
WIDTH 139 HEIGHT 43 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 247 ,363 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK myedit()  ;
WIDTH 108 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 247 ,488 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK mysave()  ;
WIDTH 108 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 248 ,217 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK mycancel()  ;
WIDTH 108 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc Connect
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
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
DO show
oRS:MOVEFIRST()
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("it's the last","sorry")
ELSE
DO show
ENDIF
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVEFIRST()
MyOut := MSGBOX("it's the first","sorry")
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
mymax := oRS:RecordCount
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
Return Nil
Proc mydel
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("r u sure 2 delete?","delete")
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
IF myout = false
Return 0
ENDIF
ELSE
MyOut := MSGBOX("no record to delete","delete")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btndel.Enabled := false
win1.btnedit.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btndel.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
ENDIF
Return Nil
Proc myedit
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ELSE
ENDIF
Return Nil
Proc mysave
DO mode WITH 2
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
oRS:fields:item("name"):value := cName
oRS:fields:item("address"):value := cAddress
oRS:fields:item("phone"):value := cPhone
oRS:UPDATE()
Return Nil
Proc mycancel
DO mode WITH 2
DO show
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
