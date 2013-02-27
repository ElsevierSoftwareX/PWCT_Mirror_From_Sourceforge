*---------------------------------------------------------------------------*
* Time : 02:00:53    Date : 02/05/2013
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
Data IAdd init False
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
Method UserInterface2Class
Method Class2ADO
Method SaveRecord
Method EditRecord
Method DeleteRecord
Method CloseWindow
EndClass
Method showWindow Class customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,400 ;
WIDTH 641 ;
HEIGHT 459 ;
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
HEIGHT 34 ;
WIDTH 227 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 337 ,92 BUTTONEX btnFrist;
CAPTION "Frist ";
ON CLICK Self:FirstRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,170 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK Self:NextRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,248 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK Self:PrevRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,326 BUTTONEX btnLast;
CAPTION "Last ";
ON CLICK Self:LastRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
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
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
@ 224 ,404 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK Self:AddRecord()  ;
WIDTH 76 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 298 ,326 BUTTONEX btnSave;
CAPTION "Save ";
ON CLICK Self:SaveRecord()  ;
WIDTH 71 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 298 ,404 BUTTONEX btnCancel;
CAPTION "Cancel ";
ON CLICK Self:CancelRecord()  ;
WIDTH 76 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 261 ,404 BUTTONEX btnEdit;
CAPTION "Edit ";
ON CLICK Self:EditRecord()  ;
WIDTH 76 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,404 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK Self:DeleteRecord()  ;
WIDTH 76 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,488 BUTTONEX btnClose;
CAPTION "Close ";
ON CLICK Self:CloseWindow()  ;
WIDTH 100 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
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
Self:IAdd := True
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
win1.btnEdit.Enabled := True
win1.btnDelete.Enabled := True
win1.btnClose.Enabled := True
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
win1.btnEdit.Enabled := False
win1.btnDelete.Enabled := False
win1.btnClose.Enabled := False
ENDIF
Return 0
Method CancelRecord Class Customers
myout = Self:Ado2Class()
myout = Self:Class2UserInterface()
myout = Self:SetMode(1)
Self:IAdd := False
Return 0
Method UserInterface2Class Class Customers
Self:cName := win1.textName.Value
Self:cAddress := win1.textAddress.Value
Self:cPhone := win1.textPhone.Value
Return 0
Method Class2ADO Class Customers
Self:oRS:fields:item(alltrim("CustName ")):value := Self:cName
Self:oRS:fields:item(alltrim("CustAddress ")):value := Self:cAddress
Self:oRS:fields:item(alltrim("CustPhone ")):value := Self:cPhone
Return 0
Method SaveRecord Class Customers
IF Self:IAdd = True
Self:IAdd := False
Self:oRS:ADDNEW()
ENDIF
myout = Self:UserInterface2Class()
myout = Self:Class2ADO()
Self:oRS:UPDATE()
myout = Self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
myout = Self:ShowRecords()
Self:oRS:MOVELAST()
Return 0
Method EditRecord Class Customers
myout = Self:SetMode(2)
Return 0
Method DeleteRecord Class Customers
Local nMax
nMax := Self:oRS:RecordCount
IF nMax > 0
MyOut := MSGYESNO("Are you sure ","Delete")
IF MyOut = False
Return 0
ENDIF
Self:oRS:DELETE()
Self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
Myout = Self:ShowRecords()
IF nMax = 1
Myout = Self:ClearRecord()
Myout = Self:Class2UserInterface()
ELSE
Myout = Self:ShowRecord()
ENDIF
ELSE
MyOut := MSGBOX("No Records  ","Sorry ")
ENDIF
Return 0
Method CloseWindow Class Customers
win1.Release ( )
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
SS_ESASTEP("Circuits\Main\Main\Main","Data IAdd Init Value False",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",17,17)
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
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2ADO",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecord",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:GotoRecord",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",104,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",111,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFrist ) , Caption : 'Frist '",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:FirstRecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:NextRecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:PrevRecord",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LastRecord",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",138,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5t ) , Caption : 'Records Count '",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblReordsCount ) , Caption : ' '",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddRecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",158,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveRecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CancelRecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:EditRecord",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DeleteRecord",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CloseWindow",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblReordsCount.Value := cMax",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RecordsCount()",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",236,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check EOF",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Record  ' Title 'Sorry ' Type: Message Box",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check BOF",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Record  ' Title 'Sorry ' Type: Message Box",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex - 1",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cName = ''",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cAddress = ''",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cPhone = ''",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ClearRecord()",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = True",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := True",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := True",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := False",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := False",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = False",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = win1.textName.Value",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = win1.textAddress.Value",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = win1.textPhone.Value",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2ADO Class Customers",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustName ') Value To (Self:cName)",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustAddress ') Value To (Self:cAddress)",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustPhone ') Value To (Self:cPhone)",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Self:IAdd = True )",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = False",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Add New Record",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.UserInterface2Class()",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2ADO()",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecord Class Customers",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ' Title 'Delete' Type: Message Yes/No",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut = False )",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Delete Record",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecords()",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax = 1 )",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ClearRecord()",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Class2UserInterface()",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Records  ' Title 'Sorry ' Type: Message Box",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Customers",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",402,402)
Return
*-------------------------------------------------------------------*
