*---------------------------------------------------------------------------*
* Time : 08:48:17    Date : 08/15/2011
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


Resistance R_PATIENT_FILE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PATIENT_FILE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 925 ;
HEIGHT 496 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ -4 ,-6 IMAGE image2;
PICTURE "HOSPITAL1.JPG";
STRETCH ;
WIDTH 937 HEIGHT 472
@ 151 ,79 LABEL lbl1 ;
VALUE "phone" ;
WIDTH 89 ;
HEIGHT 32 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 60 ,43 LABEL lbl2 ;
VALUE "patient name" ;
WIDTH 149 ;
HEIGHT 31 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 102 ,65 LABEL lbl3 ;
VALUE "address" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 67 ,195 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 109 ,191 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 155 ,188 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 207 ,232 BUTTONEX btn1;
CAPTION "save record";
ON CLICK saverec()  ;
WIDTH 106 HEIGHT 33 ;
FONT "Britannic Bold" SIZE 14 ;
TOOLTIP ""
@ 392 ,61 BUTTONEX btn2;
CAPTION "Close";
ON CLICK myClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14 ;
TOOLTIP ""
@ 31 ,470 GRID Grid1;
WIDTH 385 ;
HEIGHT 234 ;
HEADERS {"Patient name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,213,234} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 286 ,708 BUTTONEX btn3;
CAPTION "show Records";
ON CLICK showrec()  ;
WIDTH 126 HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myClose
win1.Release ( )
Return Nil
Proc saverec
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from patient",oCon,3,3 )
oRS:ADDNEW()
oname := win1.text1.Value
oaddress := win1.text2.Value
ophone := win1.text3.Value
oRS:fields:item("patient name"):value := oname
oRS:fields:item("address"):value := oaddress
oRS:fields:item("phone"):value := ophone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" Done ","ok")
Return Nil
Proc showrec
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from patient",oCon,3,3 )
mymax := oRS:RecordCount
oRS:MOVEFIRST()
FOR x = 1 TO mymax STEP 1
oname := oRS:fields:item("patient name"):value
oaddress := oRS:fields:item("address"):value
ophone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {oname,oaddress,ophone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_PATIENT_FILE
START DOUBLES
Return
*-------------------------------------------------------------------*
