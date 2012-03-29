*---------------------------------------------------------------------------*
* Time : 23:35:40    Date : 03/27/2012
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
Data cWindowName init "customers"
Data tablename init "customers"
Data column init "custname"
Data PrimaryKey init "id"
Data columns init {"custname","custphone"}
Data columnstitles init {"name","phone"}
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
WIDTH 682 ;
HEIGHT 251 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,128}

@ 13 ,138 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 404 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64}

@ 18 ,558 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 135 ,558 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 51 ,13 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 526 ;
HEIGHT 115 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,10 COMBOBOX comboFind;
ON CHANGE self:setcolumn()  ;
WIDTH 100 ;
HEIGHT 300;
ITEMS self:ColumnsTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64}
@ 71 ,558 BUTTONEX btn2;
CAPTION "Print ";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustomersBrowseWindow.Center ( )
ACTIVATE WINDOW CustomersBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:showwindow()
Return 0
Method Print Class CustomersBrowseClass
Local cName,myout
cName := CustomersBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
Customersreportobject:filter := ""
IF .not. empty(cName)
Customersreportobject:filter := '(('+self:tablename+'.'+self:column+') Like "'+cName+'*")'
ENDIF
myout = Customersreportobject:ShowWindow()
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
