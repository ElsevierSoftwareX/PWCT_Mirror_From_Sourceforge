*---------------------------------------------------------------------------*
* Time : 03:02:06    Date : 11/22/2012
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


Resistance R_42_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_42_18smart1() code
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


End Of Resistance

INIT PROCEDURE Init_42
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
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Records Count '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecord",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,158)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordsCount()",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry' Type: Message Box",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Records' Title 'Sorry' Type: Message Box",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex -1",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2Class()",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",311,311)
Return
*-------------------------------------------------------------------*
