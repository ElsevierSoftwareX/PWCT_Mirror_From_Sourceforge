*---------------------------------------------------------------------------*
* Time : 22:24:01    Date : 11/24/2010
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
Function EMPORDERS_DATA
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

Resistance R_EMPORDERS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPORDERS_DATA_15speed1() code
class EmpOrdersClass From SystemDatabase
Data columns init {"OrderStatus","FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate","OrderStatus"}
Data FindTitles init {"ÑÞã ÇáÏæÑÉ","äæÚ ÇáÏæÑÉ","ÇÓã ÇáÏæÑÉ","ÇÓã ÇáãÍÇÖÑ","ÊÇÑíÎ ÇáÏæÑÉ","ÊÇÑíÎ ÇáÇäÊåÇÁ","ÍÇáÉ ÇáÏæÑÉ"}
Data TableName init "Orders_All"
Data CustID init 0
Data PrimaryKey init "OrderNumber"
Method showwindow
Method closewindow
Method search
Method OpenDataWindow
Method ShowDataWindow
Method MyStart
EndClass
Method showwindow Class EmpOrdersClass
if !iswindowdefined( EmpOrdersWindow )
DEFINE WINDOW EmpOrdersWindow ;
AT 10 ,10 ;
WIDTH 1040 ;
HEIGHT 327 ;
ON INIT self:MyStart()  ;
ICON "PWCTICON" ;
TITLE "ÏæÑÇÊ ÇáãÔÊÑß ÈåÇ Çæ ÇáãÑÔÍ áåÇ ãÊÏÑÈ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0}

@ -8 ,-26 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1060 HEIGHT 310
@ 241 ,25 BUTTONEX btnClose;
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
END WINDOW

EmpOrdersWindow.Center ( )
ACTIVATE WINDOW EmpOrdersWindow
EndIF

Return 0
Method closewindow Class EmpOrdersClass
EmpOrdersWindow.Release ( )
Return 0
Method search Class EmpOrdersClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
myout = self:Connect()
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:TableName + " where customerid = " + self:custid,self:oCon,3,3 )
mymax := oRS:RecordCount
EmpOrdersWindow.grid1browse.DeleteAllItems ( )
self:ResultPrimaryKeys := {}
EmpOrdersWindow.grid1browse.Value := 0
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
EmpOrdersWindow.grid1browse.AddItem ( temp_array )
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
myout = self:DisConnect()
Return 0
Method OpenDataWindow Class EmpOrdersClass
Local nvalue,myout
nvalue := EmpOrdersWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nValue) Class EmpOrdersClass
OrdersEnterObject:LFindRecord := true
OrdersEnterObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = OrdersEnterObject:ShowWindow()
Return 0
Method MyStart Class EmpOrdersClass
myout = self:Search()
Return 0



End Of Resistance

*-------------------------------------------------------------------*
