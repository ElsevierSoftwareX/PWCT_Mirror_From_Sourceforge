*---------------------------------------------------------------------------*
* Time : 11:40:10    Date : 03/07/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Data cWindowName init "CustomersBrowseWindow"
Data tablename init "Customers"
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone"}
Data columnstitles init {"Name","Phone"}
Data columnswidths init {200,200}
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
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 709 ;
HEIGHT 389 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -41 ,-6 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 710 HEIGHT 460
@ 62 ,306 TEXTBOX textName;
ON CHANGE self:search()  ;
HEIGHT 33 ;
WIDTH 245 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}

@ 308 ,590 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,128 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 424 ;
HEIGHT 166 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0}
@ 62 ,130 COMBOBOX comboFind;
ON CHANGE Self:SetColumn()  ;
WIDTH 100 ;
HEIGHT 300;
ITEMS Self:columnstitles ;
VALUE 1 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method Print Class CustomersBrowseClass
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method SetColumn Class CustomersBrowseClass
Local nIndex
nIndex := &(self:cWindowName).comboFind.Value
Self:Column := Self:Columns[nIndex]
Return 0
Method closewindow Class CustomersBrowseClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseClass
cName := &(self:cWindowName).textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
