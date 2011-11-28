*---------------------------------------------------------------------------*
* Time : 21:33:15    Date : 11/28/2011
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


Resistance R_TEST2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 527 ;
ICON "PWCTICON" ;
TITLE "PWCT" ;
MAIN ;
BACKCOLOR {0,128,255} 

@ 23 ,288 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 237 ;
HEIGHT 48 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {255,255,128}
@ 10 ,12 IMAGE image1;
PICTURE "NATURE.JPG";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 257 HEIGHT 302
@ 80 ,282 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"«·”» ","«·√Õœ","«·√À‰Ì‰","«·À·«À«¡","«·√—»⁄«¡","«·Œ„Ì”","«·Ã„⁄Â"} ;
FONT "Arial" SIZE 22 ;
BACKCOLOR {0,128,192} ;
FONTCOLOR {255,255,0}
@ 283 ,383 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"  1","  2","  3","  4","  5","  6","  7"} ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {0,128,192} ;
FONTCOLOR {128,255,128}
@ 416 ,367 BUTTONEX btn1;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK myclose()  ;
WIDTH 128 HEIGHT 58 ;
FONT "Arial" SIZE 36 ;
TOOLTIP ""
@ 318 ,12 TEXTBOX text1;
HEIGHT 46 ;
WIDTH 260 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {0,128,192} ;
FONTCOLOR {255,255,128} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myclose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PWCT'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·√œÊ« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'NATURE.JPG'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·”» ','«·√Õœ','«·√À‰Ì‰','«·À·«À«¡','«·√—»⁄«¡','«·Œ„Ì”','«·Ã„⁄Â'}",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'  1','  2','  3','  4','  5','  6','  7'}",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ'",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
