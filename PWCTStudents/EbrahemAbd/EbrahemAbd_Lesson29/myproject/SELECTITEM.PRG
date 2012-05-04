*---------------------------------------------------------------------------*
* Time : 09:28:31    Date : 04/21/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
Data tablename init "items"
Data column init "itemNmae"
Data PrimaryKey init "id"
Data columns init {"itemName"}
Data columnstitles init {"ÇÓã ÇáÈäÏ"}
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
if !iswindowdefined( selectItemWindow )
DEFINE WINDOW selectItemWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÈäÏ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 13 ,559 LABEL lbl1 ;
VALUE "ÇáÇÓã" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 12 ,18 BUTTONEX btn1;
CAPTION "ÇáÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 280 ,574 BUTTONEX btnclose;
CAPTION "ÎÑæÌ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

selectItemWindow.Center ( )
ACTIVATE WINDOW selectItemWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class SelectItemClass
self:nSelectedID := Self:resultprimarykeys[nvalue]
self:nSelectedID = VAL ( self:nSelectedID )
myout = self:CloseWindow()
Return 0
Method Print Class SelectItemClass
Local cName,myout
cName := selectItemWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class SelectItemClass
selectItemWindow.Release ( )
Return 0
Method OpenDataWindow Class SelectItemClass
Local nvalue,myout
nvalue := selectItemWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class SelectItemClass
selectItemWindow.grid1.DeleteAllItems ( )
selectItemWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class SelectItemClass
selectItemWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SelectItemClass
selectItemWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SelectItemClass
cName := selectItemWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
