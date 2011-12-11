*---------------------------------------------------------------------------*
* Time : 21:00:45    Date : 11/22/2011
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
Function DATABROWSE
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

Resistance R_DATABROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATABROWSE_15speed1() code
class DataBrowseClass From SystemDatabase
Data TableName init "Customers"
Data column init "Custname"
Data PrimaryKey init "id"
Data columns init {"ID","Custname"}
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
Method showwindow Class DataBrowseClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( DataBrowseWindow )
DEFINE WINDOW DataBrowseWindow ;
AT 10 ,10 ;
WIDTH 941 ;
HEIGHT 513 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Data/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255}

@ 370 ,16 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 370 ,79 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 370 ,206 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 417 ,806 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 370 ,143 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 330 ,505 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 190 ,67 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 230 ,67 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 150 ,67 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 110 ,67 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 4 ,4 LABEL lblTitle ;
VALUE "                                                      Data/Browse Window" ;
WIDTH 916 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {0,0,0}
@ 277 ,255 LABEL lblAddress ;
VALUE "Name" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 276 ,338 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {128,64,64}

@ 50 ,261 LABEL lbl1browse ;
VALUE "Name" ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 50 ,338 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}

@ 50 ,787 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 102 ,338 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

DataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
DataBrowseWindow.Timer1.Enabled := false
ACTIVATE WINDOW DataBrowseWindow
EndIF

Return 0
Method UserInterface2Class Class DataBrowseClass
self:cName := DataBrowseWindow.textName.Value
Return 0
Method Class2ADO Class DataBrowseClass
self:oRS:fields:item("Custname"):value := self:cName
Return 0
Method ADO2Class Class DataBrowseClass
self:cName := self:oRS:fields:item("Custname"):value
Return 0
Method Class2UserInterface Class DataBrowseClass
DataBrowseWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class DataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class DataBrowseClass
IF p1 = 1
DataBrowseWindow.btnfirst.Enabled := false
DataBrowseWindow.btnnext.Enabled := false
DataBrowseWindow.btnprev.Enabled := false
DataBrowseWindow.btnlast.Enabled := false
DataBrowseWindow.btndel.Enabled := false
DataBrowseWindow.btnclose.Enabled := false
DataBrowseWindow.btnsave.Enabled := true
DataBrowseWindow.btncancel.Enabled := true
DataBrowseWindow.btnedit.Enabled := false
DataBrowseWindow.btnadd.Enabled := false
DataBrowseWindow.textName.Enabled := true
ENDIF
IF p1 = 2
DataBrowseWindow.btnfirst.Enabled := true
DataBrowseWindow.btnnext.Enabled := true
DataBrowseWindow.btnprev.Enabled := true
DataBrowseWindow.btnlast.Enabled := true
DataBrowseWindow.btndel.Enabled := true
DataBrowseWindow.btnclose.Enabled := true
DataBrowseWindow.btnsave.Enabled := false
DataBrowseWindow.btncancel.Enabled := false
DataBrowseWindow.btnedit.Enabled := true
DataBrowseWindow.btnadd.Enabled := true
DataBrowseWindow.textName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class DataBrowseClass
myout = self:disconnect()
DataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class DataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( DataBrowseWindow )
myout = self:showrecord()
DataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class DataBrowseClass
DataBrowseWindow.grid1Browse.DeleteAllItems ( )
DataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class DataBrowseClass
DataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class DataBrowseClass
DataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class DataBrowseClass
cName := DataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class DataBrowseClass
Local nvalue,myout
nvalue := DataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class DataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class DataBrowseClass
myout = self:search()
DataBrowseWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
