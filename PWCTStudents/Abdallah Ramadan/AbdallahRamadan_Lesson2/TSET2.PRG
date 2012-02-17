*---------------------------------------------------------------------------*
* Time : 14:35:26    Date : 02/14/2012
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


Resistance R_TSET2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TSET2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 294 ;
HEIGHT 258 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "HOME.JPG";
STRETCH ;
WIDTH 284 HEIGHT 220
@ 64 ,130 LABEL lbl1 ;
VALUE "0" ;
WIDTH 25 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arabic Transparent" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,255}
@ 119 ,91 BUTTONEX btn1;
CAPTION "ÚÏ ";
ON CLICK Clca()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 168 ,92 BUTTONEX btn2;
CAPTION "ÚÏ ááÇÓÝá ";
ON CLICK Clac2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Clca()
Clacnum := win1.lbl1.Value
Clacnum = VAL ( Clacnum )
Clacnum := Clacnum+1
Clacnum = STR ( Clacnum )
win1.lbl1.Value := Clacnum
return
procedure Clac2()
Clacnum2 := win1.lbl1.Value
Clacnum2 = VAL ( Clacnum2 )
Clacnum2 := Clacnum2-1
Clacnum2 = STR ( Clacnum2 )
win1.lbl1.Value := Clacnum2
return


End Of Resistance

INIT PROCEDURE Init_TSET2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÚÏÇÏ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HOME.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÚÏ '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clca",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÚÏ ááÇÓÝá '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clac2",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clca ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum = win1.lbl1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum = CONVERT Clacnum TO Numeric",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum = Clacnum+1",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum = CONVERT Clacnum TO STRING",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Clacnum",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clac2 ( Event : CLICK )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum2 = win1.lbl1.Value",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum2 = CONVERT Clacnum2 TO Numeric",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum2 = Clacnum2-1",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Clacnum2 = CONVERT Clacnum2 TO STRING",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Clacnum2",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
