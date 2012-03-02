*---------------------------------------------------------------------------*
* Time : 07:04:23    Date : 02/29/2012
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


Resistance R_WELCOME_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WELCOME_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 535 ;
HEIGHT 337 ;
ICON "PWCTICON" ;
TITLE "„” Œœ„Ï  ﬁ‰ÌÂ «·»—„Ã… »œÊ‰ ﬂÊœ" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 182 ,402 LABEL lbl1 ;
VALUE "«œŒ· «·«”„" ;
WIDTH 81 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 86 ,189 LABEL lbl2 ;
VALUE " ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 231 ;
HEIGHT 42 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 183 ,142 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 239 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 233 ,305 BUTTONEX btn2;
CAPTION " —ÕÌ» ";
ON CLICK welcome()  ;
WIDTH 114 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "Œ—ÊÃ " Action myclose()
END POPUP
END MENU
@ 15 ,0 IMAGE image1;
PICTURE "eng.jpg";
STRETCH ;
WIDTH 127 HEIGHT 275
@ 52 ,223 LABEL lbl3 ;
VALUE "‰«œÏ „” Œœ„Ï " ;
WIDTH 146 ;
HEIGHT 49 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure welcome()
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "„—Õ»« »ﬂ Ì« "+mytext
MyOut := MSGBOX(mytext," —”«·… «· —ÕÌ»")
return
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WELCOME
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„” Œœ„Ï  ﬁ‰ÌÂ «·»—„Ã… »œÊ‰ ﬂÊœ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«œŒ· «·«”„'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' —ÕÌ» '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action welcome",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'eng.jpg'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '‰«œÏ „” Œœ„Ï '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure welcome ( Event : CLICK )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '„—Õ»« »ﬂ Ì« '+mytext",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title ' —”«·… «· —ÕÌ»' Type: Message Box",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
Return
*-------------------------------------------------------------------*
