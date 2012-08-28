*---------------------------------------------------------------------------*
* Time : 01:31:15    Date : 07/16/2012
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


Resistance R_LESSON10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Grand Nombre  " ;
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

@ 35 ,19 LABEL lbl1 ;
VALUE "Nombre : " ;
WIDTH 132 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 35 ,123 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 159 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} ;
NUMERIC 

@ 85 ,123 LISTBOX list1;
WIDTH 159 ;
HEIGHT 200 ;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
@ 35 ,291 BUTTONEX btn1;
CAPTION "Ajouter un Nombre ";
ON CLICK ajouter()  ;
WIDTH 179 HEIGHT 29 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 292 ,121 BUTTONEX btn2;
CAPTION "Grande Nombre ";
ON CLICK grand()  ;
WIDTH 159 HEIGHT 33 ;
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
procedure ajouter()
add := win1.text1.Value
add = STR ( add )
win1.list1.AddItem ( add )
return
procedure grand()
counte := win1.list1.ItemCount
IF counte = 0
MyOut := MSGBOX("List vide ","Error ")
Return 0
ENDIF
max := win1.list1.item(1)
IF counte = 1
MyOut := MSGBOX(max,"Grand Nombre ")
Return 0
ENDIF
max = VAL ( max )
FOR x = 2 TO counte STEP 1
maxi := win1.list1.item(x)
maxi = VAL ( maxi )
IF maxi > max
max := maxi
ENDIF
Next
max = STR ( max )
MyOut := MSGBOX(max,"Grand Nombre ")
return


End Of Resistance

INIT PROCEDURE Init_LESSON10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Grand Nombre  '",1,5)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Nombre : '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ajouter un Nombre '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ajouter",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Grande Nombre '",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action grand",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ajouter ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","add = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","add = CONVERT add TO STRING",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( add )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure grand ( Event : CLICK )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","counte = win1.list1.ItemCount",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( counte = 0 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'List vide ' Title 'Error ' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","max = win1.list1.item(1)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( counte = 1 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message max Title 'Grand Nombre ' Type: Message Box",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","max = CONVERT max TO Numeric",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To counte Step 1)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","maxi = win1.list1.item(x)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","maxi = CONVERT maxi TO Numeric",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( maxi > max )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","max = maxi",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","max = CONVERT max TO STRING",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message max Title 'Grand Nombre ' Type: Message Box",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
Return
*-------------------------------------------------------------------*
