*---------------------------------------------------------------------------*
* Time : 00:48:10    Date : 03/24/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 197 ;
ICON "PWCTICON" ;
TITLE "Get Screen Shot  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 18 ,75 BUTTONEX btn1;
CAPTION "Get Desktop Screenshot and Save it to Test.JPG ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pWork()  ;
WIDTH 340 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 67 ,195 BUTTONEX btn2;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
StartUpFolder := GetStartUpFolder()
cSaveFile := StartUpFolder+"\Test.JPG"
DesktopWidth = GETDESKTOPWIDTH()
DesktopHeight = GETDESKTOPHEIGHT()
myout = CALLDLL32("SaveToJpgEx","JPG.DLL",0, cSaveFile,DesktopWidth,DesktopHeight)
Execute File cSaveFile
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Get Screen Shot  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Get Desktop Screenshot and Save it to Test.JPG '",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","cSaveFile = StartUpFolder+'\Test.JPG'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","DesktopWidth = Get Desktop Width",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DesktopHeight = Get Desktop Height",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'JPG.DLL' , Function 'SaveToJpgEx' , Parameters 0, cSaveFile,DesktopWidth,DesktopHeight",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File cSaveFile",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
