*---------------------------------------------------------------------------*
* Time : 23:18:57    Date : 01/20/2012
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Win1" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 16 ,281 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 202 ;
HEIGHT 48 ;
FONT "MS Sans Serif" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 20 ,48 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 206 ;
VALUE "PCWT" ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,0,0} 

@ 269 ,131 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 270 ,20 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 70 ,54 IMAGE image1;
PICTURE "C:\USERS\MOHAMED NOUR\DESKTOP\375544_243570325713888_215206155216972_555497_213103631_N.JPG";
WIDTH 252 HEIGHT 151
@ 64 ,342 LISTBOX list1;
WIDTH 128 ;
HEIGHT 140 ;
ITEMS {"Option 1","Option 2","Option3"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,0} ;
SORT ;
FONTCOLOR {255,255,0}
@ 220 ,348 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {" 1","2","3","4","5","6","7","8","9"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Win1'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·«œÊ« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'C:\USERS\MOHAMED NOUR\DESKTOP\375544_243570325713888_215206155216972_555497_213103631_N.JPG'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Option 1','Option 2','Option3'}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {' 1','2','3','4','5','6','7','8','9'}",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
