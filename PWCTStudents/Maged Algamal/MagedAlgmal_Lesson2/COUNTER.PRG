*---------------------------------------------------------------------------*
* Time : 22:38:42    Date : 02/03/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 650 ;
HEIGHT 319 ;
ICON "PWCTICON" ;
TITLE "«·⁄œ«œ «·ÌœÊÏ (maged algmal) " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 89 ,294 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 90 ;
HEIGHT 69 ;
AUTOSIZE ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 201 ,438 LABEL lbl2 ;
VALUE "by / maged algmal" ;
WIDTH 212 ;
HEIGHT 30 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 177 ,244 BUTTONEX btn1;
CAPTION " «»œ«¡ «·⁄œ ";
ON CLICK count()  ;
WIDTH 141 HEIGHT 45 ;
TOOLTIP ""
@ 245 ,532 BUTTONEX btn2;
CAPTION "«€·«ﬁ ";
ON CLICK close()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 24 ,435 IMAGE image1;
PICTURE "COMPTE-TOURS-ANALOGIQUE-AVEC-COMPTEUR-D-HEURES-MOTEUR-POUR-BATEAUX-232172.JPG";
STRETCH ;
WIDTH 176 HEIGHT 166
@ 10 ,11 IMAGE image2;
PICTURE "COUNT-WORKOUT.JPG";
STRETCH ;
WIDTH 188 HEIGHT 251
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Count
Count := win1.lbl1.Value
Count = VAL ( Count )
Count := Count+1
Count = STR ( Count )
Count = ALLTRIM ( Count )
win1.lbl1.Value := Count
Return Nil
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·⁄œ«œ «·ÌœÊÏ (maged algmal) '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'by / maged algmal'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' «»œ«¡ «·⁄œ '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«€·«ﬁ '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'COMPTE-TOURS-ANALOGIQUE-AVEC-COMPTEUR-D-HEURES-MOTEUR-POUR-BATEAUX-232172.JPG'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'COUNT-WORKOUT.JPG'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Count",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Count = win1.lbl1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO Numeric",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Count = Count+1",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO STRING",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Count = All Trim Count",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Count",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
