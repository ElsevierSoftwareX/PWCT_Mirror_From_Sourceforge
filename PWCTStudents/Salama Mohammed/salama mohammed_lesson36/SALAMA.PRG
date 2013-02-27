*---------------------------------------------------------------------------*
* Time : 10:54:16    Date : 01/27/2013
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
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
Method ShowRecords
Method Search
EndClass
Method showWindow Class customers
myuot = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,400 ;
WIDTH 385 ;
HEIGHT 399 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 297 ,97 BUTTONEX btn3;
CAPTION "Get Records Count ";
ON CLICK Self:RecordsCount()  ;
WIDTH 153 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 58 ,33 GRID Grid1;
WIDTH 305 ;
HEIGHT 232 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {128,128,192} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 32 ,36 LABEL lbl1 ;
VALUE "search by name : " ;
WIDTH 102 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {255,255,0}
@ 28 ,145 TEXTBOX textsearch;
ON CHANGE self:Search()  ;
HEIGHT 26 ;
WIDTH 194 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

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
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = self.Connect()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",21,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Records Count '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RecordsCount",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",36,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'search by name : '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = Self.ShowRecords()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'RecordsCount ' Type: Message Box",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Customers",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('CustName ') Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('CustAddress ') Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (Self:oRS) Get Field ('CustPhone ') Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone} )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class Customers",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customers where CustName like ''+cName+'%''",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myuot = Self.ShowRecords()",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",103,103)
Return
*-------------------------------------------------------------------*
