*---------------------------------------------------------------------------*
* Time : 09:31:23    Date : 04/16/2012
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
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"ID","CustName"}
Data nID init 0
Data cName init ""
Data ColTitles init {"ßæÏ ÇáÚãíá","ÇÓã ÇáÚãíá"}
Data ColWidths init {100,340}
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
if !iswindowdefined( CustDtataBrowseWindow )
DEFINE WINDOW CustDtataBrowseWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÔÇÔÉ ÇáÚãáÇÁ ÈíÇäÇÊ / ÈÍË" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 340 ,519 BUTTONEX btnFirst;
CAPTION "ÇáÇæá";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,454 BUTTONEX btnNext;
CAPTION "ÇáÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,324 BUTTONEX btnLast;
CAPTION "ÇáÃÎíÑ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,672 BUTTONEX btnClose;
CAPTION "ÅÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,389 BUTTONEX btnPrev;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,585 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,162 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,234 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ ÇáÃãÑ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,90 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 340 ,7 BUTTONEX btnadd;
CAPTION "ÅÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "ÔÇÔÉ ÈíÇäÇÊ / ÈÍË" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 275 ,609 LABEL lblAddress ;
VALUE "ÇáÅÓã" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 275 ,149 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 440 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 49 ,594 LABEL lbl1browse ;
VALUE "ÇáÅÓã" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 50 ,149 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 50 ,35 BUTTONEX btn1browse;
CAPTION "ÇáÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 100 ,149 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

CustDtataBrowseWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustDtataBrowseWindow.Timer1.Enabled := false
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("CustDtataBrowseWindow"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("CustDtataBrowseWindow"), -20),0x400000,0x100000))
ACTIVATE WINDOW CustDtataBrowseWindow
EndIF

Return 0
Method UserInterface2Class Class CustDataBrowseClass
self:cName := CustDtataBrowseWindow.textName.Value
Return 0
Method Class2ADO Class CustDataBrowseClass
self:oRS:fields:item(alltrim("CustName")):value := self:cName
Return 0
Method ADO2Class Class CustDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("CustName")):value
Return 0
Method Class2UserInterface Class CustDataBrowseClass
CustDtataBrowseWindow.textName.Value := self:cName
Return 0
Method ClearRecord Class CustDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class CustDataBrowseClass
IF p1 = 1
CustDtataBrowseWindow.btnfirst.Enabled := false
CustDtataBrowseWindow.btnnext.Enabled := false
CustDtataBrowseWindow.btnprev.Enabled := false
CustDtataBrowseWindow.btnlast.Enabled := false
CustDtataBrowseWindow.btndel.Enabled := false
CustDtataBrowseWindow.btnclose.Enabled := false
CustDtataBrowseWindow.btnsave.Enabled := true
CustDtataBrowseWindow.btncancel.Enabled := true
CustDtataBrowseWindow.btnedit.Enabled := false
CustDtataBrowseWindow.btnadd.Enabled := false
CustDtataBrowseWindow.textName.Enabled := true
CustDtataBrowseWindow.textNameBrowse.Enabled := false
CustDtataBrowseWindow.btn1Browse.Enabled := false
CustDtataBrowseWindow.Grid1Browse.Enabled := false
CustDtataBrowseWindow.textName.SetFocus ( )
ENDIF
IF p1 = 2
CustDtataBrowseWindow.btnfirst.Enabled := true
CustDtataBrowseWindow.btnnext.Enabled := true
CustDtataBrowseWindow.btnprev.Enabled := true
CustDtataBrowseWindow.btnlast.Enabled := true
CustDtataBrowseWindow.btndel.Enabled := true
CustDtataBrowseWindow.btnclose.Enabled := true
CustDtataBrowseWindow.btnsave.Enabled := false
CustDtataBrowseWindow.btncancel.Enabled := false
CustDtataBrowseWindow.btnedit.Enabled := true
CustDtataBrowseWindow.btnadd.Enabled := true
CustDtataBrowseWindow.textName.Enabled := false
CustDtataBrowseWindow.textNameBrowse.Enabled := True
CustDtataBrowseWindow.btn1Browse.Enabled := True
CustDtataBrowseWindow.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustDataBrowseClass
myout = self:disconnect()
CustDtataBrowseWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustDtataBrowseWindow )
myout = self:showrecord()
CustDtataBrowseWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDataBrowseClass
CustDtataBrowseWindow.grid1Browse.DeleteAllItems ( )
CustDtataBrowseWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDataBrowseClass
CustDtataBrowseWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustDataBrowseClass
CustDtataBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustDataBrowseClass
cName := CustDtataBrowseWindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class CustDataBrowseClass
Local nvalue,myout
nvalue := CustDtataBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
CustDtataBrowseWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDataBrowseClass
myout = self:search()
CustDtataBrowseWindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
