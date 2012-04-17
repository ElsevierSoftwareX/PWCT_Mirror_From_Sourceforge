*---------------------------------------------------------------------------*
* Time : 14:48:11    Date : 03/13/2012
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
Function CUSTOMERBROWSE1
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

Resistance R_CUSTOMERBROWSE1_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERBROWSE1_18smart1() code
class CustomersBrowse1Class From SystemDatabase
Data cWindowName init "BrowseWindow"
Data tablename init "custdata"
Data column init "Name"
Data PrimaryKey init "id"
Data columns init {"Name","MobileNo","Email"}
Data columnstitles init {"Name","MobileNo","Email"}
Data columnswidths init {200,100,200}
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
Method showwindow Class CustomersBrowse1Class
if !iswindowdefined( CustomersBrowse1Window )
DEFINE WINDOW CustomersBrowse1Window ;
AT 10 ,10 ;
WIDTH 591 ;
HEIGHT 395 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -5 ,-41 IMAGE image1;
PICTURE "GRAY-1.JPG";
WIDTH 669 HEIGHT 375
@ 23 ,19 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 21 ,79 TEXTBOX textName;
HEIGHT 31 ;
WIDTH 396 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 23 ,481 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 85 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,468 BUTTONEX btnclose;
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
END WINDOW

CustomersBrowse1Window.Center ( )
ACTIVATE WINDOW CustomersBrowse1Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse1Class
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class CustomersBrowse1Class
Local cName,myout
cName := CustomersBrowse1Window.textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowse1Class
CustomersBrowse1Window.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse1Class
Local nvalue,myout
nvalue := CustomersBrowse1Window.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowse1Class
CustomersBrowse1Window.grid1.DeleteAllItems ( )
CustomersBrowse1Window.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse1Class
CustomersBrowse1Window.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowse1Class
CustomersBrowse1Window.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowse1Class
cName := CustomersBrowse1Window.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
