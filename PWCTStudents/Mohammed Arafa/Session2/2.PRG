*---------------------------------------------------------------------------*
* Time : 16:07:14    Date : 12/28/2011
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


Resistance R_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Learning PWCT" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 18 ,264 LABEL lbl1 ;
VALUE "„‰ ›÷·ﬂ «œŒ· «”„ﬂ" ;
WIDTH 193 ;
HEIGHT 54 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 81 ,236 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 224 ;
VALUE "Arafa" ;
BACKCOLOR {255,0,0} ;
FONTCOLOR {0,0,255} 

@ 298 ,58 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK closeapp()  ;
WIDTH 92 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 120 ,233 LISTBOX list1;
WIDTH 224 ;
HEIGHT 42 ;
ITEMS {"Option 1","Option 2"} ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {255,255,0}
@ 31 ,11 IMAGE image1;
PICTURE "Brain-Power6.jpg";
STRETCH ;
WIDTH 195 HEIGHT 194
@ 173 ,233 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"Option 1","Option 2","option3","option4"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {215,253,250} ;
SORT ;
FONTCOLOR {255,0,0}
@ 298 ,156 BUTTONEX btn2;
CAPTION "«· ⁄·Ì„« ";
FONTCOLOR {0,0,160};
ON CLICK MSGINFO( " „‘ﬂÊ— √ŒÏ «·⁄“Ì“ " ) ;
WIDTH 93 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapp()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Learning PWCT'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ›÷·ﬂ «œŒ· «”„ﬂ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapp",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Option 1','Option 2'}",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Brain-Power6.jpg'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Option 1','Option 2','option3','option4'}",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«· ⁄·Ì„« '",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ' „‘ﬂÊ— √ŒÏ «·⁄“Ì“ '",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
