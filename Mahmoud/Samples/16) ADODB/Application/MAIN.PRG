#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:08:33    Date : 05/03/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.2 (Expert) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance R8555908324_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R8555908324_1() code
SET AUTOADJUST ON
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

Proc mywork
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Database Test.MDB "
else
Win1.Edit1.VALUE := "Open Database Test.MDB "
endif
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test.mdb' )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Table MainTable "
else
Win1.Edit1.VALUE := "Open Table MainTable "
endif
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from MainTable" , OCON, 3, 3)
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
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test.mdb' )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Open Table MainTable "
else
Win1.Edit1.VALUE := "Open Table MainTable "
endif
public oRS
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Database Test.MDB ') to Editbox (Edit1) of Window (Win1)",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test.mdb'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Table MainTable ') to Editbox (Edit1) of Window (Win1)",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from MainTable'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Add 10 Records ') to Editbox (Edit1) of Window (Win1)",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
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
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Database Test.MDB ') to Editbox (Edit1) of Window (Win1)",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Open Table MainTable ') to Editbox (Edit1) of Window (Win1)",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from MainTable'",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Show Records ') to Editbox (Edit1) of Window (Win1)",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Number          Sqare') to Editbox (Edit1) of Window (Win1)",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","nOutput := ADODB RecordSet (oRS) , Get Records Count",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nOutput = 0 )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nOutput Step 1)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = ADODB RecordSet (oRS) Get Field ('Number') Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = ADODB RecordSet (oRS) Get Field ('Sqare') Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = CONVERT v1 TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = CONVERT v2 TO STRING",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = v1 + '         ' + v2",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (v3) to Editbox (Edit1) of Window (Win1)",111,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Close RecordSet & Close Connection ') to Editbox (Edit1) of Window (Win1)",118,122)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
