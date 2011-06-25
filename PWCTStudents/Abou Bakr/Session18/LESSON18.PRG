*---------------------------------------------------------------------------*
* Time : 23:22:40    Date : 06/25/2011
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


Resistance R_LESSON18_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON18_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 754 ;
HEIGHT 414 ;
ICON "PWCTICON" ;
TITLE "œ› — «·›‰«ÊÌ‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 66 ,689 LABEL lbl1 ;
VALUE "«·«”„" ;
WIDTH 44 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 115 ,686 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 48 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 167 ,688 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 48 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 61 ,478 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 109 ,478 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 159 ,477 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 209 ,625 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·”Ã·« ";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK SaveRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 329 ,628 BUTTONEX btn2;
CAPTION "≈€·«ﬁ «·‰«›–…";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK CloseWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 270 ,627 BUTTONEX btn3;
CAPTION "⁄—÷ «·”Ã·« ";
FONTCOLOR {64,0,64};
BACKCOLOR {236,233,216};
ON CLICK ShowRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 10 ,10 GRID Grid1;
WIDTH 463 ;
HEIGHT 356 ;
HEADERS {"«·«”„","«·⁄‰Ê«‰", "«·Â« ›"};
WIDTHS {150,150,150} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc SaveRecord
DO Connection
oRS:ADDNEW()
cName := win1.text1.Value
cAddress := win1.text2.Value
cPhone := win1.text3.Value
oRS:fields:item("Name"):value := cName
oRS:fields:item("Address"):value := cAddress
oRS:fields:item("Phone"):value := cPhone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" „ Õ›Ÿ «·»Ì«‰« ","‰⁄„")
Return Nil
Proc CloseWin
Win1.Release ( )
Return Nil
Proc ShowRecords
DO Connection
MyMax := oRS:RecordCount
oRS:MOVEFIRST()
Win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO MyMax STEP 1
cName := oRS:fields:item("Name"):value
cAddress := oRS:fields:item("Address"):value
cPhone := oRS:fields:item("Phone"):value
Win1.Grid1.AddItem ( {cName, cAddress, cPhone} )
oRS:MOVENEXT()
Next
Return Nil
Proc Connection
Public oCon,oRs
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Aboubacar.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Not",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON18
START DOUBLES
Return
*-------------------------------------------------------------------*
