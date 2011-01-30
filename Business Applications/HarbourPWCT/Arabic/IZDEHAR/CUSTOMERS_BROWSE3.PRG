*---------------------------------------------------------------------------*
* Time : 03:14:52    Date : 12/26/2010
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
Function CUSTOMERS_BROWSE3
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

Resistance R_CUSTOMERS_BROWSE3_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_BROWSE3_15speed1() code
class CustomersBrowse3Class From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Customers_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"custtype","custclass","paymethod","f_mobile","f_name"}
Data FindColumns init {"f_name","f_mobile","f_email","f_cardnum","f_cardfinish","f_company","country","paymethod","custtype","custclass","f_ename","f_enumber"}
Data FindTitles init {"ÇáÅÓã","ÇáÌæÇá","ÇáÇíãíá","ÑÞã ÇáÈØÇÞÉ","ÊÇÑíÎ ÇäÊåÇÁ ÇáåæíÉ","ÇáÔÑßÉ","ÇáÏæáÉ","ØÑíÞÉ ÇáÏÝÚ","äæÚ ÇáÚãíá","ÝÆÉ ÇáÚãíá","ÇÓã ÇáÚãíá ÈÇáÇäÌáíÒì","ÑÞã ÇáÚÖæíÉ"}
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
Method FindChange
Method AddCustomer
EndClass
Method showwindow Class CustomersBrowse3Class
IF .not. UsersObject:CheckPermission(5)
MyOut := MSGBOX("ÇáÏÎæá áåÐå ÇáäÇÝÐÉ ÛíÑ ãÕÑÍ Èå","ÚÝæÇ")
Return 0
ENDIF
if !iswindowdefined( CustomersBrowse3Window )
DEFINE WINDOW CustomersBrowse3Window ;
AT 10 ,10 ;
WIDTH 963 ;
HEIGHT 416 ;
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
WIDTH 970 HEIGHT 410
@ 17 ,363 TEXTBOX textNameBrowse;
HEIGHT 30 ;
WIDTH 340 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 17 ,247 BUTTONEX btn1;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 17 ,15 BUTTONEX btnclose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 58 ,15 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 925 ;
HEIGHT 251 ;
HEADERS {"äæÚ ÇáÚãíá","ÝÆÉ ÇáÚãíá","ØÑíÞÉ ÇáÓÏÇÏ","ÌæÇá","ÇáÇÓã"};
WIDTHS {150,150,150,200,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 17 ,131 BUTTONEX btnPrint;
CAPTION "ØÈÇÚÉ";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 17 ,719 COMBOBOX comboFind;
ON CHANGE self:findchange()  ;
WIDTH 220 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 324 ,248 BUTTONEX btnCustData;
CAPTION "ÔÇÔÉ ÈíÇäÇÊ ÇáÚãáÇÁ";
ON CLICK CustomersDataObject:ShowWindow()  ;
WIDTH 220 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 324 ,484 BUTTONEX btnAddRec;
CAPTION "ÇÖÇÝÉ Úãíá ÌÏíÏ";
ON CLICK self:addcustomer()  ;
WIDTH 220 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustomersBrowse3Window.Center ( )
ACTIVATE WINDOW CustomersBrowse3Window
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowse3Class
CustomersDataObject:LFindRecord := true
CustomersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
CustomersDataObject:AddOrEdit := 2
myout = CustomersDataObject:ShowWindow()
Return 0
Method Print Class CustomersBrowse3Class
Local cName,myout
cName := CustomersBrowse3Window.textNamebrowse.Value
cName = ALLTRIM ( cName )
Customersreportobject:filter := ""
IF .not. empty(cName)
Customersreportobject:filter := '((Customers_all.f_name) Like "'+cName+'*")'
ENDIF
myout = Customersreportobject:ShowWindow()
Return 0
Method FindChange Class CustomersBrowse3Class
Local nIndex
nIndex := CustomersBrowse3Window.ComboFind.Value
self:Column := Self:FindColumns[nIndex]
Return 0
Method AddCustomer Class CustomersBrowse3Class
CustomersDataObject:AddOrEdit := 1
myout = CustomersDataObject:ShowWindow()
Return 0
Method closewindow Class CustomersBrowse3Class
CustomersBrowse3Window.Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowse3Class
Local nvalue,myout
nvalue := CustomersBrowse3Window.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class CustomersBrowse3Class
cName := CustomersBrowse3Window.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustomersBrowse3Class
CustomersBrowse3Window.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class CustomersBrowse3Class
CustomersBrowse3Window.grid1browse.DeleteAllItems ( )
CustomersBrowse3Window.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowse3Class
CustomersBrowse3Window.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*
