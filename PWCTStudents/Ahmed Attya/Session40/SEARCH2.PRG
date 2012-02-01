*---------------------------------------------------------------------------*
* Time : 14:20:03    Date : 02/01/2012
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
Function SEARCH2
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

Resistance R_SEARCH2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCH2_18smart1() code
class CustomersBrowseClass2 From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "Customers_Al"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone","Country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,100}
Data CountryItems init {}
Data CountryItemsIDs init {}
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
Method showwindow Class CustomersBrowseClass2
if !iswindowdefined( CustomersSearchWindow )
DEFINE WINDOW CustomersSearchWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 383 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192}

@ 20 ,42 LABEL lbl1 ;
VALUE "Country" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 10 ,574 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 280 ,574 BUTTONEX btnclose;
CAPTION "Close";
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
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"ID",@self:CountryItemsIDs)
@ 18 ,124 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 100;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE STATUSBAR

STATUSITEM "PWCT By Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

CustomersSearchWindow.Center ( )
ACTIVATE WINDOW CustomersSearchWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass2
CustomersDataObject2:LFindRecord := true
CustomersDataObject2:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject2:ShowWindow()
Return 0
Method Print Class CustomersBrowseClass2
Local cName,myout
cName := CustomersSearchWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowseClass2
CustomersSearchWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseClass2
Local nvalue,myout
nvalue := CustomersSearchWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseClass2
CustomersSearchWindow.grid1.DeleteAllItems ( )
CustomersSearchWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseClass2
CustomersSearchWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseClass2
CustomersSearchWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseClass2
nvalue := CustomersSearchWindow.combo1.Value
IF nvalue = 0
Return ""
ENDIF
nvalue := self:countryItems[nvalue]
Return nvalue



End Of Resistance

*-------------------------------------------------------------------*
