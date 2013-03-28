#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:57:13    Date : 12/08/2008
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


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
myimages := {}
AADD( myimages , "appdata\expl1.bmp")
AADD( myimages , "appdata\expl2.bmp")
AADD( myimages , "appdata\expl3.bmp")
AADD( myimages , "appdata\expl4.bmp")
AADD( myimages , "appdata\expl5.bmp")
AADD( myimages , "appdata\expl6.bmp")
AADD( myimages , "appdata\expl7.bmp")
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 256 ;
HEIGHT 256 ;
ICON "PWCTICON" ;
TITLE "Boom" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 10 ,80 BUTTONEX btn1;
CAPTION "Press";
ON CLICK Boom()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 80 ,80 IMAGE image1;
ID 1 ;
PICTURE "";
WIDTH 128 HEIGHT 128
END WINDOW

ACTIVATE WINDOW win1

Proc Boom
FOR x = 1 TO 7 STEP 1
win1.image1.Picture := myimages[x]
win1.image1.Visible := .T.
SLEEPTIME  0.01
win1.image1.Visible := .F.
SLEEPTIME  0.01
Next
CALLDLL32("sndPlaySoundA","winmm.dll","appdata\boom.wav",0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_BOOMGUI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myimages",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl1.bmp' To Array myimages",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl2.bmp' To Array myimages",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl3.bmp' To Array myimages",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl4.bmp' To Array myimages",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl5.bmp' To Array myimages",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl6.bmp' To Array myimages",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl7.bmp' To Array myimages",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",9,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Boom",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 7 Step 1)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Picture := myimages[x]",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Visible := .T.",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 0.01",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Visible := .F.",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 0.01",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'sndPlaySoundA' , Parameters 'appdata\boom.wav',0",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*
