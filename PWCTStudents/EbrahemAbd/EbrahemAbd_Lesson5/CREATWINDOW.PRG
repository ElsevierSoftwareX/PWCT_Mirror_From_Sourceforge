*---------------------------------------------------------------------------*
* Time : 11:17:20    Date : 03/02/2012
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


Resistance R_CREATWINDOW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CREATWINDOW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 430 ;
HEIGHT 360 ;
ICON "PWCTICON" ;
TITLE "«‰‘«¡ ‰«›–…  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "ICO\ABN.ANI" ;
BACKCOLOR {255,128,255} ;
NOTIFYICON "ICO\ACADMY.ICO" ;
NOTIFYTOOLTIP " «· ÿ»Ìﬁ «·Œ«„” ›Ï „‰Õ…  ﬁ‰Ì… «·»—Ã…»œÊ‰ ﬂÊœ" 

win1.Center ( )
@ 57 ,275 LABEL lbl1 ;
VALUE "⁄—÷ «·‰«›–… " ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 106 ,275 LABEL lbl2 ;
VALUE "«— ›«⁄ «·‰«›–… " ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 150 ,275 LABEL lbl3 ;
VALUE "·Ê‰ Œ·›Ì…«·‰«›–… " ;
WIDTH 110 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 197 ,275 LABEL lbl4 ;
VALUE "⁄‰Ê«‰ «·‰«›–… " ;
WIDTH 115 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0}
@ 55 ,52 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 104 ,52 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 143 ,52 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
FONTCOLOR {0,0,0} 

@ 190 ,51 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 272 ,255 BUTTONEX btn1;
CAPTION "«‰‘«¡ «·‰«›–… ";
ON CLICK creat()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,65 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure creat()
width := win1.text1.Value
height := win1.text2.Value
colornum := win1.text3.Value
colornum = VAL ( colornum )
title := win1.text4.Value
IF width==0 .or. height==0
MyOut := MSGINFO("«œŒ· »Ì«‰«  «·‰«›–… ","⁄›Ê« ")
Return 0
ENDIF
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH width ;
HEIGHT height ;
ICON "PWCTICON" ;
TITLE "&title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {colornum} 

win2.Center ( )
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure exit()
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_CREATWINDOW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«‰‘«¡ ‰«›–…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,16)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄—÷ «·‰«›–… '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«— ›«⁄ «·‰«›–… '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '·Ê‰ Œ·›Ì…«·‰«›–… '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '⁄‰Ê«‰ «·‰«›–… '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«‰‘«¡ «·‰«›–… '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action creat",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure creat ( Event : CLICK )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","width = win1.text1.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","height = win1.text2.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = win1.text3.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","colornum = CONVERT colornum TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text4.Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( width==0 .or. height==0 )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«œŒ· »Ì«‰«  «·‰«›–… ' Title '⁄›Ê« ' Type: Message Info",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&title'",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",114,119)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",128,128)
Return
*-------------------------------------------------------------------*
