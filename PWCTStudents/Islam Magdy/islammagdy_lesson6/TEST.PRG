*---------------------------------------------------------------------------*
* Time : 01:21:33    Date : 10/22/2012
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
WIDTH 630 ;
HEIGHT 349 ;
ICON "PWCTICON" ;
TITLE "«·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì…  " ;
MAIN ;
BACKCOLOR {255,128,64} 

@ 87 ,481 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·«Ê· " ;
WIDTH 109 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 140 ,484 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·À«‰Ï " ;
WIDTH 106 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 190 ,486 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄ " ;
WIDTH 105 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 12 ,304 LABEL lbl4 ;
VALUE " ⁄«„· „⁄ „—»⁄«  «·‰’ «·Õ—›Ì… " ;
WIDTH 247 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 11 ,11 LABEL lbl5 ;
VALUE " ⁄«„· „⁄ „—»⁄«  «·‰’ «·—ﬁ„Ì… " ;
WIDTH 211 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 85 ,267 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 198 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 141 ,261 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 195 ,266 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 85 ,14 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 143 ,13 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 195 ,13 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 260 ,194 BUTTONEX btn1;
CAPTION "Õ”«» «·„Ã„Ê⁄ ";
ON CLICK pSum()  ;
WIDTH 177 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSum()
cNum1 := win1.text1.Value
cNum2 := win1.text2.Value
nNum1 = VAL ( cNum1 )
nNum2 = VAL ( cNum2 )
nSum := nNum1+nNum2
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
win1.text3.Value := cSum
nNum1 := win1.text4.Value
nNum2 := win1.text5.Value
nSum := nNum1+nNum2
win1.text6.Value := nSum
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ «·«Ê· '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„ «·À«‰Ï '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' ⁄«„· „⁄ „—»⁄«  «·‰’ «·Õ—›Ì… '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ' ⁄«„· „⁄ „—»⁄«  «·‰’ «·—ﬁ„Ì… '",39,40)
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
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ”«» «·„Ã„Ê⁄ '",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSum",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSum ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = win1.text1.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = win1.text2.Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","nNum1 = CONVERT cNum1 TO Numeric",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","nNum2 = CONVERT cNum2 TO Numeric",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1+nNum2",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cSum",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","nNum1 = win1.text4.Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","nNum2 = win1.text5.Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1+nNum2",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := nSum",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
Return
*-------------------------------------------------------------------*
