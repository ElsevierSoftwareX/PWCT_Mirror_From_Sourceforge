*---------------------------------------------------------------------------*
* Time : 23:39:13    Date : 04/27/2012
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
WIDTH 510 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE "œŒÊ·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {218,214,182} 

@ 149 ,173 LABEL lbl1 ;
VALUE "√œŒ· «”„ﬂ " ;
WIDTH 100 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 178 ,39 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 223 ,84 BUTTONEX btn1;
CAPTION "œŒÊ· ";
ON CLICK login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 44 ,280 IMAGE image1;
PICTURE "2.jpg";
STRETCH ;
WIDTH 150 HEIGHT 218
@ 60 ,184 LABEL lbl3 ;
VALUE "«·—”«·…" ;
WIDTH 69 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 91 ,44 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "file"
MENUITEM "Œ—ÊÃ" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“ ·· ‘€Ì·"

DATE

CLOCK;
AMPM 

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure login()
user := win1.text1.Value
message := win1.text3.Value
IF user==""
MyOut := MSGBOX("›÷·« «ﬂ » «”„ﬂ ","œŒÊ·")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 547 ;
HEIGHT 375 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {208,176,81} 

@ 145 ,15 LABEL lbl2 ;
VALUE message+" "+user ;
WIDTH 510 ;
HEIGHT 66 ;
AUTOSIZE ;
FONT "Arial Black" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 256 ,187 BUTTONEX btn2;
CAPTION "—ÃÊ⁄";
ON CLICK return()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
Proc close
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ","«·Œ—ÊÃ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure return()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'œŒÊ·'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '√œŒ· «”„ﬂ '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'œŒÊ· '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '2.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·—”«·…'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“ ·· ‘€Ì·' )",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Date",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","message = win1.text3.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '›÷·« «ﬂ » «”„ﬂ ' Title 'œŒÊ·' Type: Message Box",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '„—Õ»«'+user",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",88,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : message+' '+user",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '—ÃÊ⁄'",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action return",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã ' Title '«·Œ—ÊÃ' Type: Message Ok/Cancel",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure return ( Event : CLICK )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
Return
*-------------------------------------------------------------------*
