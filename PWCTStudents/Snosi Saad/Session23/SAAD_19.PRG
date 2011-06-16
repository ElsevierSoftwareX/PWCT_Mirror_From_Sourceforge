*---------------------------------------------------------------------------*
* Time : 09:25:26    Date : 06/16/2011
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
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 674 ;
HEIGHT 320 ;
ICON "PWCTICON" ;
TITLE "ãÝßÑÉ ÇáåÇÊÝ" ;
MAIN ;
BACKCOLOR {85,148,210} 

@ 14 ,83 LABEL lbl1 ;
VALUE "ÇáÅÓã" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,393 LABEL lbl2 ;
VALUE "ÇáÚäæÇä" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,553 LABEL lbl3 ;
VALUE "ÑÞã ÇáåÇÊÝ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 44 ,13 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,183 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 310 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,493 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,373 BUTTONEX btnfirst;
CAPTION "ÇáÓÌá ÇáÇæá";
FONTCOLOR {128,128,255};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,253 BUTTONEX btnnext;
CAPTION "ÇáÓÌá ÇáÊÇáí";
FONTCOLOR {0,128,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,133 BUTTONEX btnlast;
CAPTION "ÇáÓÌá ÇáÇÎíÜÑ";
FONTCOLOR {0,128,0};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 170 ,13 BUTTONEX btnprev;
CAPTION "ÇáÓÌá ÇáÓÇÈÞ";
FONTCOLOR {128,64,64};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 235 ,553 BUTTONEX btn5;
CAPTION "ÅÛáÇÞ";
FONTCOLOR {255,0,0};
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 170 ,496 BUTTONEX btndel;
CAPTION "ÍÐÝ ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,118 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK saverecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 235 ,13 BUTTONEX btncancel;
CAPTION "ÅáÛÇÁ ÇáÃãÑ";
ON CLICK cancelrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 235 ,223 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 235 ,328 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK MSGINFO( addrecord() ) ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO showrecord
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
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrecord
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
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("åÐå äåÇíÉ ÇáãáÝ","ÚÝæÇð")
ELSE
DO showrecord
ENDIF
DO showrecord
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("åÐå äåÇíÉ ÇáãáÝ","ÚÝæÇð")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("åá ÊÑíÏ ÍÐÝ ÇáÓÌá ¿","ÍÐÝ")
IF myout = false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ELSE
MyOut := MSGBOX("! áÇ íæÌÏ ÓÌáÇÊ","ÚÝæÇ")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnfirst.Enabled := false
win1.btnlast.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btnedit.Enabled := false
win1.btndel.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
win1.btn5.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btnfirst.Enabled := true
win1.btnlast.Enabled := true
win1.btnnext.Enabled := true
win1.btnprev.Enabled := true
win1.btnedit.Enabled := true
win1.btndel.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btn5.Enabled := true
win1.btnadd.Enabled := true
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
ENDIF
Return Nil
Proc cancelrecord
IF savemode = 2
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
ENDIF
DO mode WITH 2
DO showrecord
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrecord
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_19
START DOUBLES
Return
*-------------------------------------------------------------------*
