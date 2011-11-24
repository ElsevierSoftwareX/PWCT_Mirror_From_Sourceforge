*---------------------------------------------------------------------------*
* Time : 18:03:31    Date : 11/21/2011
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
Function BROWSE
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

Resistance R_BROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BROWSE_15speed1() code
class BrowseClass From SystemDatabase
Data tablename init "Customers"
Data column init "Custname"
Data PrimaryKey init "id"
Data columns init {"Custname","Custaddress","Custphone"}
Data columnstitles init {"Name","Address","Phone"}
Data columnswidths init {200,100,100}
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
Method showwindow Class BrowseClass
if !iswindowdefined( BrowseWindow )
DEFINE WINDOW BrowseWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 433 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255}

@ 20 ,72 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 51 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}

@ 10 ,574 BUTTONEX btn1;
CAPTION "Search";
FONTCOLOR {0,0,0};
BACKCOLOR {64,128,128};
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 351 ,570 BUTTONEX btnclose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 77 ,43 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
END WINDOW

BrowseWindow.Center ( )
ACTIVATE WINDOW BrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class BrowseClass
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class BrowseClass
Local cName,myout
cName := BrowseWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class BrowseClass
BrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class BrowseClass
Local nvalue,myout
nvalue := BrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class BrowseClass
BrowseWindow.grid1.DeleteAllItems ( )
BrowseWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class BrowseClass
BrowseWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class BrowseClass
BrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class BrowseClass
cName := BrowseWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
