*---------------------------------------------------------------------------*
* Time : 15:24:34    Date : 10/25/2010
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
class AgreementClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderNumber"}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data columns2 init {"customerwant3","customerwant2","customerwant1","howknow","f_mobile","f_name"}
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
Method SearchAdd
Method BeforeSearch
Method GetSearchValue
Method settimer
EndClass
Method showwindow Class AgreementClass
IF .not. UserCan_WinAgreement = 2
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( AgreementWindow )
DEFINE WINDOW AgreementWindow ;
AT 10 ,10 ;
WIDTH 954 ;
HEIGHT 712 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "«⁄ „«œ œÊ—…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 930 HEIGHT 190
@ 244 ,4 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 930 HEIGHT 390
@ 639 ,11 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                      «⁄ „«œ œÊ—…" ;
WIDTH 930 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,681 LABEL lbl1browse ;
VALUE "—ﬁ„ «·œÊ—…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,269 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,163 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 890 ;
HEIGHT 130 ;
HEADERS {"Õ«·… «·œÊ—…"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","—ﬁ„ «·œÊ—…"};
WIDTHS {100,200,120,200,150,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 259 ,681 LABEL lbl1browse2 ;
VALUE "«”„ «·⁄„Ì·" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 256 ,269 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 255 ,164 BUTTONEX btn1browse2;
CAPTION "»ÕÀ";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,23 GRID Grid1browse2;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS {"„ÕÊ— 3","„ÕÊ— 2","„ÕÊ— 1","ﬂÌ› ”„⁄  ⁄‰ «·œÊ—…","ÃÊ«·","«”„ «·⁄„Ì·"};
WIDTHS {100,100,100,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Quality","QualityOpinion",@self:QualityItems,"id",@self:QualityItemsIDS)
@ 447 ,636 LABEL lblQuality ;
VALUE "—«Ï „œÌ— «·ÃÊœ…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 449 ,252 COMBOBOX comboquality;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Qualityitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Scheduling","SchedulingOpinion",@self:SchedulingItems,"id",@self:SchedulingItemsIDS)
@ 483 ,635 LABEL lblScheduling ;
VALUE "—«Ï „œÌ— «·ÃœÊ·… Ê«·„ «»⁄…" ;
WIDTH 180 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 484 ,252 COMBOBOX comboScheduling;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Schedulingitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Warehouse","WarehouseOpinion",@self:WarehouseItems,"id",@self:WarehouseItemsIDS)
@ 519 ,635 LABEL lblWarehouse ;
VALUE "—« Ï „œÌ— «·„Œ«“‰" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 519 ,251 COMBOBOX comboWarehouse;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Warehouseitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Finance","FinanceOpinion",@self:FinanceItems,"id",@self:FinanceItemsIDS)
@ 555 ,635 LABEL lblFinance ;
VALUE "—«Ï „œÌ— «·„«·Ì…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 554 ,251 COMBOBOX comboFinance;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:Financeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("OrderStatus","OrderStatus",@self:OrderStatusItems,"id",@self:OrderStatusItemsIDS)
@ 591 ,635 LABEL lblOrderStatus ;
VALUE " €ÌÌ— Õ«·… œÊ—…" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 589 ,251 COMBOBOX comboOrderStatus;
ON CHANGE self:saverecord2()  ;
WIDTH 370 ;
HEIGHT 100;
ITEMS self:OrderStatusitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 449 ,164 BUTTONEX btnQualityNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:QualityNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 483 ,164 BUTTONEX btnSchedulingNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:SchedulingNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 519 ,164 BUTTONEX btnWarehouseNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:WarehouseNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 554 ,164 BUTTONEX btnFinanceNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:FinanceNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 587 ,164 BUTTONEX btnOrderStatusNotes;
CAPTION "„·«ÕŸ« ";
ON CLICK self:OrderStatusNotes()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = RightToLeftControl ( "AgreementWindow","comboQuality" )
myout = RightToLeftControl ( "AgreementWindow","comboWarehouse" )
myout = RightToLeftControl ( "AgreementWindow","comboScheduling" )
myout = RightToLeftControl ( "AgreementWindow","comboFinance" )
myout = RightToLeftControl ( "AgreementWindow","comboOrderStatus" )
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
myitem[1] := AgreementWindow.ComboOrderStatus.Value
myitem[1] := self:orderstatusItems[myitem[1]]
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
TITLE "„·«ÕŸ«  „œÌ— «·ÃÊœ…" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,666 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 11 ,17 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,17 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:QualityNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
TITLE "„·«ÕŸ«  „œÌ— «·ÃœÊ·… Ê«·„ «»⁄…" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 13 ,653 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,11 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,11 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:SchedulingNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
TITLE "„·«ÕŸ«  „œÌ— «·„Œ«“‰" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,651 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,11 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,11 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:WarehouseNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
TITLE "„·«ÕŸ«  „œÌ— «·„«·Ì…" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 11 ,651 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,17 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,17 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:FinanceNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
TITLE "„·«ÕŸ«  « Œ«– «·ﬁ—«—" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,651 LABEL lbl1 ;
VALUE "„·«ÕŸ« " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,17 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,17 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:OrderStatusNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
Method BeforeSearch Class AgreementClass
AgreementWindow.grid1browse.DeleteAllItems ( )
AgreementWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class AgreementClass
AgreementWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class AgreementClass
cName := AgreementWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class AgreementClass
AgreementWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
