*---------------------------------------------------------------------------*
* Time : 05:07:53    Date : 11/22/2012
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


Resistance R_48_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_48_18smart1() code
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
Method EditRecord
Method DeleteRecord
Method CloseWindow
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
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,514 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK self:NextRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 181 ,514 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK self:PrevRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 221 ,514 BUTTONEX btnLast;
CAPTION "Last ";
ON CLICK self:LastRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
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
@ 93 ,12 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecord()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 175 ,12 BUTTONEX btnSave;
CAPTION "Save ";
ON CLICK self:SaveRecord()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 216 ,12 BUTTONEX btnCancel;
CAPTION "Cancel ";
ON CLICK self:CancelRecord()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 134 ,12 BUTTONEX btnEdit;
CAPTION "Edit";
ON CLICK self:EditRecord()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 257 ,12 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK self:DeleteRecord()  ;
WIDTH 102 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 409 ,474 BUTTONEX btnClose;
CAPTION "Close ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
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
self:lAdd := True
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
win1.btnEdit.Enabled := True
win1.btnDelete.Enabled := True
win1.btnClose.Enabled := True
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
win1.btnEdit.Enabled := False
win1.btnDelete.Enabled := False
win1.btnClose.Enabled := False
win1.textSearch.Enabled := False
win1.Grid1.Enabled := False
ENDIF
Return 0
Method CancelRecord Class Customers
myout = self:ado2Class()
myout = self:Class2UserI()
myout = self:SetMode(1)
self:lAdd := False
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
IF self:lAdd=True
self:lAdd := False
self:oRS:ADDNEW()
myout = self:USerI2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
myout = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
self:oRS:MOVELAST()
ELSE
myout = self:USerI2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
myout = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
vBM := self:oRS:BookMark
myout = self:ShowRecords()
self:oRS:BookMark := vBM
ENDIF
Return 0
Method EditRecord Class Customers
myout = self:SetMode(2)
Return 0
Method DeleteRecord Class Customers
Local nMax
nMax := self:oRS:RecordCount
IF nMax>0
MyOut := MSGYESNO("Are you sure Delete  " + self:cName + "  ?","Delete Record")
IF MyOut=False
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
ELSE
MyOut := MSGBOX("No Records ","Sorry")
ENDIF
win1.Grid1.DeleteAllItems ( )
myout = self:ShowRecords()
IF nMAx=1
myout = self:ClearRecord()
myout = self:Class2UserI()
ELSE
myout = self:ShowRecord()
ENDIF
Return 0
Method CloseWindow Class Customers
win1.Release ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_48
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
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserI",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClearRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecord",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecord",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserI2Class",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecord",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Records Count '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecord",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",158,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit'",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:EditRecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DeleteRecord",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",198,200)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordsCount()",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",230,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry' Type: Message Box",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Records' Title 'Sorry' Type: Message Box",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex -1",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2Class()",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserI2Class Class Customers",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName') Value To (self:cName)",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress') Value To (self:cAddress)",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone') Value To (self:cPhone)",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.USerI2Class()",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.USerI2Class()",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecord Class Customers",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure Delete  ' + self:cName + '  ?' Title 'Delete Record' Type: Message Yes/No",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=False )",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Records ' Title 'Sorry' Type: Message Box",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMAx=1 )",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Customers",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",405,405)
Return
*-------------------------------------------------------------------*
