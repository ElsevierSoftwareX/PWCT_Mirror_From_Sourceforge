*---------------------------------------------------------------------------*
* Time : 14:57:33    Date : 02/24/2013
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
Method CloseApplication
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
@ 165 ,627 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK self:AddRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 253 ,628 BUTTONEX btnCancel;
CAPTION "Cancel";
ON CLICK self:CancelRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 209 ,628 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK self:SaveRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 299 ,628 BUTTONEX btnEdit;
CAPTION "Edit ";
ON CLICK self:EditRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 339 ,629 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK self:DeleteRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 384 ,631 BUTTONEX btnClose;
CAPTION "Close ";
ON CLICK self:CloseApplication()  ;
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
win1.btnDelete.Enabled := True
win1.btnClose.Enabled := False
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
win1.btnDelete.Enabled := False
win1.btnClose.Enabled := False
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
Method CloseApplication Class Customers
win1.Release ( )
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
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseApplication",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GoToRecord",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",51,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by Name '",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",67,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete All Items '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",101,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",115,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Clear '",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Clear",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'RecordsCount '",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CountLabel ) , Caption : ' '",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecords",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecords",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecords",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:EditRecords",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DeleteRecord",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseApplication",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",202,204)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",210,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",218,220)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class Customers",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.CountLabel.Value := cMax",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordCount()",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",250,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customers",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('CustName ') Value",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress ') Value",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone ') Value",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry ' Type: Message Box",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of records ' Title 'Sorry ' Type: Message Box",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GoToRecord Class Customers",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex>0 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customers",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := ''",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := ''",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecords Class Customers",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecords Class Customers",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName ') Value To (self:cName)",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress ') Value To (self:cAddress)",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone ') Value To (self:cPhone)",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecords Class Customers",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.UserInterface2Class()",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecords Class Customers",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ' Title ' Delete' Type: Message Yes/No",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=1 )",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Clear()",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserInterface()",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'SORRY ' Title ' SORRY' Type: Message Box",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseApplication Class Customers",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",432,432)
Return
*-------------------------------------------------------------------*
