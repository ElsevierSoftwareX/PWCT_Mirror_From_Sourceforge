*---------------------------------------------------------------------------*
* Time : 17:24:54    Date : 12/27/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2015 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.12.13
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


Resistance R_test_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_test_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Create Table in Access 2007 database " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Show Records ";
ON CLICK t()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 112 ,13 GRID Grid1;
WIDTH 459 ;
HEIGHT 181 ;
HEADERS {"ID","First Name","Last Name"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure t()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
oCon:execute ( "drop table Employees" )
cCmd := "CREATE TABLE Employees(ID INTEGER NOT NULL,LastName   VARCHAR(40)  NOT NULL,FirstName  VARCHAR(40)  NOT NULL)"
oCon:execute ( cCmd )
cCmd := "INSERT INTO Employees VALUES (1,'Fayed','Mahmoud')"
oCon:execute ( cCmd )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Employees",oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
c1 := oRS:fields:item(alltrim("id")):value
c1 = STR ( c1 )
c2 := oRS:fields:item(alltrim("firstname")):value
c3 := oRS:fields:item(alltrim("lastname")):value
win1.Grid1.AddItem ( {c1,c2,c3} )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
return


End Of Resistance

INIT PROCEDURE Init_test
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Create Table in Access 2007 database '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Records '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action t",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'ID','First Name','Last Name'}",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",18,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure t ( Event : CLICK )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oCon.execute ( 'drop table Employees' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","cCmd = 'CREATE TABLE Employees(ID INTEGER NOT NULL,LastName   VARCHAR(40)  NOT NULL,FirstName  VARCHAR(40)  NOT NULL)'",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","oCon.execute ( cCmd )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","cCmd = 'INSERT INTO Employees VALUES (1,'Fayed','Mahmoud')'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oCon.execute ( cCmd )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Employees'",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('id') Value",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = CONVERT c1 TO STRING",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('firstname') Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('lastname') Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {c1,c2,c3} )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
Return
*-------------------------------------------------------------------*
