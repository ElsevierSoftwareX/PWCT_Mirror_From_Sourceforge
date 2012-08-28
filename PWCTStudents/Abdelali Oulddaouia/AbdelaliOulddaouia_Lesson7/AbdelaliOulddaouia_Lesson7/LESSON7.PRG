*---------------------------------------------------------------------------*
* Time : 23:19:31    Date : 07/15/2012
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


Resistance R_LESSON7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 605 ;
HEIGHT 255 ;
ICON "PWCTICON" ;
TITLE "Au nom de Dieu le Miséricordieux  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Exit " Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

@ 87 ,181 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 239 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 87 ,62 LABEL lbl1 ;
VALUE "Votre Nom : " ;
WIDTH 119 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 86 ,430 BUTTONEX btn1;
CAPTION "Afficher ";
ON CLICK sayhello()  ;
WIDTH 103 HEIGHT 35 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close()
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Fermer L'Application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc sayhello()
sayhello := win1.text1.Value
sayhello = ALLTRIM ( sayhello )
IF sayhello==""
MyOut := MSGExclamation("Entrez S'Il Vous Plait Votre Nom ","Error ")
ELSE
MyOut := MSGBOX("Bienvenue " + sayhello,"Bienvenue ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Au nom de Dieu le Miséricordieux  '",1,5)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Votre Nom : '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Afficher '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sayhello",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close()",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sayhello()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","sayhello = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","sayhello = All Trim sayhello",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( sayhello=='' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Entrez S'Il Vous Plait Votre Nom ' Title 'Error ' Type: Message Exclamation",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Bienvenue ' + sayhello Title 'Bienvenue ' Type: Message Box",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
