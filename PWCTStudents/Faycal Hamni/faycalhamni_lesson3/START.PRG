*---------------------------------------------------------------------------*
* Time : 14:12:02    Date : 03/04/2013
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
ON MOUSECLICK fa()  ;
ICON "PWCTICON" ;
TITLE "≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  " ;
MAIN ;
BACKCOLOR {0,128,0} 

@ 165 ,185 BUTTONEX btn1;
CAPTION "≈€·«ﬁ «·‰«›–… ";
ON CLICK fermetuer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure fa()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK MSGINFO( "«·”·«„ ⁄·Ìﬂ„ »«—ﬂ «··Â ›Ìﬂ „Â‰œ” „Õ„Êœ —»Ì ≈Ã⁄·Â« ›Ì „“«‰ Õ”‰« Â " ) ;
ICON "PWCTICON" ;
TITLE "«·Â« › «·‰ﬁ«·  " ;
CHILD ;
BACKCOLOR {255,0,0} 

@ 137 ,178 BUTTONEX btn2;
CAPTION " Ê”Ìÿ «·‰«›–… ";
ON CLICK centerwin()  ;
WIDTH 101 HEIGHT 38 ;
FONT "Traditional Arabic" SIZE 16 ;
TOOLTIP ""
@ 203 ,178 BUTTONEX btn3;
CAPTION "≈€·«ﬁ «·‰«›–… ";
ON CLICK closewin()  ;
WIDTH 100 HEIGHT 38 ;
FONT "Traditional Arabic" SIZE 16 ;
TOOLTIP ""
@ 79 ,178 BUTTONEX btn4;
CAPTION " ﬂ»Ì— «·‰«›–… ";
ON CLICK maxwin()  ;
WIDTH 101 HEIGHT 38 ;
FONT "Traditional Arabic" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure fermetuer()
win1.Release ( )
return
procedure maxwin()
win2.Maximize ( )
return
procedure centerwin()
win2.Center ( )
return
procedure closewin()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action fa",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈€·«ﬁ «·‰«›–… '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action fermetuer",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fa - Event : MOUSECLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«·Â« › «·‰ﬁ«·  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action '«·”·«„ ⁄·Ìﬂ„ »«—ﬂ «··Â ›Ìﬂ „Â‰œ” „Õ„Êœ —»Ì ≈Ã⁄·Â« ›Ì „“«‰ Õ”‰« Â '",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' Ê”Ìÿ «·‰«›–… '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerwin",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '≈€·«ﬁ «·‰«›–… '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' ﬂ»Ì— «·‰«›–… '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxwin",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fermetuer ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxwin ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Maximize ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerwin ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
