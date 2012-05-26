*---------------------------------------------------------------------------*
* Time : 02:20:35    Date : 05/07/2012
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
Function BROWSEPAYM
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

Resistance R_BROWSEPAYM_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BROWSEPAYM_18smart1() code
class BrowsePayMClass From SystemDatabase
Data cWindowName init "BrowsePayMWindow"
Data tablename init "QR1"
Data column init "Acc"
Data PrimaryKey init "id"
Data columns init {"ZN","Amount","Acc"}
Data columnstitles init {"ÑÞã ÇáÓäÏ","ÇáãÈáÛ","ÇÓã ÇáÍÓÇÈ"}
Data columnswidths init {150,150,150}
Data aAccItems init {}
Data aAccItemsIDs init {}
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
Method showwindow Class BrowsePayMClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 614 ;
HEIGHT 432 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 0 ,-12 IMAGE image1;
PICTURE "Images\Back.jpg";
STRETCH ;
WIDTH 811 HEIGHT 395
@ 13 ,35 LABEL lbl1 ;
VALUE "ÇÓã ÇáÍÓÇÈ" ;
WIDTH 86 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 324 ,416 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 57 ,20 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 485 ;
HEIGHT 247 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = Self:LoadLookupTable("Accounts","Acc",@Self:aAccItems,"ID",@Self:aAccItemsIDs)
@ 12 ,139 COMBOBOX comboAccN;
ON CHANGE Self:Search()  ;
WIDTH 150 ;
HEIGHT 400;
ITEMS Self:aAccItems ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class BrowsePayMClass
BrowsePayMObject:LFindRecord := true
BrowsePayMObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = BrowsePayMObject:ShowWindow()
Return 0
Method Print Class BrowsePayMClass
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class BrowsePayMClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class BrowsePayMClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class BrowsePayMClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class BrowsePayMClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class BrowsePayMClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class BrowsePayMClass
Local nValue,cAcc
nValue := &(self:cWindowName).comboAccN.Value
IF nValue=0
Return ""
ENDIF
cAcc := Self:aAccItems[nValue]
Return cAcc



End Of Resistance

*-------------------------------------------------------------------*
