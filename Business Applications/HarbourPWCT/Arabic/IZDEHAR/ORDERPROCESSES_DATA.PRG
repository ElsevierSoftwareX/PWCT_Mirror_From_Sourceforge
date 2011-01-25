*---------------------------------------------------------------------------*
* Time : 04:11:52    Date : 11/05/2010
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
Data FindTitles init {"„·«ÕŸ« ","«· ﬂ·›…","„Ê⁄œ «·«‰ Â«¡ «·›⁄·Ï","„Ê⁄œ «·»œ¡ «·›⁄·Ï","„Ê⁄œ «·«‰ Â«¡ «·„Œÿÿ","„Ê⁄œ «·»œ¡ «·„Œÿÿ","Õ«·… «·«Ã—«¡","«·«Ã—«¡","«”„ «·œÊ—…","—ﬁ„ «·œÊ—…"}
Data CheckD1 init FALSE
Data CheckD2 init FALSE
Data CheckD3 init FALSE
Data CheckD4 init FALSE
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
Method CheckFind
Method AutoAdd
EndClass
Method showwindow Class OrderProcessesClass
IF .not. UsersObject:CheckPermission(32)
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrderProcessesWindow )
DEFINE WINDOW OrderProcessesWindow ;
AT 10 ,10 ;
WIDTH 1071 ;
HEIGHT 628 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "„ «»⁄… «Ã—«¡«  œÊ—…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 42 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1050 HEIGHT 490
@ 545 ,526 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,401 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,338 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,154 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,465 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,250 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 545 ,687 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 545 ,604 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 545 ,768 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 545 ,837 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                     „ «»⁄… «Ã—«¡«  œÊ—… " ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 329 ,292 LABEL lblPlannedStartDate ;
VALUE " «—ÌŒ «·»œ¡ «·„Œÿÿ" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 329 ,128 DATEPICKER dateplannedstartdate;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 52 ,235 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,123 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1030 ;
HEIGHT 230 ;
HEADERS self:FindTitles;
WIDTHS {100,100,200,200,200,150,150,250,200,150} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 52 ,737 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:FindTitles ;
VALUE 10 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 406 ,294 LABEL lblRealStartDate ;
VALUE " «—ÌŒ «·»œ¡ «·›⁄·Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 406 ,130 DATEPICKER daterealstartdate;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Orders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 329 ,884 LABEL lblOrderNumber ;
VALUE "—ﬁ„ «·œÊ—…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 329 ,561 COMBOBOX comboordernumber;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Process","processname",@self:processItems,"id",@self:processItemsIDS)
@ 366 ,884 LABEL lblProcess ;
VALUE "«·«Ã—«¡" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,560 COMBOBOX comboProcess;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:Processitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 489 ,883 LABEL lblNotes ;
VALUE "„·«ÕŸ« " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 485 ,129 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 740 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 447 ,289 LABEL lblRealFinishDate ;
VALUE " «—ÌŒ «·«‰ Â«¡ «·›⁄·Ï" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 447 ,130 DATEPICKER daterealfinishdate;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 406 ,885 LABEL lblDateofInput ;
VALUE "Õ«·… «·«Ã—«¡" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("ProcessStatus","processStatus",@self:processStatusItems,"id",@self:processStatusItemsIDS)
@ 406 ,561 COMBOBOX comboProcessStatus;
WIDTH 310 ;
HEIGHT 100;
ITEMS self:ProcessStatusitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 366 ,292 LABEL lblPlannedFinishDate ;
VALUE " «—ÌŒ «·«‰ Â«¡ «·„Œÿÿ" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,128 DATEPICKER dateplannedfinishdate;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 447 ,885 LABEL lblProcessCost ;
VALUE "«· ﬂ·›…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 447 ,680 TEXTBOX textProcessCost;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = RightToLeftControl ( "OrderProcessesWindow","comboOrderNumber" )
myout = RightToLeftControl ( "OrderProcessesWindow","comboProcess" )
myout = RightToLeftControl ( "OrderProcessesWindow","comboProcessStatus" )
@ 329 ,453 CHECKBOX checkd1;
CAPTION " ›⁄Ì·";
WIDTH 60;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 366 ,452 CHECKBOX checkd2;
CAPTION " ›⁄Ì·";
WIDTH 60;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 406 ,451 CHECKBOX checkd3;
CAPTION " ›⁄Ì·";
WIDTH 60;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 447 ,451 CHECKBOX checkd4;
CAPTION " ›⁄Ì·";
WIDTH 60;
Height 30;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 6 ,765 BUTTONEX btnAutoAdd;
CAPTION "≈œ—«Ã  ·ﬁ«∆Ï ·≈Ã—«¡«  «·œÊ—« ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:AutoAdd()  ;
WIDTH 290 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
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
self:CheckD1 := OrderProcessesWindow.CheckD1.Value
self:CheckD2 := OrderProcessesWindow.CheckD2.Value
self:CheckD3 := OrderProcessesWindow.CheckD3.Value
self:CheckD4 := OrderProcessesWindow.CheckD4.Value
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
IF self:CheckD1 = True
self:oRS:fields:item("CheckD1"):value := 2
ELSE
self:oRS:fields:item("CheckD1"):value := 3
self:oRS:fields:item("plannedstartdate"):value := ""
ENDIF
IF self:CheckD2 = True
self:oRS:fields:item("CheckD2"):value := 2
ELSE
self:oRS:fields:item("CheckD2"):value := 3
self:oRS:fields:item("PlannedFinishDate"):value := ""
ENDIF
IF self:CheckD3 = True
self:oRS:fields:item("CheckD3"):value := 2
ELSE
self:oRS:fields:item("CheckD3"):value := 3
self:oRS:fields:item("RealStartDate"):value := ""
ENDIF
IF self:CheckD4 = True
self:oRS:fields:item("CheckD4"):value := 2
ELSE
self:oRS:fields:item("CheckD4"):value := 3
self:oRS:fields:item("RealFinishDate"):value := ""
ENDIF
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
self:CheckD1 := self:oRS:fields:item("CheckD1"):value
IF Self:CheckD1 = 2
self:CheckD1 := True
ELSE
self:CheckD1 := False
ENDIF
self:CheckD2 := self:oRS:fields:item("CheckD2"):value
IF Self:CheckD2 = 2
self:CheckD2 := True
ELSE
self:CheckD2 := False
ENDIF
self:CheckD3 := self:oRS:fields:item("CheckD3"):value
IF Self:CheckD3 = 2
self:CheckD3 := True
ELSE
self:CheckD3 := False
ENDIF
self:CheckD4 := self:oRS:fields:item("CheckD4"):value
IF Self:CheckD4 = 2
self:CheckD4 := True
ELSE
self:CheckD4 := False
ENDIF
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
OrderProcessesWindow.CheckD1.Value := self:CheckD1
OrderProcessesWindow.CheckD2.Value := self:CheckD2
OrderProcessesWindow.CheckD3.Value := self:CheckD3
OrderProcessesWindow.CheckD4.Value := self:CheckD4
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
self:CheckD1 := False
self:CheckD2 := False
self:CheckD3 := False
self:CheckD4 := False
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
OrderProcessesWindow.CheckD1.Enabled := True
OrderProcessesWindow.CheckD2.Enabled := True
OrderProcessesWindow.CheckD3.Enabled := True
OrderProcessesWindow.CheckD4.Enabled := True
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
OrderProcessesWindow.CheckD1.Enabled := False
OrderProcessesWindow.CheckD2.Enabled := False
OrderProcessesWindow.CheckD3.Enabled := False
OrderProcessesWindow.CheckD4.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class OrderProcessesClass
Local nIndex
nIndex := OrderProcessesWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method AutoAdd Class OrderProcessesClass
Local oRSOrders,oRSProcess,oRSOrderProcesses,nMax1,nMax2,x,x2,nOrderNumber,nProcessID,cOrderNumber,cProcessID
oRSOrders := TOLEAUTO():NEW( "ADODB.Recordset" )
oRSProcess := TOLEAUTO():NEW( "ADODB.Recordset" )
oRSOrderProcesses := TOLEAUTO():NEW( "ADODB.Recordset" )
oRSOrders:CursorType := 1
oRSOrders:ActiveConnection := self:oCon
oRSOrders:open ( "Select * from Orders",self:oCon,3,3 )
oRSProcess:CursorType := 1
oRSProcess:ActiveConnection := self:oCon
oRSProcess:open ( "Select * from Process",self:oCon,3,3 )
nMax1 := oRSOrders:RecordCount
nMax2 := oRSProcess:RecordCount
IF nMax1 > 0
FOR x = 1 TO nMax1 STEP 1
IF nMax2 > 0
oRSProcess:MOVEFIRST()
FOR x2 = 1 TO nMax2 STEP 1
nOrderNumber := oRSOrders:fields:item("ID"):value
nProcessID := oRSProcess:fields:item("ID"):value
cOrderNumber = STR ( nOrderNumber )
cProcessID = STR ( nProcessID )
oRSOrderProcesses:CursorType := 1
oRSOrderProcesses:ActiveConnection := self:oCon
oRSOrderProcesses:open ( "Select * from OrderProcesses_ALL where OrderNumberID = " + cOrderNumber + " and ProcessID = " + cProcessID,self:oCon,3,3 )
nMax3 := oRSOrderProcesses:RecordCount
IF nMax3 = 0
oRSOrderProcesses:ADDNEW()
oRSOrderProcesses:fields:item("OrderNumberID"):value := cOrderNumber
oRSOrderProcesses:fields:item("ProcessID"):value := cProcessID
oRSOrderProcesses:fields:item("CheckD1"):value := 3
oRSOrderProcesses:fields:item("CheckD2"):value := 3
oRSOrderProcesses:fields:item("CheckD3"):value := 3
oRSOrderProcesses:fields:item("CheckD4"):value := 3
oRSOrderProcesses:fields:item("RealStartDate"):value := ""
oRSOrderProcesses:fields:item("RealFinishDate"):value := ""
oRSOrderProcesses:fields:item("processstatusid"):value := 2
oRSOrderProcesses:fields:item("ProcessCost"):value := ""
temp_OrderDate := oRSOrders:fields:item("OrderDate"):value
temp_FinishDate := oRSOrders:fields:item("FinishDate"):value
temp_orderdate := ctod(temp_orderdate )
temp_finishdate := ctod(temp_finishdate )
temp_startcodeid := oRSProcess:fields:item("StartCodeID"):value
temp_startpos := oRSProcess:fields:item("StartPos"):value
temp_Duration := oRSProcess:fields:item("Duration"):value
temp_startpos = VAL ( temp_startpos )
temp_duration = VAL ( temp_duration )
IF temp_startcodeid = 2
temp_mystart := temp_orderdate - temp_startpos
temp_myend := temp_orderdate - temp_startpos + temp_duration - 1
ENDIF
IF temp_startcodeid = 3
temp_mystart := temp_orderdate + temp_startpos
temp_myend := temp_orderdate + temp_startpos + temp_duration - 1
ENDIF
IF temp_startcodeid = 4
temp_mystart := temp_finishdate - temp_startpos
temp_myend := temp_finishdate - temp_startpos + temp_duration - 1
ENDIF
IF temp_startcodeid = 5
temp_mystart := temp_finishdate + temp_startpos
temp_myend := temp_finishdate + temp_startpos + temp_duration - 1
ENDIF
temp_mystart = DTOC ( temp_mystart )
temp_myend = DTOC ( temp_myend )
temp_mystart = ALLTRIM ( temp_mystart )
temp_myend = ALLTRIM ( temp_myend )
oRSOrderProcesses:fields:item("plannedstartdate"):value := temp_mystart
oRSOrderProcesses:fields:item("PlannedFinishDate"):value := temp_myend
oRSOrderProcesses:UPDATE()
ENDIF
oRSOrderProcesses:Close()
oRSProcess:MOVENEXT()
Next
ENDIF
oRSOrders:MOVENEXT()
Next
ENDIF
oRSOrders:Close()
oRSProcess:Close()
MyOut := MSGBOX(" „  «·⁄„·Ì…","Õ”‰«")
myout = self:Search()
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
