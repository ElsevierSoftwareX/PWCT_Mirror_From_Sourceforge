*---------------------------------------------------------------------------*
* Time : 23:58:07    Date : 07/15/2012
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


Resistance R_LESSON8_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON8_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 575 ;
HEIGHT 425 ;
ICON "PWCTICON" ;
TITLE "Compteur  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Exit " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

@ 57 ,27 LABEL lbl1 ;
VALUE "Compter de : " ;
WIDTH 124 ;
HEIGHT 32 ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
@ 57 ,276 LABEL lbl2 ;
VALUE "à :" ;
WIDTH 50 ;
HEIGHT 32 ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
@ 56 ,144 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 124 ;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} ;
NUMERIC 

@ 55 ,309 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 124 ;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} ;
NUMERIC 

@ 114 ,30 EDITBOX edit1;
WIDTH 509 ;
HEIGHT 212;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
@ 54 ,438 BUTTONEX btn1;
CAPTION "Compter ";
ON CLICK compter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit()
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Fermer L'Application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc compter()
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x=num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON8
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Compteur  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Date",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Compter de : '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'à :'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Compter '",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action compter",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure compter()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x=num1 To num2 Step 1)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
Return
*-------------------------------------------------------------------*
