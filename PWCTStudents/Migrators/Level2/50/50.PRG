*---------------------------------------------------------------------------*
* Time : 07:37:45    Date : 11/22/2012
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


Resistance R_50_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_50_18smart1() code
CustomersObj = Customers()
myout = CustomersObj:ShowWindow()
Class Customers
Data oCon init 0
Data oRS init 0
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Data lAdd init False
Data oActivex1 init 0
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
Method ShowReport
EndClass
Method ShowWindow Class Customers
myout = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1064 ;
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

@ 101 ,504 BUTTONEX btnFirst;
CAPTION "First ";
ON CLICK self:FirstRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,504 BUTTONEX btnNext;
CAPTION "Next ";
ON CLICK self:NextRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 181 ,504 BUTTONEX btnPrev;
CAPTION "Prev ";
ON CLICK self:PrevRecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 221 ,504 BUTTONEX btnLast;
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
self:oActivex1 := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 9 , 579 , 467 , 392)
self:oActivex1:Load()
@ 409 ,696 BUTTONEX btnShowReport;
CAPTION "Show Report";
ON CLICK self:ShowReport()  ;
WIDTH 220 HEIGHT 30 ;
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
Method ShowReport Class Customers
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Customers.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartupFolder+"\sysdata.mdb"
self:oActivex1:OOLE:reportsource := T_myreport
self:oActivex1:OOLE:viewreport ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_50
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
SS_ESASTEP("Circuits\Main\Main\Main","Data oActivex1 Init Value 0",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserI",18,18)
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
SS_ESASTEP("Circuits\Main\Main\Main","Method UserI2Class",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteRecord",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowReport",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Connect()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev '",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:PrevRecord",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Records Count '",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",138,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",145,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecord",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecord",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancelRecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:EditRecord",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DeleteRecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( self:oActivex1 )",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnShowReport ) , Caption : 'Show Report'",189,190)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:ShowReport",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",192,194)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",200,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers'",208,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('Custaddress') Value",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('Custphone') Value",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.RecordsCount()",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where Custname like '' +cName+ '%''",240,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('Custname') Value",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field ('CustAddress') Value",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('CustPhone') Value",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Customers",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Ado2Class()",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class Customers",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LastRecord Class Customers",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class Customers",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of Records ' Title 'Sorry' Type: Message Box",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrevRecord Class Customers",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of Records' Title 'Sorry' Type: Message Box",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customers",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex -1",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearRecord Class Customers",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ''",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class Customers",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class Customers",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode = 1 )",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode = 2 )",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancelRecord Class Customers",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2Class()",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserI2Class Class Customers",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customers",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustName') Value To (self:cName)",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustAddress') Value To (self:cAddress)",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('CustPhone') Value To (self:cPhone)",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class Customers",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.USerI2Class()",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.USerI2Class()",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2Ado()",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(1)",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecord Class Customers",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.SetMode(2)",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteRecord Class Customers",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure Delete  ' + self:cName + '  ?' Title 'Delete Record' Type: Message Yes/No",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=False )",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Records ' Title 'Sorry' Type: Message Box",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMAx=1 )",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ClearRecord()",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecord()",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Customers",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowReport Class Customers",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object self:oActivex1, View Report 'Customers.rpt' , Database Location = StartupFolder+'\sysdata.mdb'",418,427)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",428,428)
Return
*-------------------------------------------------------------------*
