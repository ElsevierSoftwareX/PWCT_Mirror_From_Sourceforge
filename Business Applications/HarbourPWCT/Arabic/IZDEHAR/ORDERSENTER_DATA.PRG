*---------------------------------------------------------------------------*
* Time : 11:36:00    Date : 11/26/2010
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
Function ORDERSENTER_DATA
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

Resistance R_ORDERSENTER_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ORDERSENTER_DATA_15speed1() code
class OrdersEnterClass From SYSTEMDATABASE
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data nCustomer init 0
Data Customeritems init {}
Data Customeritemsids init {}
Data nItem init 0
Data itemitems init {}
Data itemitemsids init {}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data columns2 init {"username","invoicenumber","howknow","f_mobile","f_name"}
Data ResultPrimaryKeys2 init {}
Data cOrderName init ""
Data nhowknow init 0
Data howknowitems init {}
Data howknowitemsids init {}
Data nLocation init 0
Data Locationitems init {}
Data Locationitemsids init {}
Data cHayaRecord init ""
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate","OrderStatus"}
Data FindTitles init {"—ﬁ„ «·œÊ—…","‰Ê⁄ «·œÊ—…","«”„ «·œÊ—…","«”„ «·„Õ«÷—"," «—ÌŒ «·œÊ—…"," «—ÌŒ «·«‰ Â«¡","Õ«·… «·œÊ—…"}
Data FindColumns2 init {"f_name","f_mobile"}
Data FindTitles2 init {"«”„ «·⁄„Ì·","—ﬁ„ «·ÃÊ«·"}
Data nOrderType init 0
Data OrderTypeitems init {}
Data OrderTypeItemsids init {}
Data CustomerWant1 init ""
Data CustomerWant2 init ""
Data CustomerWant3 init ""
Data Days init ""
Method showwindow
Method closewindow
Method ShowRecord
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method search
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
Method delrecord2
Method addrecord2
Method setorderstatus
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method mobilechange
Method CheckFind
Method CheckFind2
Method CheckData
EndClass
Method showwindow Class OrdersEnterClass
IF .not. UsersObject:CheckPermission(27)
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( OrdersEnterWindow )
DEFINE WINDOW OrdersEnterWindow ;
AT 10 ,10 ;
WIDTH 1033 ;
HEIGHT 704 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· œÊ—…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1010 HEIGHT 340
@ 464 ,4 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1010 HEIGHT 200
@ 7 ,387 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,260 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,197 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,13 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,324 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,106 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,563 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,475 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,661 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,728 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 8 ,817 LABEL lblTitle ;
VALUE "             ”ÃÌ· œÊ—…    " ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 210 ,292 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 420 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 210 ,178 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 246 ,16 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 990 ;
HEIGHT 130 ;
HEADERS {" «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·œÊ—…","«”„ «·„Õ«÷—","«”„ «·œÊ—…","‰Ê⁄ «·œÊ—…","—ﬁ„ «·œÊ—…"};
WIDTHS {180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 210 ,716 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 230 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 167 ,296 TEXTBOX textcustomerwant2;
HEIGHT 31 ;
WIDTH 248 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("employees","f_name",@self:CustomerItems,"id",@self:CustomerItemsIDS)
@ 90 ,876 LABEL lblSupplier ;
VALUE "«·„Õ«÷—" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,616 COMBOBOX combocustomer;
WIDTH 240 ;
HEIGHT 100;
ITEMS self:Customeritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("customers","f_name",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 391 ,801 LABEL lblitems ;
VALUE "«”„ «·⁄„Ì·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 392 ,540 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 250 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 389 ,466 LABEL lblItemUnit ;
VALUE "ÃÊ«·" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 389 ,278 TEXTBOX textCustomerMobile;
ON ENTER self:mobilechange()  ;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 167 ,838 LABEL lblItemUnit2 ;
VALUE "«Â„ À·«À… „Õ«Ê—" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 168 ,567 TEXTBOX textcustomerwant1;
HEIGHT 30 ;
WIDTH 250 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 54 ,873 LABEL lblOrdernumber ;
VALUE "—ﬁ„ «·œÊ—…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 51 ,666 TEXTBOX textOrderNumber;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 88 ,514 LABEL lblOrderDate ;
VALUE " «—ÌŒ «·œÊ—…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,336 DATEPICKER dateOrderDate;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 167 ,63 TEXTBOX textcustomerwant3;
HEIGHT 30 ;
WIDTH 210 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 90 ,237 LABEL lblFinishDate ;
VALUE " «—ÌŒ «·«‰ Â«¡" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 91 ,65 DATEPICKER dateFinishDate;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 475 ,471 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 250 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 475 ,357 BUTTONEX btn1browse2;
CAPTION "»ÕÀ";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 515 ,66 GRID Grid1browse2;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS {"«”„ «·„ÊŸ›","—ﬁ„ «·”‰œ"," ﬂÌ› ”„⁄  ⁄‰ «·œÊ—…","ÃÊ«·","«”„ «·⁄„Ì·"};
WIDTHS {150,150,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 475 ,736 COMBOBOX comboFind2;
ON CHANGE self:CheckFind2()  ;
WIDTH 220 ;
HEIGHT 200;
ITEMS self:FindTitles2 ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 475 ,67 BUTTONEX btnDel2;
CAPTION "Õ–› «·⁄„Ì· „‰ «·œÊ—…";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 431 ,68 BUTTONEX btnadd2;
CAPTION "«÷«›… «·⁄„Ì· «·Ï «·œÊ—…";
ON CLICK self:addrecord2()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,323 LABEL lblOrdername ;
VALUE "«”„ «·œÊ—…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 51 ,66 TEXTBOX textOrderName;
HEIGHT 30 ;
WIDTH 250 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("howknow","howknow",@self:howknowItems,"id",@self:howknowItemsIDS)
@ 431 ,802 LABEL lblhowknow ;
VALUE "ﬂÌ› ”„⁄  ⁄‰ «·œÊ—…" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 431 ,542 COMBOBOX combohowknow;
ON CHANGE self:itemchange()  ;
WIDTH 250 ;
HEIGHT 100;
ITEMS self:howknowitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 127 ,733 LABEL lblhaya ;
VALUE "—ﬁ„ ”Ã· «·œÊ—… ›Ï ÂÌ∆… «· œ—Ì»" ;
WIDTH 210 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 130 ,524 TEXTBOX texthayaRecord;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

myout = self:LoadLookupTable("locations","location",@self:locationItems,"id",@self:locationItemsIDS)
@ 130 ,461 LABEL lbllocation ;
VALUE "«·„ﬂ«‰" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 130 ,224 COMBOBOX combolocation;
WIDTH 230 ;
HEIGHT 100;
ITEMS self:locationitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("OrderTypes","OrderType",@self:OrderTypeItems,"id",@self:OrderTypeItemsIDS)
@ 52 ,621 LABEL lblOrderType ;
VALUE "«·‰Ê⁄" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 51 ,407 COMBOBOX comboOrderType;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:OrderTypeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = RightToLeftControl ( "OrdersEnterWindow","comboCustomer" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboLocation" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboItem" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboHowKnow" )
myout = RightToLeftControl ( "OrdersEnterWindow","comboOrderType" )
@ 429 ,446 LABEL lblinvoicenumber ;
VALUE "—ﬁ„ «·”‰œ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 429 ,278 TEXTBOX textInvoiceNumber;
ON ENTER self:mobilechange()  ;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 127 ,63 TEXTBOX textdays;
HEIGHT 30 ;
WIDTH 80 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 126 ,150 LABEL lbldays ;
VALUE "⁄œœ «·«Ì«„" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

OrdersEnterWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
OrdersEnterWindow.Timer1.Enabled := false
OrdersEnterWindow.textOrderNumber.Enabled := false
ACTIVATE WINDOW OrdersEnterWindow
EndIF

Return 0
Method UserInterface2Class Class OrdersEnterClass
self:nCustomer := OrdersEnterWindow.ComboCustomer.Value
self:nCustomer := self:CustomerItemsids[self:nCustomer]
self:cOrderDate := OrdersEnterWindow.dateOrderDate.Value
self:cOrderDate := dtoc(self:cOrderDate)
self:cOrderFinishDate := OrdersEnterWindow.dateFinishDate.Value
self:cOrderFinishDate := dtoc(self:cOrderFinishDate)
self:cOrderName := OrdersEnterWindow.textOrderName.Value
self:cHayaRecord := OrdersEnterWindow.textHayaRecord.Value
self:nLocation := OrdersEnterWindow.ComboLocation.Value
self:nLocation := self:LocationItemsids[self:nLocation]
self:nOrderType := OrdersEnterWindow.ComboOrderType.Value
self:nOrderType := self:OrderTypeItemsids[self:nOrderType]
self:CustomerWant1 := OrdersEnterWindow.textCustomerWant1.Value
self:CustomerWant2 := OrdersEnterWindow.textCustomerWant2.Value
self:CustomerWant3 := OrdersEnterWindow.textCustomerWant3.Value
self:Days := OrdersEnterWindow.textDays.Value
Return 0
Method Class2ADO Class OrdersEnterClass
self:oRS:fields:item("Customerid"):value := self:nCustomer
self:oRS:fields:item("OrderDate"):value := self:cOrderDate
self:oRS:fields:item("FinishDate"):value := self:cOrderFinishDate
self:oRS:fields:item("OrderNumber"):value := self:nOrderNumber
self:oRS:fields:item("OrderName"):value := self:cOrderName
self:oRS:fields:item("HayaRecord"):value := self:cHayaRecord
self:oRS:fields:item("Locationid"):value := self:nLocation
self:oRS:fields:item("OrderTypeid"):value := self:nOrderType
self:oRS:fields:item("CustomerWant1"):value := self:CustomerWant1
self:oRS:fields:item("CustomerWant2"):value := self:CustomerWant2
self:oRS:fields:item("CustomerWant3"):value := self:CustomerWant3
self:oRS:fields:item("days"):value := self:days
Return 0
Method ADO2Class Class OrdersEnterClass
self:nCustomer := self:oRS:fields:item("CustomerID"):value
self:cOrderDate := self:oRS:fields:item("OrderDate"):value
self:cOrderFinishDate := self:oRS:fields:item("FinishDate"):value
self:nOrderNumber := self:oRS:fields:item("OrderNumber"):value
self:cOrderName := self:oRS:fields:item("OrderName"):value
self:nLocation := self:oRS:fields:item("LocationID"):value
self:cHayaRecord := self:oRS:fields:item("HayaRecord"):value
self:nOrderType := self:oRS:fields:item("OrderTypeID"):value
self:CustomerWant1 := self:oRS:fields:item("CustomerWant1"):value
self:CustomerWant2 := self:oRS:fields:item("CustomerWant2"):value
self:CustomerWant3 := self:oRS:fields:item("CustomerWant3"):value
self:days := self:oRS:fields:item("days"):value
Return 0
Method Class2UserInterface Class OrdersEnterClass
self:nCustomer = self:LookupIDToIndex(self:nCustomer,@self:CustomerItemsids)
OrdersEnterWindow.ComboCustomer.Value := self:nCustomer
OrdersEnterWindow.dateOrderDate.Value := ctod(self:cOrderDate)
OrdersEnterWindow.dateFinishDate.Value := ctod(self:cOrderFinishDate )
OrdersEnterWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
OrdersEnterWindow.textOrderName.Value := self:cOrderName
self:nLocation = self:LookupIDToIndex(self:nLocation,@self:LocationItemsids)
OrdersEnterWindow.ComboLocation.Value := self:nLocation
OrdersEnterWindow.textHayaRecord.Value := self:cHayaRecord
self:nOrderType = self:LookupIDToIndex(self:nOrderType,@self:OrderTypeItemsids)
OrdersEnterWindow.ComboOrderType.Value := self:nOrderType
myout = self:search2()
OrdersEnterWindow.textCustomerWant1.Value := self:CustomerWant1
OrdersEnterWindow.textCustomerWant2.Value := self:CustomerWant2
OrdersEnterWindow.textCustomerWant3.Value := self:CustomerWant3
OrdersEnterWindow.textDays.Value := self:Days
Return 0
Method ClearRecord Class OrdersEnterClass
self:nCustomer := 0
self:cOrderDate := ""
self:cOrderFinishDate := ""
self:cOrderName := ""
self:nLocation := 0
self:cHayaRecord := ""
self:nOrderType := 0
IF self:addrec = false
self:nOrderNumber := 0
ENDIF
self:CustomerWant1 := ""
self:CustomerWant2 := ""
self:CustomerWant3 := ""
self:Days := ""
Return 0
Method search Class OrdersEnterClass
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersEnterWindow.textNamebrowse.Value
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn=IZDEHARDATA;uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
OrdersEnterWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
OrdersEnterWindow.grid1browse.Value := 0
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
OrdersEnterWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
oCon:CLOSE()
mymax := self:oRS:RecordCount
IF mymax = 0
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := false
ELSE
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := true
OrdersEnterWindow.Grid1Browse.Value := 1
ENDIF
Return 0
Method OpenDataWindow Class OrdersEnterClass
Local nvalue,myout
nvalue := OrdersEnterWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class OrdersEnterClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class OrdersEnterClass
myout = self:search()
OrdersEnterWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class OrdersEnterClass
IF p1 = 1
OrdersEnterWindow.btnfirst.Enabled := false
OrdersEnterWindow.btnnext.Enabled := false
OrdersEnterWindow.btnprev.Enabled := false
OrdersEnterWindow.btnlast.Enabled := false
OrdersEnterWindow.btndel.Enabled := false
OrdersEnterWindow.btnclose.Enabled := false
OrdersEnterWindow.btnsave.Enabled := true
OrdersEnterWindow.btncancel.Enabled := true
OrdersEnterWindow.btnedit.Enabled := false
OrdersEnterWindow.btnadd.Enabled := false
OrdersEnterWindow.comboCustomer.Enabled := true
OrdersEnterWindow.dateOrderDate.Enabled := true
OrdersEnterWindow.dateFinishDate.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := false
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.textOrderName.Enabled := false
OrdersEnterWindow.textOrderName.Enabled := true
OrdersEnterWindow.comboLocation.Enabled := true
OrdersEnterWindow.textHayaRecord.Enabled := true
OrdersEnterWindow.comboOrderType.Enabled := true
OrdersEnterWindow.textCustomerWant1.Enabled := true
OrdersEnterWindow.textCustomerWant2.Enabled := true
OrdersEnterWindow.textCustomerWant3.Enabled := true
OrdersEnterWindow.textDays.Enabled := true
ENDIF
IF p1 = 2
OrdersEnterWindow.btnfirst.Enabled := true
OrdersEnterWindow.btnnext.Enabled := true
OrdersEnterWindow.btnprev.Enabled := true
OrdersEnterWindow.btnlast.Enabled := true
OrdersEnterWindow.btndel.Enabled := true
OrdersEnterWindow.btnclose.Enabled := true
OrdersEnterWindow.btnsave.Enabled := false
OrdersEnterWindow.btncancel.Enabled := false
OrdersEnterWindow.btnedit.Enabled := true
OrdersEnterWindow.btnadd.Enabled := true
OrdersEnterWindow.comboCustomer.Enabled := false
OrdersEnterWindow.dateOrderDate.Enabled := false
OrdersEnterWindow.dateFinishDate.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := true
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.textOrderName.Enabled := false
OrdersEnterWindow.comboLocation.Enabled := False
OrdersEnterWindow.textHayaRecord.Enabled := False
OrdersEnterWindow.comboOrderType.Enabled := False
OrdersEnterWindow.textCustomerWant1.Enabled := false
OrdersEnterWindow.textCustomerWant2.Enabled := false
OrdersEnterWindow.textCustomerWant3.Enabled := false
OrdersEnterWindow.textDays.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method itemchange Class OrdersEnterClass
Local myrs,MYVALUE
TVALUE := OrdersEnterWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from customers where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item("f_mobile"):value
OrdersEnterWindow.textCustomerMobile.Value := myvalue
myRS:Close()
Return 0
Method CheckAmount Class OrdersEnterClass
tvalue := OrdersEnterWindow.textAmount.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textAmount.Value := "1"
self:cAmount := "1"
ENDIF
tvalue := OrdersEnterWindow.textUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textUnitValue.Value := "1"
self:cUnitValue := "1"
ENDIF
tvalue := OrdersEnterWindow.textSecUnitValue.Value
tvalue = VAL ( tvalue )
IF tvalue <= 0
OrdersEnterWindow.textSecUnitValue.Value := "1"
self:cSecUnitValue := "1"
ENDIF
Return 0
Method OnAfterAddEdit Class OrdersEnterClass
self:oRS:fields:item("orderstatusID"):value := 2
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax = 0
OrdersEnterWindow.btndel2.Enabled := false
OrdersEnterWindow.btnadd2.Enabled := false
ELSE
OrdersEnterWindow.btndel2.Enabled := true
OrdersEnterWindow.btnadd2.Enabled := true
ENDIF
Return myout
Method OnBeforeEdit Class OrdersEnterClass
Return myout
Method OnBeforeDelete Class OrdersEnterClass
myout = self:oCon:execute("delete from orderitems where orderid = " + str(self:nOrderNumber))
Return myout
Method onAddClick Class OrdersEnterClass
Local myRS,nValue
myRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myRS:CursorType := 1
myRS:ActiveConnection := self:oCon
myRS:open ( "Select * from systemcounter",self:oCon,3,3 )
nValue := myRS:fields:item("OrderNumber"):value
nvalue := nvalue+1
myRS:fields:item("OrderNumber"):value := nvalue
myRS:UPDATE()
myRS:Close()
self:nOrderNumber := nValue
OrdersEnterWindow.textOrderNumber.Value := alltrim(str(self:nOrderNumber))
Return 0
Method search2 Class OrdersEnterClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := OrdersEnterWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
OrdersEnterWindow.grid1browse2.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
OrdersEnterWindow.grid1browse2.Value := 0
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
OrdersEnterWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method DelRecord2 Class OrdersEnterClass
Local nvalue,myout
nvalue := OrdersEnterWindow.grid1browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "select * from orderitems where id = " + nvalue,self:oCon,3,3 )
self:nItem := oRS:fields:item("CustomerID"):value
oRS:Close()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All where orderid = " + str(self:nOrderNumber) + " and Friendid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item("RecordStatusid"):value := 2
oRS:UPDATE()
ENDIF
oRS:Close()
myout = self:oCon:execute("delete from orderitems where id = " + nvalue)
myout = self:search2()
myout = self:SetOrderStatus()
ELSE
MyOut := MSGBOX("⁄›Ê« ·«ÌÊÃœ «”„ „Õœœ ·Ì „ Õ–›Â","⁄›Ê«")
ENDIF
Return 0
Method AddRecord2 Class OrdersEnterClass
Local oRS,nValue,nMax
IF self:nOrderNumber > 0
cInvoiceNumber := OrdersEnterWindow.textInvoiceNumber.Value
cInvoiceNumber = ALLTRIM ( cInvoiceNumber )
IF cInvoiceNumber == ""
MyOut := MSGBOX("ÌÃ» «œŒ«· —ﬁ„ «·”‰œ","⁄›Ê«")
Return 0
ENDIF
self:nItem := OrdersEnterWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
self:nhowknow := OrdersEnterWindow.Combohowknow.Value
self:nhowknow := self:howknowItemsids[self:nhowknow]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems where orderid = " + str(self:nOrderNumber) + " and customerid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX(" „  ”ÃÌ· Â–« «·⁄„Ì· ”«»ﬁ«","⁄›Ê«")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("customerid"):value := self:nItem
oRS:fields:item("Orderid"):value := self:nOrderNumber
oRS:fields:item("customerhowknow"):value := self:nhowknow
oRS:fields:item("InvoiceNumber"):value := cInvoiceNumber
oRS:fields:item("UserName"):value := enteredusername
oRS:fields:item("empid"):value := UserCan_EmpID
oRS:UPDATE()
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("employeeid"):value := UserCan_EmpId
oRS:fields:item("ordernumber"):value := self:nOrderNumber
oRS:fields:item("noofpcs"):value := "  ”ÃÌ· «·⁄„Ì· " + self:ItemItems[OrdersEnterWindow.ComboItem.Value]
oRS:fields:item("finishtime"):value := time()
oRS:fields:item("dateofinput"):value := alltrim(dtoc(date()))
oRS:UPDATE()
oRS:Close()
myout = self:Search2()
myout = self:SetOrderStatus()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All where orderid = " + str(self:nOrderNumber) + " and Friendid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item("RecordStatusid"):value := 3
oRS:UPDATE()
ENDIF
oRS:Close()
ELSE
MyOut := MSGBOX("You should Create/Select Order First","Sorry")
ENDIF
Return 0
Method SetOrderStatus Class OrdersEnterClass
self:oRS:fields:item("orderstatusID"):value := 2
self:oRS:UPDATE()
Return 0
Method mobilechange Class OrdersEnterClass
Local myrs,MYVALUE,vname
TVALUE := OrdersEnterWindow.textcustomermobile.Value
IF empty(alltrim(TVALUE))
Return 0
ENDIF
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from customers where f_mobile = '" + tvalue +"'",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax > 0
myvalue := myRS:fields:item("id"):value
vname := myRS:fields:item("f_name"):value
myvalue = self:LookupIDToIndex(myvalue,@self:itemItemsids)
OrdersEnterWindow.Comboitem.Value := myvalue
MyOut := MSGBOX("«·«”„ " + vname," „ «·Ê’Ê· ··⁄„Ì· „‰ Œ·«· —ﬁ„ «·ÃÊ«·")
ELSE
MyOut := MSGBOX("—ﬁ„ «·ÃÊ«· «·„œŒ· €Ì— „”Ã· ›Ï ”Ã·«  «·„ œ—»Ì‰","⁄›Ê«")
ENDIF
myRS:Close()
Return 0
Method CheckFind Class OrdersEnterClass
Local nIndex
nIndex := OrdersEnterWindow.ComboFind.Value
Self:Column := Self:FindColumns[nIndex]
Return 0
Method CheckFind2 Class OrdersEnterClass
Local nIndex
nIndex := OrdersEnterWindow.ComboFind2.Value
Self:Column2 := Self:FindColumns2[nIndex]
Return 0
Method CheckData Class OrdersEnterClass
Local myret,d1,d2
myret := True
d1 := OrdersEnterWindow.dateOrderDate.Value
d2 := OrdersEnterWindow.dateFinishDate.Value
IF d2 < d1
MyOut := MSGBOX("·«ÌÊÃœ œÊ—…  ‰ ÂÏ ﬁ»· «‰  »œ« ... —«Ã⁄  «—ÌŒ «·«‰ Â«¡","⁄›Ê«")
myret := false
ELSE
IF self:addrec = true
IF alltrim(OrdersEnterWindow.textDays.value) == ""
OrdersEnterWindow.textDays.Value := alltrim(str(d2-d1+1))
ENDIF
ENDIF
ENDIF
Return myret
Method closewindow Class OrdersEnterClass
myout = self:disconnect()
OrdersEnterWindow.Release ( )
Return 0
Method ShowRecord Class OrdersEnterClass
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class OrdersEnterClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( OrdersEnterWindow )
myout = self:showrecord()
OrdersEnterWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class OrdersEnterClass
OrdersEnterWindow.grid1browse.DeleteAllItems ( )
OrdersEnterWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class OrdersEnterClass
OrdersEnterWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class OrdersEnterClass
cName := OrdersEnterWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class OrdersEnterClass
OrdersEnterWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
