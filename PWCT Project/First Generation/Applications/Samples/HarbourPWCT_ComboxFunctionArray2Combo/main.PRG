*---------------------------------------------------------------------------*
* Time : 03:50:12    Date : 10/22/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.30
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
myObj = customers()
o = myObj:showWin()
Class customers
Data oCon init 0
Data oRs init 0
Data aName init {}
Data aAddress init {}
Data aPhone init {}
Method showWin
Method connect
Method disconnect
Method recordsCount
Method showRecords
Method array2combo
EndClass
Method showWin Class customers
out = self:connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 640 ;
HEIGHT 440 ;
ON RELEASE self:disconnect()  ;
ON INIT self:showRecords()  ;
ICON "PWCTICON" ;
TITLE "Database --> Recordset ---> Array ---> Combo (using function)" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 331 ,219 BUTTONEX btn3;
CAPTION "Records count ";
ON CLICK self:recordsCount()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 38 ,105 GRID Grid1;
WIDTH 420 ;
HEIGHT 206 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 285 ,130 COMBOBOX comboName;
WIDTH 100 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 285 ,260 COMBOBOX comboAddress;
WIDTH 100 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 285 ,391 COMBOBOX comboPhone;
WIDTH 100 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 257 ,157 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 257 ,280 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 257 ,414 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method connect Class customers
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=sysData.mdb' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from cust",self:oCon,3,3 )
Return 0
Method disconnect Class customers
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method recordsCount Class customers
nMax := self:oRS:RecordCount
MyOut := MSGBOX(nMax,"number of records ")
Return 0
Method showRecords Class customers
nMax := self:oRS:RecordCount
IF nMax > 0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := self:oRS:fields:item(alltrim("custName")):value
cAddress := self:oRS:fields:item(alltrim("custAddress")):value
cPhone := self:oRS:fields:item(alltrim("custPhone")):value
win1.Grid1.AddItem ( {cName,cAddress,cPhone} )
self:oRS:MOVENEXT()
AADD( self:aName , cName)
AADD( self:aAddress , cAddress)
AADD( self:aPhone , cPhone)
Next
out = self:array2combo("comboName",self:aName)
out = self:array2combo("comboAddress",self:aAddress)
out = self:array2combo("comboPhone",self:aPhone)
ENDIF
Return 0
Method array2combo(cCombo,aArray) Class customers
Local nMax
win1.&(cCombo).DeleteAllItems ( )
nMax  = LEN(aArray)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
win1.&(cCombo).AddItem ( aArray[x] )
Next
win1.&(cCombo).Value := 1
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myObj of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","o = myObj.showWin()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRs Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data aName Init Value {}",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data aAddress Init Value {}",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data aPhone Init Value {}",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWin",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method disconnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method recordsCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecords",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method array2combo",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWin Class customers",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.connect()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Database --> Recordset ---> Array ---> Combo (using function)'",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:disconnect",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:showRecords",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Records count '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:recordsCount",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",37,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( comboName )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( comboAddress )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( comboPhone )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class customers",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysData.mdb'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from cust'",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method disconnect Class customers",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method recordsCount Class customers",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'number of records ' Type: Message Box",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class customers",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('custName') Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('custAddress') Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('custPhone') Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cName To Array self:aName",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cAddress To Array self:aAddress",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cPhone To Array self:aPhone",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.array2combo('comboName',self:aName)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.array2combo('comboAddress',self:aAddress)",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.array2combo('comboPhone',self:aPhone)",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method array2combo(cCombo,aArray) Class customers",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.&(cCombo).DeleteAllItems ( )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.&(cCombo).AddItem ( aArray[x] )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.&(cCombo).Value := 1",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",135,135)
Return
*-------------------------------------------------------------------*
