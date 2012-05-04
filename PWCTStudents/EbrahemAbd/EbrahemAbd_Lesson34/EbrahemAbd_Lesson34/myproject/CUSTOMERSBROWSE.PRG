*---------------------------------------------------------------------------*
* Time : 11:03:40    Date : 04/21/2012
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
Function CUSTOMERSBROWSE
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

Resistance R_CUSTOMERSBROWSE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSE_18smart1() code
class CustomersBrowseClass From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "Customers"
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"CustPhone","CustName"}
Data columnstitles init {"ÑÞã ÇáÊáíÝæä","ÇÓã ÇáÚãíá"}
Data columnswidths init {150,400}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method SetColumn
EndClass
Method showwindow Class CustomersBrowseClass
if !iswindowdefined( CustomersBrowseWindow )
DEFINE WINDOW CustomersBrowseWindow ;
AT 10 ,10 ;
WIDTH 522 ;
HEIGHT 382 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÔÇÔÉ ÇáÈÍË Ýì ÈíÇäÇÊ ÇáÚãáÇÁ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "MYPROJECT\IMAGES\ABN.ANI" ;
BACKCOLOR {255,255,255}

@ -12 ,-2 IMAGE image1;
PICTURE "IMAGES\BACK.JPG";
STRETCH ;
WIDTH 600 HEIGHT 376
@ 10 ,63 TEXTBOX textName;
HEIGHT 35 ;
WIDTH 299 ;
BOLD ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 297 ,368 BUTTONEX btn1;
CAPTION "ÇÈÏÃ ÇáÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 297 ,60 BUTTONEX btnclose;
CAPTION "ÎÑæÌ";
PICTURE "IMAGES\CLOSE.BMP";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 52 ,60 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 403 ;
HEIGHT 230 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 14 ,366 COMBOBOX comboFind;
ON CHANGE self:setcolumn()  ;
WIDTH 100 ;
HEIGHT 400;
ITEMS self:ColumnsTitles ;
VALUE 1 ;
LISTWIDTH 1 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowseWindow.Center ( )
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("CustomersBrowseWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("CustomersBrowseWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW CustomersBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method Print Class CustomersBrowseClass
Local cName,myout
cName := CustomersBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method SetColumn Class CustomersBrowseClass
Local nIndex
nIndex := CustomersBrowseWindow.comboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method closewindow Class CustomersBrowseClass
CustomersBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseClass
Local nvalue,myout
nvalue := CustomersBrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseClass
CustomersBrowseWindow.grid1.DeleteAllItems ( )
CustomersBrowseWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseClass
CustomersBrowseWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseClass
CustomersBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseClass
cName := CustomersBrowseWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
