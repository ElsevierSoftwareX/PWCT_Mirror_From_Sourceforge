*---------------------------------------------------------------------------*
* Time : 12:33:35    Date : 01/29/2013
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
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
EndClass
Method showWindow Class customers
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 540 ;
HEIGHT 257 ;
ICON "PWCTICON" ;
TITLE "customers  " ;
MAIN ;
BACKCOLOR {128,0,128} 

@ 37 ,19 BUTTONEX btn1;
CAPTION "Connect ";
ON CLICK Self:Connect()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 90 ,19 BUTTONEX btn2;
CAPTION "DisConnect ";
ON CLICK Self:DisConnect()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 138 ,19 BUTTONEX btn3;
CAPTION "Get Records Count ";
ON CLICK Self:RecordsCount()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class customers
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from customers",oCon,3,3 )
Return 0
Method DisConnect Class customers
oRS:Close()
oCon:CLOSE()
Return 0
Method RecordsCount Class customers
nMax := oRS:RecordCount
MyOut := MSGBOX(nMax,"RecordsCount ")
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersobj of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = customersobj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'customers  '",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Connect '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Connect",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'DisConnect '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DisConnect",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Records Count '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RecordsCount",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class customers",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysData.mdb;Persist Security Info=False;'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from customers'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class customers",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class customers",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'RecordsCount ' Type: Message Box",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",61,61)
Return
*-------------------------------------------------------------------*
