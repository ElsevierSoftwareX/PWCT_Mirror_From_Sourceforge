*---------------------------------------------------------------------------*
* Time : 23:20:27    Date : 09/05/2011
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


Resistance R_ALFAIFI23_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFAIFI23_15speed1() code
DO connect
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 698 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 6 ,505 LABEL lbl1 ;
VALUE "ÇáÇÓÜÜÜÜÜÜÜÜÜÜã" ;
WIDTH 73 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 5 ,283 LABEL lbl2 ;
VALUE "ÇáÚäÜÜÜÜÜÜÜÜÜÜæÇä" ;
WIDTH 87 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 11 ,77 LABEL lbl3 ;
VALUE "ÇáåÜÜÜÜÜÜÜÜÜÇÊÝ" ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 37 ,453 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 201 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 37 ,231 TEXTBOX text2;
HEIGHT 26 ;
WIDTH 201 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 37 ,11 TEXTBOX text3;
HEIGHT 26 ;
WIDTH 201 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 97 ,501 BUTTONEX btn1;
CAPTION "ÇáÇæá";
ON CLICK FirstRecord()  ;
WIDTH 157 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 97 ,337 BUTTONEX btn2;
CAPTION "ÇáÊÇáí";
ON CLICK NexstRecord()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 97 ,172 BUTTONEX btn3;
CAPTION "ÇáÓÇÈÞ";
ON CLICK PreviousRecord()  ;
WIDTH 161 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 97 ,10 BUTTONEX btn4;
CAPTION "ÇáÇÎíÑ";
ON CLICK LastRecord()  ;
WIDTH 157 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,12 BUTTONEX btn5;
CAPTION "ÎÑæÌ";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 142 ,10 BUTTONEX btn6;
CAPTION "ÍÐÝ";
ON CLICK delrecord()  ;
WIDTH 157 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 141 ,337 BUTTONEX btn7;
CAPTION "ÊÚÏíá";
ON CLICK editrecord()  ;
WIDTH 160 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 141 ,172 BUTTONEX btn8;
CAPTION "ÍÝÙ";
ON CLICK saveeditrecord()  ;
WIDTH 161 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 304 ,506 BUTTONEX btn9;
CAPTION "ÇáÛÇÁ ÇáÃãÑ";
ON CLICK cancel()  ;
WIDTH 157 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 140 ,501 BUTTONEX btn10;
CAPTION "ÇÖÇÝÉ";
ON CLICK addrecord()  ;
WIDTH 157 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO showdada
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
Proc showdada
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
Proc FirstRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showdada
ENDIF
Return Nil
Proc NexstRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("äåÇíÉ ÇáÓÌáÇÊ","Text Here")
ELSE
DO showdada
ENDIF
ENDIF
Return Nil
Proc PreviousRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGINFO("ÈÏÇíÉ ÇáÓÌáÇÊ","Text Here")
ELSE
DO showdada
ENDIF
ENDIF
Return Nil
Proc LastRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showdada
ENDIF
Return Nil
Proc closedb
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closewindow
win1.Release ( )
Return Nil
Proc close
DO closedb
DO closewindow
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("åá ÊÑíÏ ÇáÍÐÝ ÇáÂä","Text Here")
IF MyOut = false
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
DO showdada
ELSE
MyOut := MSGINFO("áÇíæÌÏ ÓÌáÇÊ ááÍÐÝ","Text Here")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn7.Enabled := false
win1.btn8.Enabled := true
win1.btn9.Enabled := true
win1.btn10.Enabled := false
win1.text1.ReadOnly := false
win1.text2.ReadOnly := false
win1.text3.ReadOnly := false
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := true
win1.btn8.Enabled := false
win1.btn9.Enabled := false
win1.text1.ReadOnly := true
win1.text2.ReadOnly := true
win1.text3.ReadOnly := true
win1.btn10.Enabled := true
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
ELSE
MyOut := MSGINFO("áÇíæÌÏ ÓÌáÇÊ ááÊÚÏíá","Text Here")
ENDIF
Return Nil
Proc cancel
IF savemode = 2
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
ENDIF
oRS:MOVEFIRST()
ENDIF
DO mode WITH 2
DO showdada
Return Nil
Proc saveeditrecord
DO mode WITH 2
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
MyOut := MSGBOX("Êã ÇáÍÝÙ ÈäÌÇÍ æÇáÚæÏÉ Çáì ÇáÓÌá ÇáÇæá","Text Here")
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showdada
ENDIF
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showdada
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFAIFI23
START DOUBLES
Return
*-------------------------------------------------------------------*
