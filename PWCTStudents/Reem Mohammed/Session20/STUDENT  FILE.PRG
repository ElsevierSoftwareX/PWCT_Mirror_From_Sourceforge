*---------------------------------------------------------------------------*
* Time : 00:27:28    Date : 09/10/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_STUDENT__FILE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_STUDENT__FILE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
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
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 172 ,28 LISTBOX list1;
WIDTH 288 ;
HEIGHT 185 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {233,233,233} ;
FONTCOLOR {0,0,0}
@ 159 ,310 IMAGE image1;
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
IF mymax >0
FOR x = 1 TO mymax STEP 1
oname := oRS:fields:item("student name"):value
onan := oRS:fields:item("nationalty"):value
ogread := oRS:fields:item("gread"):value
onum := oRS:fields:item("student number"):value
win1.list1.AddItem ( oname+"-"+onan+"-"+ogread+"-"+onum+"-" )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_STUDENT__FILE
START DOUBLES
Return
*-------------------------------------------------------------------*
