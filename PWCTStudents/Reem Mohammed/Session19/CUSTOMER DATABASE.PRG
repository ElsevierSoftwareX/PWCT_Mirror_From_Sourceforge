*---------------------------------------------------------------------------*
* Time : 13:25:39    Date : 09/08/2011
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


Resistance R_CUSTOMER_DATABASE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMER_DATABASE_15speed1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 603 ;
HEIGHT 534 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 237 ,37 IMAGE image1;
PICTURE "CLIPART_OF_25029_SMJPG_2.JPG";
STRETCH ;
WIDTH 300 HEIGHT 258
@ 118 ,11 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 163 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 73 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 208 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 277 ,325 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 90 ,285 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,283 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,282 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 210 ,284 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 89 ,133 LABEL lbl1 ;
VALUE "Customer name" ;
WIDTH 138 ;
HEIGHT 27 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 129 ,183 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 170 ,186 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 209 ,188 LABEL lbl4 ;
VALUE "Cash" ;
WIDTH 60 ;
HEIGHT 29 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action closewin()
END POPUP
POPUP "first "
MENUITEM "first record" Action firstrecord()
END POPUP
POPUP "Next"
MENUITEM "next record" Action nextrecord()
END POPUP
POPUP "previous"
MENUITEM "prev record" Action prevrecord()
END POPUP
POPUP "last"
MENUITEM "last record" Action lastrecord()
END POPUP
END MENU
END WINDOW

DO showrec
ACTIVATE WINDOW win1
EndIF

Proc closewin
win1.Release ( )
Return Nil
Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=customer.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from customers",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closeSys
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax=0
Return 0
ENDIF
oname := oRS:fields:item("customer name"):value
oRequest := oRS:fields:item("Request"):value
ophone := oRS:fields:item("phone"):value
ocash := oRS:fields:item("cash"):value
win1.text1.Value := oname
win1.text2.Value := oRequest
win1.text3.Value := ophone
win1.text4.Value := ocash
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrec
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrec
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No more Next data","You can't")
ELSE
DO showrec
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
MyOut := MSGBOX("No More previous data","you can't")
ELSE
DO showrec
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_CUSTOMER_DATABASE
START DOUBLES
Return
*-------------------------------------------------------------------*
