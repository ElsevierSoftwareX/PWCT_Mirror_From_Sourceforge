*---------------------------------------------------------------------------*
* Time : 13:59:55    Date : 06/07/2013
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
Function ORDERPROCESSES_DATA
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

Resistance R_ORDERPROCESSES_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERPROCESSES_DATA_18smart1() code
class OrderProcessesClass From SystemDatabase
Data TableName init "OrderProcesses_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"ID","OrderNumber","ProcessName","ProcessStatus","PlannedStartDate","PlannedFinishDate","RealStartDate","RealFinishDate","notes"}
Data nOrderNumber init 0
Data OrderNumberitems init {}
Data OrderNumberitemsids init {}
Data nProcess init 0
Data Processitems init {}
Data Processitemsids init {}
Data cPlannedStartDate init ""
Data cPlannedFinishDate init ""
Data cRealStartDate init ""
Data cRealFinishDate init ""
Data cNotes init ""
Data nProcessStatus init 0
Data ProcessStatusitems init {}
Data ProcessStatusitemsids init {}
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
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class OrderProcessesClass
IF .not. UserCan_WinProduction = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrderProcessesWindow )
DEFINE WINDOW OrderProcessesWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 601 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Order Processes" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 42 ,3 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 470
@ 520 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,515 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   Order Processes" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 385 ,106 LABEL lblPlannedStartDate ;
VALUE "Planned Start Date" ;
WIDTH 170 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 383 ,298 DATEPICKER dateplannedstartdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 52 ,68 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,205 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 52 ,715 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ID","Order Number","Process Name","Process Status","Planned Start Date","Planned Finish Date","Real Start Date","Real Finish Date","Notes"};
WIDTHS {100,100,200,200,150,150,100,150,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 387 ,459 LABEL lblRealStartDate ;
VALUE "Real Start Date" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 379 ,614 DATEPICKER daterealstartdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Orders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 266 ,146 LABEL lblOrderNumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,298 COMBOBOX comboordernumber;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Process","processname",@self:processItems,"id",@self:processItemsIDS)
@ 306 ,187 LABEL lblProcess ;
VALUE "Process" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 305 ,298 COMBOBOX comboProcess;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:Processitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 472 ,226 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 470 ,298 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 470 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 431 ,461 LABEL lblRealFinishDate ;
VALUE "Real Finish Date" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 425 ,614 DATEPICKER daterealfinishdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 345 ,136 LABEL lblDateofInput ;
VALUE "Process Status" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ProcessStatus","processStatus",@self:processStatusItems,"id",@self:processStatusItemsIDS)
@ 345 ,298 COMBOBOX comboProcessStatus;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:ProcessStatusitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 430 ,106 LABEL lblPlannedFinishDate ;
VALUE "Planned Finish Date" ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 428 ,298 DATEPICKER dateplannedfinishdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
END WINDOW
OrderProcessesWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
OrderProcessesWindow.Timer1.Enabled := false
ACTIVATE WINDOW OrderProcessesWindow
EndIF
Return 0
Method UserInterface2Class Class OrderProcessesClass
self:nOrderNumber := OrderProcessesWindow.ComboOrderNumber.Value
self:nOrderNumber := self:OrderNumberItemsids[self:nOrderNumber]
self:nProcess := OrderProcessesWindow.ComboProcess.Value
self:nProcess := self:ProcessItemsids[self:nProcess]
self:cNotes := OrderProcessesWindow.textNotes.Value
self:nProcessStatus := OrderProcessesWindow.ComboProcessStatus.Value
self:nProcessStatus := self:ProcessStatusItemsids[self:nProcessStatus]
self:cPlannedStartDate := OrderProcessesWindow.datePlannedStartDate.Value
self:cPlannedStartDate := dtoc(self:cPlannedStartDate)
self:cPlannedFinishDate := OrderProcessesWindow.datePlannedFinishDate.Value
self:cPlannedFinishDate := dtoc(self:cPlannedFinishDate)
self:cRealStartDate := OrderProcessesWindow.dateRealStartDate.Value
self:cRealStartDate := dtoc(self:cRealStartDate)
self:cRealFinishDate := OrderProcessesWindow.dateRealFinishDate.Value
self:cRealFinishDate := dtoc(self:cRealFinishDate)
Return 0
Method Class2ADO Class OrderProcessesClass
self:oRS:fields:item(alltrim("processid")):value := self:nprocess
self:oRS:fields:item(alltrim("OrderNumberid")):value := self:nOrderNumber
self:oRS:fields:item(alltrim("plannedstartdate")):value := self:cplannedStartDate
self:oRS:fields:item(alltrim("PlannedFinishDate")):value := self:cPlannedFinishDate
self:oRS:fields:item(alltrim("Notes")):value := self:cNotes
self:oRS:fields:item(alltrim("RealStartDate")):value := self:cRealStartDate
self:oRS:fields:item(alltrim("RealFinishDate")):value := self:cRealFinishDate
self:oRS:fields:item(alltrim("processstatusid")):value := self:nprocessstatus
Return 0
Method ADO2Class Class OrderProcessesClass
self:nProcess := self:oRS:fields:item(alltrim("ProcessID")):value
self:nOrderNumber := self:oRS:fields:item(alltrim("OrderNumberID")):value
self:cPlannedStartDate := self:oRS:fields:item(alltrim("PlannedStartDate")):value
self:cPlannedFinishDate := self:oRS:fields:item(alltrim("PlannedFinishDate")):value
self:cRealStartDate := self:oRS:fields:item(alltrim("RealStartDate")):value
self:cRealFinishDate := self:oRS:fields:item(alltrim("RealFinishDate")):value
self:nProcessStatus := self:oRS:fields:item(alltrim("ProcessStatusID")):value
self:cNotes := self:oRS:fields:item(alltrim("Notes")):value
Return 0
Method Class2UserInterface Class OrderProcessesClass
self:nOrderNumber = self:LookupIDToIndex(self:nOrderNumber,@self:OrderNumberItemsids)
OrderProcessesWindow.ComboOrderNumber.Value := self:nOrderNumber
self:nProcess = self:LookupIDToIndex(self:nProcess,@self:ProcessItemsids)
OrderProcessesWindow.ComboProcess.Value := self:nProcess
self:nProcessStatus = self:LookupIDToIndex(self:nProcessStatus,@self:ProcessStatusItemsids)
OrderProcessesWindow.ComboProcessStatus.Value := self:nProcessStatus
OrderProcessesWindow.textNotes.Value := self:cNotes
OrderProcessesWindow.datePlannedStartDate.Value := ctod(self:cPlannedStartDate)
OrderProcessesWindow.datePlannedFinishDate.Value := ctod(self:cPlannedFinishDate)
OrderProcessesWindow.dateRealStartDate.Value := ctod(self:cRealStartDate)
OrderProcessesWindow.dateRealFinishDate.Value := ctod(self:cRealFinishDate)
Return 0
Method ClearRecord Class OrderProcessesClass
self:nOrderNumber := 0
self:nProcess := 0
self:cPlannedStartDate := ""
self:cNotes := ""
self:nProcessStatus := 0
self:cPlannedFinishDate := ""
self:cRealStartDate := ""
self:cRealFinishDate := ""
Return 0
Method OpenDataWindow Class OrderProcessesClass
Local nvalue,myout
nvalue := OrderProcessesWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrderProcessesClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrderProcessesClass
myout = self:search()
OrderProcessesWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class OrderProcessesClass
IF p1 = 1
OrderProcessesWindow.btnfirst.Enabled := false
OrderProcessesWindow.btnnext.Enabled := false
OrderProcessesWindow.btnprev.Enabled := false
OrderProcessesWindow.btnlast.Enabled := false
OrderProcessesWindow.btndel.Enabled := false
OrderProcessesWindow.btnclose.Enabled := false
OrderProcessesWindow.btnsave.Enabled := true
OrderProcessesWindow.btncancel.Enabled := true
OrderProcessesWindow.btnedit.Enabled := false
OrderProcessesWindow.btnadd.Enabled := false
OrderProcessesWindow.comboOrderNumber.Enabled := true
OrderProcessesWindow.comboProcess.Enabled := true
OrderProcessesWindow.textNotes.Enabled := true
OrderProcessesWindow.dateplannedStartDate.Enabled := true
OrderProcessesWindow.comboProcessStatus.Enabled := true
OrderProcessesWindow.dateplannedFinishDate.Enabled := true
OrderProcessesWindow.dateRealStartDate.Enabled := true
OrderProcessesWindow.dateRealFinishDate.Enabled := true
ENDIF
IF p1 = 2
OrderProcessesWindow.btnfirst.Enabled := true
OrderProcessesWindow.btnnext.Enabled := true
OrderProcessesWindow.btnprev.Enabled := true
OrderProcessesWindow.btnlast.Enabled := true
OrderProcessesWindow.btndel.Enabled := true
OrderProcessesWindow.btnclose.Enabled := true
OrderProcessesWindow.btnsave.Enabled := false
OrderProcessesWindow.btncancel.Enabled := false
OrderProcessesWindow.btnedit.Enabled := true
OrderProcessesWindow.btnadd.Enabled := true
OrderProcessesWindow.comboOrderNumber.Enabled := false
OrderProcessesWindow.comboProcess.Enabled := false
OrderProcessesWindow.textNotes.Enabled := false
OrderProcessesWindow.comboProcessStatus.Enabled := false
OrderProcessesWindow.datePlannedStartDate.Enabled := false
OrderProcessesWindow.datePlannedFinishDate.Enabled := false
OrderProcessesWindow.dateRealStartDate.Enabled := false
OrderProcessesWindow.dateRealFinishDate.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method OnAfterAddEdit Class OrderProcessesClass
Return myout
Method OnBeforeEdit Class OrderProcessesClass
Return myout
Method OnBeforeDelete Class OrderProcessesClass
Return myout
Method closewindow Class OrderProcessesClass
myout = self:disconnect()
OrderProcessesWindow.Release ( )
Return 0
Method AutoGotoRecord Class OrderProcessesClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( OrderProcessesWindow )
myout = self:showrecord()
OrderProcessesWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class OrderProcessesClass
OrderProcessesWindow.grid1Browse.DeleteAllItems ( )
OrderProcessesWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrderProcessesClass
OrderProcessesWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class OrderProcessesClass
OrderProcessesWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class OrderProcessesClass
cName := OrderProcessesWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
