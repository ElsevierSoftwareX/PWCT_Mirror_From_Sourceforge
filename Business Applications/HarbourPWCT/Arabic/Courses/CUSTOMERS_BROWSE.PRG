*---------------------------------------------------------------------------*
* Time : 14:37:08    Date : 12/11/2012
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
Function CUSTOMERS_BROWSE
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

Resistance R_CUSTOMERS_BROWSE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_BROWSE_18smart1() code
class CustomersBrowseClass From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Customers_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"custtype","custclass","paymethod","f_mobile","f_name"}
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
Method showwindow Class CustomersBrowseClass
if !iswindowdefined( CustomersBrowseWindow )
DEFINE WINDOW CustomersBrowseWindow ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÈÍË Úä ãÊÏÑÈ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-12 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\back.jpg";
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
@ 18 ,253 TEXTBOX textNameBrowse;
ON CHANGE self:search()  ;
HEIGHT 30 ;
WIDTH 430 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 18 ,28 BUTTONEX btnclose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,26 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 710 ;
HEIGHT 250 ;
HEADERS {"äæÚ ÇáÚãíá","ÝÆÉ ÇáÚãíá","ØÑíÞÉ ÇáÓÏÇÏ","ÌæÇá","ÇáÇÓã"};
WIDTHS {100,100,100,180,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 18 ,137 BUTTONEX btnPrint;
CAPTION "ØÈÇÚÉ";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
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
cName := CustomersBrowseWindow.textNamebrowse.Value
cName = ALLTRIM ( cName )
Customersreportobject:filter := ""
IF .not. empty(cName)
Customersreportobject:filter := '((Customers_all.f_name) Like "'+cName+'*")'
ENDIF
myout = Customersreportobject:ShowWindow()
Return 0
Method closewindow Class CustomersBrowseClass
CustomersBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseClass
Local nvalue,myout
nvalue := CustomersBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class CustomersBrowseClass
cName := CustomersBrowseWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustomersBrowseClass
CustomersBrowseWindow.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class CustomersBrowseClass
CustomersBrowseWindow.grid1browse.DeleteAllItems ( )
CustomersBrowseWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseClass
CustomersBrowseWindow.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
