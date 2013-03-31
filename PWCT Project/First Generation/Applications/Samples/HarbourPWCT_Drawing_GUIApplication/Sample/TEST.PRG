*---------------------------------------------------------------------------*
* Time : 18:53:39    Date : 10/21/2011
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
WIDTH 800 ;
HEIGHT 600 ;
ON INIT draw()  ;
ICON "PWCTICON" ;
TITLE "Draw Examples - by Stephen France" ;
MAIN ;
BACKCOLOR {236,233,216} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Draw
DRAW LINE IN WINDOW win1;
AT 250,300;
TO 400,450;
PENCOLOR {255,128,0};
PENWIDTH 6

DRAW RECTANGLE IN WINDOW Win1;
AT 30,620;
TO 280,752;
PENCOLOR {255,255,0};
PENWIDTH 6;
FILLCOLOR {255,128,255}

DRAW ROUNDRECTANGLE IN WINDOW Win1;
AT 10,600;
TO 300,772;
ROUNDWIDTH 16;
ROUNDHEIGHT 16;
PENCOLOR {255,255,128};
PENWIDTH 6

DRAW Ellipse IN WINDOW Win1;
AT 400,10;
TO 550,150;
PENCOLOR {0,128,255};
PENWIDTH 6;
FILLCOLOR {128,255,0}

DRAW ARC IN WINDOW Win1 AT 300,200 TO 450,350;
FROM RADIAL 475,80;
TO RADIAL 155,686;
PENCOLOR {0,128,255};
PENWIDTH 6

DRAW ARC IN WINDOW win1 AT 200,390 TO 350,550;
FROM RADIAL 155,686;
TO RADIAL 475,80;
PENCOLOR {255,255,0};
PENWIDTH 6

DRAW PIE IN WINDOW win1 AT 400,620 TO 550,772;
FROM RADIAL 250, 240;
TO RADIAL 400, 772;
PENCOLOR {255,255,255};
PENWIDTH 6;
FILLCOLOR {0,255,255}

DRAW PANEL IN WINDOW win1;
AT 10,10;
TO 60,210
DRAW TEXT IN WINDOW Win1;
AT 30,100;
VALUE "Panel";
FONT "Cambria" SIZE 16 ;
ITALIC 

DRAW Box IN WINDOW win1;
AT 80,80;
TO 280,120
DRAW TEXT IN WINDOW win1;
AT 100,84;
VALUE "BOX";
FONT "Arial" SIZE 12 

DRAWPOLYGON("win1" , {{10,400},{90,420},{170,500},{130,400},{170,300},{90,380}} ,;
{192,192,192}, ;
4 , ;
{228,228,228} ;
)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Draw Examples - by Stephen France'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action draw",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Draw",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Line from 300,250 to 450,400",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 620,30 to 752,280",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Round Rectangle from 600,10 to 772,300",31,38)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Ellipse from 10,400 to 150,550",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Draw ARCellipse from 200,300 to 350,450  Cut vector from 80,475 to 686,155",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Draw ARCellipse from 390,200 to 550,350  Cut vector from 686,155 to 80,475",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Draw PIEellipse from 620,400 to 772,550  From center, vector to 240,250  From center, vector to 772,",58,64)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Panel AT 10,10 TO 210,60",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Panel'",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 80,80 to 120,280",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'BOX'",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Polygon Co-ords Y,X {{10,400},{90,420},{170,500},{130,400},{170,300},{90,380}}",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*
