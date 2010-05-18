#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 21:38:31    Date : 01/16/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.4 (Nova) [2006-2009]  
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
 * (Noun) *
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


Resistance R739791686_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R739791686_1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 700 ;
HEIGHT 450 ;
ON MOVE mymove()  ;
ICON "PWCTICON" ;
TITLE "Image Resize" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 20 ,481 BUTTONEX btn2;
CAPTION "load Image";
ON CLICK loadimg()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 80 ,481 BUTTONEX btn1;
CAPTION "Save Image";
ON CLICK saveimg()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DEFINE WINDOW win2 ;
AT 50 ,50 ;
WIDTH 400 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

@ 0 ,0 IMAGE image1;
PICTURE "Imagename.jpg";
STRETCH ;
WIDTH 400 HEIGHT 400
END WINDOW

Activate Window win1 nowait
Activate Window win2
Proc mymove
win2.Row := (win1.row)+40
win2.Col := (win1.col)+40
Return Nil
Proc saveimg
PutFile := PutFile ( { {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
win2.SetFocus ( )
win2.SaveAs ( putfile )
MyOut := MSGBOX("Process Done","Save Image")
Return Nil
Proc loadimg
GetFile := GetFile ( { {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
win2.image1.Picture := getfile
MyOut := MSGBOX("Process Done","Load Image")
Return Nil


End Of Resistance

INIT PROCEDURE Init_SUBWIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOVE",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win2 )",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",32,41)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win1 No Wait",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win2",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymove",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Row := (win1.row)+40",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Col := (win1.col)+40",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saveimg",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SetFocus ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SaveAs ( putfile )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Process Done' Title 'Save Image' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure loadimg",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","win2.image1.Picture := getfile",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Process Done' Title 'Load Image' Type: Message Box",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
