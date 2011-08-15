*---------------------------------------------------------------------------*
* Time : 11:24:59    Date : 08/15/2011
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


Resistance R_PATIENT_FILE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PATIENT_FILE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 925 ;
HEIGHT 513 ;
ICON "PWCTICON" ;
TITLE "patient database" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -5 ,-14 IMAGE image2;
PICTURE "HOSPITAL1.JPG";
STRETCH ;
WIDTH 947 HEIGHT 495
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
FONTCOLOR {0,0,128} 

@ 109 ,196 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

@ 155 ,193 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

@ 268 ,232 BUTTONEX btn1;
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
@ 30 ,439 GRID Grid1;
WIDTH 420 ;
HEIGHT 259 ;
HEADERS {"Patient name","address","phone","Gender"};
WIDTHS {120,100,100,100} ;
FONT "Comic Sans MS" SIZE 12 ;
BACKCOLOR {255,213,234} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 303 ,715 BUTTONEX btn3;
CAPTION "show Records";
ON CLICK showrec()  ;
WIDTH 126 HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14 ;
TOOLTIP ""
@ 204 ,76 LABEL lbl4 ;
VALUE "Gender" ;
WIDTH 89 ;
HEIGHT 32 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 205 ,191 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

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
ogender := win1.text4.Value
oRS:fields:item("patient name"):value := oname
oRS:fields:item("address"):value := oaddress
oRS:fields:item("phone"):value := ophone
oRS:fields:item("Gender"):value := ogender
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
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
oname := oRS:fields:item("patient name"):value
oaddress := oRS:fields:item("address"):value
ophone := oRS:fields:item("phone"):value
ogender := oRS:fields:item("gender"):value
win1.grid1.AddItem ( {oname,oaddress,ophone,ogender} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_PATIENT_FILE
START DOUBLES
Return
*-------------------------------------------------------------------*
