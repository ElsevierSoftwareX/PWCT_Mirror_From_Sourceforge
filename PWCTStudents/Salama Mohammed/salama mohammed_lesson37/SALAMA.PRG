*---------------------------------------------------------------------------*
* Time : 11:35:43    Date : 01/27/2013
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
myuot = customersobj:showWindow()
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
Method Class2UserInterfase
Method ShowRecord
EndClass
Method showWindow Class customers
myuot = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,400 ;
WIDTH 510 ;
HEIGHT 426 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 297 ,292 BUTTONEX btn3;
CAPTION "GetRecordsCount";
ON CLICK Self:RecordsCount()  ;
WIDTH 107 HEIGHT 32 ;
FONT "Arial" SIZE 10 ;
TOOLTIP ""
@ 50 ,93 GRID Grid1;
WIDTH 305 ;
HEIGHT 150 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {128,128,192} ;
EDIT INPLACE {} ;
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
HEIGHT 27 ;
WIDTH 207 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} 

@ 335 ,292 BUTTONEX btn4;
CAPTION "Last ";
WIDTH 107 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 230 ,42 LABEL lbl2 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 267 ,37 LABEL lbl3 ;
VALUE "Address" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 302 ,41 LABEL lbl4 ;
VALUE "Phone" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 223 ,93 TEXTBOX textName;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 260 ,93 TEXTBOX textAddress;
HEIGHT 32 ;
WIDTH 305 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 297 ,93 TEXTBOX textPhone;
HEIGHT 32 ;
WIDTH 195 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 335 ,93 BUTTONEX btn5;
CAPTION "Frist ";
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 335 ,160 BUTTONEX btn6;
CAPTION "Next ";
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 335 ,226 BUTTONEX btn7;
CAPTION "Prev ";
WIDTH 62 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

Myuot = Self:ShowRecord()
myuot = Self:ShowRecords()
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
MyOut := MSGBOX(nMax,"RecordsCount ")
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
ENDIF
Return 0
Method Search Class Customers
cName := win1.textsearch.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Customers where CustName like '"+cName+"%'",Self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myuot = Self:ShowRecords()
Return 0
Method Ado2Class Class Customers
Self:cName := Self:oRS:fields:item(alltrim("CustName ")):value
Self:cAddress := Self:oRS:fields:item(alltrim("CustAddress")):value
Self:cPhone := Self:oRS:fields:item(alltrim("CustPhone ")):value
Return 0
Method Class2UserInterfase Class Customers
win1.textName.Value := Self:cName
win1.textAddress.Value := Self:cAddress
win1.textPhone.Value := Self:cPhone
Return 0
Method ShowRecord Class Customers
nMax := Self:oRS:RecordCount
IF nMax > 0
Myuot = Self:Ado2Class()
Myuot = Self:Class2UserInterfase()
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersobj of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = customersobj.showWindow()",2,2)
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
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterfase",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = self.Connect()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'GetRecordsCount'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RecordsCount",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",42,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last '",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",92,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Frist '",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Next '",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Prev '",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Myuot = Self.ShowRecord()",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = Self.ShowRecords()",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'RecordsCount ' Type: Message Box",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",167,169)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = Self.ShowRecords()",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customers",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress') Value",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterfase Class Customers",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := Self:cName",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := Self:cAddress",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := Self:cPhone",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class Customers",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Myuot = Self.Ado2Class()",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Myuot = Self.Class2UserInterfase()",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",189,189)
Return
*-------------------------------------------------------------------*
