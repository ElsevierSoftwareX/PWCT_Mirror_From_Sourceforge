*---------------------------------------------------------------------------*
* Time : 16:39:23    Date : 01/04/2012
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


Resistance R_APPLICATION5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 508 ;
ICON "PWCTICON" ;
TITLE "Application5" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 98 ,13 IMAGE image1;
PICTURE "ham.jpg";
ON MOUSEHOVER hide1()  ;
STRETCH ;
INVISIBLE ;
WIDTH 100 HEIGHT 100
@ 282 ,361 IMAGE image2;
PICTURE "ham.jpg";
ON MOUSEHOVER hide2()  ;
STRETCH ;
INVISIBLE ;
WIDTH 100 HEIGHT 100
@ 282 ,188 IMAGE image3;
PICTURE "ham.jpg";
ON MOUSEHOVER hide3()  ;
STRETCH ;
WIDTH 100 HEIGHT 100
@ 98 ,188 IMAGE image4;
PICTURE "ham.jpg";
ON MOUSEHOVER hide4()  ;
STRETCH ;
INVISIBLE ;
WIDTH 100 HEIGHT 100
@ 282 ,13 IMAGE image5;
PICTURE "ham.jpg";
ON MOUSEHOVER hide5()  ;
STRETCH ;
INVISIBLE ;
WIDTH 100 HEIGHT 100
@ 98 ,361 IMAGE image6;
PICTURE "ham.jpg";
ON MOUSEHOVER hide6()  ;
STRETCH ;
INVISIBLE ;
WIDTH 100 HEIGHT 100
@ 442 ,9 LABEL lbl1 ;
VALUE "Created by : Ahmad Elbadri....Using PWCT" ;
WIDTH 237 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 427 ,361 BUTTONEX btn1;
CAPTION "Exit";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK close()  ;
WIDTH 107 HEIGHT 38 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 10 ,136 LABEL lbl2 ;
VALUE "Catch The Hamster" ;
WIDTH 219 ;
HEIGHT 43 ;
FONT "Comic Sans MS" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
Proc hide1
win1.image1.Hide ( )
win1.image6.Show ( )
Return Nil
Proc hide2
win1.image2.Hide ( )
win1.image4.Show ( )
Return Nil
Proc hide3
win1.image3.Hide ( )
win1.image1.Show ( )
Return Nil
Proc hide4
win1.image4.Hide ( )
win1.image5.Show ( )
Return Nil
Proc hide5
win1.image5.Hide ( )
win1.image3.Show ( )
Return Nil
Proc hide6
win1.image6.Hide ( )
win1.image2.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Application5'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ham.jpg'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide1",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'ham.jpg'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'ham.jpg'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide3",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'ham.jpg'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide4",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'ham.jpg'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide5",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'ham.jpg'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action hide6",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Created by : Ahmad Elbadri....Using PWCT'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Exit'",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Catch The Hamster'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Hide ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image6.Show ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Hide ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image4.Show ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide3",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Hide ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide4",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image4.Hide ( )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image5.Show ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide5",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image5.Hide ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Show ( )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide6",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image6.Hide ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Show ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
