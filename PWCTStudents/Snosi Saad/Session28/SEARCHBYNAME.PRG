*---------------------------------------------------------------------------*
* Time : 10:46:21    Date : 06/26/2011
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
Function SEARCHBYNAME
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
	VetoUnit :

Resistance R_SEARCHBYNAME_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCHBYNAME_15speed1() code
Class Search
Data database init "data.mdb"
Data leble init "tel"
Data colume init "name"
Method ShowWindow
Method CloseWindow
Method GoSearch
EndClass
Method ShowWindow Class search
if !iswindowdefined( WinSearch )
DEFINE WINDOW WinSearch ;
AT 10 ,10 ;
WIDTH 416 ;
HEIGHT 330 ;
ICON "PWCTICON" ;
TITLE "«·»ÕÀ" ;
CHILD ;
BACKCOLOR {85,148,210} 

@ 25 ,82 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 26 ,292 LABEL lbl1 ;
VALUE "«·≈”‹‹‹‹‹‹‹‹‹‹‹‹‹‹„" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 25 ,25 BUTTONEX btnsearch;
CAPTION "»ÕÀ";
ON CLICK self:GoSearch()  ;
WIDTH 50 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 66 ,25 LISTBOX list1;
WIDTH 357 ;
HEIGHT 175 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 249 ,25 BUTTONEX btnclose;
CAPTION "≈€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 357 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winsearch.Center ( )
ACTIVATE WINDOW WinSearch
EndIF

Return 0
Method CloseWindow Class search
winsearch.Release ( )
Return 0
Method GoSearch Class Search
cname := winSearch.textname.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cname + "%'",oCon,3,3 )
mymax := oRS:RecordCount
winSearch.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
winsearch.list1.AddItem ( vname + " - " + vaddress + " - " + vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("«·”Ã· €Ì— „ÊÃÊœ","⁄›Ê«")
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
