*---------------------------------------------------------------------------*
* Time : 03:36:52    Date : 10/21/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
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

oactivex:OOLE:glass := True
oactivex:OOLE:autosize := True
oactivex:OOLE:FileName := "test.gif"
oactivex2:OOLE:glass := True
oactivex2:OOLE:autosize := True
oactivex2:OOLE:FileName := "test2.gif"
ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Gif'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX2 )",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.glass := True",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.autosize := True",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.FileName := 'test.gif'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.glass := True",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.autosize := True",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.FileName := 'test2.gif'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
Return
*-------------------------------------------------------------------*
