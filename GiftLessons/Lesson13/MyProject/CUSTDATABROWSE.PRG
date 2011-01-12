*---------------------------------------------------------------------------*
* Time : 13:30:47    Date : 10/11/2010
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

Resistance R_CUSTDATABROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTDATABROWSE_15speed1() code
class CustDataBrowseClass From SystemDatabase
Data TableName init "Customers"
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"ID","CustName"}
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
if !iswindowdefined( CustDataBrowseWindow )
DEFINE WINDOW CustDataBrowseWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Data/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 340 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,516 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,672 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,453 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,585 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,90 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,7 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                      Data/Browse Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,105 LABEL lblAddress ;
VALUE "Name" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 276 ,188 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 52 ,34 LABEL lbl1browse ;
VALUE "Name" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,188 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 50 ,637 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,188 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

CustDataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDataBrowseWindow.Timer1.Enabled := false
ACTIVATE WINDOW CustDataBrowseWindow
EndIF

Return 0
Method UserInterface2Class Class CustDataBrowseClass
self:cName := CustDataBrowseWindow.textName.Value
Return 0
Method Class2ADO Class CustDataBrowseClass
self:oRS:fields:item("CustName"):value := self:cName
Return 0
Method ADO2Class Class CustDataBrowseClass
self:cName := self:oRS:fields:item("CustName"):value
Return 0
Method Class2UserInterface Class CustDataBrowseClass
CustDataBrowseWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class CustDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class CustDataBrowseClass
IF p1 = 1
CustDataBrowseWindow.btnfirst.Enabled := false
CustDataBrowseWindow.btnnext.Enabled := false
CustDataBrowseWindow.btnprev.Enabled := false
CustDataBrowseWindow.btnlast.Enabled := false
CustDataBrowseWindow.btndel.Enabled := false
CustDataBrowseWindow.btnclose.Enabled := false
CustDataBrowseWindow.btnsave.Enabled := true
CustDataBrowseWindow.btncancel.Enabled := true
CustDataBrowseWindow.btnedit.Enabled := false
CustDataBrowseWindow.btnadd.Enabled := false
CustDataBrowseWindow.textName.Enabled := true
ENDIF
IF p1 = 2
CustDataBrowseWindow.btnfirst.Enabled := true
CustDataBrowseWindow.btnnext.Enabled := true
CustDataBrowseWindow.btnprev.Enabled := true
CustDataBrowseWindow.btnlast.Enabled := true
CustDataBrowseWindow.btndel.Enabled := true
CustDataBrowseWindow.btnclose.Enabled := true
CustDataBrowseWindow.btnsave.Enabled := false
CustDataBrowseWindow.btncancel.Enabled := false
CustDataBrowseWindow.btnedit.Enabled := true
CustDataBrowseWindow.btnadd.Enabled := true
CustDataBrowseWindow.textName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustDataBrowseClass
myout = self:disconnect()
CustDataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDataBrowseWindow )
myout = self:showrecord()
CustDataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDataBrowseClass
CustDataBrowseWindow.grid1Browse.DeleteAllItems ( )
CustDataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDataBrowseClass
CustDataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustDataBrowseClass
CustDataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustDataBrowseClass
cName := CustDataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class CustDataBrowseClass
Local nvalue,myout
nvalue := CustDataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDataBrowseClass
myout = self:search()
CustDataBrowseWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
