*---------------------------------------------------------------------------*
* Time : 14:26:38    Date : 07/26/2010
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
Function ITEMSSEARCHWINDOW
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

Resistance R_ITEMSSEARCHWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSSEARCHWINDOW_15speed1() code
Class windowsearchItems
Data database init "data.mdb"
Data table init "ITEMS"
Data column init "ITEMname"
Data PrimaryKey init "id"
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method showdatawindow
EndClass
Method showwindow Class windowsearchItems
if !iswindowdefined( winsearch )
DEFINE WINDOW winsearch ;
AT 10 ,10 ;
WIDTH 564 ;
HEIGHT 368 ;
ICON "PWCTICON" ;
TITLE "Search" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

@ 13 ,17 LABEL lbl1 ;
VALUE "Item Name" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 13 ,140 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 290 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 12 ,442 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 60 ,139 LISTBOX list1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 290 ;
HEIGHT 250 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 271 ,442 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

winsearch.Center ( )
ACTIVATE WINDOW winsearch
EndIF

Return 0
Method ShowDataWindow Class windowsearchItems
myItemsObj:LFindRecord := true
myItemsObj:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = myItemsObj:ShowWindow()
Return 0
Method closewindow Class windowsearchItems
winsearch.Release ( )
Return 0
Method search Class windowsearchItems
cName := winsearch.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:database )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
winsearch.list1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
winsearch.list1.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
winsearch.list1.AddItem ( vName )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class windowsearchItems
nvalue := winsearch.list1.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
