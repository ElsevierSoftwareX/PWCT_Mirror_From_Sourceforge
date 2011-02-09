*---------------------------------------------------------------------------*
* Time : 11:35:56    Date : 12/02/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_PDFTEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PDFTEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 725 ;
HEIGHT 544 ;
ICON "PWCTICON" ;
TITLE "ActiveX (Internet.Explorer.2) - Show PDF" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "Internet.Explorer.2" , 48 , 11 , 669 , 417)
oActiveX:Load()
@ 10 ,11 BUTTONEX btn1;
CAPTION "Show PDF File";
ON CLICK mypdf()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mypdf
StartUpFolder := GetStartUpFolder()
oactivex:OOLE:navigate ( startupfolder + "\test.pdf" )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PDFTEST
START DOUBLES
Return
*-------------------------------------------------------------------*
