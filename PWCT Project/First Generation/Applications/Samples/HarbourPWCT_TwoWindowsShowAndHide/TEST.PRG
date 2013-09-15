*---------------------------------------------------------------------------*
* Time : 14:23:31    Date : 09/15/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.09.15
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "First  " ;
MAIN ;
BACKCOLOR {255,255,255} 
@ 165 ,195 BUTTONEX btn1;
CAPTION "Show Second ";
ON CLICK pSecond()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pSecond()
win1.Hide ( )
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE pSecondRelease()  ;
ICON "PWCTICON" ;
TITLE "Second  " ;
CHILD ;
BACKCOLOR {64,0,64} 
@ 182 ,301 BUTTONEX btn2;
CAPTION "Show First ";
ON CLICK pFirst()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win2
EndIF
IF iswindowdefined(win2)
win2.Show ( )
ENDIF
return
procedure pFirst()
win1.Show ( )
win2.Hide ( )
return
procedure pSecondRelease()
win1.Show ( )
return

End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'First  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Second '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSecond",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSecond ( Event : CLICK )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Hide ( )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Second  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action pSecondRelease",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Show First '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pFirst",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( iswindowdefined(win2) )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Show ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pFirst ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Hide ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSecondRelease - Event : RELEASE",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
Return
*-------------------------------------------------------------------*
