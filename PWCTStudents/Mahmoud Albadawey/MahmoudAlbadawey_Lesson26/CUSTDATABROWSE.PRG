*---------------------------------------------------------------------------*
* Time : 17:14:52    Date : 02/06/2012
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
class custDataBrowseClass From SystemDatabase
Data cWindowName init "DataBrowseWindow"
Data TableName init "customers"
Data column init "custName"
Data PrimaryKey init "id"
Data columns init {"ID","custName"}
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
Method showwindow Class custDataBrowseClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( custDataBrowsewindow )
DEFINE WINDOW custDataBrowsewindow ;
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
@ 277 ,89 LABEL lblAddress ;
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

@ 55 ,82 LABEL lbl1browse ;
VALUE "Name :" ;
WIDTH 77 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
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
ON CHANGE self:OpenDataWindow  ;
WIDTH 440 ;
HEIGHT 160 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW

custDataBrowsewindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
custDataBrowsewindow.Timer1.Enabled := false
ACTIVATE WINDOW custDataBrowsewindow
EndIF

Return 0
Method UserInterface2Class Class custDataBrowseClass
self:cName := custDataBrowsewindow.textName.Value
Return 0
Method Class2ADO Class custDataBrowseClass
self:oRS:fields:item("custName"):value := self:cName
Return 0
Method ADO2Class Class custDataBrowseClass
self:cName := self:oRS:fields:item("custName"):value
Return 0
Method Class2UserInterface Class custDataBrowseClass
custDataBrowsewindow.textName.Value := self:cName
Return 0
Method ClearRecord Class custDataBrowseClass
self:cName := ""
Return 0
Method setmode(p1) Class custDataBrowseClass
IF p1 = 1
custDataBrowsewindow.btnfirst.Enabled := false
custDataBrowsewindow.btnnext.Enabled := false
custDataBrowsewindow.btnprev.Enabled := false
custDataBrowsewindow.btnlast.Enabled := false
custDataBrowsewindow.btndel.Enabled := false
custDataBrowsewindow.btnclose.Enabled := false
custDataBrowsewindow.btnsave.Enabled := true
custDataBrowsewindow.btncancel.Enabled := true
custDataBrowsewindow.btnedit.Enabled := false
custDataBrowsewindow.btnadd.Enabled := false
custDataBrowsewindow.textName.Enabled := true
custDataBrowsewindow.textNameBrowse.Enabled := false
custDataBrowsewindow.btn1Browse.Enabled := false
custDataBrowsewindow.Grid1Browse.Enabled := false
ENDIF
IF p1 = 2
custDataBrowsewindow.btnfirst.Enabled := true
custDataBrowsewindow.btnnext.Enabled := true
custDataBrowsewindow.btnprev.Enabled := true
custDataBrowsewindow.btnlast.Enabled := true
custDataBrowsewindow.btndel.Enabled := true
custDataBrowsewindow.btnclose.Enabled := true
custDataBrowsewindow.btnsave.Enabled := false
custDataBrowsewindow.btncancel.Enabled := false
custDataBrowsewindow.btnedit.Enabled := true
custDataBrowsewindow.btnadd.Enabled := true
custDataBrowsewindow.textName.Enabled := false
custDataBrowsewindow.textNameBrowse.Enabled := True
custDataBrowsewindow.btn1Browse.Enabled := True
custDataBrowsewindow.Grid1Browse.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class custDataBrowseClass
myout = self:disconnect()
custDataBrowsewindow.Release ( )
Return 0
Method AutoGotoRecord Class custDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( custDataBrowsewindow )
myout = self:showrecord()
custDataBrowsewindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class custDataBrowseClass
custDataBrowsewindow.grid1Browse.DeleteAllItems ( )
custDataBrowsewindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class custDataBrowseClass
custDataBrowsewindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class custDataBrowseClass
custDataBrowsewindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class custDataBrowseClass
cName := custDataBrowsewindow.textNameBrowse.Value
Return cName
Method OpenDataWindow Class custDataBrowseClass
Local nvalue,myout
nvalue := custDataBrowsewindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
custDataBrowsewindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class custDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class custDataBrowseClass
myout = self:search()
custDataBrowsewindow.Timer1.Enabled := false
Return 0



End Of Resistance

*-------------------------------------------------------------------*
