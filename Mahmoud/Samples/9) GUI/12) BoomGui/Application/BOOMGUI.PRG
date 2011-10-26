*---------------------------------------------------------------------------*
* Time : 01:38:40    Date : 10/22/2011
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


Resistance R_BOOMGUI_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BOOMGUI_18smart1() code
myimages := {}
AADD( myimages , "appdata\expl1.bmp")
AADD( myimages , "appdata\expl2.bmp")
AADD( myimages , "appdata\expl3.bmp")
AADD( myimages , "appdata\expl4.bmp")
AADD( myimages , "appdata\expl5.bmp")
AADD( myimages , "appdata\expl6.bmp")
AADD( myimages , "appdata\expl7.bmp")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 379 ;
HEIGHT 256 ;
ICON "PWCTICON" ;
TITLE "Boom Sample - by Stephen France" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 10 ,80 BUTTONEX btn1;
CAPTION "Press";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Boom()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 80 ,80 IMAGE image1;
ID 1 ;
PICTURE "";
WIDTH 128 HEIGHT 128
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Boom
FOR x = 1 TO 7 STEP 1
win1.image1.Picture := myimages[x]
win1.image1.Visible := True
SLEEPTIME  0.01
win1.image1.Visible := False
SLEEPTIME  0.01
Next


End Of Resistance

INIT PROCEDURE Init_BOOMGUI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array myimages",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl1.bmp' To Array myimages",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl2.bmp' To Array myimages",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl3.bmp' To Array myimages",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl4.bmp' To Array myimages",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl5.bmp' To Array myimages",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl6.bmp' To Array myimages",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'appdata\expl7.bmp' To Array myimages",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Boom Sample - by Stephen France'",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Press'",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : ''",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Boom",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 7 Step 1)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Picture := myimages[x]",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Visible := True",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 0.01",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Visible := False",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","SLEEP TIME 0.01",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",43,43)
Return
*-------------------------------------------------------------------*
