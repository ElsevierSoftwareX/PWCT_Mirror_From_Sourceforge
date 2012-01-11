*---------------------------------------------------------------------------*
* Time : 20:27:22    Date : 01/10/2012
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


Resistance R_HVAC_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HVAC_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 480 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
POPUP "HVAC "
MENUITEM "DIFFUSER " Action DIF()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
Proc DIF
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "DIFFUSER AMRSELIM.NET  " ;
CHILD ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 15 ,10 LABEL lbl1 ;
VALUE "AREA m " ;
WIDTH 63 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,164 LABEL lbl2 ;
VALUE "HIGHT " ;
WIDTH 54 ;
HEIGHT 25 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 13 ,332 LABEL lbl3 ;
VALUE "AIR CHANGE " ;
WIDTH 84 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 336 ,134 LABEL lbl4 ;
VALUE "AREA DIFFUSER " ;
WIDTH 106 ;
HEIGHT 26 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 13 ,74 TEXTBOX text1;
HEIGHT 25 ;
WIDTH 80 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 11 ,234 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 77 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 12 ,410 TEXTBOX text3;
HEIGHT 26 ;
WIDTH 81 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 69 ,110 TEXTBOX text4;
HEIGHT 32 ;
WIDTH 107 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 113 ,110 TEXTBOX text5;
HEIGHT 32 ;
WIDTH 107 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 71 ,14 BUTTONEX btn1;
CAPTION "CFM ";
ON CLICK CFM()  ;
WIDTH 67 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 118 ,12 LABEL lbl5 ;
VALUE "VELCITY " ;
WIDTH 62 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 153 ,108 TEXTBOX text6;
HEIGHT 32 ;
WIDTH 107 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 154 ,1 BUTTONEX btn2;
CAPTION "AREA DIFFUSER ";
ON CLICK ARE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
procedure CFM()
T1 := win2.text1.Value
T2 := win2.text2.Value
T3 := win2.text3.Value
X := 0.58821 *T1*T2*T3
win2.text4.Value := X
return
procedure ARE()
T4 := win2.text4.Value
T5 := win2.text5.Value
Y := T4*144/T5
win2.text6.Value := Y
return


End Of Resistance

INIT PROCEDURE Init_HVAC
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'HVAC '",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'DIFFUSER ' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DIF",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'DIFFUSER AMRSELIM.NET  '",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'AREA m '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'HIGHT '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'AIR CHANGE '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'AREA DIFFUSER '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",88,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",109,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'CFM '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CFM",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'VELCITY '",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",123,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",129,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'AREA DIFFUSER '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ARE",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",138,140)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CFM ( Event : CLICK )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","T1 = win2.text1.Value",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","T2 = win2.text2.Value",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","T3 = win2.text3.Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","X = 0.58821 *T1*T2*T3",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text4.Value := X",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ARE ( Event : CLICK )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","T4 = win2.text4.Value",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","T5 = win2.text5.Value",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Y = T4*144/T5",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text6.Value := Y",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
Return
*-------------------------------------------------------------------*
