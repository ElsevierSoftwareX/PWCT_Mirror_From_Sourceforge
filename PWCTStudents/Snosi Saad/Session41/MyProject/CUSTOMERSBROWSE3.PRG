*---------------------------------------------------------------------------*
* Time : 12:19:52    Date : 07/31/2011
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
Function CUSTOMERSBROWSE3
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

Resistance R_CUSTOMERSBROWSE3_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSE3_15speed1() code
class CustomersBrowse3Class From SystemDatabase
Data tablename init "Customers_All"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"Custname","CustPhone","Country"}
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
Method showwindow Class CustomersBrowse3Class
if !iswindowdefined( CustomersBrowse3Window )
DEFINE WINDOW CustomersBrowse3Window ;
AT 10 ,10 ;
WIDTH 700 ;
HEIGHT 360 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 0 ,0 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 700 HEIGHT 360
@ 20 ,42 LABEL lbl1 ;
VALUE "Contry" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 20 ,574 BUTTONEX btn1;
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
Myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDS)
@ 15 ,154 COMBOBOX comboCountry;
WIDTH 140 ;
HEIGHT 100;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowse3Window.Center ( )
ACTIVATE WINDOW CustomersBrowse3Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse3Class
Return 0
Method Print Class CustomersBrowse3Class
Local cName,myout
cName := CustomersBrowse3Window.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowse3Class
CustomersBrowse3Window.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse3Class
Local nvalue,myout
nvalue := CustomersBrowse3Window.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowse3Class
CustomersBrowse3Window.grid1.DeleteAllItems ( )
CustomersBrowse3Window.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse3Class
CustomersBrowse3Window.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowse3Class
CustomersBrowse3Window.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowse3Class
nValue := CustomersBrowse3Window.ComboCountry.Value
IF nValue = 0
Return ""
ENDIF
nValue := Self:CountryItems[nValue]
Return nValue



End Of Resistance

*-------------------------------------------------------------------*
