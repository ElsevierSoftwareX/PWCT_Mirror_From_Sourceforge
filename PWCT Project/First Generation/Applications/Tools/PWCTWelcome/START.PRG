*---------------------------------------------------------------------------*
* Time : 09:23:42    Date : 06/13/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.12
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 766 ;
HEIGHT 406 ;
ON MOUSECLICK MoveActiveWindow()  ;
ICON "PWCTICON" ;
TITLE "Welcome to PWCT world  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {255,255,255} 
win1.Center ( )
@ -2 ,0 IMAGE image7;
PICTURE "P8";
STRETCH ;
WIDTH 769 HEIGHT 34
DRAW RECTANGLE IN WINDOW WIN1;
AT 0,0;
TO 406,766
@ 55 ,292 IMAGE image1;
PICTURE "P1";
ON CLICK p1()  ;
STRETCH ;
WIDTH 170 HEIGHT 160
@ 55 ,66 IMAGE image2;
PICTURE "P2";
ON CLICK p2()  ;
STRETCH ;
WIDTH 170 HEIGHT 160
@ 55 ,534 IMAGE image3;
PICTURE "P3";
ON CLICK p3()  ;
STRETCH ;
WIDTH 170 HEIGHT 160
@ 245 ,50 IMAGE image4;
PICTURE "P4";
ON CLICK p4()  ;
STRETCH ;
WIDTH 170 HEIGHT 160
@ 265 ,523 IMAGE image5;
PICTURE "P5";
ON CLICK p5()  ;
STRETCH ;
WIDTH 181 HEIGHT 118
@ 282 ,298 IMAGE image6;
PICTURE "P6";
ON CLICK p6()  ;
STRETCH ;
WIDTH 160 HEIGHT 86
@ 2 ,733 LABEL lbl1 ;
VALUE "X" ;
ON CLICK CloseApplication()  ;
WIDTH 30 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc CloseApplication
win1.Release ( )
Return Nil
Proc MoveActiveWindow
DO postmessage WITH GetActiveWindow(), 161 , 2, 0
Return Nil
procedure p1()
Execute File "https://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.9%20%28Art%29/Fayed_PWCT_1.9_Art.exe/download"
return
procedure p2()
Execute File "http://doublesvsoop.sourceforge.net/pwcthelp/PWCTEnvironment/Lesson1/lesson.htm"
return
procedure p3()
Execute File "http://doublesvsoop.sourceforge.net/pwcthelp/main.htm"
return
procedure p4()
Execute File "http://doublesvsoop.sourceforge.net/pwctforum/"
return
procedure p6()
Execute File "http://www.facebook.com/doublesvsoop"
return
procedure p5()
Execute File "https://www.youtube.com/watch?v=wpxbfPxNHqg&list=PLpQiqjcu7CuHg6IRXVdt9MILiHG7JSVq7&index=1"
return

End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome to PWCT world  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action MoveActiveWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'P8'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 0,0 to 766,406",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'P1'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p1",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'P2'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p2",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'P3'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p3",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'P4'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p4",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'P5'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p5",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'P6'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action p6",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'X'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApplication",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApplication",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MoveActiveWindow",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure postmessage Parameters GetActiveWindow(), 161 , 2, 0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p1 - Event : CLICK",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'https://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.9%20%28Art%29/Fayed_PWCT_1.9_Art.exe/download'",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p2 - Event : CLICK",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'http://doublesvsoop.sourceforge.net/pwcthelp/PWCTEnvironment/Lesson1/lesson.htm'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p3 - Event : CLICK",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'http://doublesvsoop.sourceforge.net/pwcthelp/main.htm'",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p4 - Event : CLICK",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'http://doublesvsoop.sourceforge.net/pwctforum/'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p6 - Event : CLICK",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'http://www.facebook.com/doublesvsoop'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure p5 - Event : CLICK",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'https://www.youtube.com/watch?v=wpxbfPxNHqg&list=PLpQiqjcu7CuHg6IRXVdt9MILiHG7JSVq7&index=1'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
