*---------------------------------------------------------------------------*
* Time : 17:24:41    Date : 02/29/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 465 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "«·‘«‘… «·—∆Ì”Ì…  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "ICO\ABN.ANI" ;
BACKCOLOR {0,0,255} ;
NOTIFYICON "ICO\ACADMY.ICO" 

win1.Center ( )
@ 34 ,285 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„ " ;
WIDTH 198 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 74 ,285 LABEL lbl2 ;
VALUE "ﬂ·„… «·”— " ;
WIDTH 196 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 33 ,65 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {0,0,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} 

@ 75 ,64 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {0,0,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} ;
PASSWORD 

@ 155 ,265 BUTTONEX btn1;
CAPTION "œŒÊ· ";
FONTCOLOR {0,0,0};
BACKCOLOR {47,145,217};
ON CLICK login()  ;
WIDTH 98 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 154 ,71 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {47,145,217};
PICTURE "ICO\CLOSE.BMP";
ON CLICK exit()  ;
WIDTH 101 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "„·› "
MENUITEM "«€·«ﬁ " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "Ã«Â“";
RAISED

KEYBOARD

CLOCK;
AMPM 

DATE

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure login()
txtname := win1.text1.Value
txtpas := win1.text2.Value
IF txtname=="" .or. txtpas==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„ Ê ﬂ·„… «·”— ","⁄›Ê« ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "ICO\ACADMY.ICO" ;
TITLE "  „—Õ»«  "+txtname ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,0,255} 

win2.Center ( )
@ -4 ,15 LABEL lbl3 ;
VALUE " " ;
WIDTH 459 ;
HEIGHT 295 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {255,255,255}
@ 327 ,218 BUTTONEX btn3;
CAPTION " —ÕÌ» ";
ON CLICK wel()  ;
WIDTH 102 HEIGHT 46 ;
FONT "" SIZE 16 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 700 ;
Action an()
@ 325 ,77 BUTTONEX btn4;
CAPTION ">>>>—ÃÊ⁄";
ON CLICK back()  ;
WIDTH 121 HEIGHT 47 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win2"), -20),0x400000,0x100000))
ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure exit()
win1.Release ( )
return
procedure wel()
win2.lbl3.Value := "  „—Õ»«  "+txtname
return
Proc an
font := win2.lbl3.FontSize
h := win2.lbl3.Height
hh := h+1
s := font+1
win2.lbl3.Height := hh
win2.lbl3.FontSize := s
Return Nil
procedure back()
MyOut := MSGOKCANCEL("Â·  —Ìœ «·⁄Êœ… ··‘«‘… «·—∆Ì”Ì… ","⁄Êœ… ")
IF myout=True
win2.Release ( )
ELSE
Return 0
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‘«‘… «·—∆Ì”Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«”„ «·„” Œœ„ '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'ﬂ·„… «·”— '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'œŒÊ· '",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«€·«ﬁ ' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Date",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login ( Event : CLICK )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","txtname = win1.text1.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","txtpas = win1.text2.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( txtname=='' .or. txtpas=='' )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„ Ê ﬂ·„… «·”— ' Title '⁄›Ê« ' Type: Message Exclamation",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '  „—Õ»«  '+txtname",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",112,117)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' '",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",121,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' —ÕÌ» '",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action wel",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '>>>>—ÃÊ⁄'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action back",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win2'",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure wel ( Event : CLICK )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.Value := '  „—Õ»«  '+txtname",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure an",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","font = win2.lbl3.FontSize",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","h = win2.lbl3.Height",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","hh = h+1",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","s = font+1",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.Height := hh",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.FontSize := s",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure back ( Event : CLICK )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·⁄Êœ… ··‘«‘… «·—∆Ì”Ì… ' Title '⁄Êœ… ' Type: Message Ok/Cancel",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=True )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
Return
*-------------------------------------------------------------------*
