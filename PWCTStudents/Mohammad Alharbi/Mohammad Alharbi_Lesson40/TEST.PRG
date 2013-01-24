*---------------------------------------------------------------------------*
* Time : 12:36:40    Date : 01/15/2013
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
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Method ShowWindow
Method Connect
Method DisConnect
Method RecordCount
Method ShowRecords
Method Search
Method Delete
Method Ado2Class
Method Class2UserInterface
Method ShowRecord
Method FirstRecord
Method LastRecord
Method NextRecord
Method PrevRecord
Method GoToRecord
Method Clear
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 759 ;
HEIGHT 465 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 44 ,198 GRID Grid1;
ON DBLCLICK self:GoToRecord()  ;
WIDTH 388 ;
HEIGHT 158 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,74 LABEL lbl1 ;
VALUE "Search by Name " ;
WIDTH 126 ;
HEIGHT 33 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 11 ,199 TEXTBOX textSearch;
ON CHANGE self:Search()  ;
HEIGHT 32 ;
WIDTH 386 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,71 BUTTONEX btn5;
CAPTION "Delete All Items ";
ON CLICK self:Delete()  ;
WIDTH 127 HEIGHT 35 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 236 ,138 LABEL lbl2 ;
VALUE "Name " ;
WIDTH 65 ;
HEIGHT 24 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 280 ,134 LABEL lbl3 ;
VALUE "Address " ;
WIDTH 64 ;
HEIGHT 26 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 313 ,130 LABEL lbl4 ;
VALUE "Phone " ;
WIDTH 67 ;
HEIGHT 29 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 234 ,190 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 272 ,189 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 310 ,189 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 353 ,164 BUTTONEX btn6;
CAPTION "First ";
FONTCOLOR {0,128,128};
ON CLICK self:FirstRecord()  ;
WIDTH 129 HEIGHT 34 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,8 BUTTONEX btn9;
CAPTION "Last ";
FONTCOLOR {0,128,128};
ON CLICK self:LastRecord()  ;
WIDTH 154 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 355 ,296 BUTTONEX btn7;
CAPTION "Next ";
FONTCOLOR {0,128,128};
ON CLICK self:NextRecord()  ;
WIDTH 125 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,424 BUTTONEX btn8;
CAPTION "Prev ";
FONTCOLOR {0,128,128};
ON CLICK self:PrevRecord()  ;
WIDTH 120 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 390 ,10 BUTTONEX btn10;
CAPTION "Clear ";
ON CLICK self:Clear()  ;
WIDTH 533 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 212 ,367 LABEL lbl5 ;
VALUE "RecordsCount " ;
WIDTH 138 ;
HEIGHT 22 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 211 ,458 LABEL CountLabel ;
VALUE " " ;
WIDTH 111 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

myout = self:ShowRecord()
myout = self:ShowRecords()
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
cMax = STR ( nMax )
cMax = ALLTRIM ( cMax )
win1.CountLabel.Value := cMax
Return 0
Method ShowRecords Class Customers
nMax := self:oRS:RecordCount
IF nMax>0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := self:oRS:fields:item(alltrim("CustName")):value
cAddress := self:oRS:fields:item(alltrim("CustAddress")):value
cPhone := self:oRS:fields:item(alltrim("CustPhone")):value
win1.Grid1.AddItem ( {cName,cAddress,cPhone} )
self:oRS:MOVENEXT()
Next
self:oRS:MOVEFIRST()
ENDIF
myout = self:RecordCount()
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
Method Ado2Class Class Customers
self:cName := self:oRS:fields:item(alltrim("CustName ")):value
self:cAddress := self:oRS:fields:item(alltrim("CustAddress ")):value
self:cPhone := self:oRS:fields:item(alltrim("CustPhone ")):value
Return 0
Method Class2UserInterface Class Customers
win1.textName.Value := self:cName
win1.textAddress.Value := self:cAddress
win1.textPhone.Value := self:cPhone
Return 0
Method ShowRecord Class Customers
nMax := self:oRS:RecordCount
IF nMax>0
myout = self:Ado2Class()
myout = self:Class2UserInterface()
ENDIF
Return 0
Method FirstRecord Class Customers
self:oRS:MOVEFIRST()
myout = self:ShowRecord()
Return 0
Method LastRecord Class Customers
self:oRS:MOVELAST()
myout = self:ShowRecord()
Return 0
Method NextRecord Class Customers
self:oRS:MOVENEXT()
lCheck := self:oRS:EOF()
IF lCheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of Records ","Sorry ")
ELSE
myout = self:ShowRecord()
ENDIF
Return 0
Method PrevRecord Class Customers
self:oRS:MOVEPREVIOUS()
lCheck := self:oRS:BOF()
IF lCheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of records ","Sorry ")
ELSE
myout = self:ShowRecord()
ENDIF
Return 0
Method GoToRecord Class Customers
nindex := win1.Grid1.Value
IF nIndex>0
self:oRS:MOVEFIRST()
nindex := nindex-1
IF nindex>0
FOR x = 1 TO nindex STEP 1
self:oRS:MOVENEXT()
Next
ENDIF
ENDIF
myout = self:ShowRecord()
Return 0
Method Clear Class Customers
win1.textName.Value := ""
win1.textAddress.Value := ""
win1.textPhone.Value := ""
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
SS_ESASTEP("Circuits\Main\Main\Main","Data cName Init Value ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAddress Init Value ''",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPhone Init Value ''",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Delete",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method GoToRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method Clear",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GoToRecord",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'First '",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Last '",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Next '",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Prev '",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Clear '",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Clear",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'RecordsCount '",145,146)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",147,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CountLabel ) , Caption : ' '",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",154,158)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",163,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","win1.CountLabel.Value := cMax",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordCount()",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",203,205)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('CustName ') Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress ') Value",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone ') Value",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry ' Type: Message Box",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of records ' Title 'Sorry ' Type: Message Box",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GoToRecord Class Customers",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex>0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customers",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := ''",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := ''",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",274,274)
Return
*-------------------------------------------------------------------*
