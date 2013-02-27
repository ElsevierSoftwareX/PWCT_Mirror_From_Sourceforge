*---------------------------------------------------------------------------*
* Time : 17:48:32    Date : 02/07/2013
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
Data oActivex1 init 0
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
Method ShowRebort
EndClass
Method showWindow Class customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 100 ,200 ;
WIDTH 1027 ;
HEIGHT 435 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 58 ,56 GRID Grid1;
ON CHANGE Self:GotoRecord()  ;
WIDTH 415 ;
HEIGHT 178 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,192} ;
FONTCOLOR {0,0,0}
@ 29 ,59 LABEL lbl1 ;
VALUE "search by name : " ;
WIDTH 102 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 23 ,155 TEXTBOX textsearch;
ON CHANGE self:Search()  ;
HEIGHT 25 ;
WIDTH 131 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} 

@ 246 ,8 LABEL lbl2 ;
VALUE "Name" ;
WIDTH 43 ;
HEIGHT 22 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 280 ,3 LABEL lbl3 ;
VALUE "Address" ;
WIDTH 53 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 318 ,6 LABEL lbl4 ;
VALUE "Phone" ;
WIDTH 44 ;
HEIGHT 24 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 239 ,56 TEXTBOX textName;
HEIGHT 32 ;
WIDTH 415 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 276 ,56 TEXTBOX textAddress;
HEIGHT 32 ;
WIDTH 415 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 313 ,55 TEXTBOX textPhone;
HEIGHT 32 ;
WIDTH 333 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 350 ,391 BUTTONEX btnFrist;
CAPTION "Frist ";
ON CLICK Self:FirstRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,475 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK Self:NextRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,559 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK Self:PrevRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,643 BUTTONEX btnLast;
CAPTION "Last ";
ON CLICK Self:LastRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 32 ,327 LABEL lbl5t ;
VALUE "Records Count " ;
WIDTH 94 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 28 ,422 LABEL lblReordsCount ;
VALUE " " ;
WIDTH 49 ;
HEIGHT 26 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,128,128} ;
FONTCOLOR {0,0,0}
@ 350 ,55 BUTTONEX btnAdd;
CAPTION "Add ";
ON CLICK Self:AddRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,223 BUTTONEX btnSave;
CAPTION "Save ";
ON CLICK Self:SaveRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,307 BUTTONEX btnCancel;
CAPTION "CanceL ";
ON CLICK Self:CancelRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,139 BUTTONEX btnEdit;
CAPTION "Edit ";
ON CLICK Self:EditRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,727 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK Self:DeleteRecord()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,811 BUTTONEX btnClose;
CAPTION "Close ";
ON CLICK Self:CloseWindow()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
Self:oActivex1 := TActiveX():New( "Win1", "CrystalReports10.ActivexReportViewer.1" , 57 , 475 , 538 , 288)
Self:oActivex1:Load()
@ 350 ,895 BUTTONEX btnShowReport;
CAPTION "ShowReport  ";
ON CLICK Self:ShowRebort()  ;
WIDTH 118 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
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
Method ShowRebort Class Customers
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Customers.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartupFolder+"\SysData.mdb"
Self:oActivex1:OOLE:reportsource := T_myreport
Self:oActivex1:OOLE:viewreport ( )
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
SS_ESASTEP("Circuits\Main\Main\Main","Data oActivex1 Init Value 0",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrevRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClearRecord",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecord",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancelRecord",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2ADO",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteRecord",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRebort",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",45,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:GotoRecord",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",55,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFrist ) , Caption : 'Frist '",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:FirstRecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:NextRecord",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:PrevRecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LastRecord",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5t ) , Caption : 'Records Count '",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",145,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblReordsCount ) , Caption : ' '",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",152,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddRecord",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveRecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'CanceL '",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CancelRecord",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:EditRecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DeleteRecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CloseWindow",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( Self:oActivex1 )",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnShowReport ) , Caption : 'ShowReport  '",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ShowRebort",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",198,200)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",201,202)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",206,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",214,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblReordsCount.Value := cMax",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RecordsCount()",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",246,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Customers",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check EOF",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Record  ' Title 'Sorry ' Type: Message Box",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Previous Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet Self:oRS , Check BOF",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Record  ' Title 'Sorry ' Type: Message Box",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecord()",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex - 1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cName = ''",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cAddress = ''",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","Self.cPhone = ''",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ClearRecord()",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = True",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := True",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := True",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFrist.Enabled := False",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := False",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Ado2Class()",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2UserInterface()",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = False",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Customers",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = win1.textName.Value",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = win1.textAddress.Value",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = win1.textPhone.Value",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2ADO Class Customers",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustName ') Value To (Self:cName)",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustAddress ') Value To (Self:cAddress)",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('CustPhone ') Value To (Self:cPhone)",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Self:IAdd = True )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Self.IAdd = False",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Add New Record",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.UserInterface2Class()",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Class2ADO()",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(1)",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowRecords()",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Last Record",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecord Class Customers",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.SetMode(2)",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ' Title 'Delete' Type: Message Yes/No",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut = False )",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Delete Record",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecords()",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax = 1 )",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ClearRecord()",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Class2UserInterface()",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.ShowRecord()",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Records  ' Title 'Sorry ' Type: Message Box",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Customers",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRebort Class Customers",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object Self:oActivex1, View Report 'Customers.rpt' , Database Location = StartupFolder+'\SysData.mdb'",415,424)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",425,425)
Return
*-------------------------------------------------------------------*
