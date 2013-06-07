*---------------------------------------------------------------------------*
* Time : 14:08:43    Date : 06/07/2013
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
Function PROCESSES_DATA
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

Resistance R_PROCESSES_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROCESSES_DATA_18smart1() code
class ProcessesClass From SystemDatabase
Data TableName init "Process"
Data nID init 0
Data cProcessName init ""
Data column init "ProcessName"
Data PrimaryKey init "id"
Data columns init {"ID","ProcessName"}
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
Method showwindow Class ProcessesClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProcessesWindow )
DEFINE WINDOW ProcessesWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 418 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Processes" ;
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
VALUE "                                                        Processes" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 277 ,51 LABEL lblProcess ;
VALUE "Process Name" ;
WIDTH 140 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 275 ,188 TEXTBOX textProcessName;
HEIGHT 30 ;
WIDTH 440 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,44 LABEL lbl1browse ;
VALUE "Process Name" ;
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
HEADERS {"ID","Process Name"};
WIDTHS {100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
END WINDOW
ProcessesWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProcessesWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProcessesWindow
EndIF
Return 0
Method UserInterface2Class Class ProcessesClass
self:cProcessName := ProcessesWindow.textProcessName.Value
Return 0
Method Class2ADO Class ProcessesClass
self:oRS:fields:item(alltrim("ProcessName")):value := self:cProcessName
Return 0
Method ADO2Class Class ProcessesClass
self:cProcessName := self:oRS:fields:item(alltrim("ProcessName")):value
Return 0
Method Class2UserInterface Class ProcessesClass
ProcessesWindow.textProcessName.Value := self:cProcessName
Return 0
Method ClearRecord Class ProcessesClass
self:cProcessName := ""
Return 0
Method OpenDataWindow Class ProcessesClass
Local nvalue,myout
nvalue := ProcessesWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProcessesClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProcessesClass
myout = self:search()
ProcessesWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProcessesClass
IF p1 = 1
ProcessesWindow.btnfirst.Enabled := false
ProcessesWindow.btnnext.Enabled := false
ProcessesWindow.btnprev.Enabled := false
ProcessesWindow.btnlast.Enabled := false
ProcessesWindow.btndel.Enabled := false
ProcessesWindow.btnclose.Enabled := false
ProcessesWindow.btnsave.Enabled := true
ProcessesWindow.btncancel.Enabled := true
ProcessesWindow.btnedit.Enabled := false
ProcessesWindow.btnadd.Enabled := false
ProcessesWindow.textProcessName.Enabled := true
ENDIF
IF p1 = 2
ProcessesWindow.btnfirst.Enabled := true
ProcessesWindow.btnnext.Enabled := true
ProcessesWindow.btnprev.Enabled := true
ProcessesWindow.btnlast.Enabled := true
ProcessesWindow.btndel.Enabled := true
ProcessesWindow.btnclose.Enabled := true
ProcessesWindow.btnsave.Enabled := false
ProcessesWindow.btncancel.Enabled := false
ProcessesWindow.btnedit.Enabled := true
ProcessesWindow.btnadd.Enabled := true
ProcessesWindow.textProcessName.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class ProcessesClass
myout = self:disconnect()
ProcessesWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProcessesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProcessesWindow )
myout = self:showrecord()
ProcessesWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProcessesClass
ProcessesWindow.grid1Browse.DeleteAllItems ( )
ProcessesWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProcessesClass
ProcessesWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProcessesClass
ProcessesWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProcessesClass
cName := ProcessesWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
