*---------------------------------------------------------------------------*
* Time : 05:21:14    Date : 10/24/2011
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


Resistance R_SMSTEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SMSTEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 744 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE "smstest" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 299 ,116 BUTTONEX btn1;
CAPTION "Send Message";
ON CLICK SMSSend()  ;
WIDTH 150 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 15 ,10 LABEL lbl1 ;
VALUE "port" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 51 ,9 LABEL lbl2 ;
VALUE "phone Number" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 95 ,9 LABEL lbl3 ;
VALUE "Message" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 48 ,118 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 88 ,117 EDITBOX edit1;
WIDTH 310 ;
HEIGHT 200;
VALUE "SMS Message test using PWCT" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 12 ,118 COMBOBOX combo1;
WIDTH 200 ;
HEIGHT 300;
ITEMS {"COM1","COM2","COM3","COM4","COM5","COM6","COM7","COM8"} ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 87 ,461 EDITBOX edit2;
WIDTH 251 ;
HEIGHT 205;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 51 ,458 LABEL lbl4 ;
VALUE "Log" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 297 ,460 BUTTONEX btn2;
CAPTION "Read";
ON CLICK myread()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,328 BUTTONEX btn3;
CAPTION "Start";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action myread()
@ 10 ,457 BUTTONEX btn4;
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
SS_ESARES("Circuits\Main\Main\Main",56)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'smstest'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send Message'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SMSSend",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'port'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'phone Number'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Message'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'COM1','COM2','COM3','COM4','COM5','COM6','COM7','COM8'}",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Log'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Read'",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myread",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Start'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close Service'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myend",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SMSSend",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cNumber = win1.text1.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","cMessage = win1.edit1.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'SMSDLL.DLL' , Function 'SMSSendMessage' , Parameters cMessage,cNumber",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","cLog = win1.edit2.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Message sent') to string (cLog)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := cLog",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myread",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cLog = win1.edit2.Value",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Public mymsg",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","mymsg = String, length = 320",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'SMSDLL.DLL' , Function 'SMSGetNextMessage' , Parameters @mymsg",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout != 0 )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mymsg) to string (cLog)",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := cLog",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYEND",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'SMSDLL.DLL' , Function 'SMSStopSerice' , Parameters NIL",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","nPort = win1.combo1.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'SMSDLL.DLL' , Function 'SMSStartService' , Parameters nPort,115200,2,8,0,0,'+96650",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = 1 )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","cLog = win1.edit2.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Connection Done (True)') to string (cLog)",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := cLog",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
Return
*-------------------------------------------------------------------*
