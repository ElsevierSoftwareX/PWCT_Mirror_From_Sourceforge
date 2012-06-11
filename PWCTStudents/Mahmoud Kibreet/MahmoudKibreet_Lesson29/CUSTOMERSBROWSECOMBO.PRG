*---------------------------------------------------------------------------*
* Time : 01:36:04    Date : 05/18/2012
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
Function CUSTOMERSBROWSECOMBO
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

Resistance R_CUSTOMERSBROWSECOMBO_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSECOMBO_18smart1() code
class CustomersBrowseComboClass From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "Customers_all"
Data column init "Country"
Data PrimaryKey init "ID"
Data columns init {"custname","custaddress","Country"}
Data columnstitles init {"Name","Address","Country"}
Data columnswidths init {200,200,100}
Data CountryItems init 0
Data CountryItemsIDS init 0
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
Method showwindow Class CustomersBrowseComboClass
if !iswindowdefined( CustomersBrowseComboWindow )
DEFINE WINDOW CustomersBrowseComboWindow ;
AT 10 ,10 ;
WIDTH 607 ;
HEIGHT 391 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -15 ,-12 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\KIBREET\DESKTOP\ALL TEST\TEST24\IMAGE\BUTTONBLUE.BMP";
STRETCH ;
WIDTH 675 HEIGHT 469
@ 27 ,18 LABEL lbl1 ;
VALUE "Country" ;
WIDTH 75 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 26 ,467 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 315 ,456 BUTTONEX btnclose;
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
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 29 ,105 COMBOBOX comboCountry;
WIDTH 151 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowseComboWindow.Center ( )
ACTIVATE WINDOW CustomersBrowseComboWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseComboClass
CustomerObject:LFindRecord := true
CustomerObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomerObject:ShowWindow()
Return 0
Method Print Class CustomersBrowseComboClass
Local cName,myout
cName := CustomersBrowseComboWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowseComboClass
CustomersBrowseComboWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseComboClass
Local nvalue,myout
nvalue := CustomersBrowseComboWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseComboClass
CustomersBrowseComboWindow.grid1.DeleteAllItems ( )
CustomersBrowseComboWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseComboClass
CustomersBrowseComboWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseComboClass
CustomersBrowseComboWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseComboClass
nValue := CustomersBrowseComboWindow.comboCountry.Value
IF nValue=0
Return ""
ENDIF
nValue := self:CountryItems[nValue]
Return nValue



End Of Resistance

*-------------------------------------------------------------------*
