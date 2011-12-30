*---------------------------------------------------------------------------*
* Time : 11:33:22    Date : 12/30/2011
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


Resistance R_4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 675 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·„Œ —⁄ «·ÕﬁÌﬁÏ" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 35 ,57 LABEL lbl1 ;
VALUE "„‰ ÂÊ «·„»œ⁄ «·ÕﬁÌﬁÏ · ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ (Ã“«Â «··Â ﬂ· ŒÌ—) ." ;
WIDTH 598 ;
HEIGHT 38 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,128}
@ 138 ,176 LABEL lbl2 ;
VALUE "" ;
WIDTH 461 ;
HEIGHT 90 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 264 ,222 BUTTONEX btn1;
CAPTION "√ŒÏ «·⁄“Ì“ √÷€ÿ Â‰«";
FONTCOLOR {0,0,128};
ON CLICK mycaption()  ;
WIDTH 215 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 112 ,22 IMAGE image1;
PICTURE "";
STRETCH ;
WIDTH 69 HEIGHT 86
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mycaption()
win1.lbl2.Value := "≈‰Â «·„Œ —⁄ «·„’—Ï „Õ„Êœ ›«Ìœ"
win1.image1.Picture := "533.jpg"
return


End Of Resistance

INIT PROCEDURE Init_4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·„Œ —⁄ «·ÕﬁÌﬁÏ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ÂÊ «·„»œ⁄ «·ÕﬁÌﬁÏ · ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ (Ã“«Â «··Â ﬂ· ŒÌ—) .'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√ŒÏ «·⁄“Ì“ √÷€ÿ Â‰«'",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : ''",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycaption ( Event : CLICK )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '≈‰Â «·„Œ —⁄ «·„’—Ï „Õ„Êœ ›«Ìœ'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Picture := '533.jpg'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*
