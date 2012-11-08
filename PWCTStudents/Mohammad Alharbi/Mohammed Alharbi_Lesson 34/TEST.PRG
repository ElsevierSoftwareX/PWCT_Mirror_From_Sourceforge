*---------------------------------------------------------------------------*
* Time : 22:48:16    Date : 11/08/2012
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
Customersobj = Customers()
myout = Customersobj:ShowWindow()
Class Customers
Method ShowWindow
Method Connect
Method DisConnect
Method RecordsCount
Method Close
EndClass
Method ShowWindow Class Customers
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Connect ";
ON CLICK self:Connect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 61 ,11 BUTTONEX btn2;
CAPTION "DisConnect";
ON CLICK self:DisConnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 114 ,12 BUTTONEX btn3;
CAPTION "RecordsCount";
ON CLICK self:RecordsCount()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 167 ,10 BUTTONEX btn4;
CAPTION "Close";
ON CLICK self:Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customers
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=sysdata.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers",oCon,3,3 )
Return 0
Method DisConnect Class Customers
oRS:Close()
oCon:CLOSE()
Return 0
Method RecordsCount Class Customers
nMax := oRS:RecordCount
MyOut := MSGBOX(nMax,"Count ")
Return 0
Method Close Class Customers
win1.Release ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Customersobj of Class Customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Customersobj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Close",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Connect '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Connect",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'DisConnect'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DisConnect",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'RecordsCount'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Close",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=sysdata.mdb'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customers",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Close Class Customers",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",71,71)
Return
*-------------------------------------------------------------------*
