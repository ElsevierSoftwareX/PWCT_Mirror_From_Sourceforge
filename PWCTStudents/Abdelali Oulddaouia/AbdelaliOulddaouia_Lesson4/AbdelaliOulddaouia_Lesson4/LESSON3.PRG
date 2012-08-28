*---------------------------------------------------------------------------*
* Time : 16:15:21    Date : 07/15/2012
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


Resistance R_LESSON3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 405 ;
HEIGHT 352 ;
ICON "PWCTICON" ;
TITLE "Login Window  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 244 ,147 BUTTONEX btn1;
CAPTION "Login ";
ON CLICK logform()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 186 ,176 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 186 ,13 LABEL lbl1 ;
VALUE "Nom de l'utilisateur : " ;
WIDTH 163 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 13 ,62 IMAGE image1;
PICTURE "Login_Large.jpg";
STRETCH ;
WIDTH 270 HEIGHT 130
@ 142 ,176 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 146 ,13 LABEL lbl2 ;
VALUE "Message : " ;
WIDTH 161 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Sortir " Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logform()
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Entrer le Nom de l'Utilisateur S'il Vous Plait ","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 376 ;
HEIGHT 280 ;
ICON "PWCTICON" ;
TITLE "Bienvenue  " + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 88 ,5 LABEL lbl3 ;
VALUE message + " " + user ;
WIDTH 340 ;
HEIGHT 52 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 201 ,133 BUTTONEX btn2;
CAPTION "Sortir ";
ON CLICK closewin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Georgia" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure close()
MyOut := MSGOKCANCEL("Voulez vous fermer l'application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
return
procedure closewin2()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login Window  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Nom de l'utilisateur : '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Login_Large.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message : '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Sortir ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Date",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Entrer le Nom de l'Utilisateur S'il Vous Plait ' Title 'Error ' Type: Message Exclamation",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Bienvenue  ' + user",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",87,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message + ' ' + user",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Sortir '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin2",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez vous fermer l'application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2 ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
