*---------------------------------------------------------------------------*
* Time : 17:38:41    Date : 02/27/2012
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
WIDTH 423 ;
HEIGHT 251 ;
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
@ 34 ,255 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„ " ;
WIDTH 198 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 74 ,255 LABEL lbl2 ;
VALUE "ﬂ·„… «·”— " ;
WIDTH 196 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 33 ,35 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {0,0,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} 

@ 75 ,34 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BOLD ;
BACKCOLOR {0,0,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} ;
PASSWORD 

@ 155 ,235 BUTTONEX btn1;
CAPTION "œŒÊ· ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK login()  ;
WIDTH 98 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 154 ,41 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "ICO\CLOSE.BMP";
ON CLICK exit()  ;
WIDTH 101 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
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

@ 10 ,13 LABEL lbl3 ;
VALUE " " ;
WIDTH 471 ;
HEIGHT 116 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {255,255,255}
@ 310 ,153 BUTTONEX btn3;
CAPTION " —ÕÌ» ";
ON CLICK wel()  ;
WIDTH 101 HEIGHT 75 ;
FONT "Old Antic Decorative" SIZE 24 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action an()
END WINDOW

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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","txtname = win1.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","txtpas = win1.text2.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( txtname=='' .or. txtpas=='' )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„ Ê ﬂ·„… «·”— ' Title '⁄›Ê« ' Type: Message Exclamation",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '  „—Õ»«  '+txtname",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",92,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' —ÕÌ» '",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action wel",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure wel ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.Value := '  „—Õ»«  '+txtname",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure an",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","font = win2.lbl3.FontSize",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","h = win2.lbl3.Height",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","hh = h+1",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","s = font+1",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.Height := hh",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.FontSize := s",132,132)
Return
*-------------------------------------------------------------------*
