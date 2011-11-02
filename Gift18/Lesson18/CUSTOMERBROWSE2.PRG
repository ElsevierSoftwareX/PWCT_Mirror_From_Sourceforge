*---------------------------------------------------------------------------*
* Time : 09:03:33    Date : 10/27/2011
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
Function CUSTOMERBROWSE2
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

Resistance R_CUSTOMERBROWSE2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERBROWSE2_18smart1() code
class CustomersBrowse2Class From SystemDatabase
Data cWindowName init "CustomersBrowse2Window"
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
Method showwindow Class CustomersBrowse2Class
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

@ -4 ,-2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 700 HEIGHT 350
@ 20 ,152 LABEL lbl1 ;
VALUE "Country" ;
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
myout = self:LoadLookupTable("country","country",@self:countryitems,"id",@self:countryitemsids)
@ 20 ,230 COMBOBOX comboCountry;
WIDTH 260 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse2Class
Return 0
Method Print Class CustomersBrowse2Class
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowse2Class
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse2Class
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowse2Class
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse2Class
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowse2Class
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowse2Class
nValue := &(self:cWindowName).ComboCountry.Value
IF nvalue = 0
Return ""
ENDIF
nvalue := self:CountryItems[nvalue]
Return nValue



End Of Resistance

*-------------------------------------------------------------------*
