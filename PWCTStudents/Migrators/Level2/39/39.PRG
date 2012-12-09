*---------------------------------------------------------------------------*
* Time : 01:55:17    Date : 11/22/2012
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


Resistance R_39_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_39_18smart1() code
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
Method FirstRecord
Method LastRecord
Method NextRecord
Method PrevRecord
Method GotoRecord
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
ON DBLCLICK self:GotoRecord()  ;
WIDTH 336 ;
HEIGHT 196 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
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
ON CLICK self:FirstRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,514 BUTTONEX btn5;
CAPTION "Next ";
ON CLICK self:NextRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 181 ,514 BUTTONEX btn6;
CAPTION "Prev ";
ON CLICK self:PrevRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 221 ,514 BUTTONEX btn7;
CAPTION "Last ";
ON CLICK self:LastRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

myout = self:ShowRecords()
myout = self:ShowRecord()
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
self:oRS:MOVEFIRST()
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
MyOut := MSGBOX("End of Records ","Sorry")
ELSE
myout = self:ShowRecord()
ENDIF
Return 0
Method PrevRecord Class Customers
self:oRS:MOVEPREVIOUS()
lCheck := self:oRS:BOF()
IF lCheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of Records","Sorry")
ELSE
myout = self:ShowRecord()
ENDIF
Return 0
Method GotoRecord Class Customers
nIndex := win1.Grid1.Value
IF nIndex >0
self:oRS:MOVEFIRST()
nIndex := nIndex -1
IF nIndex >0
FOR x = 1 TO nIndex STEP 1
self:oRS:MOVENEXT()
Next
ENDIF
myout = self:ShowRecord()
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_39
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
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Record Count '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GotoRecord",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'First '",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Next '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Prev '",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Last '",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",141,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry' Type: Message Box",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Records' Title 'Sorry' Type: Message Box",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex -1",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",233,233)
Return
*-------------------------------------------------------------------*
