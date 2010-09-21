*---------------------------------------------------------------------------*
* Time : 20:27:03    Date : 09/21/2010
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
Function CUSTFRIENDS_DATA
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

Resistance R_CUSTFRIENDS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTFRIENDS_DATA_15speed1() code
class CustFriendsClass From SystemDatabase
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
Data ResultPrimaryKeys2 init {}
Data columns2 init {"customerwant3","customerwant2","customerwant1","howknow","f_mobile","f_name"}
Data nitem init 0
Data itemitems init {}
Data itemitemsids init {}
Data TableName3 init "CustFriends_All"
Data column3 init "f_name"
Data PrimaryKey3 init "id"
Data ResultPrimaryKeys3 init {}
Data columns3 init {"recordstatus","f_mobile","f_name"}
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
Method SearchAdd
Method BeforeSearch
Method GetSearchValue
Method settimer
Method ShowOpinion
Method itemchange
Method mobilechange
Method delrecord2
Method addrecord2
Method search3
EndClass
Method showwindow Class CustFriendsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustFriendsWindow )
DEFINE WINDOW CustFriendsWindow ;
AT 10 ,10 ;
WIDTH 954 ;
HEIGHT 701 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ãÑÔÍíä ÇáÚãíá" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 930 HEIGHT 190
@ 244 ,4 IMAGE image2;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 930 HEIGHT 230
@ 620 ,31 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                             ãÑÔÍíä ÇáÚãíá                 " ;
WIDTH 930 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,681 LABEL lbl1browse ;
VALUE "ÑÞã ÇáÏæÑÉ" ;
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
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 890 ;
HEIGHT 130 ;
HEADERS {"ÍÇáÉ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"};
WIDTHS {100,200,120,200,150,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 259 ,681 LABEL lbl1browse2 ;
VALUE "ÇÓã ÇáãÊÏÑÈ" ;
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
CAPTION "ÈÍË";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 289 ,23 GRID Grid1browse2;
ON DBLCLICK self:search3  ;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS {"ãÍæÑ 3","ãÍæÑ 2 ","ãÍæÑ 1 "," ßíÝ ÓãÚÊ Úä ÇáÏæÑÉ","ÌæÇá","ÇÓã ÇáÚãíá"};
WIDTHS {100,100,100,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("customers","f_name",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 438 ,780 LABEL lblitems ;
VALUE "ÇÓã ÇáãÑÔÍ" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 439 ,258 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 510 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 439 ,203 LABEL lblItemUnit ;
VALUE "ÌæÇá" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 436 ,31 TEXTBOX textCustomerMobile;
ON ENTER self:mobilechange()  ;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 485 ,780 LABEL lbl1browse3 ;
VALUE "ÇÓã ÇáãÑÔÍ" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 485 ,438 TEXTBOX textNamebrowse3;
HEIGHT 30 ;
WIDTH 330 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 485 ,328 BUTTONEX btn1browse3;
CAPTION "ÈÍË";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 525 ,328 GRID Grid1browse3;
WIDTH 560 ;
HEIGHT 130 ;
HEADERS {"ÍÇáÉ ÇáÊÓÌíá","ÌæÇá","ÇÓã ÇáãÑÔÍ"};
WIDTHS {150,150,250} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1} ;
FONTCOLOR {0,0,0}
@ 526 ,31 BUTTONEX btnDel2;
CAPTION "ÍÐÝ ÇáãÑÔÍ ãä ãÑÔÍíä ÇáÚãíá";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 280 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 487 ,31 BUTTONEX btnadd2;
CAPTION "ÇÖÇÝÉ ÇáãÑÔÍ Çáì ãÑÔÍíä ÇáÚãíá";
ON CLICK self:addrecord2()  ;
WIDTH 280 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustFriendsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustFriendsWindow.Timer1.Enabled := false
myout = self:search2()
ACTIVATE WINDOW CustFriendsWindow
EndIF

Return 0
Method UserInterface2Class Class CustFriendsClass
Return 0
Method Class2ADO Class CustFriendsClass
Return 0
Method ADO2Class Class CustFriendsClass
self:nOrderNumber := self:oRS:fields:item("ordernumber"):value
Return 0
Method Class2UserInterface Class CustFriendsClass
Return 0
Method ClearRecord Class CustFriendsClass
Return 0
Method OpenDataWindow Class CustFriendsClass
Local nvalue,myout
nvalue := CustFriendsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustFriendsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustFriendsClass
myout = self:search()
CustFriendsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class CustFriendsClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method search2 Class CustFriendsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustFriendsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
CustFriendsWindow.grid1browse2.DeleteAllItems ( )
CustFriendsWindow.grid1browse3.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustFriendsWindow.grid1browse2.Value := 0
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
CustFriendsWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
CustFriendsWindow.grid1browse2.Value := 1
myout = self:search3()
ELSE
ENDIF
oRS:Close()
Return 0
Method SaveRecord2 Class CustFriendsClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := CustFriendsWindow.Grid1Browse2.item(CustFriendsWindow.Grid1Browse2.value)
myitem[1] := CustFriendsWindow.ComboQuality.Value
myitem[1] := self:QualityItems[myitem[1]]
CustFriendsWindow.Grid1Browse2.item(CustFriendsWindow.Grid1Browse2.Value) := myitem
Return 0
Method QualityNotes Class CustFriendsClass
Local nvalue,oRS,nMax,cNotes
nvalue := CustFriendsWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
cNotes := oRS:fields:item("CustomerDisposeNotes"):value
oRS:Close()
if !iswindowdefined( winQualityNotes )
DEFINE WINDOW winQualityNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "ãáÇÍÙÇÊ ÇáÚãíá" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,666 LABEL lbl1 ;
VALUE "ãáÇÍÙÇÊ" ;
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
CAPTION "ÇÛáÇÞ";
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
ACTIVATE WINDOW winQualityNotes
EndIF

ELSE
oRS:Close()
ENDIF
ENDIF
Return 0
Method QualityNotesSave Class CustFriendsClass
Local nvalue,oRS,nMax,cNotes
cNotes := WinQualityNotes.Edit1.Value
nvalue := CustFriendsWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item("CustomerDisposeNotes"):value := cNotes
oRS:UPDATE()
ENDIF
oRS:Close()
ENDIF
winQualityNotes.Release ( )
Return 0
Method ShowOpinion Class CustFriendsClass
myout = self:Ado2Class()
myout = self:Class2UserInterface()
Return 0
Method mobilechange Class CustFriendsClass
Local myrs,MYVALUE,vname
TVALUE := CustFriendsWindow.textcustomermobile.Value
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
CustFriendsWindow.Comboitem.Value := myvalue
MyOut := MSGBOX("ÇáÇÓã " + vname,"Êã ÇáæÕæá ááÚãíá ãä ÎáÇá ÑÞã ÇáÌæÇá")
ELSE
MyOut := MSGBOX("ÑÞã ÇáÌæÇá ÇáãÏÎá ÛíÑ ãÓÌá Ýì ÓÌáÇÊ ÇáãÊÏÑÈíä","ÚÝæÇ")
ENDIF
myRS:Close()
Return 0
Method itemchange Class CustFriendsClass
Local myrs,MYVALUE
TVALUE := CustFriendsWindow.Comboitem.Value
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
CustFriendsWindow.textCustomerMobile.Value := myvalue
myRS:Close()
Return 0
Method DelRecord2 Class CustFriendsClass
Local nvalue,myout
nvalue := CustFriendsWindow.grid1browse3.Value
IF nvalue > 0
nvalue := self:resultprimarykeys3[nvalue]
myout = self:oCon:execute("delete from custfriends where id = " + nvalue)
myout = self:search3()
ELSE
MyOut := MSGBOX("ÚÝæÇ áÇíæÌÏ ÇÓã ãÍÏÏ áíÊã ÍÐÝå","ÚÝæÇ")
ENDIF
Return 0
Method AddRecord2 Class CustFriendsClass
Local oRS,nValue,nMax
IF self:nOrderNumber > 0
self:nItem := CustFriendsWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
nvalue := CustFriendsWindow.grid1browse2.Value
IF nvalue = 0
MyOut := MSGBOX("íÌÈ ÊÍÏíÏ ÇáÚãíá ÇæáÇ ÞÈá ÇáãÑÔÍ","ÚÝæÇ")
Return 0
ENDIF
MYCUSTID := self:resultprimarykeys2[nvalue]
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems_All where id = " + mycustid,self:oCon,3,3 )
myCustID := oRS:fields:item("CustomerID"):value
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All where orderid = " + str(self:nOrderNumber) +" and customerid = " + str(mycustid) + " and friendid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX("Êã ÊÓÌíá åÐÇ ÇáãÑÔÍ ÓÇÈÞÇ","ÚÝæÇ")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_All where orderid = " + str(self:nOrderNumber) +" and customerid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX("ÇáãÑÔÍ ÞÇã ãÓÈÞÇ ÈÇáÊÓÌíá Ýì ÇáÏæÑÉ","ÚÝæÇ")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All",self:oCon,3,3 )
IF self:nItem = mycustid
MyOut := MSGBOX("áÇíãßä ááÚãíá Çä íÑÔÍ äÝÓå ÝåÐÇ ÛíÑ ãäØÞì","ÚÝæÇ")
Return 0
ENDIF
oRS:ADDNEW()
oRS:fields:item("customerid"):value := mycustid
oRS:fields:item("Orderid"):value := self:nOrderNumber
oRS:fields:item("Friendid"):value := self:nItem
oRS:fields:item("recordstatus"):value := 2
oRS:UPDATE()
oRS:Close()
myout = self:Search3()
ELSE
MyOut := MSGBOX("íÌÈ Çä ÊÍÏÏ ÇáÏæÑÉ ÇæáÇ","ÚÝæ")
ENDIF
Return 0
Method search3 Class CustFriendsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustFriendsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
CustFriendsWindow.grid1browse3.DeleteAllItems ( )
nvalue := CustFriendsWindow.grid1browse2.Value
IF nvalue = 0
MyOut := MSGBOX("íÌÈ ÊÍÏíÏ ÇáÚãíá ÇæáÇ ÞÈá ÇáãÑÔÍ","ÚÝæÇ")
Return 0
ENDIF
MYCUSTID := self:resultprimarykeys2[nvalue]
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from OrderItems_All where id = " + mycustid,self:oCon,3,3 )
myCustID := oRS:fields:item("CustomerID"):value
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName3 +" where orderid = "+str(self:nOrderNumber)+" and customerid = "+ str(mycustid) +"  and "+self:column3+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
self:ResultPrimaryKeys3 := {}
CustFriendsWindow.grid1browse3.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column3):value
temp_array := {}
mymax2  = LEN(self:columns3)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns3[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustFriendsWindow.grid1browse3.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey3):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys3 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method closewindow Class CustFriendsClass
myout = self:disconnect()
CustFriendsWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustFriendsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustFriendsWindow )
myout = self:showrecord()
CustFriendsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustFriendsClass
CustFriendsWindow.grid1browse.DeleteAllItems ( )
CustFriendsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustFriendsClass
CustFriendsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class CustFriendsClass
cName := CustFriendsWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustFriendsClass
CustFriendsWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
