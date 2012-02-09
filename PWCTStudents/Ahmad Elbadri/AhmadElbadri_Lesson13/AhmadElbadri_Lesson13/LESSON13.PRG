*---------------------------------------------------------------------------*
* Time : 14:04:45    Date : 02/09/2012
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


Resistance R_LESSON13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 514 ;
HEIGHT 551 ;
ICON "PWCTICON" ;
TITLE "Finder" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 25 ,201 LABEL lbl1 ;
VALUE "Search By :" ;
WIDTH 102 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 58 ,212 RADIOGROUP radio1;
OPTIONS {"Name","Address","Phone"};
WIDTH 80 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 171 ,152 TEXTBOX textfind;
ON CHANGE search()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 211 ,176 LABEL lbl2 ;
VALUE "Search Results :" ;
WIDTH 151 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,255}
@ 258 ,74 GRID Grid1;
WIDTH 355 ;
HEADERS {"ID","Name","Address","Phone"};
WIDTHS {50,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

SET AUTOADJUST ON
ACTIVATE WINDOW win1
EndIF

Proc search
win1.Grid1.DeleteAllItems ( )
name1 := win1.textfind.Value
cat1 := win1.radio1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
IF cat1=1
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab where name like '"+ name1+ "%'",oCon,3,3 )
ELSEIF cat1=2
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab where address like '"+name1+"%'",oCon,3,3 )
ELSEIF cat1=3
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab where phone like '"+name1+"%'",oCon,3,3 )
ELSE
MyOut := MSGExclamation("Please Select An Option","Option Missing")
oCon:CLOSE()
Return 0
ENDIF
nMax := oRS:RecordCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
id := oRS:fields:item("id"):value
ID = STR ( ID )
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.Grid1.AddItem ( {id,cname,caddress,cphone} )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Finder'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By :'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RadioGroup ( radio1 ) , Options : {'Name','Address','Phone'}",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textfind  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action search",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search Results :'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'ID','Name','Address','Phone'}",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = win1.textfind.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","cat1 = win1.radio1.Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cat1=1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab where name like ''+ name1+ '%''",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( cat1=2 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab where address like ''+name1+'%''",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( cat1=3 )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab where phone like ''+name1+'%''",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Select An Option' Title 'Option Missing' Type: Message Exclamation",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","id = ADODB RecordSet (oRS) Get Field ('id') Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ID = CONVERT ID TO STRING",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {id,cname,caddress,cphone} )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
