*---------------------------------------------------------------------------*
* Time : 02:26:59    Date : 03/02/2012
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


Resistance R_NNNNNNN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NNNNNNN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 358 ;
HEIGHT 249 ;
ICON "PWCTICON" ;
TITLE " »”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
MAIN ;
BACKCOLOR {0,255,0} 

DEFINE MAIN MENU
POPUP " „·› "
MENUITEM " Œ—ÊÃ " Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

END STATUSBAR

@ 25 ,35 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 171 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 25 ,251 LABEL lbl1 ;
VALUE " «·«”„ " ;
WIDTH 75 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 79 ,225 BUTTONEX btn1;
CAPTION " «· —ÕÌ» ";
ON CLICK myhello()  ;
WIDTH 102 HEIGHT 37 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 65 ,37 IMAGE image1;
PICTURE "E:\PWCT\LESSON 7‰«ﬁ’\IMAGES.JPG";
STRETCH ;
WIDTH 166 HEIGHT 126
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
mytext = ALLTRIM ( mytext )
mytext := "«Â·« Ê”Â·« Ì« " + mytext
MyOut := MSGBOX(mytext," «· —ÕÌ» ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_NNNNNNN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' »”„ «··Â «·—Õ„‰ «·—ÕÌ„ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP ' „·› '",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' Œ—ÊÃ ' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' «·«”„ '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' «· —ÕÌ» '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'E:\PWCT\LESSON 7‰«ﬁ’\IMAGES.JPG'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '«Â·« Ê”Â·« Ì« ' + mytext",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title ' «· —ÕÌ» ' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
