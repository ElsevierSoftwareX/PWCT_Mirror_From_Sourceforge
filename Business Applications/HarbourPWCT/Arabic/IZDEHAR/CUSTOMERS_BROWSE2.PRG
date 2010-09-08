*---------------------------------------------------------------------------*
* Time : 06:08:29    Date : 09/08/2010
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
Function CUSTOMERS_BROWSE2
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

Resistance R_CUSTOMERS_BROWSE2_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_BROWSE2_15speed1() code
class CustomersBrowse2Class From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Customers_All"
Data column init "f_mobile"
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
Method showwindow Class CustomersBrowse2Class
if !iswindowdefined( CustomersBrowse2Window )
DEFINE WINDOW CustomersBrowse2Window ;
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
PICTURE "image\back.jpg";
STRETCH ;
WIDTH 780 HEIGHT 360
@ 16 ,697 LABEL lbl1 ;
VALUE "ÌæÇá" ;
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
HEADERS {"äæÚ ÇáÚãíá","ÝÆÉ ÇáÚãíá","ØÑíÞÉ ÇáÓÏÇÏ","ÌæÇá","ÇáÇÓã"};
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

CustomersBrowse2Window.Center ( )
ACTIVATE WINDOW CustomersBrowse2Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse2Class
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class CustomersBrowse2Class
Local cName,myout
cName := CustomersBrowse2Window.textNamebrowse.Value
cName = ALLTRIM ( cName )
Customersreportobject:filter := ""
IF .not. empty(cName)
Customersreportobject:filter := '((Customers_all.f_name) Like "'+cName+'*")'
ENDIF
myout = Customersreportobject:ShowWindow()
Return 0
Method closewindow Class CustomersBrowse2Class
CustomersBrowse2Window.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse2Class
Local nvalue,myout
nvalue := CustomersBrowse2Window.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class CustomersBrowse2Class
cName := CustomersBrowse2Window.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustomersBrowse2Class
CustomersBrowse2Window.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class CustomersBrowse2Class
CustomersBrowse2Window.grid1browse.DeleteAllItems ( )
CustomersBrowse2Window.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse2Class
CustomersBrowse2Window.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
