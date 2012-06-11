*---------------------------------------------------------------------------*
* Time : 06:58:40    Date : 05/23/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 664 ;
HEIGHT 454 ;
ICON "PWCTICON" ;
TITLE "»—‰«„Ã «· —ÕÌ»" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,128} 

@ 230 ,380 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 120 ;
HEIGHT 42 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 304 ,224 BUTTONEX btn1;
CAPTION " ”ÃÌ· «·œŒÊ·";
ON CLICK logform()  ;
WIDTH 167 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 236 ,60 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 22 ,187 IMAGE image1;
PICTURE "pWCTWOW.jpg";
STRETCH ;
WIDTH 196 HEIGHT 105
@ 185 ,59 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} 

@ 177 ,384 LABEL lbl2 ;
VALUE "«·—”«·…" ;
WIDTH 120 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

CLOCK

DATE

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc logform
user := win1.text1.Value
message := win1.text2.Value
IF user==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 548 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«" + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,128,128} 

@ 108 ,77 LABEL lbl3 ;
VALUE message + " " + user ;
WIDTH 467 ;
HEIGHT 175 ;
AUTOSIZE ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 323 ,5 BUTTONEX btn2;
CAPTION "··Œ·›  <<<<<<";
ON CLICK closeform2()  ;
WIDTH 159 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ø"," √ﬂÌœ «€·«ﬁ «·»—‰«„Ã")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc closeform2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»—‰«„Ã «· —ÕÌ»'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«”„ «·„” Œœ„'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' ”ÃÌ· «·œŒÊ·'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'pWCTWOW.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—”«·…'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Date",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text2.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„' Title 'Œÿ√' Type: Message Exclamation",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '„—Õ»«' + user",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",87,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : message + ' ' + user",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '··Œ·›  <<<<<<'",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeform2",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ø' Title ' √ﬂÌœ «€·«ﬁ «·»—‰«„Ã' Type: Message Ok/Cancel",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeform2",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*
