*---------------------------------------------------------------------------*
* Time : 20:09:09    Date : 07/26/2010
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
Function ITEMBROWSEWINDOW
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

Resistance R_ITEMBROWSEWINDOW_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMBROWSEWINDOW_15speed1() code
Class windowBrowseItems
Data database init "data.mdb"
Data table init "Items"
Data column init "Itemname"
Data PrimaryKey init "id"
Data columns init {"itemname","itemamount","itemprice"}
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method showdatawindow
EndClass
Method showwindow Class windowBrowseItems
if !iswindowdefined( winbrowse )
DEFINE WINDOW winbrowse ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "Search" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 14 ,21 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,108 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 10 ,534 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 280 ,534 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,106 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 250 ;
HEADERS {"Item Name","Item Amount","Item Price"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

winbrowse.Center ( )
ACTIVATE WINDOW winbrowse
EndIF

Return 0
Method ShowDataWindow Class windowBrowseItems
myItemsObj:LFindRecord := true
myItemsObj:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = myItemsObj:ShowWindow()
Return 0
Method closewindow Class windowBrowseItems
winbrowse.Release ( )
Return 0
Method search Class windowBrowseItems
cName := winbrowse.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=' + self:database )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:table +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
winbrowse.grid1.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
winbrowse.grid1.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
AADD( temp_array , vname2)
Next
winbrowse.grid1.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return 0
Method OpenDataWindow Class windowBrowseItems
nvalue := winbrowse.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow()
ENDIF
Return 0


End Of Resistance

*-------------------------------------------------------------------*
