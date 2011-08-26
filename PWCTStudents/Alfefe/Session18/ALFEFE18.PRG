*---------------------------------------------------------------------------*
* Time : 16:13:15    Date : 08/26/2011
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


Resistance R_ALFEFE18_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE18_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 681 ;
HEIGHT 292 ;
ICON "PWCTICON" ;
TITLE "test" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 22 ,605 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 52 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 82 ,605 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 52 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 141 ,605 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 52 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 21 ,399 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 80 ,399 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 138 ,399 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 205 ,507 BUTTONEX btn1;
CAPTION "Õ›Ÿ";
ON CLICK saves()  ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 205 ,25 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK MSGINFO( close() ) ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 205 ,399 BUTTONEX btn3;
CAPTION "⁄—÷ «·»Ì«‰« ";
ON CLICK show()  ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 21 ,21 GRID Grid1;
WIDTH 355 ;
HEIGHT 178 ;
HEADERS {"«·Â« ›","«·⁄‰Ê«‰","«·«”„"};
WIDTHS {100,100,150} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc saves
DO connect
oRS:ADDNEW()
Cname := win1.text1.Value
Caddress := win1.text2.Value
Cphone := win1.text3.Value
oRS:fields:item("name"):value := Cname
oRS:fields:item("address"):value := Caddress
oRS:fields:item("phone"):value := Cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" „ Õ›Ÿ «·»Ì«‰«  »‰Ã«Õ","„—Õ»«")
Return Nil
Proc show
DO connect
numox := oRS:RecordCount
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO numox STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cphone,caddress,cname} )
oRS:MOVENEXT()
Next
oRS:MOVEFIRST()
Return Nil
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


End Of Resistance

INIT PROCEDURE Init_ALFEFE18
START DOUBLES
Return
*-------------------------------------------------------------------*
