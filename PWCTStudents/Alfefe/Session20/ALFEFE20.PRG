*---------------------------------------------------------------------------*
* Time : 03:04:34    Date : 08/29/2011
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


Resistance R_ALFEFE20_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE20_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 399 ;
HEIGHT 313 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,92 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 300 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {1,1,1} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} 

@ 0 ,0 BUTTONEX btn1;
CAPTION "»ÕÀ";
FONTCOLOR {0,255,0};
BACKCOLOR {0,0,0};
ON CLICK search()  ;
WIDTH 95 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 248 ,-3 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,255,0};
BACKCOLOR {0,0,0};
ON CLICK close()  ;
WIDTH 400 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 27 ,0 LISTBOX list1;
WIDTH 426 ;
HEIGHT 224 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {0,255,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc search
cname := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cname + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax>0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win1.list1.AddItem ( vname + " - " + vaddress + " - " + vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("«·”Ã· €Ì— „ÊÃÊœ","Text Here")
ENDIF
Return Nil
Proc closesystem
oRS:Close()
oCon:CLOSE()
Return Nil
Proc close
DO search
DO closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE20
START DOUBLES
Return
*-------------------------------------------------------------------*
