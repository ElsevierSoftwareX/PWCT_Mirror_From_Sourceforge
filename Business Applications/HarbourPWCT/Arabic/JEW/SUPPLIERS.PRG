*---------------------------------------------------------------------------*
* Time : 14:06:40    Date : 08/03/2012
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
Function SUPPLIERS
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

Resistance R_SUPPLIERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUPPLIERS_18smart1() code
class SuppliersClass From SystemDatabase
Data cWindowName init "SuppliersWindow"
Data TableName init "Suppliers"
Data column init "Name"
Data PrimaryKey init "id"
Data columns init {"Mobile","Phone","Name","ID"}
Data nID init 0
Data ColTitles init {"ÌæÇá","åÇÊÝ","ÅÓã ÇáãæÑÏ","ÑÞã ÇáãæÑÏ"}
Data ColWidths init {200,200,200,100}
Data cName init ""
Data cPhone init ""
Data cMobile init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method SetColumn
EndClass
Method showwindow Class SuppliersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 784 ;
HEIGHT 561 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÈíÇäÇÊ ÇáãæÑÏíä" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 48 ,12 IMAGE image1;
PICTURE getstartupfolder()+"\Images\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 420
@ 479 ,381 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,252 BUTTONEX btnNext;
CAPTION "ÇáÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,184 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,11 BUTTONEX btnClose;
CAPTION "ÅÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,318 BUTTONEX btnPrev;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,100 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 479 ,537 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 479 ,453 BUTTONEX btncancel;
CAPTION "ÅáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 479 ,622 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 479 ,691 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 12 ,12 LABEL lblTitle ;
VALUE "                                                              ÈíÇäÇÊ ÇáãæÑÏíä" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 312 ,594 LABEL lblName ;
VALUE "ÅÓã ÇáãæÑÏ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 311 ,134 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 59 ,24 TEXTBOX textNamebrowse;
ON CHANGE self:search()  ;
HEIGHT 30 ;
WIDTH 540 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 99 ,24 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 720 ;
HEIGHT 200 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 60 ,576 COMBOBOX comboFind;
ON CHANGE Self:SetColumn()  ;
WIDTH 170 ;
HEIGHT 300;
ITEMS self:coltitles ;
VALUE 3 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 364 ,594 LABEL lblPhone ;
VALUE "ÇáåÇÊÝ" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 364 ,374 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 416 ,594 LABEL lblMobile ;
VALUE "ÇáÌæÇá" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 416 ,374 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("SuppliersWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("SuppliersWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class SuppliersClass
self:cName := &(self:cWindowName).textName.Value
self:cPhone := &(self:cWindowName).textPhone.Value
self:cMobile := &(self:cWindowName).textMobile.Value
Return 0
Method Class2ADO Class SuppliersClass
self:oRS:fields:item("Name"):value := self:cName
self:oRS:fields:item(alltrim("Phone")):value := self:cPhone
self:oRS:fields:item(alltrim("Mobile")):value := self:cMobile
Return 0
Method ADO2Class Class SuppliersClass
self:cName := self:oRS:fields:item("Name"):value
self:cPhone := self:oRS:fields:item(alltrim("Phone")):value
self:cMobile := self:oRS:fields:item(alltrim("Mobile")):value
Return 0
Method Class2UserInterface Class SuppliersClass
&(self:cWindowName).textName.Value := self:cName
&(self:cWindowName).textPhone.Value := self:cPhone
&(self:cWindowName).textMobile.Value := self:cMobile
Return 0
Method ClearRecord Class SuppliersClass
self:cName := ""
self:cPhone := ""
self:cMobile := ""
Return 0
Method setmode(p1) Class SuppliersClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textName.Enabled := true
&(self:cWindowName).textNameBrowse.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := false
&(self:cWindowName).textPhone.Enabled := true
&(self:cWindowName).textMobile.Enabled := true
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textName.Enabled := false
&(self:cWindowName).textNameBrowse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).textPhone.Enabled := false
&(self:cWindowName).textMobile.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method SetColumn Class SuppliersClass
Local nIndex
nIndex := &(self:cWindowName).ComboFind.Value
Self:Column := Self:Columns[nIndex]
Return 0
Method closewindow Class SuppliersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class SuppliersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class SuppliersClass
&(self:cWindowName).grid1Browse.DeleteAllItems ( )
&(self:cWindowName).grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class SuppliersClass
&(self:cWindowName).grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class SuppliersClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class SuppliersClass
cName := &(self:cWindowName).textNameBrowse.Value
Return cName
Method OpenDataWindow Class SuppliersClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class SuppliersClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class SuppliersClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
