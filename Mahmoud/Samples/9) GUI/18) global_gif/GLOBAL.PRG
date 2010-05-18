#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 08:36:49    Date : 12/31/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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
WIDTH 524 ;
HEIGHT 456 ;
ICON "PWCTICON" ;
TITLE "Spanning the Globe" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ -8 ,-2 IMAGE image3;
PICTURE "CargoGlobe\Space.bmp";
STRETCH ;
WIDTH 520 HEIGHT 430
@ 10 ,278 IMAGE image1;
PICTURE "CargoGlobe\SFrance.jpg";
WIDTH 96 HEIGHT 110
@ 9 ,140 IMAGE image2;
PICTURE "CargoGlobe\Mahmoud_Fayed.jpg";
STRETCH ;
WIDTH 101 HEIGHT 112
Public oActiveX
oActiveX := TActiveX():New( "Win1", "GIF89.Gif89.1" , 182 , 155 , 203 , 203)
oActiveX:Load()
@ 371 ,401 BUTTONEX btn1;
CAPTION "Close";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK closeapp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

oactivex:OOLE:glass := .t.
oactivex:OOLE:autosize := .f.
oactivex:OOLE:FileName := "cargoglobe\logo.gif"
win1.Center ( )
ACTIVATE WINDOW win1

DO showimage
Proc showimage
win1.image3.Visible := .T.
win1.image1.Visible := .T.
win1.image2.Visible := .T.
Return Nil
Proc closeapp
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_GLOBAL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Harbour Launch",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Captain",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.glass := .t.",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.autosize := .f.",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.FileName := 'cargoglobe\logo.gif'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showimage",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Crew",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showimage",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image3.Visible := .T.",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Visible := .T.",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image2.Visible := .T.",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Engines",0,0)
Return
*-------------------------------------------------------------------*
