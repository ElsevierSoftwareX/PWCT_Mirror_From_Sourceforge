*---------------------------------------------------------------------------*
* Time : 10:45:53    Date : 10/22/2012
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


Resistance R_05_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_05_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 665 ;
HEIGHT 235 ;
ON MOUSECLICK RedWindow()  ;
ICON "PWCTICON" ;
TITLE "White «··Ê‰ «·√»Ì÷" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 135 ,478 BUTTONEX btn1;
CAPTION "≈€·«ﬁ «· ÿ»Ìﬁ";
ON CLICK CloseApp()  ;
WIDTH 132 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure RedWindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 327 ;
HEIGHT 178 ;
ON MOUSECLICK MSGINFO( "„—Õ»«" ) ;
ICON "PWCTICON" ;
TITLE " Red Window «··Ê‰ «·√Õ„— " ;
CHILD ;
BACKCOLOR {255,0,0} 

@ 10 ,10 BUTTONEX btn2;
CAPTION " ﬂ»Ì— «·‰«›–…";
ON CLICK MaxWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,10 BUTTONEX btn3;
CAPTION " Ê”Ìÿ «·‰«›–…";
ON CLICK CenterWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,7 BUTTONEX btn4;
CAPTION "≈€·«ﬁ «·‰«›–…";
ON CLICK CloseWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure CloseApp()
win1.Release ( )
return
procedure MaxWin()
win2.Maximize ( )
return
procedure CenterWin()
win2.Center ( )
return
procedure CloseWin()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_05
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'White «··Ê‰ «·√»Ì÷'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action RedWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ «· ÿ»Ìﬁ'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RedWindow - Event : MOUSECLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Red Window «··Ê‰ «·√Õ„— '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '„—Õ»«'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— «·‰«›–…'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MaxWin",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' Ê”Ìÿ «·‰«›–…'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CenterWin",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '≈€·«ﬁ «·‰«›–…'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWin",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MaxWin ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CenterWin ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWin ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
