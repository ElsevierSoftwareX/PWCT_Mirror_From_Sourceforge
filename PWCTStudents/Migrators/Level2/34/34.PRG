*---------------------------------------------------------------------------*
* Time : 02:56:16    Date : 11/20/2012
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


Resistance R_34_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_34_18smart1() code
CustomersObj = Customers()
myout = CustomersObj:ShowWindow()
Class Customers
Method ShowWindow
Method Connect
Method Disconnect
Method RecordsCount
EndClass
Method ShowWindow Class Customers
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 430 ;
HEIGHT 220 ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 130 ,10 BUTTONEX btn3;
CAPTION "Get Record Count ";
ON CLICK self:RecordsCount()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 30 ,10 BUTTONEX btn4;
CAPTION "Connect ";
ON CLICK self:Connect()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 80 ,10 BUTTONEX btn5;
CAPTION "Disconnect ";
ON CLICK self:Disconnect()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customers
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers",oCon,3,3 )
Return 0
Method Disconnect Class Customers
oRS:Close()
oCon:CLOSE()
Return 0
Method RecordsCount Class Customers
nMax := oRS:RecordCount
MyOut := MSGBOX(nMax,"Count ")


End Of Resistance

INIT PROCEDURE Init_34
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObj of Class Customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CustomersObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Customers",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Record Count '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Connect '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Connect",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Disconnect '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Disconnect",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customers",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class Customers",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customers",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Count ' Type: Message Box",60,60)
Return
*-------------------------------------------------------------------*
