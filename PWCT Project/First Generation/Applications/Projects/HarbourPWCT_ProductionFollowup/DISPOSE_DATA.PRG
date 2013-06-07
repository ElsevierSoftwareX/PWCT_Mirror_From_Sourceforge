*---------------------------------------------------------------------------*
* Time : 13:15:11    Date : 06/07/2013
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
Function DISPOSE_DATA
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

Resistance R_DISPOSE_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DISPOSE_DATA_18smart1() code
class DisposeClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderNumber","orderdate","f_name","FinishDate","OrderStatus","QualityOpinion"}
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
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class DisposeClass
IF .not. UserCan_WinDispose = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( DisposeWindow )
DEFINE WINDOW DisposeWindow ;
AT 10 ,10 ;
WIDTH 959 ;
HEIGHT 573 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Dispose" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 43 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 940 HEIGHT 190
@ 244 ,4 IMAGE image2;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 940 HEIGHT 250
@ 498 ,854 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                  Dispose" ;
WIDTH 940 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 52 ,148 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,285 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 53 ,701 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 910 ;
HEIGHT 130 ;
HEADERS {"Order Number","Order Date","Customer Name","Finish Date","Order Status","Dispose - Quality Opinion"};
WIDTHS {100,100,200,100,200,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 256 ,286 LABEL lbl1browse2 ;
VALUE "Item Name" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 256 ,393 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 256 ,562 BUTTONEX btn1browse2;
CAPTION "Search";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,11 GRID Grid1browse2;
WIDTH 920 ;
HEIGHT 140 ;
HEADERS {"Item Name","Item Display Name","Class","Group","Source","Grade","Color","Size","Unit","Value","Secondary Unit","value","Amount"};
WIDTHS {100,200,100,100,100,100,100,100,100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Quality","QualityOpinion",@self:QualityItems,"id",@self:QualityItemsIDS)
@ 447 ,135 LABEL lblQuality ;
VALUE "Quality Manager Opinion" ;
WIDTH 210 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,351 COMBOBOX comboQuality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 449 ,734 BUTTONEX btnQualityNotes;
CAPTION "Notes";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW
DisposeWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
DisposeWindow.Timer1.Enabled := false
myout = self:search2()
IF UserCan_AgreementRole = 3
DisposeWindow.comboQuality.Enabled := true
ELSE
DisposeWindow.comboQuality.Enabled := false
ENDIF
mymax := self:oRS:RecordCount
IF mymax = 0
DisposeWindow.comboQuality.Enabled := false
DisposeWindow.btnQualityNotes.Enabled := false
ENDIF
ACTIVATE WINDOW DisposeWindow
EndIF
Return 0
Method UserInterface2Class Class DisposeClass
self:nQuality := DisposeWindow.ComboQuality.Value
self:nQuality := self:QualityItemsids[self:nQuality]
Return 0
Method Class2ADO Class DisposeClass
self:oRS:fields:item(alltrim("QualityDisposeid")):value := self:nQuality
Return 0
Method ADO2Class Class DisposeClass
self:nOrderNumber := self:oRS:fields:item(alltrim("ordernumber")):value
self:nQuality := self:oRS:fields:item(alltrim("QualityDisposeID")):value
Return 0
Method Class2UserInterface Class DisposeClass
self:nQuality = self:LookupIDToIndex(self:nQuality,@self:QualityItemsids)
DisposeWindow.ComboQuality.Value := self:nQuality
Return 0
Method ClearRecord Class DisposeClass
self:nQuality := 0
Return 0
Method OpenDataWindow Class DisposeClass
Local nvalue,myout
nvalue := DisposeWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class DisposeClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class DisposeClass
myout = self:search()
DisposeWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class DisposeClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method itemchange Class DisposeClass
Local myrs,MYVALUE
TVALUE := DisposeWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from ItemsandUnits_ALL where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item(alltrim(13)):value
DisposeWindow.textItemUnit.Value := myvalue
myvalue := myRS:fields:item(alltrim("ItemUnit")):value
DisposeWindow.textItemSecUnit.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class DisposeClass
tvalue := DisposeWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
DisposeWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := DisposeWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
DisposeWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := DisposeWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
DisposeWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method OnAfterAddEdit Class DisposeClass
Return myout
Method OnBeforeEdit Class DisposeClass
Return myout
Method OnBeforeDelete Class DisposeClass
Return myout
Method onAddClick Class DisposeClass
Return 0
Method search2 Class DisposeClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := DisposeWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
DisposeWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
DisposeWindow.grid1browse2.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim(self:column2)):value
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(alltrim(self:columns2[x2])):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
DisposeWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class DisposeClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := DisposeWindow.Grid1Browse.item(DisposeWindow.Grid1Browse.value)
myitem[6] := DisposeWindow.ComboQuality.Value
myitem[6] := self:QualityItems[myitem[6]]
DisposeWindow.Grid1Browse.item(DisposeWindow.Grid1Browse.Value) := myitem
Return 0
Method QualityNotes Class DisposeClass
cNotes := self:oRS:fields:item(alltrim("QualityDisposeNotes")):value
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
Method QualityNotesSave Class DisposeClass
IF UserCan_AgreementRole = 3
cNotes := WinQualityNotes.Edit1.Value
self:oRS:fields:item(alltrim("QualityDisposeNotes")):value := cNotes
self:oRS:UPDATE()
ENDIF
winQualityNotes.Release ( )
Return 0
Method SchedulingNotes Class DisposeClass
cNotes := self:oRS:fields:item(alltrim("SchedulingNotes")):value
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
Method SchedulingNotesSave Class DisposeClass
IF UserCan_AgreementRole = 4
cNotes := WinSchedulingNotes.Edit1.Value
self:oRS:fields:item(alltrim("SchedulingNotes")):value := cNotes
self:oRS:UPDATE()
ENDIF
winSchedulingNotes.Release ( )
Return 0
Method WarehouseNotes Class DisposeClass
cNotes := self:oRS:fields:item(alltrim("WarehouseNotes")):value
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
Method WarehouseNotesSave Class DisposeClass
IF UserCan_AgreementRole = 5
cNotes := WinWarehouseNotes.Edit1.Value
self:oRS:fields:item(alltrim("WarehouseNotes")):value := cNotes
self:oRS:UPDATE()
ENDIF
winWarehouseNotes.Release ( )
Return 0
Method FinanceNotes Class DisposeClass
cNotes := self:oRS:fields:item(alltrim("FinanceNotes")):value
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
Method FinanceNotesSave Class DisposeClass
IF UserCan_AgreementRole = 6
cNotes := WinFinanceNotes.Edit1.Value
self:oRS:fields:item(alltrim("FinanceNotes")):value := cNotes
self:oRS:UPDATE()
ENDIF
winFinanceNotes.Release ( )
Return 0
Method OrderStatusNotes Class DisposeClass
cNotes := self:oRS:fields:item(alltrim("OrderStatusNotes")):value
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
Method OrderStatusNotesSave Class DisposeClass
IF UserCan_AgreementRole = 6
cNotes := WinOrderStatusNotes.Edit1.Value
self:oRS:fields:item(alltrim("OrderStatusNotes")):value := cNotes
self:oRS:UPDATE()
ENDIF
winOrderStatusNotes.Release ( )
Return 0
Method closewindow Class DisposeClass
myout = self:disconnect()
DisposeWindow.Release ( )
Return 0
Method AutoGotoRecord Class DisposeClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( DisposeWindow )
myout = self:showrecord()
DisposeWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class DisposeClass
DisposeWindow.grid1Browse.DeleteAllItems ( )
DisposeWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class DisposeClass
DisposeWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class DisposeClass
DisposeWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class DisposeClass
cName := DisposeWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*
