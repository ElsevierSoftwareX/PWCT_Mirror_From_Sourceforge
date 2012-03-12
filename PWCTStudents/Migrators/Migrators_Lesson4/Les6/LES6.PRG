*---------------------------------------------------------------------------*
* Time : 23:36:05    Date : 02/26/2012
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


Resistance R_LES6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES6_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 324 ;
ICON "PWCTICON" ;
TITLE "Login  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 11 ,329 IMAGE image1;
PICTURE "Login.jpg";
STRETCH ;
WIDTH 172 HEIGHT 121
@ 152 ,45 LABEL lbl1 ;
VALUE "username " ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 152 ,147 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 211 ,118 BUTTONEX btn1;
CAPTION "Login ";
ON CLICK Login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 87 ,47 LABEL lbl2 ;
VALUE "Message " ;
WIDTH 99 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 84 ,147 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "File "
MENUITEM "Exit " Action Close()
END POPUP
POPUP "Edit "
END POPUP
POPUP "Tools "
END POPUP
POPUP "Help "
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Login
Message := win1.text2.Value
username := win1.text1.Value
IF username==""
MyOut := MSGExclamation("√œŒ· «”„ «·„” Œœ„"," Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 222 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«  "+username ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 40 ,17 LABEL lbl3 ;
VALUE Message+" "+username ;
WIDTH 450 ;
HEIGHT 72 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 128 ,35 BUTTONEX btn2;
CAPTION "<< Back ";
ON CLICK Close2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc Close
MyOut := MSGOKCANCEL(" Â·  —Ìœ ≈‰Â«¡ «·»—‰«„Ã ø "," ≈€·«ﬁ «·»—‰«„Ã ")
IF myout==True
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc Close2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Login.jpg'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'username '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Login",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Edit '",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Tools '",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help '",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Date",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Login",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Message = win1.text2.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","username = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( username=='' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '√œŒ· «”„ «·„” Œœ„' Title ' Œÿ√' Type: Message Exclamation",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '„—Õ»«  '+username",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : Message+' '+username",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< Back '",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close2",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Â·  —Ìœ ≈‰Â«¡ «·»—‰«„Ã ø ' Title ' ≈€·«ﬁ «·»—‰«„Ã ' Type: Message Ok/Cancel",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==True )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close2",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
Return
*-------------------------------------------------------------------*
