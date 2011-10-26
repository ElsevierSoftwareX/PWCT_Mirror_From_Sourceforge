*---------------------------------------------------------------------------*
* Time : 03:22:02    Date : 10/26/2011
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
					Resistance sub                           
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main

Resistance R_TEST_15speed2() address Code Unit : Circuits\Main\Main\sub


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
WIDTH 568 ;
HEIGHT 378 ;
ICON "PWCTICON" ;
TITLE "telephone database" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 34 ,210 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 102 ,210 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 162 ,210 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 109 ;
HEIGHT 45 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 112 ,16 BUTTONEX btn2;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 191 ,16 BUTTONEX btn3;
CAPTION "prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 269 ,16 BUTTONEX btn4;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 268 ,222 BUTTONEX btn5;
CAPTION " close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 138 HEIGHT 41 ;
FONT "Arial Narrow" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 270 ,405 BUTTONEX btn6;
CAPTION "search";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,255};
ON CLICK mysearch()  ;
WIDTH 138 HEIGHT 41 ;
FONT "arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

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
win1.textName.Value := cName
win1.textAddress.Value := cAddress
win1.textPhone.Value := cPhone
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO show
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("it's the last","sorry")
ELSE
DO show
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVEFIRST()
MyOut := MSGBOX("it's the first","sorry")
ELSE
DO show
ENDIF
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO show
Return Nil


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\sub
Resistance R_TEST_15speed2() code
Proc mysearch
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 526 ;
HEIGHT 352 ;
ICON "PWCTICON" ;
TITLE "search" ;
MODAL ;
BACKCOLOR {128,128,255} 

@ 26 ,18 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 77 ,5 LISTBOX list1;
WIDTH 502 ;
HEIGHT 224 ;
FONT "Arial" SIZE 9 ;
BOLD ;
BACKCOLOR {0,0,160} ;
FONTCOLOR {255,255,255}
@ 23 ,380 BUTTONEX btnsearch;
CAPTION "search";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,255};
ON CLICK search()  ;
WIDTH 127 HEIGHT 43 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 23 ,106 TEXTBOX text10;
HEIGHT 43 ;
WIDTH 270 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc search
cname := win2.text10.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like'"+cname+"%'",oCon,3,3 )
mymax := oRS:RecordCount
win2.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win2.list1.AddItem ( vName+"-"+vAddress+"-"+vPhone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("record not found","sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
