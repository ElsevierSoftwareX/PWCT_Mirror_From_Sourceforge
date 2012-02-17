*---------------------------------------------------------------------------*
* Time : 19:21:24    Date : 02/16/2012
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


Resistance R_LING_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LING_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· œ—Ì» «·Œ«„”  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,128} 

@ -2 ,0 IMAGE image2;
PICTURE "Home.jpg";
STRETCH ;
WIDTH 492 HEIGHT 364
@ 166 ,294 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„ " ;
WIDTH 151 ;
HEIGHT 40 ;
AUTOSIZE ;
FONT "Arabic Transparent" SIZE 22  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 245 ,111 BUTTONEX btn1;
CAPTION "«œŒ· ";
FONTCOLOR {0,0,0};
ON CLICK logform()  ;
WIDTH 124 HEIGHT 37 ;
FONT "Arabic Transparent" SIZE 22 ;
TOOLTIP ""
@ 167 ,63 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 22 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE MAIN MENU
POPUP "„·› "
MENUITEM "Œ—ÊÃ " Action close()
END POPUP
END MENU
@ 116 ,284 LABEL lbl2 ;
VALUE "«·—”«·… " ;
WIDTH 97 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arabic Transparent" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 116 ,65 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

DEFINE STATUSBAR 

STATUSITEM " ‘€Ì·"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure logform()
user := win1.text1.Value
user2 := win1.text2.Value
IF user==""
MyOut := MSGExclamation(" „‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„","Œÿ«¡ ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·‰«›–… «·À«‰Ì…  "+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 0 ,-10 IMAGE image1;
PICTURE "Home.jpg";
STRETCH ;
WIDTH 502 HEIGHT 359
@ 144 ,45 LABEL lbl3 ;
VALUE user2+" "+user ;
WIDTH 383 ;
HEIGHT 50 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 306 ,344 BUTTONEX btn2;
CAPTION "«· «·Ï ";
FONTCOLOR {0,0,0};
ON CLICK close2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
Proc close
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Œ—ÊÃ "," «€·«ﬁ «· ÿ»Ìﬁ")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
procedure close2()
win2.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LING
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· œ—Ì» «·Œ«„”  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Home.jpg'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«”„ «·„” Œœ„ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«œŒ· '",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action logform",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,40)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ ' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—”«·… '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( ' ‘€Ì·' )",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Date",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure logform ( Event : CLICK )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","user2 = win1.text2.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„' Title 'Œÿ«¡ ' Type: Message Exclamation",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«·‰«›–… «·À«‰Ì…  '+user",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",89,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Home.jpg'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : user2+' '+user",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«· «·Ï '",108,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close2",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·Œ—ÊÃ ' Title ' «€·«ﬁ «· ÿ»Ìﬁ' Type: Message Ok/Cancel",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close2 ( Event : CLICK )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
Return
*-------------------------------------------------------------------*
