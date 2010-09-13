*---------------------------------------------------------------------------*
* Time : 12:33:50    Date : 09/13/2010
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
Function SUPPLIERS_BROWSE
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

Resistance R_SUPPLIERS_BROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUPPLIERS_BROWSE_15speed1() code
class SuppliersBrowseClass From SystemDatabase
Data tablename init "Suppliers_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"f_name","country","f_city","f_address","f_company"}
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
Method showwindow Class SuppliersBrowseClass
if !iswindowdefined( SuppliersBrowseWindow )
DEFINE WINDOW SuppliersBrowseWindow ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Suppliers Search/Browse" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-12 IMAGE image1;
PICTURE "image\back.jpg";
STRETCH ;
WIDTH 720 HEIGHT 360
@ 20 ,42 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
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
HEADERS {"Name","Country","City","Address","Company"};
WIDTHS {200,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 60 ,574 BUTTONEX btnPrint;
CAPTION "Print";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

SuppliersBrowseWindow.Center ( )
ACTIVATE WINDOW SuppliersBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class SuppliersBrowseClass
SuppliersDataObject:LFindRecord := true
SuppliersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = SuppliersDataObject:ShowWindow()
Return 0
Method Print Class SuppliersBrowseClass
Local cName,myout
cName := SuppliersBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
Suppliersreportobject:filter := ""
IF .not. empty(cName)
Suppliersreportobject:filter := '((Suppliers_all.f_name) Like "'+cName+'*")'
ENDIF
myout = Suppliersreportobject:ShowWindow()
Return 0
Method closewindow Class SuppliersBrowseClass
SuppliersBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class SuppliersBrowseClass
Local nvalue,myout
nvalue := SuppliersBrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class SuppliersBrowseClass
SuppliersBrowseWindow.grid1.DeleteAllItems ( )
SuppliersBrowseWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class SuppliersBrowseClass
SuppliersBrowseWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SuppliersBrowseClass
SuppliersBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SuppliersBrowseClass
cName := SuppliersBrowseWindow.textName.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
