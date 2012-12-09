*---------------------------------------------------------------------------*
* Time : 23:58:44    Date : 11/21/2012
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


Resistance R_36_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_36_18smart1() code
CustomersObj = Customers()
myout = CustomersObj:ShowWindow()
Class Customers
Data oCon init 0
Data oRS init 0
Method ShowWindow
Method Connect
Method Disconnect
Method RecordsCount
Method ShowRecords
Method Search
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 529 ;
HEIGHT 362 ;
ON RELEASE self:Disconnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 283 ,322 BUTTONEX btn3;
CAPTION "Get Record Count ";
ON CLICK self:RecordsCount()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 77 ,144 GRID Grid1;
WIDTH 336 ;
HEIGHT 196 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 32 ,11 LABEL lbl1 ;
VALUE "Search By Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 29 ,143 TEXTBOX textSearch;
ON CHANGE self:Search()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

myout = self:ShowRecords()
ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customers
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from Customers",self:oCon,3,3 )
Return 0
Method Disconnect Class Customers
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method RecordsCount Class Customers
nMax := self:oRS:RecordCount
MyOut := MSGBOX(nMax,"Count ")
Return 0
Method ShowRecords Class Customers
nMax := self:oRS:RecordCount
IF nMax>0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := self:oRS:fields:item("Custname"):value
cAddress := self:oRS:fields:item("Custaddress"):value
cphone := self:oRS:fields:item("Custphone"):value
win1.Grid1.AddItem ( {cName,cAddress,cPhone} )
self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method Search Class Customers
cName := win1.textSearch.Value
self:oRS:Close()
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from Customers where Custname like '" +cName+ "%'",self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
Return 0


End Of Resistance

INIT PROCEDURE Init_36
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
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Record Count '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",99,99)
Return
*-------------------------------------------------------------------*
