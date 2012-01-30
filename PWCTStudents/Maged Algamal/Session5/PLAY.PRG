*---------------------------------------------------------------------------*
* Time : 04:10:44    Date : 01/29/2012
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


Resistance R_PLAY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PLAY_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 407 ;
HEIGHT 411 ;
ICON "PWCTICON" ;
TITLE "«Ì‰ «‰« (maged algmal)" ;
MAIN ;
BACKCOLOR {64,128,128} 

@ 49 ,102 BUTTONEX btn1;
CAPTION "«‰« Â‰«";
ON CLICK hide1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 197 ,102 BUTTONEX btn2;
CAPTION "·« »· Â‰«";
ON CLICK hide2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 330 ,266 BUTTONEX btn3;
CAPTION "«€·ﬁ „‰ Â‰«";
ON CLICK closeapplication()  ;
WIDTH 114 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 329 ,8 BUTTONEX btn4;
CAPTION "‰’ÌÕ…";
FONTCOLOR {0,0,0};
ON CLICK MSGINFO( 'game over' ) ;
WIDTH 114 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 0 ,251 IMAGE image1;
PICTURE "2103746545_L.JPG";
STRETCH ;
WIDTH 147 HEIGHT 300
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

procedure hide1()
win1.btn1.Hide ( )
win1.btn2.Show ( )
return
procedure hide2()
win1.btn2.Hide ( )
win1.btn1.Show ( )
return
procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PLAY
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«Ì‰ «‰« (maged algmal)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«‰« Â‰«'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide1",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '·« »· Â‰«'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«€·ﬁ „‰ Â‰«'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '‰’ÌÕ…'",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'game over'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '2103746545_L.JPG'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1 ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
Return
*-------------------------------------------------------------------*
