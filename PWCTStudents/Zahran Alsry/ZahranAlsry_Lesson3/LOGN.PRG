*---------------------------------------------------------------------------*
* Time : 05:07:50    Date : 05/12/2012
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


Resistance R_LOGN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„—Õ»« »ﬂ„ ›Ï ⁄«·„ «·»—„Ã… »œÊ‰ ﬂÊœ" ;
MAIN ;
BACKCOLOR {128,255,128} 

@ 214 ,133 BUTTONEX btn1;
CAPTION " ”ÃÌ· «·œŒÊ·";
ON CLICK long()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 139 ,228 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 202 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 140 ,28 LABEL lbl1 ;
VALUE "√œŒ· «”„ «·„” Œœ„ Â‰«" ;
WIDTH 161 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 11 ,382 IMAGE image1;
PICTURE "pWCTWOW.jpg";
STRETCH ;
WIDTH 87 HEIGHT 65
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc long
alaa := win1.text1.Value
IF alaa==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«ı" + alaa ;
MODAL ;
NOAUTORELEASE ;
NOSIZE ;
BACKCOLOR {128,255,128} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„—Õ»« »ﬂ„ ›Ï ⁄«·„ «·»—„Ã… »œÊ‰ ﬂÊœ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ”ÃÌ· «·œŒÊ·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action long",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '√œŒ· «”„ «·„” Œœ„ Â‰«'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'pWCTWOW.jpg'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure long",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","alaa = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( alaa=='' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„' Title 'Œÿ√' Type: Message Exclamation",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '„—Õ»«ı' + alaa",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
