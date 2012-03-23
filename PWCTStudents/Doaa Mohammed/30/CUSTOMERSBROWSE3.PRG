*---------------------------------------------------------------------------*
* Time : 10:21:38    Date : 03/14/2012
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

Resistance R_CUSTOMERSBROWSE3_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSE3_18smart1() code
class customersbrowse3Class From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "customers_all"
Data column init "country"
Data PrimaryKey init "id"
Data columns init {"custname","custphone","country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,100}
Data countryitems init {}
Data countryitemsIDS init {}
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
Method showwindow Class customersbrowse3Class
if !iswindowdefined( customersbrowse3Window )
DEFINE WINDOW customersbrowse3Window ;
AT 10 ,10 ;
WIDTH 716 ;
HEIGHT 436 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 12 ,19 LABEL lbl1 ;
VALUE "COUNTRY " ;
WIDTH 131 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
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
@ 61 ,24 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:loadlookuptable("Country","Country",@self:Countryitems,"id",@self:CountryitemsIDS)
@ 10 ,192 COMBOBOX combo1;
WIDTH 110 ;
HEIGHT 300;
ITEMS self:countryitems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

customersbrowse3Window.Center ( )
ACTIVATE WINDOW customersbrowse3Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class customersbrowse3Class
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class customersbrowse3Class
Local cName,myout
cName := customersbrowse3Window.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class customersbrowse3Class
customersbrowse3Window.Release ( )
Return 0
Method OpenDataWindow Class customersbrowse3Class
Local nvalue,myout
nvalue := customersbrowse3Window.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class customersbrowse3Class
customersbrowse3Window.grid1.DeleteAllItems ( )
customersbrowse3Window.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class customersbrowse3Class
customersbrowse3Window.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class customersbrowse3Class
customersbrowse3Window.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class customersbrowse3Class
nvalue := customersbrowse3Window.combo1.Value
IF nvalue = 0
Return ""
ENDIF
nvalue := self:Countryitems[nvalue]
Return nvalue



End Of Resistance

*-------------------------------------------------------------------*
