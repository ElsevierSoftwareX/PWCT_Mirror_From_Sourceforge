*---------------------------------------------------------------------------*
* Time : 14:53:34    Date : 09/16/2011
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


Resistance R_CUSTOMER_DATABASE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMER_DATABASE_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 603 ;
HEIGHT 544 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {244,148,216} 

@ 257 ,25 IMAGE image1;
PICTURE "REEM.JPG";
STRETCH ;
WIDTH 166 HEIGHT 237
@ 118 ,14 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 163 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 73 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 208 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 446 ,467 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {255,0,128};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 329 ,237 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,0};
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 278 ,341 BUTTONEX btndel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,255};
ON CLICK deleterecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 327 ,478 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,0};
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 328 ,358 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
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
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 129 ,183 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 170 ,186 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 209 ,188 LABEL lbl4 ;
VALUE "Cash" ;
WIDTH 60 ;
HEIGHT 29 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
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
DO mode WITH 2
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
IF mymax > 0
oname := oRS:fields:item("customer name"):value
oRequest := oRS:fields:item("Request"):value
ophone := oRS:fields:item("phone"):value
ocash := oRS:fields:item("cash"):value
ELSE
oname := ""
oRequest := ""
ophone := ""
ocash := ""
ENDIF
win1.text1.Value := oname
win1.text2.Value := oRequest
win1.text3.Value := ophone
win1.text4.Value := ocash
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No more Next data","You can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
MyOut := MSGBOX("No More previous data","you can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterecord
MyOut := MSGOKCANCEL("Are You Sure ??","Delete")
IF myout = true
mymax := oRS:RecordCount
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
ENDIF
DO showrec
ENDIF
DO showrec
ENDIF
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnNext.Enabled := false
win1.btnprev.Enabled := false
win1.btnfirst.Enabled := false
win1.btnlast.Enabled := false
win1.btnsave.Enabled := true
win1.btnedit.Enabled := false
win1.btncancel.Enabled := true
win1.btndel.Enabled := false
win1.btnclose.Enabled := false
ENDIF
IF p1 = 2
win1.btnNext.Enabled := true
win1.btnprev.Enabled := true
win1.btnfirst.Enabled := true
win1.btnlast.Enabled := true
win1.btnclose.Enabled := true
win1.btnedit.Enabled := true
win1.btndel.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
oname := win1.text1.Value
oRequest := win1.text2.Value
ophone := win1.text3.Value
ocash := win1.text4.Value
oRS:fields:item("customer name"):value := oname
oRS:fields:item("Request"):value := oRequest
oRS:fields:item("phone"):value := ophone
oRS:fields:item("cash"):value := ocash
oRS:UPDATE()
Return Nil
Proc cancelrecord
DO mode WITH 2
DO showrec
Return Nil


End Of Resistance

INIT PROCEDURE Init_CUSTOMER_DATABASE
START DOUBLES
Return
*-------------------------------------------------------------------*
