*---------------------------------------------------------------------------*
* Time : 15:09:35    Date : 01/31/2013
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
Method GotoRecord
Method ClearRecord
Method AddRecord
Method SetMode
Method CancelRecord
EndClass
Method showWindow Class customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,400 ;
WIDTH 615 ;
HEIGHT 485 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 53 ,93 GRID Grid1;
ON CHANGE Self:GotoRecord()  ;
WIDTH 388 ;
HEIGHT 164 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,192} ;
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
HEIGHT 25 ;
WIDTH 131 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} 

@ 231 ,42 LABEL lbl2 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 268 ,37 LABEL lbl3 ;
VALUE "Address" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 303 ,41 LABEL lbl4 ;
VALUE "Phone" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 224 ,92 TEXTBOX textName;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 261 ,92 TEXTBOX textAddress;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 298 ,92 TEXTBOX textPhone;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 337 ,92 BUTTONEX btnFrist;
CAPTION "Frist ";
ON CLICK Self:FirstRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,169 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK Self:NextRecord()  ;
WIDTH 73 HEIGHT 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,248 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK Self:PrevRecord()  ;
WIDTH 73 HEIGHT 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,327 BUTTONEX btnLast;
CAPTION "Last ";
ON CLICK Self:LastRecord()  ;
WIDTH 70 HEIGHT 35 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 22 ,332 LABEL lbl5t ;
VALUE "Records Count " ;
WIDTH 94 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 22 ,428 LABEL lblReordsCount ;
VALUE " " ;
WIDTH 52 ;
HEIGHT 23 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 224 ,404 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK Self:AddRecord()  ;
WIDTH 76 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 261 ,404 BUTTONEX btnSave;
CAPTION "Save ";
WIDTH 76 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 298 ,404 BUTTONEX btnCancel;
CAPTION "Cancel ";
ON CLICK Self:CancelRecord()  ;
WIDTH 76 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

myout = Self:ShowRecords()
Myout = Self:ShowRecord()
myout = Self:SetMode(1)
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
cMax = STR ( nMax )
cMax = ALLTRIM ( cMax )
win1.lblReordsCount.Value := cMax
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
myout = Self:RecordsCount()
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
Method GotoRecord Class Customers
nIndex := win1.Grid1.Value
IF nIndex > 0
Self:oRS:MOVEFIRST()
nIndex := nIndex - 1
IF nIndex > 0
FOR x = 1 TO nIndex STEP 1
Self:oRS:MOVENEXT()
Next
ENDIF
myout = self:ShowRecord()
ENDIF
Return 0
Method ClearRecord Class Customers
Self:cName := ""
Self:cAddress := ""
Self:cPhone := ""
Return 0
Method AddRecord Class Customers
myout = Self:ClearRecord()
myout = Self:Class2UserInterface()
myout = Self:SetMode(2)
Return 0
Method SetMode(nMode) Class Customers
IF nMode = 1
win1.textName.Enabled := False
win1.textAddress.Enabled := False
win1.textPhone.Enabled := False
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnAdd.Enabled := True
win1.btnFrist.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrev.Enabled := True
win1.btnLast.Enabled := True
win1.textsearch.Enabled := True
win1.Grid1.Enabled := True
ELSEIF nMode = 2
win1.textName.Enabled := True
win1.textAddress.Enabled := True
win1.textPhone.Enabled := True
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnAdd.Enabled := False
win1.btnFrist.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrev.Enabled := False
win1.btnLast.Enabled := False
win1.textsearch.Enabled := False
win1.Grid1.Enabled := False
ENDIF
Return 0
Method CancelRecord Class Customers
myout = Self:Ado2Class()
myout = Self:Class2UserInterface()
myout = Self:SetMode(1)
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
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClearRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecord",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",36,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:GotoRecord",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",90,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",104,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFrist ) , Caption : 'Frist '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:FirstRecord",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:NextRecord",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:PrevRecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LastRecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5t ) , Caption : 'Records Count '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblReordsCount ) , Caption : ' '",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddRecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CancelRecord",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",162,164)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblReordsCount.Value := cMax",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RecordsCount()",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",210,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check EOF",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Record  ' Title 'Sorry ' Type: Message Box",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check BOF",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Record  ' Title 'Sorry ' Type: Message Box",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex - 1",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cName = ''",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cAddress = ''",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cPhone = ''",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ClearRecord()",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := True",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := True",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := False",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := False",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",317,317)
Return
*-------------------------------------------------------------------*
