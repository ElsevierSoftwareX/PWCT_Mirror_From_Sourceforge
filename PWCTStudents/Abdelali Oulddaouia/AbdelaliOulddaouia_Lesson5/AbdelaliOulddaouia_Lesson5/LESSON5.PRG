*---------------------------------------------------------------------------*
* Time : 17:47:38    Date : 07/15/2012
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


Resistance R_LESSON5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 429 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "Conception Nouvelle Fenetre  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 81 ,103 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 88 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 81 ,308 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 87 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 148 ,103 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 215 ,103 TEXTBOX text4;
HEIGHT 28 ;
WIDTH 203 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 81 ,10 LABEL lbl1 ;
VALUE "Hauteur : " ;
WIDTH 87 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 80 ,226 LABEL lbl2 ;
VALUE "Largeur : " ;
WIDTH 83 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 216 ,10 LABEL lbl3 ;
VALUE "Couleur : " ;
WIDTH 87 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 150 ,10 LABEL lbl4 ;
VALUE "Titre : " ;
WIDTH 77 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 270 ,154 BUTTONEX btn1;
CAPTION "Créer Forme ";
ON CLICK creerform()  ;
WIDTH 110 HEIGHT 28 ;
FONT "Georgia" SIZE 12 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Exit " Action closewin1()
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

Proc closewin1
MyOut := MSGOKCANCEL("Voulez Vous Fermer L'Application ? ","Fermer L'Application ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure creerform()
hauteur := win1.text1.Value
largeur := win1.text2.Value
titre := win1.text3.Value
couleur := win1.text4.Value
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH &largeur ;
HEIGHT &hauteur ;
ICON "PWCTICON" ;
TITLE "&titre " ;
MODAL ;
NOSIZE ;
BACKCOLOR {&couleur} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_LESSON5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Conception Nouvelle Fenetre  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Hauteur : '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Largeur : '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Couleur : '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Titre : '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Créer Forme '",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action creerform",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Date",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin1",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Fermer L'Application ? ' Title 'Fermer L'Application ' Type: Message Ok/Cancel",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure creerform ( Event : CLICK )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","hauteur = win1.text1.Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","largeur = win1.text2.Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","titre = win1.text3.Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","couleur = win1.text4.Value",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '&titre '",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",121,126)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
Return
*-------------------------------------------------------------------*
