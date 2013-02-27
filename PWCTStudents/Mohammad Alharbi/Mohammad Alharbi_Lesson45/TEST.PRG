*---------------------------------------------------------------------------*
* Time : 19:18:54    Date : 02/22/2013
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
Data lAdd init False
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
Method UserInterface2Class
Method Class2Ado
Method EditRecords
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
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,8 BUTTONEX btnLast;
CAPTION "Last ";
FONTCOLOR {0,128,128};
ON CLICK self:LastRecord()  ;
WIDTH 154 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 355 ,296 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,128,128};
ON CLICK self:NextRecord()  ;
WIDTH 125 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 354 ,424 BUTTONEX btnPrev;
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
@ 230 ,626 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 318 ,627 BUTTONEX btnCancel;
CAPTION "Cancel";
ON CLICK self:CancelRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 274 ,627 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK self:SaveRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 364 ,627 BUTTONEX btnEdit;
CAPTION "Edit ";
ON CLICK self:EditRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
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
self:lAdd := True
Return 0
Method CancelRecords Class Customers
myout = self:Ado2Class()
myout = self:Class2UserInterface()
myout = self:SetMode(1)
self:lAdd := False
Return 0
Method SetMode(nMode) Class Customers
IF nMode=1
win1.textName.Enabled := False
win1.textAddress.Enabled := False
win1.textPhone.Enabled := False
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnEdit.Enabled := True
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
win1.btnEdit.Enabled := False
win1.btnAdd.Enabled := False
win1.btnFirst.Enabled := False
win1.btnLast.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrev.Enabled := False
win1.textSearch.Enabled := False
win1.Grid1.Enabled := False
ENDIF
Return 0
Method UserInterface2Class Class Customers
self:cName := win1.textName.Value
self:cAddress := win1.textAddress.Value
self:cPhone := win1.textPhone.Value
Return 0
Method Class2Ado Class Customers
self:oRS:fields:item(alltrim("CustName ")):value := self:cName
self:oRS:fields:item(alltrim("CustAddress ")):value := self:cAddress
self:oRS:fields:item(alltrim("CustPhone ")):value := self:cPhone
Return 0
Method SaveRecords Class Customers
IF self:lAdd=True
self:lAdd := False
self:oRS:ADDNEW()
myout = self:UserInterface2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
myout = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
self:oRS:MOVELAST()
ELSE
myout = self:UserInterface2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
myout = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
vBM := self:oRS:BookMark
myout = self:ShowRecords()
self:oRS:BookMark := vBM
ENDIF
Return 0
Method EditRecords Class Customers
myout = self:SetMode(2)
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
SS_ESASTEP("Circuits\Main\Main\Main","Data lAdd Init Value False",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordCount",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Delete",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method GoToRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method Clear",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecords",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecords",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecords",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecords",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GoToRecord",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",144,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Clear '",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Clear",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'RecordsCount '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",155,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CountLabel ) , Caption : ' '",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",162,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecords",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecords",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecords",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:EditRecords",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.CountLabel.Value := cMax",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordCount()",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",236,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('CustName ') Value",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress ') Value",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone ') Value",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry ' Type: Message Box",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of records ' Title 'Sorry ' Type: Message Box",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GoToRecord Class Customers",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex>0 )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customers",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := ''",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := ''",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecords Class Customers",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecords Class Customers",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName ') Value To (self:cName)",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress ') Value To (self:cAddress)",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone ') Value To (self:cPhone)",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecords Class Customers",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecords Class Customers",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",388,388)
Return
*-------------------------------------------------------------------*
