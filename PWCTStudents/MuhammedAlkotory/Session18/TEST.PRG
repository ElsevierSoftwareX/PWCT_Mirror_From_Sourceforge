*---------------------------------------------------------------------------*
* Time : 02:47:05    Date : 10/23/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 801 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 205 ,166 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 198 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 125 ,166 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,166 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 65 ,44 LABEL lbl1 ;
VALUE "name" ;
WIDTH 94 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 121 ,44 LABEL lbl2 ;
VALUE "address" ;
WIDTH 103 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 179 ,44 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 105 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 280 ,232 BUTTONEX btn1;
CAPTION "save record";
ON CLICK mysave()  ;
WIDTH 135 HEIGHT 37 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 280 ,47 BUTTONEX btn2;
CAPTION "exit";
ON CLICK myexit()  ;
WIDTH 148 HEIGHT 37 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 278 ,532 BUTTONEX btn3;
CAPTION "showrecords";
ON CLICK myshow()  ;
WIDTH 156 HEIGHT 37 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 39 ,437 GRID Grid1;
WIDTH 334 ;
HEIGHT 196 ;
HEADERS {"phone","address","name"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("operation done","ok")
Return Nil
Proc myexit
win1.Release ( )
Return Nil
Proc myshow
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
