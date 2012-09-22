*---------------------------------------------------------------------------*
* Time : 21:32:34    Date : 09/18/2012
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


Resistance R_LESSON9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 742 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì…  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 100 ,595 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·«Ê· " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 148 ,594 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·À«‰Ì" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 212 ,596 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 47 ,138 LABEL lbl4 ;
VALUE "„—»⁄«  «·‰’ «·Õ—›Ì…" ;
WIDTH 198 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 47 ,432 LABEL lbl5 ;
VALUE "„—»⁄«  «·‰’ «·—ﬁ„Ì…" ;
WIDTH 200 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 96 ,383 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 148 ,383 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 205 ,384 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,101 TEXTBOX text4;
HEIGHT 32 ;
WIDTH 202 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 152 ,101 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 207 ,101 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 271 ,289 BUTTONEX btn1;
CAPTION "«·„Ã„Ê⁄ ";
ON CLICK Calculate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,285 BUTTONEX btn2;
CAPTION "„”Õ «·»Ì«‰«  ";
ON CLICK Clear()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Calculate()
cnum1 := win1.text1.Value
cnum2 := win1.text2.Value
nnum1 = VAL ( cnum1 )
nnum2 = VAL ( cnum2 )
cSum := nnum1+nnum2
nSum = STR ( cSum )
nSum = ALLTRIM ( nSum )
win1.text3.Value := nSum
cnum4 := win1.text4.Value
cnum5 := win1.text5.Value
nSum := cnum4+cnum5
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
win1.text6.Value := cSum
return
procedure Clear()
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
win1.text4.Value := ""
win1.text5.Value := ""
win1.text6.Value := ""
return


End Of Resistance

INIT PROCEDURE Init_LESSON9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ «·«Ê· '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„ «·À«‰Ì'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '„—»⁄«  «·‰’ «·Õ—›Ì…'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '„—»⁄«  «·‰’ «·—ﬁ„Ì…'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",68,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",76,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·„Ã„Ê⁄ '",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calculate",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '„”Õ «·»Ì«‰«  '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clear",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calculate ( Event : CLICK )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cnum1 = win1.text1.Value",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cnum2 = win1.text2.Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","nnum1 = CONVERT cnum1 TO Numeric",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","nnum2 = CONVERT cnum2 TO Numeric",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = nnum1+nnum2",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = CONVERT cSum TO STRING",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = All Trim nSum",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := nSum",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","cnum4 = win1.text4.Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cnum5 = win1.text5.Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = cnum4+cnum5",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := cSum",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clear ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := ''",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := ''",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := ''",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
Return
*-------------------------------------------------------------------*
