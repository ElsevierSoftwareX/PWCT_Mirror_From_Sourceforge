*---------------------------------------------------------------------------*
* Time : 11:42:07    Date : 11/25/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
CustomersObj = Customers()
myout = CustomersObj:ShowWindow()
Class Customers
Data oCon init 0
Data oRS init 0
Method ShowWindow
Method Connect
Method DisConnect
Method RecordCount
Method ShowRecords
Method Search
Method Delete
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 287 ,181 BUTTONEX btn3;
CAPTION "Get RecordCount ";
FONTCOLOR {0,128,255};
BACKCOLOR {236,233,216};
ON CLICK self:RecordCount()  ;
WIDTH 145 HEIGHT 35 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 93 ,181 GRID Grid1;
WIDTH 289 ;
HEIGHT 194 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 287 ,327 BUTTONEX btn4;
CAPTION "Show Records ";
ON CLICK self:ShowRecords()  ;
WIDTH 145 HEIGHT 36 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 55 ,59 LABEL lbl1 ;
VALUE "Search by Name " ;
WIDTH 122 ;
HEIGHT 32 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,0}
@ 56 ,181 TEXTBOX textSearch;
ON CHANGE self:Search()  ;
HEIGHT 33 ;
WIDTH 291 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 322 ,181 BUTTONEX btn5;
CAPTION "Delete All Items ";
ON CLICK self:Delete()  ;
WIDTH 291 HEIGHT 34 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customers
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=sysdata.mdb' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from Customers",self:oCon,3,3 )
Return 0
Method DisConnect Class Customers
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method RecordCount Class Customers
nMax := self:oRS:RecordCount
MyOut := MSGBOX(nMax,"Count ")
Return 0
Method ShowRecords Class Customers
nMax := self:oRS:RecordCount
IF nMax>0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := self:oRS:fields:item(alltrim("CustName")):value
cAddress := self:oRS:fields:item(alltrim("CustAddress")):value
cPhone := self:oRS:fields:item(alltrim("CustPhone")):value
self:oRS:MOVENEXT()
win1.Grid1.AddItem ( {cName,cAddress,cPhone} )
Next
ENDIF
Return 0
Method Search Class Customers
cName := win1.textSearch.Value
self:oRS:Close()
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from Customers where CustName like '"+cName+"%'",self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
Return 0
Method Delete Class Customers
win1.Grid1.DeleteAllItems ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObj of Class Customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CustomersObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordCount",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Delete",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get RecordCount '",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordCount",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",36,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Show Records '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:ShowRecords",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",117,117)
Return
*-------------------------------------------------------------------*
