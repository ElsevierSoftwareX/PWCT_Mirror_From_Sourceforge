*---------------------------------------------------------------------------*
* Time : 05:13:51    Date : 10/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
SET AUTOADJUST ON
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 307 ;
ICON "PWCTICON" ;
TITLE "ADODB Sample" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,20 EDITBOX edit1;
WIDTH 450 ;
HEIGHT 200;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 222 ,20 BUTTONEX btn1;
CAPTION "Add 10 Records";
ON CLICK mywork()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 224 ,319 BUTTONEX btn2;
CAPTION "Show Records";
ON CLICK mywork2()  ;
WIDTH 151 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mywork
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Database Test.MDB "
else
Win1.Edit1.VALUE := "Open Database Test.MDB "
endif
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test.mdb' )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Table MainTable "
else
Win1.Edit1.VALUE := "Open Table MainTable "
endif
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from MainTable",oCon,3,3 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Add 10 Records "
else
Win1.Edit1.VALUE := "Add 10 Records "
endif
FOR x = 1 TO 10 STEP 1
oRS:ADDNEW()
oRS:fields:item("number"):value := x
oRS:fields:item("sqare"):value := x*x
oRS:UPDATE()
Next
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Close RecordSet & Close Connection "
else
Win1.Edit1.VALUE := "Close RecordSet & Close Connection "
endif
oRS:Close()
oCon:CLOSE()
Return Nil
Proc mywork2
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Database Test.MDB "
else
Win1.Edit1.VALUE := "Open Database Test.MDB "
endif
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test.mdb' )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Table MainTable "
else
Win1.Edit1.VALUE := "Open Table MainTable "
endif
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from MainTable",oCon,3,3 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Show Records "
else
Win1.Edit1.VALUE := "Show Records "
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Number          Sqare"
else
Win1.Edit1.VALUE := " Number          Sqare"
endif
nOutput := oRS:RecordCount
IF nOutput = 0
Return 0
ENDIF
oRS:MOVEFIRST()
FOR x = 1 TO nOutput STEP 1
v1 := oRS:fields:item("Number"):value
v2 := oRS:fields:item("Sqare"):value
v1 = STR ( v1 )
v2 = STR ( v2 )
v3 := v1 + "         " + v2
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + v3
else
Win1.Edit1.VALUE := v3
endif
oRS:MOVENEXT()
Next
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Close RecordSet & Close Connection "
else
Win1.Edit1.VALUE := "Close RecordSet & Close Connection "
endif
oRS:Close()
oCon:CLOSE()
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ADODB Sample'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add 10 Records'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Show Records'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork2()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Database Test.MDB ') to Editbox (Edit1) of Window (Win1)",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test.mdb'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Table MainTable ') to Editbox (Edit1) of Window (Win1)",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from MainTable'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Add 10 Records ') to Editbox (Edit1) of Window (Win1)",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('number') Value To (x)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('sqare') Value To (x*x)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Close RecordSet & Close Connection ') to Editbox (Edit1) of Window (Win1)",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Database Test.MDB ') to Editbox (Edit1) of Window (Win1)",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test.mdb'",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Table MainTable ') to Editbox (Edit1) of Window (Win1)",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from MainTable'",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Show Records ') to Editbox (Edit1) of Window (Win1)",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Number          Sqare') to Editbox (Edit1) of Window (Win1)",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","nOutput := ADODB RecordSet (oRS) , Get Records Count",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nOutput = 0 )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nOutput Step 1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = ADODB RecordSet (oRS) Get Field ('Number') Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = ADODB RecordSet (oRS) Get Field ('Sqare') Value",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = CONVERT v1 TO STRING",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = CONVERT v2 TO STRING",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = v1 + '         ' + v2",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v3) to Editbox (Edit1) of Window (Win1)",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Close RecordSet & Close Connection ') to Editbox (Edit1) of Window (Win1)",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
Return
*-------------------------------------------------------------------*
