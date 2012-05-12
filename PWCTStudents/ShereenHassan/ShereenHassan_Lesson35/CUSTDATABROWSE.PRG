*---------------------------------------------------------------------------*
* Time : 22:52:46    Date : 04/02/2012
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
Function CUSTDATABROWSE
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

Resistance R_CUSTDATABROWSE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTDATABROWSE_18smart1() code
class CustDataBrowseClass From SystemDatabase
Data cWindowName init "DataBrowseWindow"
Data TableName init "Customers"
Data column init "custname"
Data PrimaryKey init "ID"
Data columns init {"ID","custname"}
Data nID init 0
Data cName init ""
Data ColTitles init {"ID","Name"}
Data ColWidths init {100,200}
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
EndClass
Method showwindow Class CustDataBrowseClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustDataBrowesWindow )
DEFINE WINDOW CustDataBrowesWindow ;
AT 10 ,10 ;
WIDTH 691 ;
HEIGHT 458 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Data/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ -2 ,-45 IMAGE image1;
PICTURE "Images\back.jpg";
STRETCH ;
WIDTH 865 HEIGHT 476
@ 328 ,145 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 328 ,226 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 328 ,383 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 280 ,556 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 328 ,303 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 381 ,460 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 381 ,274 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 381 ,369 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 381 ,179 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 380 ,86 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,-188 LABEL lblTitle ;
VALUE "                                                      Data/Browse Window" ;
WIDTH 734 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 271 ,25 LABEL lblAddress ;
VALUE "Name" ;
WIDTH 57 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 276 ,88 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 53 ,22 LABEL lbl1browse ;
VALUE "Name" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 53 ,88 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 53 ,535 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 105 ,85 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 552 ;
HEIGHT 166 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

CustDataBrowesWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDataBrowesWindow.Timer1.Enabled := false
ACTIVATE WINDOW CustDataBrowesWindow
EndIF

Return 0
Method UserInterface2Class Class CustDataBrowseClass
self:cName := CustDataBrowesWindow.textName.Value
Return 0
Method Class2ADO Class CustDataBrowseClass
self:oRS:fields:item(alltrim("custname")):value := self:cName
Return 0
Method ADO2Class Class CustDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("custname")):value
Return 0
Method Class2UserInterface Class CustDataBrowseClass
CustDataBrowesWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class CustDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class CustDataBrowseClass
IF p1 = 1
CustDataBrowesWindow.btnfirst.Enabled := false
CustDataBrowesWindow.btnnext.Enabled := false
CustDataBrowesWindow.btnprev.Enabled := false
CustDataBrowesWindow.btnlast.Enabled := false
CustDataBrowesWindow.btndel.Enabled := false
CustDataBrowesWindow.btnclose.Enabled := false
CustDataBrowesWindow.btnsave.Enabled := true
CustDataBrowesWindow.btncancel.Enabled := true
CustDataBrowesWindow.btnedit.Enabled := false
CustDataBrowesWindow.btnadd.Enabled := false
CustDataBrowesWindow.textName.Enabled := true
CustDataBrowesWindow.textNameBrowse.Enabled := false
CustDataBrowesWindow.btn1Browse.Enabled := false
CustDataBrowesWindow.Grid1Browse.Enabled := false
ENDIF
IF p1 = 2
CustDataBrowesWindow.btnfirst.Enabled := true
CustDataBrowesWindow.btnnext.Enabled := true
CustDataBrowesWindow.btnprev.Enabled := true
CustDataBrowesWindow.btnlast.Enabled := true
CustDataBrowesWindow.btndel.Enabled := true
CustDataBrowesWindow.btnclose.Enabled := true
CustDataBrowesWindow.btnsave.Enabled := false
CustDataBrowesWindow.btncancel.Enabled := false
CustDataBrowesWindow.btnedit.Enabled := true
CustDataBrowesWindow.btnadd.Enabled := true
CustDataBrowesWindow.textName.Enabled := false
CustDataBrowesWindow.textNameBrowse.Enabled := True
CustDataBrowesWindow.btn1Browse.Enabled := True
CustDataBrowesWindow.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustDataBrowseClass
myout = self:disconnect()
CustDataBrowesWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDataBrowesWindow )
myout = self:showrecord()
CustDataBrowesWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDataBrowseClass
CustDataBrowesWindow.grid1Browse.DeleteAllItems ( )
CustDataBrowesWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDataBrowseClass
CustDataBrowesWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustDataBrowseClass
CustDataBrowesWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustDataBrowseClass
cName := CustDataBrowesWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class CustDataBrowseClass
Local nvalue,myout
nvalue := CustDataBrowesWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
CustDataBrowesWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDataBrowseClass
myout = self:search()
CustDataBrowesWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
