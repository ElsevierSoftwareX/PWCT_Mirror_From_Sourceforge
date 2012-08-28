*---------------------------------------------------------------------------*
* Time : 00:06:11    Date : 07/15/2012
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


Resistance R_LESSON1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 398 ;
HEIGHT 352 ;
ICON "PWCTICON" ;
TITLE "Pourcentage  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 81 ,118 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 138 ,118 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,134 BUTTONEX btn1;
CAPTION "Calculer Pourcentage ";
ON CLICK Calc()  ;
WIDTH 167 HEIGHT 25 ;
FONT "Georgia" SIZE 12 ;
TOOLTIP ""
@ 254 ,118 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 81 ,7 LABEL lbl1 ;
VALUE "Note " ;
WIDTH 110 ;
HEIGHT 29 ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0}
@ 138 ,8 LABEL lbl2 ;
VALUE "TotNotes " ;
WIDTH 110 ;
HEIGHT 29 ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0}
@ 255 ,9 LABEL lbl3 ;
VALUE "Pourcentage " ;
WIDTH 106 ;
HEIGHT 26 ;
FONT "Georgia" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0}
@ 11 ,15 LABEL lbl4 ;
VALUE "Calcul De Pourcentage Pour Un Etudiant " ;
WIDTH 357 ;
HEIGHT 29 ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Calc()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
Pers = ALLTRIM ( Pers )
win1.text3.Value := Pers+" "+"%"
return


End Of Resistance

INIT PROCEDURE Init_LESSON1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Pourcentage  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Calculer Pourcentage '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Note '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'TotNotes '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Pourcentage '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Calcul De Pourcentage Pour Un Etudiant '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = All Trim Pers",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers+' '+'%'",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
Return
*-------------------------------------------------------------------*
