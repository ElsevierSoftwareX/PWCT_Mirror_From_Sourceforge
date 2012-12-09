*---------------------------------------------------------------------------*
* Time : 00:57:34    Date : 11/22/2012
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


Resistance R_37_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_37_18smart1() code
CustomersObj = Customers()
myout = CustomersObj:ShowWindow()
Class Customers
Data oCon init 0
Data oRS init 0
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Method ShowWindow
Method Connect
Method Disconnect
Method RecordsCount
Method ShowRecords
Method Search
Method Ado2Class
Method Class2UserI
Method ShowRecord
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 609 ;
HEIGHT 469 ;
ON RELEASE self:Disconnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 31 ,361 BUTTONEX btn3;
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

@ 290 ,54 LABEL lbl2 ;
VALUE "Name " ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 331 ,54 LABEL lbl3 ;
VALUE "Address " ;
WIDTH 80 ;
HEIGHT 17 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 369 ,54 LABEL lbl4 ;
VALUE "Phone " ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 287 ,142 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 325 ,142 TEXTBOX textAddress;
HEIGHT 34 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 363 ,142 TEXTBOX textPhone;
HEIGHT 34 ;
WIDTH 204 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,514 BUTTONEX btn4;
CAPTION "First ";
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,514 BUTTONEX btn5;
CAPTION "Next ";
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 181 ,514 BUTTONEX btn6;
CAPTION "Prev ";
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 221 ,514 BUTTONEX btn7;
CAPTION "Last ";
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

myout = self:ShowRecord()
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
Method Ado2Class Class Customers
self:cName := self:oRS:fields:item("Custname"):value
self:cAddress := self:oRS:fields:item("CustAddress"):value
self:cPhone := self:oRS:fields:item("CustPhone"):value
Return 0
Method Class2UserI Class Customers
win1.textName.Value := self:cName
win1.textAddress.Value := self:cAddress
win1.textPhone.Value := self:cPhone
Return 0
Method ShowRecord Class Customers
nMax := self:oRS:RecordCount
IF nMax > 0
myout = self:Ado2Class()
myout = self:Class2UserI()
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_37
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObj of Class Customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CustomersObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cName Init Value ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAddress Init Value ''",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPhone Init Value ''",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserI",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Record Count '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",39,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'First '",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Next '",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Prev '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Last '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",182,182)
Return
*-------------------------------------------------------------------*
