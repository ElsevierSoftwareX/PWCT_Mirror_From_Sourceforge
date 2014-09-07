*---------------------------------------------------------------------------*
* Time : 20:42:57    Date : 09/07/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
Public nLastHeight
nLastHeight := 100
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "SplitResize  " ;
MAIN ;
BACKCOLOR {236,233,216} 

win1.Maximize ( )
DEFINE SPLITBOX ;
OF win1 ;
BOTTOM ;
HORIZONTAL 

if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
WIDTH 500 ;
HEIGHT nLastHeight ;
TITLE "  " ;
SPLITCHILD ;
NOCAPTION 

@ 10 ,10 BUTTONEX btn1;
CAPTION "test ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW
EndIF

if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
WIDTH 500 ;
HEIGHT 400 ;
TITLE "  " ;
SPLITCHILD ;
NOCAPTION 

@ 10 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
EndIF

End SPLITBOX

DEFINE TIMER Timer1 INTERVAL 100 ;
Action pResize()
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc pResize
Local nDif
IF win2.height !=nLastHeight
nDif := win2.height - nLastHeight
win2.btn1.height := win2.btn1.height + nDif
IF win2.btn1.height < 30
win2.btn1.height := 30
ELSEIF win2.btn1.height > 300
win2.btn1.height := 300
ENDIF
nLastHeight := win2.height
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public nLastHeight",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","nLastHeight = 100",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'SplitResize  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define SPLITBOX",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '  '",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'test '",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '  '",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End SPLITBOX",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 , Action : pResize() )",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pResize",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Local nDif",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win2.height !=nLastHeight )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nDif = win2.height - nLastHeight",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btn1.height = win2.btn1.height + nDif",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win2.btn1.height < 30 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btn1.height = 30",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( win2.btn1.height > 300 )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btn1.height = 300",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","nLastHeight = win2.height",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
