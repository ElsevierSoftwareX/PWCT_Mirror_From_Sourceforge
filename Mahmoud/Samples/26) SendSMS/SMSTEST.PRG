*---------------------------------------------------------------------------*
* Time : 07:01:51    Date : 11/04/2010
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


Resistance R_SMSTEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SMSTEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 881 ;
HEIGHT 488 ;
ICON "PWCTICON" ;
TITLE "smstest" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 369 ,126 BUTTONEX btn1;
CAPTION "Send Message";
ON CLICK SMSSend()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 75 ,20 LABEL lbl1 ;
VALUE "port" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 121 ,19 LABEL lbl2 ;
VALUE "phone Number" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 165 ,19 LABEL lbl3 ;
VALUE "Message" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 118 ,128 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 158 ,127 EDITBOX edit1;
WIDTH 330 ;
HEIGHT 200;
VALUE "SMS Message test using PWCT" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 72 ,128 COMBOBOX combo1;
WIDTH 200 ;
HEIGHT 300;
ITEMS {"COM1","COM2","COM3","COM4","COM5","COM6","COM7","COM8"} ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 97 ,471 EDITBOX edit2;
WIDTH 251 ;
HEIGHT 255;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 71 ,468 LABEL lbl4 ;
VALUE "Log" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 371 ,407 BUTTONEX btn2;
CAPTION "Read";
ON CLICK myread()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 12 ,19 BUTTONEX btn3;
CAPTION "Start";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action myread()
@ 410 ,292 BUTTONEX btn4;
CAPTION "Close Service";
ON CLICK myend()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

win1.timer1.Enabled := false
ACTIVATE WINDOW win1
EndIF

Proc SMSSend
cNumber := win1.text1.Value
cMessage := win1.edit1.Value
myout = CALLDLL32("SMSSendMessage","SMSDLL.DLL",cMessage,cNumber)
cLog := win1.edit2.Value
cLog := cLog + CHR(13) + CHR(10) + "Message sent"
win1.edit2.Value := cLog
Return Nil
Proc myread
win1.timer1.Enabled := false
cLog := win1.edit2.Value
Public mymsg
mymsg := space ( 320 )
myout = CALLDLL32("SMSGetNextMessage","SMSDLL.DLL",@mymsg)
IF myout != 0
cLog := cLog + CHR(13) + CHR(10) + mymsg
win1.edit2.Value := cLog
ENDIF
win1.timer1.Enabled := true
Return Nil
Proc MYEND
myout = CALLDLL32("SMSStopSerice","SMSDLL.DLL",NIL)
Return Nil
Proc mystart
nPort := win1.combo1.Value
myout = CALLDLL32("SMSStartService","SMSDLL.DLL",nPort,115200,2,8,0,0,"+966505031999")
IF myout = 1
cLog := win1.edit2.Value
cLog := cLog + CHR(13) + CHR(10) + "Connection Done (True)"
win1.edit2.Value := cLog
win1.timer1.Enabled := true
ELSE
Return 0
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SMSTEST
START DOUBLES
Return
*-------------------------------------------------------------------*
