*---------------------------------------------------------------------------*
* Time : 21:19:26    Date : 01/23/2013
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
Method AddRecords
Method SaveRecords
Method CancelRecords
Method SetMode
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

@ 353 ,164 BUTTONEX btnFirst;
CAPTION "First ";
FONTCOLOR {0,128,128};
ON CLICK self:FirstRecord()  ;
WIDTH 129 HEIGHT 34 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,8 BUTTONEX btnLast;
CAPTION "Last ";
FONTCOLOR {0,128,128};
ON CLICK self:LastRecord()  ;
WIDTH 154 HEIGHT 31 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 355 ,296 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,128,128};
ON CLICK self:NextRecord()  ;
WIDTH 125 HEIGHT 31 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,424 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,128,128};
ON CLICK self:PrevRecord()  ;
WIDTH 120 HEIGHT 31 ;
FONT "arial" SIZE 9 ;
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
@ 230 ,626 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 318 ,627 BUTTONEX btnCancel;
CAPTION "Cancel";
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 274 ,627 BUTTONEX btnSave;
CAPTION "Save";
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

myout = self:ShowRecord()
myout = self:ShowRecords()
myout = self:SetMode(1)
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
Method AddRecords Class Customers
self:cName := ""
self:cName := ""
self:cAddress := ""
self:cPhone := ""
myout = self:Class2UserInterface()
myout = self:SetMode(2)
Return 0
Method SaveRecords Class Customers
Return 0
Method CancelRecords Class Customers
Return 0
Method SetMode(nMode) Class Customers
IF nMode=1
win1.textName.Enabled := False
win1.textAddress.Enabled := False
win1.textPhone.Enabled := False
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnAdd.Enabled := True
win1.btnFirst.Enabled := True
win1.btnLast.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrev.Enabled := True
win1.textSearch.Enabled := True
win1.Grid1.Enabled := True
ELSEIF nMode=2
win1.textName.Enabled := True
win1.textPhone.Enabled := True
win1.textAddress.Enabled := True
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnAdd.Enabled := False
win1.btnFirst.Enabled := False
win1.btnLast.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrev.Enabled := False
win1.textSearch.Enabled := False
win1.Grid1.Enabled := False
ENDIF
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
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecords",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecords",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecords",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GoToRecord",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",109,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Clear '",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Clear",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'RecordsCount '",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CountLabel ) , Caption : ' '",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",158,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecords",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",174,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",192,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","win1.CountLabel.Value := cMax",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordCount()",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",224,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('CustName ') Value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress ') Value",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone ') Value",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry ' Type: Message Box",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of records ' Title 'Sorry ' Type: Message Box",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GoToRecord Class Customers",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex>0 )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customers",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := ''",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := ''",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecords Class Customers",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecords Class Customers",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecords Class Customers",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",336,336)
Return
*-------------------------------------------------------------------*
