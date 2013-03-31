*---------------------------------------------------------------------------*
* Time : 23:50:32    Date : 10/19/2011
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
 * (Noun) *
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


Resistance R_STUDENT__FILE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_STUDENT__FILE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 429 ;
ICON "PWCTICON" ;
TITLE "Student Search" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 69 ,295 IMAGE image2;
PICTURE "ICON.JPG";
STRETCH ;
WIDTH 52 HEIGHT 50
@ 75 ,99 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Forte" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 75 ,340 BUTTONEX btn1;
CAPTION "Search";
ON CLICK search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 168 ,12 LISTBOX list1;
WIDTH 286 ;
HEIGHT 215 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {233,233,233} ;
FONTCOLOR {0,0,0}
@ 187 ,347 IMAGE image1;
PICTURE "A_GIRL_CARRYING_A_STACK_OF_BOOKS_0521-1005-0821-5935_SMU.JPG";
STRETCH ;
WIDTH 173 HEIGHT 197
@ 74 ,41 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 57 ;
HEIGHT 28 ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc search
oName := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=student.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from students where name like '"+ oname+ "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax >0
FOR x = 1 TO mymax STEP 1
oname := oRS:fields:item("name"):value
onan := oRS:fields:item("nationalty"):value
ograde := oRS:fields:item("grade"):value
onum := oRS:fields:item("number"):value
win1.list1.AddItem ( oname+"-"+onan+"-"+ograde+"-"+onum+"-" )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_STUDENT__FILE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Student Search'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'ICON.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'A_GIRL_CARRYING_A_STACK_OF_BOOKS_0521-1005-0821-5935_SMU.JPG'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","oName = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=student.mdb'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from students where name like ''+ oname+ '%''",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('name') Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","onan = ADODB RecordSet (oRS) Get Field ('nationalty') Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ograde = ADODB RecordSet (oRS) Get Field ('grade') Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","onum = ADODB RecordSet (oRS) Get Field ('number') Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( oname+'-'+onan+'-'+ograde+'-'+onum+'-' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record not found' Title 'sorry' Type: Message Box",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
