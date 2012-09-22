*---------------------------------------------------------------------------*
* Time : 13:18:38    Date : 07/17/2012
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
Function CUSTOMERSBROWSE2
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

Resistance R_CUSTOMERSBROWSE2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSE2_18smart1() code
class CustomersBrowse2Class From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "Customers_All"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone","Country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,100}
Data Countryitems init {}
Data CountryitemsIDs init {}
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
Method showwindow Class CustomersBrowse2Class
if !iswindowdefined( CustomersBrowse2Window )
DEFINE WINDOW CustomersBrowse2Window ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,255}

@ 12 ,59 LABEL lbl1 ;
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
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 12 ,176 COMBOBOX comboCountry;
WIDTH 100 ;
HEIGHT 100;
ITEMS self:countryitems ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowse2Window.Center ( )
ACTIVATE WINDOW CustomersBrowse2Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse2Class
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class CustomersBrowse2Class
Local cName,myout
cName := CustomersBrowse2Window.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowse2Class
CustomersBrowse2Window.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse2Class
Local nvalue,myout
nvalue := CustomersBrowse2Window.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowse2Class
CustomersBrowse2Window.grid1.DeleteAllItems ( )
CustomersBrowse2Window.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse2Class
CustomersBrowse2Window.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowse2Class
CustomersBrowse2Window.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowse2Class
nvalue := CustomersBrowse2Window.ComboCountry.Value
IF nvalue = 0
Return ""
ENDIF
nvalue := self:Countryitems[nvalue]
Return nvalue



End Of Resistance

*-------------------------------------------------------------------*
