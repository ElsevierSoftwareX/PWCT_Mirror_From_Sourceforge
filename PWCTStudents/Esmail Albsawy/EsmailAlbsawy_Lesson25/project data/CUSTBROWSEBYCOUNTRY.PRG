*---------------------------------------------------------------------------*
* Time : 15:47:37    Date : 05/22/2012
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
Function CUSTBROWSEBYCOUNTRY
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

Resistance R_CUSTBROWSEBYCOUNTRY_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTBROWSEBYCOUNTRY_18smart1() code
class CustomerBrowseByCountryClass From SystemDatabase
Data cWindowName init "CustomerBrowseByCountryWindow"
Data tablename init "Customers_All"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"Custname","CustPhone","country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,200}
Data aCountryItemsIDs init {}
Data aCountryItems init {}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class CustomerBrowseByCountryClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
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
BACKCOLOR {255,255,255}

@ -6 ,-5 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 710 HEIGHT 340
@ 20 ,42 LABEL lbl1 ;
VALUE "Country" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
FONT "Arial" SIZE 13 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myOut = self:LoadLookUpTable("Country","Country",@self:aCountryItems,"id",@self:aCountryItemsIDS)
@ 14 ,138 COMBOBOX comboCountry;
ON CHANGE self:search()  ;
WIDTH 200 ;
HEIGHT 300;
ITEMS self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomerBrowseByCountryClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method closewindow Class CustomerBrowseByCountryClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class CustomerBrowseByCountryClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomerBrowseByCountryClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomerBrowseByCountryClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomerBrowseByCountryClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomerBrowseByCountryClass
Local nValue,cCountry
nValue := &(self:cWindowName).comboCountry.Value
IF nValue =0
Return ""
ENDIF
cCountry := self:aCountryItems[nValue]
Return cCountry



End Of Resistance

*-------------------------------------------------------------------*
