*---------------------------------------------------------------------------*
* Time : 11:35:55    Date : 01/13/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
#include "xhb.ch"
Function SELECTITEM
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

Resistance R_SELECTITEM_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SELECTITEM_18smart1() code
class SelectItemClass From SystemDatabase
Data cWindowName init "SelectItemWindow"
Data tablename init "Items"
Data column init "ItemName"
Data PrimaryKey init "ID"
Data columns init {"ItemName"}
Data columnstitles init {"Item Name"}
Data columnswidths init {200}
Data nSelectedID init 0
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class SelectItemClass
if !iswindowdefined( SelectItemWindow )
DEFINE WINDOW SelectItemWindow ;
AT 10 ,10 ;
WIDTH 444 ;
HEIGHT 339 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Select Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239}

@ 23 ,18 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 24 ,81 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 240 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}

@ 23 ,330 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 264 ,322 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 302 ;
HEIGHT 235 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

SelectItemWindow.Center ( )
ACTIVATE WINDOW SelectItemWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class SelectItemClass
self:nSelectedID := self:resultprimarykeys[nvalue]
self:nSelectedID = VAL ( self:nSelectedID )
SelectItemWindow.Release ( )
Return 0
Method Print Class SelectItemClass
Local cName,myout
cName := SelectItemWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class SelectItemClass
SelectItemWindow.Release ( )
Return 0
Method OpenDataWindow Class SelectItemClass
Local nvalue,myout
nvalue := SelectItemWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class SelectItemClass
SelectItemWindow.grid1.DeleteAllItems ( )
SelectItemWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class SelectItemClass
SelectItemWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SelectItemClass
SelectItemWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SelectItemClass
cName := SelectItemWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
