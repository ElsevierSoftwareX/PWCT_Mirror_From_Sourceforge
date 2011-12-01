*---------------------------------------------------------------------------*
* Time : 22:17:31    Date : 12/01/2011
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


Resistance R_PWCT_TEST5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_TEST5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 530 ;
HEIGHT 571 ;
ICON "PWCTICON" ;
TITLE "Image hide" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,64,0} 

@ 39 ,148 IMAGE image1;
PICTURE "CLOCK.JPG";
WHITEBACKGROUND ;
WIDTH 194 HEIGHT 171
@ 286 ,274 BUTTONEX btn1;
CAPTION "≈Œ›«¡ «·”«⁄Â";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK myhide()  ;
WIDTH 134 HEIGHT 49 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 285 ,81 BUTTONEX btn2;
CAPTION "≈ŸÂ«— «·”«⁄Â";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK myshow()  ;
WIDTH 133 HEIGHT 53 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
win1.image1.Show ( )
@ 437 ,9 BUTTONEX btn3;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK myclose()  ;
WIDTH 82 HEIGHT 48 ;
FONT "Arial" SIZE 20 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myhide()
win1.image1.Hide ( )
return
procedure myshow()
win1.image1.Show ( )
return
procedure myclose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PWCT_TEST5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Image hide'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'CLOCK.JPG'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈Œ›«¡ «·”«⁄Â'",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhide",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈ŸÂ«— «·”«⁄Â'",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myshow",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '≈€·«ﬁ'",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhide ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Hide ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myshow ( Event : CLICK )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Show ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
