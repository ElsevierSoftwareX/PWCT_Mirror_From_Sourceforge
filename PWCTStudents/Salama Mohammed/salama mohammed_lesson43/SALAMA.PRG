*---------------------------------------------------------------------------*
* Time : 15:16:43    Date : 01/31/2013
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
Method UserInterface2Class
Method Class2ADO
Method SaveRecord
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
ON CLICK Self:SaveRecord()  ;
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
Self:oRS:ADDNEW()
myout = Self:UserInterface2Class()
myout = Self:Class2ADO()
Self:oRS:UPDATE()
myout = Self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
myout = Self:ShowRecords()
Self:oRS:MOVELAST()
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
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2ADO",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",39,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:GotoRecord",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",93,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFrist ) , Caption : 'Frist '",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:FirstRecord",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:NextRecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:PrevRecord",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LastRecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5t ) , Caption : 'Records Count '",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",139,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblReordsCount ) , Caption : ' '",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddRecord",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveRecord",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CancelRecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",174,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblReordsCount.Value := cMax",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RecordsCount()",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",214,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check EOF",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Record  ' Title 'Sorry ' Type: Message Box",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check BOF",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Record  ' Title 'Sorry ' Type: Message Box",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex - 1",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cName = ''",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cAddress = ''",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cPhone = ''",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ClearRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := True",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := True",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := False",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := False",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = win1.textName.Value",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = win1.textAddress.Value",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = win1.textPhone.Value",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2ADO Class Customers",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustName ') Value To (Self:cName)",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustAddress ') Value To (Self:cAddress)",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustPhone ') Value To (Self:cPhone)",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Add New Record",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.UserInterface2Class()",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2ADO()",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",341,341)
Return
*-------------------------------------------------------------------*
