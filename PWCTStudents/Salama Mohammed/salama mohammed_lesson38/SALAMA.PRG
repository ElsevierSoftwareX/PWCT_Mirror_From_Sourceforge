*---------------------------------------------------------------------------*
* Time : 14:54:37    Date : 01/31/2013
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
customersobj = customers()
myout = customersobj:showWindow()
Class customers
Data oCon init 0
Data oRS init 0
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
Method ShowRecords
Method Search
Method Ado2Class
Method Class2UserInterface
Method ShowRecord
Method FirstRecord
Method LastRecord
Method NextRecord
Method PrevRecord
EndClass
Method showWindow Class customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,400 ;
WIDTH 510 ;
HEIGHT 426 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 297 ,292 BUTTONEX btn3;
CAPTION "GetRecordsCount";
ON CLICK Self:RecordsCount()  ;
WIDTH 107 HEIGHT 32 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 50 ,93 GRID Grid1;
WIDTH 305 ;
HEIGHT 150 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {128,128,192} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 24 ,96 LABEL lbl1 ;
VALUE "search by name : " ;
WIDTH 102 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 18 ,192 TEXTBOX textsearch;
ON CHANGE self:Search()  ;
HEIGHT 27 ;
WIDTH 207 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,42 LABEL lbl2 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 267 ,37 LABEL lbl3 ;
VALUE "Address" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 302 ,41 LABEL lbl4 ;
VALUE "Phone" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 223 ,93 TEXTBOX textName;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 260 ,93 TEXTBOX textAddress;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 297 ,93 TEXTBOX textPhone;
HEIGHT 32 ;
WIDTH 195 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 335 ,93 BUTTONEX btn5;
CAPTION "Frist ";
ON CLICK Self:FirstRecord()  ;
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 335 ,160 BUTTONEX btn6;
CAPTION "Next ";
ON CLICK Self:NextRecord()  ;
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 335 ,226 BUTTONEX btn7;
CAPTION "Prev ";
ON CLICK Self:PrevRecord()  ;
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 335 ,292 BUTTONEX btn8;
CAPTION "Last ";
ON CLICK Self:LastRecord()  ;
WIDTH 107 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

myout = Self:ShowRecords()
myout = Self:ShowRecord()
ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class customers
Self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
Self:oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;' )
Self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from customers",Self:oCon,3,3 )
Return 0
Method DisConnect Class customers
Self:oRS:Close()
Self:oCon:CLOSE()
Return 0
Method RecordsCount Class customers
nMax := Self:oRS:RecordCount
MyOut := MSGBOX(nMax,"RecordsCount ")
Return 0
Method ShowRecords Class Customers
nMax := Self:oRS:RecordCount
IF nMax > 0
Self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := Self:oRS:fields:item(alltrim("CustName ")):value
cAddress := Self:oRS:fields:item(alltrim("CustAddress ")):value
cPhone := Self:oRS:fields:item(alltrim("CustPhone ")):value
win1.Grid1.AddItem ( {cName,cAddress,cPhone} )
Self:oRS:MOVENEXT()
Next
Self:oRS:MOVEFIRST()
ENDIF
Return 0
Method Search Class Customers
cName := win1.textsearch.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Customers where CustName like '"+cName+"%'",Self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myout = Self:ShowRecords()
Return 0
Method Ado2Class Class Customers
Self:cName := Self:oRS:fields:item(alltrim("CustName ")):value
Self:cAddress := Self:oRS:fields:item(alltrim("CustAddress")):value
Self:cPhone := Self:oRS:fields:item(alltrim("CustPhone ")):value
Return 0
Method Class2UserInterface Class Customers
win1.textName.Value := Self:cName
win1.textAddress.Value := Self:cAddress
win1.textPhone.Value := Self:cPhone
Return 0
Method ShowRecord Class Customers
nMax := Self:oRS:RecordCount
IF nMax > 0
myout = Self:Ado2Class()
myout = Self:Class2UserInterface()
ENDIF
Return 0
Method FirstRecord Class Customers
Self:oRS:MOVEFIRST()
myout = Self:ShowRecord()
Return 0
Method LastRecord Class Customers
Self:oRS:MOVELAST()
myout = Self:ShowRecord()
Return 0
Method NextRecord Class Customers
Self:oRS:MOVENEXT()
icheck := Self:oRS:EOF()
IF icheck
Self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of Record  ","Sorry ")
ELSE
myout = Self:ShowRecord()
ENDIF
Return 0
Method PrevRecord Class Customers
Self:oRS:MOVEPREVIOUS()
icheck := Self:oRS:BOF()
IF icheck
Self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of Record  ","Sorry ")
ELSE
myout = Self:ShowRecord()
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersobj of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = customersobj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cName Init Value ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAddress Init Value ''",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPhone Init Value ''",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'GetRecordsCount'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RecordsCount",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",46,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Frist '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:FirstRecord",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Next '",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:NextRecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Prev '",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:PrevRecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Last '",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LastRecord",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",147,149)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'RecordsCount ' Type: Message Box",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check EOF",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Record  ' Title 'Sorry ' Type: Message Box",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check BOF",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Record  ' Title 'Sorry ' Type: Message Box",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",226,226)
Return
*-------------------------------------------------------------------*
