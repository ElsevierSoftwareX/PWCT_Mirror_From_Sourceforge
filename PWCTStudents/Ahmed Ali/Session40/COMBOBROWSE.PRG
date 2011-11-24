*---------------------------------------------------------------------------*
* Time : 17:43:04    Date : 11/23/2011
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
Function COMBOBROWSE
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

Resistance R_COMBOBROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COMBOBROWSE_15speed1() code
class ComboBrowseClass From SystemDatabase
Data tablename init "Customers_All"
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
Method showwindow Class ComboBrowseClass
if !iswindowdefined( ComboBrowseWindow )
DEFINE WINDOW ComboBrowseWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 423 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255}

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
@ 342 ,574 BUTTONEX btnclose;
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
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("country","country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 18 ,128 COMBOBOX comboCountry;
WIDTH 153 ;
HEIGHT 100;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ComboBrowseWindow.Center ( )
ACTIVATE WINDOW ComboBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class ComboBrowseClass
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class ComboBrowseClass
Local cName,myout
cName := ComboBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class ComboBrowseClass
ComboBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class ComboBrowseClass
Local nvalue,myout
nvalue := ComboBrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class ComboBrowseClass
ComboBrowseWindow.grid1.DeleteAllItems ( )
ComboBrowseWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class ComboBrowseClass
ComboBrowseWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ComboBrowseClass
ComboBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ComboBrowseClass
nvalue := ComboBrowseWindow.ComboCountry.Value
IF nvalue = 0
Return ""
ENDIF
nvalue := self:CountryItems[nvalue]
Return nvalue



End Of Resistance

*-------------------------------------------------------------------*
