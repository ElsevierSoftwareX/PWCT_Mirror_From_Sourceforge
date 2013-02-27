*---------------------------------------------------------------------------*
* Time : 14:23:42    Date : 02/24/2013
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
Method DeleteRecord
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
@ 218 ,626 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 306 ,627 BUTTONEX btnCancel;
CAPTION "Cancel";
ON CLICK self:CancelRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 262 ,627 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK self:SaveRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 352 ,627 BUTTONEX btnEdit;
CAPTION "Edit ";
ON CLICK self:EditRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 392 ,628 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK self:DeleteRecord()  ;
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
Method DeleteRecord Class Customers
Local nMax
nMax := self:oRS:RecordCount
IF nMax>0
MyOut := MSGYESNO("Are you sure "," Delete")
IF myout=false
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
nMax := self:oRS:RecordCount
IF nMax=1
myout = self:Clear()
myout = self:Class2UserInterface()
ELSE
myout = self:ShowRecord()
ENDIF
ELSE
MyOut := MSGBOX("SORRY "," SORRY")
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
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteRecord",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GoToRecord",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",138,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",141,143)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Clear '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Clear",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'RecordsCount '",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CountLabel ) , Caption : ' '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecords",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",174,175)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecords",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecords",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",183,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:EditRecords",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",192,193)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DeleteRecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",195,197)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",198,199)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",203,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",211,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.CountLabel.Value := cMax",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordCount()",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",243,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('CustName ') Value",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress ') Value",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone ') Value",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry ' Type: Message Box",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of records ' Title 'Sorry ' Type: Message Box",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GoToRecord Class Customers",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex>0 )",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customers",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := ''",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := ''",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecords Class Customers",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecords Class Customers",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName ') Value To (self:cName)",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress ') Value To (self:cAddress)",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone ') Value To (self:cPhone)",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecords Class Customers",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecords Class Customers",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ' Title ' Delete' Type: Message Yes/No",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=1 )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Clear()",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'SORRY ' Title ' SORRY' Type: Message Box",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",418,418)
Return
*-------------------------------------------------------------------*
