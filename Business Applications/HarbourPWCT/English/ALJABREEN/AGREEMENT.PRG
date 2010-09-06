*---------------------------------------------------------------------------*
* Time : 18:30:22    Date : 08/19/2010
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
Function AGREEMENT
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

Resistance R_AGREEMENT_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AGREEMENT_15speed1() code
Class AgreementClass
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data DatabaseName init ""
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderNumber","orderdate","f_name","FinishDate","OrderStatus"}
Data username init "systemdatabase"
Data password init "systemdatabase123"
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "itemname"
Data PrimaryKey2 init "id"
Data columns2 init {"ItemName","ItemCompleteName","ItemClass","GroupName","SourceName","GradeName","ColorName","SizeName","u1name","u1value","u2name","u2value","theamount"}
Data ResultPrimaryKeys2 init {}
Data nQuality init 0
Data Qualityitems init {}
Data Qualityitemsids init {}
Data nScheduling init 0
Data Schedulingitems init {}
Data Schedulingitemsids init {}
Data nWarehouse init 0
Data Warehouseitems init {}
Data Warehouseitemsids init {}
Data nFinance init 0
Data Financeitems init {}
Data Financeitemsids init {}
Data nOrderStatus init 0
Data OrderStatusitems init {}
Data OrderStatusitemsids init {}
Method showwindow
Method closewindow
Method ShowRecord
Method connect
Method disconnect
Method firstrecord
Method lastrecord
Method nextrecord
Method prevrecord
Method delrecord
Method SetMode
Method EditRecord
Method SaveRecord
Method CancelRecord
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method addrecord
Method ClearRecord
Method AutoGotoRecord
Method search
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method LoadLookupTable
Method LookupIDtoIndex
Method itemchange
Method CHECKAMOUNT
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method onAddClick
Method search2
Method SaveRecord2
Method QualityNotes
Method QualityNotesSave
Method SchedulingNotes
Method SchedulingNotesSave
Method WarehouseNotes
Method WarehouseNotesSave
Method FinanceNotes
Method FinanceNotesSave
Method OrderStatusNotes
Method OrderStatusNotesSave
EndClass
Method showwindow Class AgreementClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( AgreementWindow )
DEFINE WINDOW AgreementWindow ;
AT 10 ,10 ;
WIDTH 779 ;
HEIGHT 710 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Agreement" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 190
@ 244 ,4 IMAGE image2;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 638 ,674 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                            Agreement" ;
WIDTH 760 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 52 ,59 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,196 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 53 ,612 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 730 ;
HEIGHT 130 ;
HEADERS {"Order Number","Order Date","Customer Name","Finish Date","Order Status"};
WIDTHS {100,100,200,100,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 256 ,196 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 256 ,303 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 256 ,472 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,11 GRID Grid1browse2;
WIDTH 740 ;
HEIGHT 140 ;
HEADERS {"Item Name","Item Display Name","Class","Group","Source","Grade","Color","Size","Unit","Value","Secondary Unit","value","Amount"};
WIDTHS {100,200,100,100,100,100,100,100,100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Quality","QualityOpinion",@self:QualityItems,"id",@self:QualityItemsIDS)
@ 448 ,25 LABEL lblQuality ;
VALUE "Quality Manager Opinion" ;
WIDTH 210 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 450 ,291 COMBOBOX comboquality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Scheduling","SchedulingOpinion",@self:SchedulingItems,"id",@self:SchedulingItemsIDS)
@ 484 ,25 LABEL lblScheduling ;
VALUE "Scheduling Manager Opinion" ;
WIDTH 250 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 485 ,291 COMBOBOX comboScheduling;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Schedulingitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Warehouse","WarehouseOpinion",@self:WarehouseItems,"id",@self:WarehouseItemsIDS)
@ 520 ,25 LABEL lblWarehouse ;
VALUE "Warehouse Manager Opinion" ;
WIDTH 260 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 520 ,291 COMBOBOX comboWarehouse;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Warehouseitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Finance","FinanceOpinion",@self:FinanceItems,"id",@self:FinanceItemsIDS)
@ 556 ,25 LABEL lblFinance ;
VALUE "Finance Manager Opinion" ;
WIDTH 220 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 555 ,291 COMBOBOX comboFinance;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Financeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("OrderStatus","OrderStatus",@self:OrderStatusItems,"id",@self:OrderStatusItemsIDS)
@ 592 ,25 LABEL lblOrderStatus ;
VALUE "Change Order Status" ;
WIDTH 220 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 590 ,291 COMBOBOX comboOrderStatus;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:OrderStatusitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 450 ,674 BUTTONEX btnQualityNotes;
CAPTION "Notes";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 484 ,674 BUTTONEX btnSchedulingNotes;
CAPTION "Notes";
ON CLICK self:SchedulingNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,674 BUTTONEX btnWarehouseNotes;
CAPTION "Notes";
ON CLICK self:WarehouseNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 555 ,674 BUTTONEX btnFinanceNotes;
CAPTION "Notes";
ON CLICK self:FinanceNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 588 ,674 BUTTONEX btnOrderStatusNotes;
CAPTION "Notes";
ON CLICK self:OrderStatusNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

AgreementWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
AgreementWindow.Timer1.Enabled := false
myout = self:search2()
IF UserCan_AgreementRole = 3
AgreementWindow.comboQuality.Enabled := true
ELSE
AgreementWindow.comboQuality.Enabled := false
ENDIF
IF UserCan_AgreementRole = 4
AgreementWindow.comboScheduling.Enabled := true
ELSE
AgreementWindow.comboScheduling.Enabled := false
ENDIF
IF UserCan_AgreementRole = 5
AgreementWindow.comboWarehouse.Enabled := true
ELSE
AgreementWindow.comboWarehouse.Enabled := false
ENDIF
IF UserCan_AgreementRole = 6
AgreementWindow.comboFinance.Enabled := true
AgreementWindow.comboOrderStatus.Enabled := true
ELSE
AgreementWindow.comboFinance.Enabled := false
AgreementWindow.comboOrderStatus.Enabled := false
ENDIF
mymax := self:oRS:RecordCount
IF mymax = 0
AgreementWindow.comboQuality.Enabled := false
AgreementWindow.comboScheduling.Enabled := false
AgreementWindow.comboWarehouse.Enabled := false
AgreementWindow.comboFinance.Enabled := false
AgreementWindow.comboOrderStatus.Enabled := false
AgreementWindow.btnQualityNotes.Enabled := false
AgreementWindow.btnSchedulingNotes.Enabled := false
AgreementWindow.btnWarehouseNotes.Enabled := false
AgreementWindow.btnFinanceNotes.Enabled := false
AgreementWindow.btnOrderStatusNotes.Enabled := false
ENDIF
ACTIVATE WINDOW AgreementWindow
EndIF

Return 0
Method UserInterface2Class Class AgreementClass
self:nQuality := AgreementWindow.ComboQuality.Value
self:nQuality := self:QualityItemsids[self:nQuality]
self:nScheduling := AgreementWindow.ComboScheduling.Value
self:nScheduling := self:SchedulingItemsids[self:nScheduling]
self:nWarehouse := AgreementWindow.ComboWarehouse.Value
self:nWarehouse := self:WarehouseItemsids[self:nWarehouse]
self:nFinance := AgreementWindow.ComboFinance.Value
self:nFinance := self:FinanceItemsids[self:nFinance]
self:nOrderStatus := AgreementWindow.ComboOrderStatus.Value
self:nOrderStatus := self:OrderStatusItemsids[self:nOrderStatus]
Return 0
Method Class2ADO Class AgreementClass
self:oRS:fields:item("Qualityid"):value := self:nQuality
self:oRS:fields:item("Schedulingid"):value := self:nScheduling
self:oRS:fields:item("Warehouseid"):value := self:nWarehouse
self:oRS:fields:item("Financeid"):value := self:nFinance
self:oRS:fields:item("OrderStatusid"):value := self:nOrderStatus
Return 0
Method ADO2Class Class AgreementClass
self:nOrderNumber := self:oRS:fields:item("ordernumber"):value
self:nQuality := self:oRS:fields:item("QualityID"):value
self:nWarehouse := self:oRS:fields:item("WarehouseID"):value
self:nFinance := self:oRS:fields:item("FinanceID"):value
self:nScheduling := self:oRS:fields:item("SchedulingID"):value
self:nOrderStatus := self:oRS:fields:item("OrderStatusID"):value
Return 0
Method Class2UserInterface Class AgreementClass
self:nQuality = self:LookupIDToIndex(self:nQuality,@self:QualityItemsids)
AgreementWindow.ComboQuality.Value := self:nQuality
self:nScheduling = self:LookupIDToIndex(self:nScheduling,@self:SchedulingItemsids)
AgreementWindow.ComboScheduling.Value := self:nScheduling
self:nWarehouse = self:LookupIDToIndex(self:nWarehouse,@self:WarehouseItemsids)
AgreementWindow.ComboWarehouse.Value := self:nWarehouse
self:nFinance = self:LookupIDToIndex(self:nFinance,@self:FinanceItemsids)
AgreementWindow.ComboFinance.Value := self:nFinance
self:nOrderStatus = self:LookupIDToIndex(self:nOrderStatus,@self:OrderStatusItemsids)
AgreementWindow.ComboOrderStatus.Value := self:nOrderStatus
Return 0
Method ClearRecord Class AgreementClass
self:nQuality := 0
self:nScheduling := 0
self:nWarehouse := 0
self:nFinance := 0
self:nOrderStatus := 0
Return 0
Method search Class AgreementClass
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := AgreementWindow.textNamebrowse.Value
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
AgreementWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
AgreementWindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
AgreementWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
AgreementWindow.grid1browse.Value := 1
myout = self:opendatawindow()
ELSE
ENDIF
oRS:Close()
oCon:CLOSE()
Return 0
Method OpenDataWindow Class AgreementClass
Local nvalue,myout
nvalue := AgreementWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class AgreementClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class AgreementClass
myout = self:search()
AgreementWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class AgreementClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method LoadLookupTable(cTableName,cColumnName,aArrayNameRef,cColumnName2,aArrayNameRef2) Class AgreementClass
Local x,nMax,temp_value,temp_value2,oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from " + cTableName,oCon,3,3 )
nMAX := oRS:RecordCount
aArrayNameRef := {}
aArrayNameRef2 := {}
FOR x = 1 TO nMax STEP 1
temp_value := oRS:fields:item(cColumnName):value
temp_value2 := oRS:fields:item(cColumnName2):value
AADD( aArrayNameRef , temp_value)
AADD( aArrayNameRef2 , temp_value2)
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return 0
Method LookupIDtoIndex(IDVar,ArrayRef) Class AgreementClass
Local nMax,x
myindex := 1
nMax  = LEN(ArrayRef)
FOR x = 1 TO nMax STEP 1
IF ArrayRef[x]= IDVar
myindex := x
Exit
ENDIF
Next
Return myindex
Method itemchange Class AgreementClass
Local myrs,MYVALUE
TVALUE := AgreementWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from ItemsandUnits_ALL where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item(13):value
AgreementWindow.textItemUnit.Value := myvalue
myvalue := myRS:fields:item("ItemUnit"):value
AgreementWindow.textItemSecUnit.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class AgreementClass
tvalue := AgreementWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
AgreementWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := AgreementWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
AgreementWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := AgreementWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
AgreementWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method OnAfterAddEdit Class AgreementClass
Return myout
Method OnBeforeEdit Class AgreementClass
Return myout
Method OnBeforeDelete Class AgreementClass
Return myout
Method onAddClick Class AgreementClass
Return 0
Method search2 Class AgreementClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := AgreementWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
AgreementWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
AgreementWindow.grid1browse2.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column2):value
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns2[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
AgreementWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class AgreementClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := AgreementWindow.Grid1Browse.item(AgreementWindow.Grid1Browse.value)
myitem[5] := AgreementWindow.ComboOrderStatus.Value
myitem[5] := self:orderstatusItems[myitem[5]]
AgreementWindow.Grid1Browse.item(AgreementWindow.Grid1Browse.Value) := myitem
Return 0
Method QualityNotes Class AgreementClass
cNotes := self:oRS:fields:item("QualityNotes"):value
if !iswindowdefined( winQualityNotes )
DEFINE WINDOW winQualityNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Quality Manager - Notes" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,17 LABEL lbl1 ;
VALUE "Notes" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,111 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,643 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:QualityNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winQualityNotes.Edit1.Value := cNotes
WinQualityNotes.Center ( )
IF .not. UserCan_AgreementRole = 3
WinQualityNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winQualityNotes
EndIF

Return 0
Method QualityNotesSave Class AgreementClass
IF UserCan_AgreementRole = 3
cNotes := WinQualityNotes.Edit1.Value
self:oRS:fields:item("QualityNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winQualityNotes.Release ( )
Return 0
Method SchedulingNotes Class AgreementClass
cNotes := self:oRS:fields:item("SchedulingNotes"):value
if !iswindowdefined( winSchedulingNotes )
DEFINE WINDOW winSchedulingNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Scheduling Manager - Notes" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,17 LABEL lbl1 ;
VALUE "Notes" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,111 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,643 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:SchedulingNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winSchedulingNotes.Edit1.Value := cNotes
WinSchedulingNotes.Center ( )
IF .not. UserCan_AgreementRole = 4
WinSchedulingNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winSchedulingNotes
EndIF

Return 0
Method SchedulingNotesSave Class AgreementClass
IF UserCan_AgreementRole = 4
cNotes := WinSchedulingNotes.Edit1.Value
self:oRS:fields:item("SchedulingNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winSchedulingNotes.Release ( )
Return 0
Method WarehouseNotes Class AgreementClass
cNotes := self:oRS:fields:item("WarehouseNotes"):value
if !iswindowdefined( winWarehouseNotes )
DEFINE WINDOW winWarehouseNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Warehouse Manager - Notes" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,17 LABEL lbl1 ;
VALUE "Notes" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,111 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,643 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:WarehouseNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winWarehouseNotes.Edit1.Value := cNotes
WinWarehouseNotes.Center ( )
IF .not. UserCan_AgreementRole = 5
WinWarehouseNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winWarehouseNotes
EndIF

Return 0
Method WarehouseNotesSave Class AgreementClass
IF UserCan_AgreementRole = 5
cNotes := WinWarehouseNotes.Edit1.Value
self:oRS:fields:item("WarehouseNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winWarehouseNotes.Release ( )
Return 0
Method FinanceNotes Class AgreementClass
cNotes := self:oRS:fields:item("FinanceNotes"):value
if !iswindowdefined( winFinanceNotes )
DEFINE WINDOW winFinanceNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Finance Manager - Notes" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,17 LABEL lbl1 ;
VALUE "Notes" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,111 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,643 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:FinanceNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winFinanceNotes.Edit1.Value := cNotes
WinFinanceNotes.Center ( )
IF .not. UserCan_AgreementRole = 6
WinFinanceNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winFinanceNotes
EndIF

Return 0
Method FinanceNotesSave Class AgreementClass
IF UserCan_AgreementRole = 6
cNotes := WinFinanceNotes.Edit1.Value
self:oRS:fields:item("FinanceNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winFinanceNotes.Release ( )
Return 0
Method OrderStatusNotes Class AgreementClass
cNotes := self:oRS:fields:item("OrderStatusNotes"):value
if !iswindowdefined( winOrderStatusNotes )
DEFINE WINDOW winOrderStatusNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "Order Status - Notes" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,17 LABEL lbl1 ;
VALUE "Notes" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,111 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,643 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:OrderStatusNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winOrderStatusNotes.Edit1.Value := cNotes
WinOrderStatusNotes.Center ( )
IF .not. UserCan_AgreementRole = 6
WinOrderStatusNotes.Edit1.Enabled := false
ENDIF
ACTIVATE WINDOW winOrderStatusNotes
EndIF

Return 0
Method OrderStatusNotesSave Class AgreementClass
IF UserCan_AgreementRole = 6
cNotes := WinOrderStatusNotes.Edit1.Value
self:oRS:fields:item("OrderStatusNotes"):value := cNotes
self:oRS:UPDATE()
ENDIF
winOrderStatusNotes.Release ( )
Return 0
Method closewindow Class AgreementClass
myout = self:disconnect()
AgreementWindow.Release ( )
Return 0
Method ShowRecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method connect Class AgreementClass
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=FACTORYDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName,self:oCon,3,3 )
Return 0
Method disconnect Class AgreementClass
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of File","Sorry")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method delrecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure ?","Delete")
IF myout = false
Return 0
ENDIF
myout = self:OnBeforeDelete()
self:oRS:DELETE()
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
ENDIF
ENDIF
myout = self:showrecord()
AgreementWindow.Timer1.Enabled := true
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
Return 0
Method EditRecord Class AgreementClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method SaveRecord Class AgreementClass
IF self:addrec = true
self:oRS:ADDNEW()
ELSE
myout = self:OnBeforeEdit()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
self:addrec := false
AgreementWindow.Timer1.Enabled := true
myout = self:OnAfterAddEdit()
Return 0
Method CancelRecord Class AgreementClass
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class AgreementClass
myout = self:onAddClick()
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class AgreementClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( AgreementWindow )
myout = self:showrecord()
AgreementWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
