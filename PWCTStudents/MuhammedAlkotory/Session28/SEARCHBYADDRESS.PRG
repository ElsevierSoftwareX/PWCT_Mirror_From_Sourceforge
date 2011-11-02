*---------------------------------------------------------------------------*
* Time : 23:50:59    Date : 10/31/2011
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
Function SEARCHBYADDRESS
Public True,False 
True = .T. 
False = .F. 
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

Resistance R_SEARCHBYADDRESS_15speed1() address Code Unit : Circuits\Main\Main\Main

Resistance R_SEARCHBYADDRESS_15speed2() address Code Unit : Circuits\Main\Main\sub


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCHBYADDRESS_15speed1() code


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\sub
Resistance R_SEARCHBYADDRESS_15speed2() code
Class searchwindow2
Method showsearch2
Method search
Method close
EndClass
Method showsearch2 Class searchwindow2
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 687 ;
HEIGHT 379 ;
ICON "PWCTICON" ;
TITLE "search" ;
MODAL ;
BACKCOLOR {0,255,64} 

@ 26 ,18 LABEL lbl1 ;
VALUE "Address" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 77 ,5 LISTBOX list1;
WIDTH 652 ;
HEIGHT 225 ;
FONT "Arial" SIZE 9 ;
BOLD ;
BACKCOLOR {0,0,64} ;
FONTCOLOR {255,255,255}
@ 23 ,380 BUTTONEX btnsearch;
CAPTION "search";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,255};
ON CLICK self:search()  ;
WIDTH 127 HEIGHT 43 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 23 ,106 TEXTBOX text10;
HEIGHT 43 ;
WIDTH 270 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 24 ,526 BUTTONEX btnclose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,128};
ON CLICK self:close()  ;
WIDTH 127 HEIGHT 43 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return 0
Method search Class searchwindow2
caddress := win2.text10.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where address like'"+caddress+"%'",oCon,3,3 )
mymax := oRS:RecordCount
win2.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win2.list1.AddItem ( vname+"-"+vaddress+"-"+vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("record not found","sorry")
ENDIF
Return 0
Method close Class searchwindow2
win2.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
