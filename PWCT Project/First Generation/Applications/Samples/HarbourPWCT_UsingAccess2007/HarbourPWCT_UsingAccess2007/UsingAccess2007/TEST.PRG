*---------------------------------------------------------------------------*
* Time : 11:45:33    Date : 01/04/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Use Access 2007 database " ;
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
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
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
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
c1 := oRS:fields:item(alltrim("name")):value
c2 := oRS:fields:item(alltrim("address")):value
c3 := oRS:fields:item(alltrim("phone")):value
win1.Grid1.AddItem ( {c1,c2,c3} )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Use Access 2007 database '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Records '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action t",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",18,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure t ( Event : CLICK )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name') Value",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address') Value",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone') Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {c1,c2,c3} )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
Return
*-------------------------------------------------------------------*
