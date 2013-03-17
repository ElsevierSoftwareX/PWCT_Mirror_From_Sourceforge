*---------------------------------------------------------------------------*
* Time : 21:30:38    Date : 03/13/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_NAHIM_1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NAHIM_1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 576 ;
HEIGHT 249 ;
ON MOUSECLICK add()  ;
ICON "PWCTICON" ;
TITLE "«·√»Ì÷   " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 77 ,189 BUTTONEX btn1;
CAPTION "≈€·«ﬁ «· ÿ»Ìﬁ ";
ON CLICK CLOSE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK addd()  ;
ICON "PWCTICON" ;
TITLE "«·√’›—  " ;
CHILD ;
BACKCOLOR {255,255,0} 

@ 118 ,321 BUTTONEX btn2;
CAPTION " ﬂ»Ì— ";
ON CLICK ZOOM()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 189 ,321 BUTTONEX btn3;
CAPTION " Ê”Ìÿ ";
ON CLICK CLE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 260 ,321 BUTTONEX btn4;
CAPTION "≈€·«ﬁ ";
ON CLICK CLOSED()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure addd()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·√Õ÷—  " ;
CHILD ;
BACKCOLOR {128,255,0} 

END WINDOW

ACTIVATE WINDOW win3
EndIF

return
procedure CLOSE()
win1.Release ( )
return
procedure ZOOM()
win2.Maximize ( )
return
procedure CLE()
win2.Center ( )
return
procedure CLOSED()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_NAHIM_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·√»Ì÷   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action add",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ «· ÿ»Ìﬁ '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CLOSE",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add - Event : MOUSECLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«·√’›—  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action addd",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZOOM",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' Ê”Ìÿ '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CLE",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '≈€·«ﬁ '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CLOSED",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addd - Event : MOUSECLICK",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '«·√Õ÷—  '",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CLOSE ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZOOM ( Event : CLICK )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CLE ( Event : CLICK )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CLOSED ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
