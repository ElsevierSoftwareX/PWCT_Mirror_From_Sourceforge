*---------------------------------------------------------------------------*
* Time : 21:06:23    Date : 10/20/2012
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
WIDTH 627 ;
HEIGHT 311 ;
ICON "PWCTICON" ;
TITLE "«·œÊ—Ï «·„’—Ï  " ;
MAIN ;
BACKCOLOR {0,128,0} 

@ 66 ,489 LABEL lbl1 ;
VALUE "«·›—Ìﬁ " ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 121 ,491 LABEL lbl2 ;
VALUE "«·„œ—» " ;
WIDTH 81 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 174 ,494 LABEL lbl3 ;
VALUE "«·‰ﬁÿ " ;
WIDTH 82 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,246 TEXTBOX textTeam;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 124 ,249 TEXTBOX textCoach;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 177 ,257 TEXTBOX textPoints;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 226 ,246 BUTTONEX btn1;
CAPTION "«÷«›… ";
ON CLICK addValue()  ;
WIDTH 121 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 55 ,7 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"«·»Ì«‰« "} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 16 ,38 BUTTONEX btn2;
CAPTION " ”ÃÌ· ";
ON CLICK setValue()  ;
WIDTH 143 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure addValue()
cTeam := win1.textTeam.Value
cCoach := win1.textCoach.Value
cPoints := win1.textPoints.Value
Win1.List1.Additem ( cTeam )
Win1.List1.Additem ( cCoach )
Win1.List1.Additem ( cPoints )
return
procedure setValue()
cTeam := "«·“„«·ﬂ"
cCoach := "‘Õ« …"
cPoints := "45"
win1.textTeam.Value := "«·«Â·Ï"
win1.textCoach.Value := "ÃÊ“ÌÂ"
win1.textPoints.Value := "50"
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ »«·«”‰«œ «·„»«‘— ","Õ”‰« ")
win1.textTeam.Value := cTeam
win1.textCoach.Value := cCoach
win1.textPoints.Value := cPoints
MyOut := MSGBOX(" „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ","Õ”‰« ")
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œÊ—Ï «·„’—Ï  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·›—Ìﬁ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„œ—» '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰ﬁÿ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textTeam  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textCoach  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPoints  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addValue",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'«·»Ì«‰« '}",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ”ÃÌ· '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setValue",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addValue ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","cTeam = win1.textTeam.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","cCoach = win1.textCoach.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","cPoints = win1.textPoints.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cTeam) to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cCoach) to Listbox (List1) of Window (Win1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cPoints) to Listbox (List1) of Window (Win1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setValue ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","cTeam = '«·“„«·ﬂ'",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cCoach = '‘Õ« …'",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cPoints = '45'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textTeam.Value := '«·«Â·Ï'",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textCoach.Value := 'ÃÊ“ÌÂ'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPoints.Value := '50'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ »«·«”‰«œ «·„»«‘— ' Title 'Õ”‰« ' Type: Message Box",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textTeam.Value := cTeam",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textCoach.Value := cCoach",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPoints.Value := cPoints",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „ «”‰«œ ﬁÌ„ ·„—»⁄«  «·‰’ „‰ «·„ €Ì—«  ' Title 'Õ”‰« ' Type: Message Box",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
Return
*-------------------------------------------------------------------*
