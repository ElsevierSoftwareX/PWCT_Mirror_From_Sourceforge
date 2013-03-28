*---------------------------------------------------------------------------*
* Time : 04:31:25    Date : 10/23/2011
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


Resistance R_SUBWIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SUBWIN_18smart1() code
if !iswindowdefined( win1 )
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
EndIF

if !iswindowdefined( win2 )
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
EndIF

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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Image Resize'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOVE : Action mymove()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'load Image'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action loadimg()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Image'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saveimg()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Window Title'",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",35,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Imagename.jpg'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win1 No Wait",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win2",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymove",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Row := (win1.row)+40",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Col := (win1.col)+40",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saveimg",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SetFocus ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SaveAs ( putfile )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Process Done' Title 'Save Image' Type: Message Box",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure loadimg",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","win2.image1.Picture := getfile",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Process Done' Title 'Load Image' Type: Message Box",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
