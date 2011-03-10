*---------------------------------------------------------------------------*
* Time : 01:07:16    Date : 11/28/2010
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

Resistance R_CUSTOMERSBROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSBROWSE_15speed1() code
class CustomersBrowseClass From SystemDatabase
Data tablename init "Customers"
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone"}
Data columnstitles init {"Name","Phone"}
Data columnswidths init {200,100}
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

@ -2 ,-2 IMAGE image1;
PICTURE "images\back.jpg";
STRETCH ;
WIDTH 710 HEIGHT 340
@ 13 ,168 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
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
@ 14 ,16 COMBOBOX comboFind;
ON CHANGE self:setcolumn()  ;
WIDTH 140 ;
HEIGHT 100;
ITEMS self:ColumnsTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowseWindow.Center ( )
ACTIVATE WINDOW CustomersBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
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
nIndex := CustomersBrowseWindow.ComboFind.Value
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
