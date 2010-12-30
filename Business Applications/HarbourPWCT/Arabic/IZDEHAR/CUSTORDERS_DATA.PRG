*---------------------------------------------------------------------------*
* Time : 12:51:42    Date : 12/10/2010
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
Function CUSTORDERS_DATA
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

Resistance R_CUSTORDERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTORDERS_DATA_15speed1() code
class CustOrdersClass From SystemDatabase
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate","OrderStatus"}
Data FindTitles init {"ÑÞã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÇÓã ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÊÇÑíÎ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÍÇáÉ ÇáÏæÑÉ"}
Data TableName init "CustOrders"
Data CustID init 0
Data PrimaryKey init "OrderNumber"
Data PrimaryKey2 init "OrderNumber"
Data resultprimarykeys2 init {}
Data TableName2 init "CustOrdersMaybe"
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method ShowDataWindow
Method search2
Method MyStart
Method OpenDataWindow2
Method ShowDataWindow2
EndClass
Method showwindow Class CustOrdersClass
if !iswindowdefined( CustOrdersWindow )
DEFINE WINDOW CustOrdersWindow ;
AT 10 ,10 ;
WIDTH 1040 ;
HEIGHT 549 ;
ON INIT self:MyStart()  ;
ICON "PWCTICON" ;
TITLE "ÏæÑÇÊ ÇáãÔÊÑß ÈåÇ Çæ ÇáãÓÊÝÓÑ ÚäåÇ  ãÊÏÑÈ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0}

@ -8 ,-26 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1060 HEIGHT 540
@ 471 ,25 BUTTONEX btnClose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 4 ,433 LABEL lbl1 ;
VALUE "ÏæÑÇÊ ãÔÊÑß ÈåÇ ÇáãÊÏÑÈ" ;
WIDTH 180 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 240 ,423 LABEL lbl2 ;
VALUE "ÏæÑÇÊ ÇÓÊÝÓÑ ÚäåÇ ÇáãÊÏÑÈ" ;
WIDTH 220 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,24 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow()  ;
WIDTH 980 ;
HEIGHT 180 ;
HEADERS {"ÍÇáÉ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"};
WIDTHS {100,180,120,200,150,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 281 ,25 GRID Grid2browse;
ON DBLCLICK self:OpenDataWindow2()  ;
WIDTH 980 ;
HEIGHT 180 ;
HEADERS {"ÍÇáÉ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÊÇÑíÎ ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÇÓã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÑÞã ÇáÏæÑÉ"};
WIDTHS {100,180,120,200,150,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
END WINDOW

CustOrdersWindow.Center ( )
ACTIVATE WINDOW CustOrdersWindow
EndIF

Return 0
Method closewindow Class CustOrdersClass
CustOrdersWindow.Release ( )
Return 0
Method search Class CustOrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:TableName + " where customerid = " + self:custid,self:oCon,3,3 )
mymax := oRS:RecordCount
CustOrdersWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
CustOrdersWindow.grid1browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
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
CustOrdersWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
myout = self:DisConnect()
Return 0
Method OpenDataWindow Class CustOrdersClass
Local nvalue,myout
nvalue := CustOrdersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nValue) Class CustOrdersClass
OrdersEnterObject:LFindRecord := true
OrdersEnterObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = OrdersEnterObject:ShowWindow()
Return 0
Method search2 Class CustOrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:TableName2 + " where friendid = " + self:custid,self:oCon,3,3 )
mymax := oRS:RecordCount
CustOrdersWindow.grid2browse.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustOrdersWindow.grid2browse.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
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
CustOrdersWindow.grid2browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey2):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
myout = self:DisConnect()
Return 0
Method MyStart Class CustOrdersClass
myout = self:Search()
myout = self:Search2()
Return 0
Method OpenDataWindow2 Class CustOrdersClass
Local nvalue,myout
nvalue := CustOrdersWindow.grid2browse.Value
IF nvalue > 0
myout = self:ShowDataWindow2(nvalue)
ENDIF
Return 0
Method ShowDataWindow2(nValue) Class CustOrdersClass
OrdersEnterObject:LFindRecord := true
OrdersEnterObject:CFindExpr := self:primarykey2+"= '"+self:resultprimarykeys2[nvalue]+"' "
myout = OrdersEnterObject:ShowWindow()
Return 0



End Of Resistance

*-------------------------------------------------------------------*
