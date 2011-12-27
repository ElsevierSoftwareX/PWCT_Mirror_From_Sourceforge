*---------------------------------------------------------------------------*
* Time : 18:13:22    Date : 12/27/2011
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


Resistance R_123_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_123_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 721 ;
HEIGHT 461 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {0,0,128} 

@ 11 ,242 LABEL lbl1 ;
VALUE "My First project" ;
WIDTH 295 ;
HEIGHT 38 ;
FONT "Cooper Black" SIZE 18  ;
BOLD ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {234,183,28}
@ 68 ,10 COMBOBOX combo1;
WIDTH 209 ;
HEIGHT 300;
ITEMS {"Personal Information","My Resume"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 375 ,600 BUTTONEX btn1;
CAPTION "Close";
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
@ 373 ,305 BUTTONEX btn2;
CAPTION "Load Info";
ON CLICK ActiveTap()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
@ 377 ,10 BUTTONEX btn3;
CAPTION "About";
ON CLICK MSGINFO( "Made With PWCT" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Black" SIZE 12 ;
TOOLTIP ""
@ 66 ,500 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"X1","X2"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure ActiveTap()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 769 ;
HEIGHT 466 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
BACKCOLOR {255,255,255} 

@ 2 ,2 IMAGE image1;
PICTURE "C:\USERS\BASELDIABELMASRI\DESKTOP\123\CEH_LOGO.JPG";
WIDTH 745 HEIGHT 422
@ 44 ,23 BUTTONEX btn4;
CAPTION "Load My Certificates";
ON CLICK MSGINFO( "MCSE,MCITP,A+" ) ;
WIDTH 177 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 388 ,629 BUTTONEX btn5;
CAPTION "Back";
ON CLICK Back2MainWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure CloseApp()
win1.Release ( )
return
procedure Back2MainWin()
win2.Minimize ( )
return


End Of Resistance

INIT PROCEDURE Init_123
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'My First project'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Personal Information','My Resume'}",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Load Info'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ActiveTap",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'About'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Made With PWCT'",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'X1','X2'}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ActiveTap ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Window Title'",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'C:\USERS\BASELDIABELMASRI\DESKTOP\123\CEH_LOGO.JPG'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Load My Certificates'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'MCSE,MCITP,A+'",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Back'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Back2MainWin",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Back2MainWin ( Event : CLICK )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Minimize ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*
