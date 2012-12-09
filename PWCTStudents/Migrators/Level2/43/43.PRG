*---------------------------------------------------------------------------*
* Time : 03:26:25    Date : 11/22/2012
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


Resistance R_43_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_43_18smart1() code
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
Method ClearRecord
Method AddRecord
Method SetMode
Method CancelRecord
Method UserI2Class
Method Class2Ado
Method SaveRecord
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 609 ;
HEIGHT 489 ;
ON RELEASE self:Disconnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 77 ,144 GRID Grid1;
ON CHANGE self:GotoRecord()  ;
WIDTH 336 ;
HEIGHT 196 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 12 ;
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

@ 320 ,54 LABEL lbl2 ;
VALUE "Name " ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 361 ,54 LABEL lbl3 ;
VALUE "Address " ;
WIDTH 80 ;
HEIGHT 17 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 399 ,54 LABEL lbl4 ;
VALUE "Phone " ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 317 ,142 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 355 ,142 TEXTBOX textAddress;
HEIGHT 34 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 393 ,142 TEXTBOX textPhone;
HEIGHT 34 ;
WIDTH 204 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,514 BUTTONEX btnFirst;
CAPTION "First ";
ON CLICK self:FirstRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,514 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK self:NextRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 181 ,514 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK self:PrevRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 221 ,514 BUTTONEX btnLast;
CAPTION "Last ";
ON CLICK self:LastRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 277 ,314 LABEL lbl5 ;
VALUE "Records Count " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 277 ,407 LABEL lblRecordsCount ;
VALUE " " ;
WIDTH 73 ;
HEIGHT 16 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 112 ,12 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 158 ,12 BUTTONEX btnSave;
CAPTION "Save ";
ON CLICK self:SaveRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 204 ,12 BUTTONEX btnCancel;
CAPTION "Cancel ";
ON CLICK self:CancelRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

myout = self:ShowRecords()
myout = self:ShowRecord()
myout = self:SetMode(1)
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
cMax = STR ( nMax )
cMax = ALLTRIM ( cMax )
win1.lblRecordsCount.Value := cMax
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
myout = self:RecordsCount()
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
Method ClearRecord Class Customers
self:cName := ""
self:cAddress := ""
self:cPhone := ""
Return 0
Method AddRecord Class Customers
myout = self:ClearRecord()
myout = self:Class2UserI()
myout = self:SetMode(2)
Return 0
Method SetMode(nMode) Class Customers
IF nMode = 1
win1.textName.Enabled := False
win1.textAddress.Enabled := False
win1.textPhone.Enabled := False
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnAdd.Enabled := True
win1.btnFirst.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrev.Enabled := True
win1.btnLast.Enabled := True
win1.textSearch.Enabled := True
win1.Grid1.Enabled := True
ELSEIF nMode = 2
win1.textName.Enabled := True
win1.textAddress.Enabled := True
win1.textPhone.Enabled := True
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnAdd.Enabled := False
win1.btnFirst.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrev.Enabled := False
win1.btnLast.Enabled := False
win1.textSearch.Enabled := False
win1.Grid1.Enabled := False
ENDIF
Return 0
Method CancelRecord Class Customers
myout = self:ado2Class()
myout = self:Class2UserI()
myout = self:SetMode(1)
Return 0
Method UserI2Class Class Customers
self:cName := win1.textName.Value
self:cAddress := win1.textAddress.Value
self:cPhone := win1.textPhone.Value
Return 0
Method Class2Ado Class Customers
self:oRS:fields:item("CustName"):value := self:cName
self:oRS:fields:item("CustAddress"):value := self:cAddress
self:oRS:fields:item("CustPhone"):value := self:cPhone
Return 0
Method SaveRecord Class Customers
self:oRS:ADDNEW()
myout = self:USerI2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
myout = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
self:oRS:MOVELAST()
Return 0


End Of Resistance

INIT PROCEDURE Init_43
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
SS_ESASTEP("Circuits\Main\Main\Main","Method ClearRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecord",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserI2Class",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Records Count '",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",132,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",139,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",145,146)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",148,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecord",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecord",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",168,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordsCount()",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",208,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry' Type: Message Box",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Records' Title 'Sorry' Type: Message Box",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex -1",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2Class()",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserI2Class Class Customers",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName') Value To (self:cName)",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress') Value To (self:cAddress)",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone') Value To (self:cPhone)",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.USerI2Class()",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",335,335)
Return
*-------------------------------------------------------------------*
