#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:07:07    Date : 11/21/2008
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


Resistance RNQEIC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RNQEIC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 523 ;
HEIGHT 175 ;
ICON "PWCTICON" ;
TITLE "Gif" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "GIF89.Gif89.1" , 14 , 7 , 499 , 46)
oActiveX:Load()
Public oActiveX2
oActiveX2 := TActiveX():New( "Win1", "GIF89.Gif89.1" , 75 , 107 , 309 , 46)
oActiveX2:Load()
END WINDOW

oactivex:OOLE:glass := .t.
oactivex:OOLE:autosize := .f.
oactivex:OOLE:FileName := "test.gif"
oactivex2:OOLE:glass := .t.
oactivex2:OOLE:autosize := .f.
oactivex2:OOLE:FileName := "test2.gif"
ACTIVATE WINDOW win1



End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX2 )",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.glass := .t.",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.autosize := .f.",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.FileName := 'test.gif'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.glass := .t.",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.autosize := .f.",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.FileName := 'test2.gif'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,28)
Return
*-------------------------------------------------------------------*
