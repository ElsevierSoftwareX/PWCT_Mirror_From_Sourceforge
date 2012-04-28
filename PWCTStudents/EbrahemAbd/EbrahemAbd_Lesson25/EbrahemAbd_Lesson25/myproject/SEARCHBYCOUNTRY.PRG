*---------------------------------------------------------------------------*
* Time : 19:35:32    Date : 04/17/2012
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
Function SEARCHBYCOUNTRY
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

Resistance R_SEARCHBYCOUNTRY_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCHBYCOUNTRY_18smart1() code
class SearchByCountryClass From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "Customers_All"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"Country","CustPhone","CustName"}
Data columnstitles init {"ÇáÏæáÉ","ÑÞã ÇáÊáíÝæä","ÇÓã ÇáÚãíá"}
Data columnswidths init {150,150,400}
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
Method showwindow Class SearchByCountryClass
if !iswindowdefined( SearchByCountryWindow )
DEFINE WINDOW SearchByCountryWindow ;
AT 10 ,10 ;
WIDTH 631 ;
HEIGHT 448 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÔÇÔÉ ÇáÈÍË Ýì ÈíÇäÇÊ ÇáÚãáÇÁ ÈÇÓÊÎÏÇã ßæãÈæÈæßÓ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "MYPROJECT\IMAGES\ABN.ANI" ;
BACKCOLOR {64,0,64}

@ 28 ,28 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 561 HEIGHT 356
@ 41 ,430 LABEL lbl1 ;
VALUE "ÅÓã ÇáÏæáÉ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 337 ,406 BUTTONEX btn1;
CAPTION "ÇÈÏÃ ÇáÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,100 BUTTONEX btnclose;
CAPTION "ÎÑæÌ";
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 92 ,99 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 403 ;
HEIGHT 230 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"id",@self:CountryItemsIDs)
@ 40 ,102 COMBOBOX comboCountry;
WIDTH 325 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

SearchByCountryWindow.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("SearchByCountryWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("SearchByCountryWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW SearchByCountryWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class SearchByCountryClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method Print Class SearchByCountryClass
Local cName,myout
cName := SearchByCountryWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class SearchByCountryClass
SearchByCountryWindow.Release ( )
Return 0
Method OpenDataWindow Class SearchByCountryClass
Local nvalue,myout
nvalue := SearchByCountryWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class SearchByCountryClass
SearchByCountryWindow.grid1.DeleteAllItems ( )
SearchByCountryWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class SearchByCountryClass
SearchByCountryWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SearchByCountryClass
SearchByCountryWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SearchByCountryClass
nvalue := SearchByCountryWindow.comboCountry.Value
nValue := SearchByCountryWindow.comboCountry.Value
IF nValue=0
Return ""
ENDIF
nValue := self:CountryItems[nvalue]
Return nvalue



End Of Resistance

*-------------------------------------------------------------------*
