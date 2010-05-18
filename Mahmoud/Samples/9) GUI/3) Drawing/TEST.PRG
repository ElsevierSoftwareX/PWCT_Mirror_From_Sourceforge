#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 11:17:33    Date : 12/11/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 800 ;
HEIGHT 600 ;
ICON "PWCTICON" ;
TITLE "Draw Examples" ;
MAIN ;
BACKCOLOR {236,233,216} 

END WINDOW

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
ACTIVATE WINDOW win1



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Line from 300,250 to 450,400",12,17)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 620,30 to 752,280",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Round Rectangle from 600,10 to 772,300",25,32)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Ellipse from 10,400 to 150,550",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Draw ARCellipse from 200,300 to 350,450  Cut vector from 80,475 to 686,155",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Draw ARCellipse from 390,200 to 550,350  Cut vector from 686,155 to 80,475",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Draw PIEellipse from 620,400 to 772,550  From center, vector to 240,250  From center, vector to 772,",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Panel AT 10,10 TO 210,60",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Panel'",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 80,80 to 120,280",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'BOX'",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Polygon Co-ords Y,X {{10,400},{90,420},{170,500},{130,400},{170,300},{90,380}}",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,82)
Return
*-------------------------------------------------------------------*
