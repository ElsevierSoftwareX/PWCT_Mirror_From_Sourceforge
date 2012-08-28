*---------------------------------------------------------------------------*
* Time : 00:46:49    Date : 07/16/2012
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


Resistance R_LESSON9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Compteur  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Ouvrir " Action MSGINFO( charger() )
MENUITEM "Sauvgarder " Action enregistrer()
MENUITEM "Exit " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

@ 273 ,47 BUTTONEX btn1;
CAPTION "Charger un Fichier ";
ON CLICK charger()  ;
WIDTH 196 HEIGHT 31 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 273 ,246 BUTTONEX btn2;
CAPTION "Enregistrer un Fichier ";
ON CLICK enregistrer()  ;
WIDTH 196 HEIGHT 31 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 38 ,14 EDITBOX edit1;
WIDTH 462 ;
HEIGHT 216;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
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
procedure charger()
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" Ouvrir " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile=false
Return 0
ENDIF
Text = MEMOREAD ( GetFile )
win1.edit1.Value := text
return
procedure enregistrer()
text := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Enregistrer " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Ecrir Dans Ce Fichier ? ","Ce Fichier Existe Déjà ")
IF myout=false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,text)
FCLOSE(RPWI_TH)
return


End Of Resistance

INIT PROCEDURE Init_LESSON9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Compteur  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Ouvrir ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Sauvgarder ' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Date",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Charger un Fichier '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action charger",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Enregistrer un Fichier '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action enregistrer",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure charger ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile=false )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String Text",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := text",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure enregistrer ( Event : CLICK )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.edit1.Value",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Ecrir Dans Ce Fichier ? ' Title 'Ce Fichier Existe Déjà ' Type: Message Ok/Cancel",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","write String text to File PutFile",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
