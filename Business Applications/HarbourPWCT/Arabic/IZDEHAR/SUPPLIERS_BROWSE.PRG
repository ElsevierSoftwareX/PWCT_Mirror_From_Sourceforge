*---------------------------------------------------------------------------*
* Time : 15:18:37    Date : 10/25/2010
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
class SuppliersBrowseClass From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Suppliers_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"f_company","f_address","f_city","country","f_name"}
Data username init "systemdatabase"
Data password init "systemdatabase123"
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method GetSearchValue
Method settimer
Method SearchAdd
EndClass
Method showwindow Class SuppliersBrowseClass
IF .not. UserCan_WinSuppliers = 2
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
if !iswindowdefined( SuppliersBrowseWindow )
DEFINE WINDOW SuppliersBrowseWindow ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÈÍË Úä ãæÑÏ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-12 IMAGE image1;
PICTURE "image\back.jpg";
STRETCH ;
WIDTH 780 HEIGHT 360
@ 16 ,697 LABEL lbl1 ;
VALUE "ÇáÇÓã" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,252 TEXTBOX textNameBrowse;
HEIGHT 30 ;
WIDTH 430 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 18 ,136 BUTTONEX btn1;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,28 BUTTONEX btnclose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,135 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 620 ;
HEIGHT 250 ;
HEADERS {"ÇáÔÑßÉ","ÇáÚäæÇä","ÇáãÏíäÉ","ÇáÏæáÉ","ÇáÇÓã"};
WIDTHS {100,100,100,100,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 59 ,27 BUTTONEX btnPrint;
CAPTION "ØÈÇÚÉ";
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
cName := SuppliersBrowseWindow.textNamebrowse.Value
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
nvalue := SuppliersBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class SuppliersBrowseClass
cName := SuppliersBrowseWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class SuppliersBrowseClass
SuppliersBrowseWindow.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class SuppliersBrowseClass
SuppliersBrowseWindow.grid1browse.DeleteAllItems ( )
SuppliersBrowseWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class SuppliersBrowseClass
SuppliersBrowseWindow.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
