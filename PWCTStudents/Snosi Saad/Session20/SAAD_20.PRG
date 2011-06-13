*---------------------------------------------------------------------------*
* Time : 20:50:23    Date : 06/13/2011
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


Resistance R_SAAD_20_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_20_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 416 ;
HEIGHT 330 ;
ICON "PWCTICON" ;
TITLE "«·»ÕÀ" ;
MAIN ;
BACKCOLOR {85,148,210} 

@ 25 ,82 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 26 ,291 LABEL lbl1 ;
VALUE "«·≈”‹‹‹‹‹‹‹‹‹‹‹‹‹‹„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 25 ,25 BUTTONEX btn1;
CAPTION "»ÕÀ";
ON CLICK search()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 69 ,25 LISTBOX list1;
WIDTH 356 ;
HEIGHT 195 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Search
cname := win1.textname.Value
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
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win1.list1.AddItem ( vname + " - " + vaddress + " - " + vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("«·”Ã· €Ì— „ÊÃÊœ","⁄›Ê«")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_20
START DOUBLES
Return
*-------------------------------------------------------------------*
