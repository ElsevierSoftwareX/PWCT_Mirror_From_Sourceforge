*---------------------------------------------------------------------------*
* Time : 02:36:53    Date : 03/03/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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


Resistance R_AHMEDEID_LESSON7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AHMEDEID_LESSON7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 447 ;
HEIGHT 219 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
MAIN ;
NOSIZE ;
BACKCOLOR {255,128,192} 

DEFINE STATUSBAR 

DATE

CLOCK;
AMPM 

STATUSITEM "Ã«Â“"

END STATUSBAR

DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "Œ—ÊÃ " Action myexit()
END POPUP
END MENU
@ 65 ,237 LABEL lbl1 ;
VALUE "«·≈”‹‹‹‹‹‹‹‹„ " ;
WIDTH 103 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 65 ,22 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 98 ,138 BUTTONEX btn1;
CAPTION "«· —ÕÌ» ";
ON CLICK myhello()  ;
WIDTH 164 HEIGHT 42 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ -3 ,0 IMAGE image1;
PICTURE "welcom1.jpg";
STRETCH ;
WIDTH 433 HEIGHT 67
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myhello
mytext := win1.text1.Value
mytext := "√Â·« Ê ”Â·« Ì« :" + mytext
MyOut := MSGBOX(mytext,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_AHMEDEID_LESSON7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Date",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”‹‹‹‹‹‹‹‹„ '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ» '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello()",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'welcom1.jpg'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '√Â·« Ê ”Â·« Ì« :' + mytext",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title '«· —ÕÌ»' Type: Message Box",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
