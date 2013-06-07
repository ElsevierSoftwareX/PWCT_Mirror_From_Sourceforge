*---------------------------------------------------------------------------*
* Time : 14:44:16    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function PROCESSSTATUS_DATA
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

Resistance R_PROCESSSTATUS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROCESSSTATUS_DATA_18smart1() code
class ProcessStatusClass From SystemDatabase
Data TableName init "ProcessStatus"
Data nID init 0
Data cProcessStatus init ""
Data column init "ProcessStatus"
Data PrimaryKey init "id"
Data columns init {"ID","ProcessStatus"}
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
Method showwindow Class ProcessStatusClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProcessStatusWindow )
DEFINE WINDOW ProcessStatusWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Process Status" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 39 ,5 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 290
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
VALUE "                                                        Process Status" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,51 LABEL lblProcessStatus ;
VALUE "Process Status" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,188 TEXTBOX textProcessStatus;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,44 LABEL lbl1browse ;
VALUE "Process Status" ;
WIDTH 140 ;
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
HEADERS {"ID","ProcessStatus"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW
ProcessStatusWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProcessStatusWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProcessStatusWindow
EndIF
Return 0
Method UserInterface2Class Class ProcessStatusClass
self:cProcessStatus := ProcessStatusWindow.textProcessStatus.Value
Return 0
Method Class2ADO Class ProcessStatusClass
self:oRS:fields:item(alltrim("ProcessStatus")):value := self:cProcessStatus
Return 0
Method ADO2Class Class ProcessStatusClass
self:cProcessStatus := self:oRS:fields:item(alltrim("ProcessStatus")):value
Return 0
Method Class2UserInterface Class ProcessStatusClass
ProcessStatusWindow.textProcessStatus.Value := self:cProcessStatus
Return 0
Method ClearRecord Class ProcessStatusClass
self:cProcessStatus := ""
Return 0
Method OpenDataWindow Class ProcessStatusClass
Local nvalue,myout
nvalue := ProcessStatusWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProcessStatusClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProcessStatusClass
myout = self:search()
ProcessStatusWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProcessStatusClass
IF p1 = 1
ProcessStatusWindow.btnfirst.Enabled := false
ProcessStatusWindow.btnnext.Enabled := false
ProcessStatusWindow.btnprev.Enabled := false
ProcessStatusWindow.btnlast.Enabled := false
ProcessStatusWindow.btndel.Enabled := false
ProcessStatusWindow.btnclose.Enabled := false
ProcessStatusWindow.btnsave.Enabled := true
ProcessStatusWindow.btncancel.Enabled := true
ProcessStatusWindow.btnedit.Enabled := false
ProcessStatusWindow.btnadd.Enabled := false
ProcessStatusWindow.textProcessStatus.Enabled := true
ENDIF
IF p1 = 2
ProcessStatusWindow.btnfirst.Enabled := true
ProcessStatusWindow.btnnext.Enabled := true
ProcessStatusWindow.btnprev.Enabled := true
ProcessStatusWindow.btnlast.Enabled := true
ProcessStatusWindow.btndel.Enabled := true
ProcessStatusWindow.btnclose.Enabled := true
ProcessStatusWindow.btnsave.Enabled := false
ProcessStatusWindow.btncancel.Enabled := false
ProcessStatusWindow.btnedit.Enabled := true
ProcessStatusWindow.btnadd.Enabled := true
ProcessStatusWindow.textProcessStatus.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ProcessStatusClass
myout = self:disconnect()
ProcessStatusWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProcessStatusClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProcessStatusWindow )
myout = self:showrecord()
ProcessStatusWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProcessStatusClass
ProcessStatusWindow.grid1Browse.DeleteAllItems ( )
ProcessStatusWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProcessStatusClass
ProcessStatusWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProcessStatusClass
ProcessStatusWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProcessStatusClass
cName := ProcessStatusWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
