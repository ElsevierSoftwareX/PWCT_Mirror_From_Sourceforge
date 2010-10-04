*---------------------------------------------------------------------------*
* Time : 01:55:57    Date : 10/04/2010
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

Resistance R_ORDERPROCESSES_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERPROCESSES_DATA_15speed1() code
class OrderProcessesClass From SystemDatabase
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init ""
Data TableName init "OrderProcesses_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"Notes","ProcessCost","RealFinishDate","RealStartDate","PlannedFinishDate","PlannedStartDate","ProcessStatus","ProcessName","OrderName","orderNumber"}
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
Data cProcessCost init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method AutoGotoRecord
Method GetSearchValue
Method settimer
Method beforesearch
Method searchadd
EndClass
Method showwindow Class OrderProcessesClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrderProcessesWindow )
DEFINE WINDOW OrderProcessesWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 628 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ãÊÇÈÚÉ ÇÌÑÇÁÇÊ ÏæÑÉ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 42 ,3 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 500
@ 549 ,437 BUTTONEX btnFirst;
CAPTION "ÈÏÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,312 BUTTONEX btnNext;
CAPTION "ÊÇáì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,249 BUTTONEX btnLast;
CAPTION "äåÇíÉ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,65 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,376 BUTTONEX btnPrev;
CAPTION "ÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,161 BUTTONEX btnDel;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 549 ,598 BUTTONEX btnsave;
CAPTION "ÍÝÙ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 549 ,515 BUTTONEX btncancel;
CAPTION "ÇáÛÇÁ";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 549 ,679 BUTTONEX btnedit;
CAPTION "ÊÚÏíá";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 549 ,748 BUTTONEX btnadd;
CAPTION "ÇÖÇÝÉ";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   ãÊÇÈÚÉ ÇÌÑÇÁÇÊ ÏæÑÉ" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 381 ,627 LABEL lblPlannedStartDate ;
VALUE "ÊÇÑíÎ ÇáÈÏÁ ÇáãÎØØ" ;
WIDTH 170 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 383 ,463 DATEPICKER dateplannedstartdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 52 ,724 LABEL lbl1browse ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,205 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 52 ,73 BUTTONEX btn1browse;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ãáÇÍÙÇÊ","ÇáÊßáÝÉ","ãæÚÏ ÇáÇäÊåÇÁ ÇáÝÚáì","ãæÚÏ ÇáÈÏÁ ÇáÝÚáì","ãæÚÏ ÇáÇäÊåÇÁ ÇáãÎØØ","ãæÚÏ ÇáÈÏÁ ÇáãÎØØ","ÍÇáÉ ÇáÇÌÑÇÁ","ÇáÇÌÑÇÁ","ÇÓã ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"};
WIDTHS {100,100,200,200,200,150,150,150,200,150} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 387 ,308 LABEL lblRealStartDate ;
VALUE "ÊÇÑíÎ ÇáÈÏÁ ÇáÝÚáì" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 387 ,143 DATEPICKER daterealstartdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Orders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 265 ,627 LABEL lblOrderNumber ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,303 COMBOBOX comboordernumber;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Process","processname",@self:processItems,"id",@self:processItemsIDS)
@ 301 ,627 LABEL lblProcess ;
VALUE "ÇáÇÌÑÇÁ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 305 ,303 COMBOBOX comboProcess;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:Processitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 512 ,627 LABEL lblNotes ;
VALUE "ãáÇÍÙÇÊ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 508 ,143 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 470 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 428 ,308 LABEL lblRealFinishDate ;
VALUE "ÊÇÑíÎ ÇáÇäÊåÇÁ ÇáÝÚáì" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 427 ,143 DATEPICKER daterealfinishdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 341 ,627 LABEL lblDateofInput ;
VALUE "ÍÇáÉ ÇáÇÌÑÇÁ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ProcessStatus","processStatus",@self:processStatusItems,"id",@self:processStatusItemsIDS)
@ 345 ,303 COMBOBOX comboProcessStatus;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:ProcessStatusitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 422 ,627 LABEL lblPlannedFinishDate ;
VALUE "ÊÇÑíÎ ÇáÇäÊåÇÁ ÇáãÎØØ" ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 424 ,463 DATEPICKER dateplannedfinishdate;
WIDTH 150 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 474 ,627 LABEL lblProcessCost ;
VALUE "ÇáÊßáÝÉ" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 467 ,143 TEXTBOX textProcessCost;
HEIGHT 30 ;
WIDTH 470 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = RightToLeftControl ( "OrderProcessesWindow","comboOrderNumber" )
myout = RightToLeftControl ( "OrderProcessesWindow","comboProcess" )
myout = RightToLeftControl ( "OrderProcessesWindow","comboProcessStatus" )
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
self:cProcessCost := OrderProcessesWindow.textProcessCost.Value
Return 0
Method Class2ADO Class OrderProcessesClass
self:oRS:fields:item("processid"):value := self:nprocess
self:oRS:fields:item("OrderNumberid"):value := self:nOrderNumber
self:oRS:fields:item("plannedstartdate"):value := self:cplannedStartDate
self:oRS:fields:item("PlannedFinishDate"):value := self:cPlannedFinishDate
self:oRS:fields:item("Notes"):value := self:cNotes
self:oRS:fields:item("RealStartDate"):value := self:cRealStartDate
self:oRS:fields:item("RealFinishDate"):value := self:cRealFinishDate
self:oRS:fields:item("processstatusid"):value := self:nprocessstatus
self:oRS:fields:item("ProcessCost"):value := self:cProcessCost
Return 0
Method ADO2Class Class OrderProcessesClass
self:nProcess := self:oRS:fields:item("ProcessID"):value
self:nOrderNumber := self:oRS:fields:item("OrderNumberID"):value
self:cPlannedStartDate := self:oRS:fields:item("PlannedStartDate"):value
self:cPlannedFinishDate := self:oRS:fields:item("PlannedFinishDate"):value
self:cRealStartDate := self:oRS:fields:item("RealStartDate"):value
self:cRealFinishDate := self:oRS:fields:item("RealFinishDate"):value
self:nProcessStatus := self:oRS:fields:item("ProcessStatusID"):value
self:cNotes := self:oRS:fields:item("Notes"):value
self:cProcessCost := self:oRS:fields:item("ProcessCost"):value
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
OrderProcessesWindow.textProcessCost.Value := self:cProcessCost
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
self:cProcessCost := ""
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
OrderProcessesWindow.textProcessCost.Enabled := true
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
OrderProcessesWindow.textProcessCost.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
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
OrderProcessesWindow.grid1browse.DeleteAllItems ( )
OrderProcessesWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrderProcessesClass
OrderProcessesWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class OrderProcessesClass
cName := OrderProcessesWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class OrderProcessesClass
OrderProcessesWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
