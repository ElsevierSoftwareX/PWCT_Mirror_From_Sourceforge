*---------------------------------------------------------------------------*
* Time : 10:46:42    Date : 03/14/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 668 ;
HEIGHT 561 ;
ON MOUSECLICK window2()  ;
ICON "PWCTICON" ;
TITLE "«Â·« »ﬂ„" ;
MAIN ;
BACKCOLOR {255,128,255} 

@ 438 ,246 BUTTONEX btn1;
CAPTION "«€·ﬁ «·‰«›–… ";
ON CLICK CloseApplication()  ;
WIDTH 140 HEIGHT 50 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure window2()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 771 ;
HEIGHT 558 ;
ON MOUSECLICK MSGINFO( "«Â·« »ﬂ„ „⁄‰« ›Ï  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ) ;
ICON "PWCTICON" ;
TITLE "window 2 «·‰«›–… «·À«‰Ì…  " ;
CHILD ;
BACKCOLOR {0,128,255} 

@ 224 ,26 BUTTONEX btn2;
CAPTION " ﬂ»Ì— «·‰«›–… ";
ON CLICK Maxwin()  ;
WIDTH 111 HEIGHT 70 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 223 ,598 BUTTONEX btn3;
CAPTION " Ê”Ìÿ «·‰«›–… ";
ON CLICK centerwin()  ;
WIDTH 117 HEIGHT 72 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 229 ,310 BUTTONEX btn4;
CAPTION "«€·«ﬁ «·‰«›–… ";
ON CLICK Closewin()  ;
WIDTH 119 HEIGHT 59 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure CloseApplication()
win1.Release ( )
return
procedure Maxwin()
win2.Maximize ( )
return
procedure centerwin()
win2.Center ( )
return
procedure Closewin()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«Â·« »ﬂ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action window2",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«€·ﬁ «·‰«›–… '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApplication",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure window2 - Event : MOUSECLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'window 2 «·‰«›–… «·À«‰Ì…  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '«Â·« »ﬂ„ „⁄‰« ›Ï  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ﬂ»Ì— «·‰«›–… '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Maxwin",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' Ê”Ìÿ «·‰«›–… '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerwin",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«€·«ﬁ «·‰«›–… '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closewin",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApplication ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Maxwin ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerwin ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closewin ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
