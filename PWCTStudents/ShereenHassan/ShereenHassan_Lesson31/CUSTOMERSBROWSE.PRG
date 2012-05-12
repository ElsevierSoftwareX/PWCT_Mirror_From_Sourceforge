*---------------------------------------------------------------------------*
* Time : 16:57:18    Date : 05/04/2012
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
Data column init "custname"
Data PrimaryKey init "ID"
Data columns init {"custname","custphone"}
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
if !iswindowdefined( CustomersBrowesWindow )
DEFINE WINDOW CustomersBrowesWindow ;
AT 10 ,10 ;
WIDTH 657 ;
HEIGHT 468 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0}

@ -8 ,-2 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 727 HEIGHT 519
@ 20 ,149 TEXTBOX textName;
HEIGHT 31 ;
WIDTH 360 ;
BACKCOLOR {224,252,230} ;
FONTCOLOR {0,0,0}

@ 21 ,519 BUTTONEX btn1;
CAPTION "Search";
FONTCOLOR {109,135,20};
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 389 ,509 BUTTONEX btnclose;
CAPTION "Close";
FONTCOLOR {255,0,0};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 604 ;
HEIGHT 316 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 22 ,16 COMBOBOX comboFind;
ON CHANGE self:SetColumn()  ;
WIDTH 100 ;
HEIGHT 300;
ITEMS self:ColumnsTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomersBrowesWindow.Center ( )
ACTIVATE WINDOW CustomersBrowesWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass
CustomerObject:LFindRecord := true
CustomerObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomerObject:ShowWindow()
Return 0
Method Print Class CustomersBrowseClass
Local cName,myout
cName := CustomersBrowesWindow.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method SetColumn Class CustomersBrowseClass
Local nIndex
nIndex := CustomersBrowesWindow.comboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method closewindow Class CustomersBrowseClass
CustomersBrowesWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseClass
Local nvalue,myout
nvalue := CustomersBrowesWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseClass
CustomersBrowesWindow.grid1.DeleteAllItems ( )
CustomersBrowesWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseClass
CustomersBrowesWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseClass
CustomersBrowesWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseClass
cName := CustomersBrowesWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
