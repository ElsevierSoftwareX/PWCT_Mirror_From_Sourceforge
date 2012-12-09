*---------------------------------------------------------------------------*
* Time : 07:45:34    Date : 10/25/2012
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


Resistance R_09_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_09_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 633 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " «·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì… " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 20 ,411 LABEL lbl1 ;
VALUE "Ã„⁄ «·„ €Ì—« " ;
WIDTH 173 ;
HEIGHT 54 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 97 ,454 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·√Ê·" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 161 ,454 LABEL lbl3 ;
VALUE "«·—ﬁ„ «·À«‰Ì" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 245 ,454 LABEL lbl4 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 97 ,294 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 161 ,294 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 245 ,294 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 97 ,50 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 161 ,50 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 245 ,50 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 120 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 301 ,139 BUTTONEX btn1;
CAPTION "Ã„⁄";
ON CLICK pSum()  ;
WIDTH 183 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSum()
cNum1 := win1.text1.Value
cNum2 := win1.text2.Value
cNum1 = VAL ( cNum1 )
cNum2 = VAL ( cNum2 )
SumNum := cNum1+cNum2
SumNum = STR ( SumNum )
SumNum = ALLTRIM ( SumNum )
win1.text3.Value := SumNum
cNum1 := win1.text5.Value
cNum2 := win1.text6.Value
win1.text7.Value := cNum1+cNum2
return


End Of Resistance

INIT PROCEDURE Init_09
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' «·„ €Ì—«  «·Õ—›Ì… Ê«·—ﬁ„Ì… '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Ã„⁄ «·„ €Ì—« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„ «·√Ê·'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·—ﬁ„ «·À«‰Ì'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·„Ã„Ê⁄'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Ã„⁄'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSum",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSum ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = win1.text1.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = win1.text2.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = CONVERT cNum1 TO Numeric",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = CONVERT cNum2 TO Numeric",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","SumNum = cNum1+cNum2",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","SumNum = CONVERT SumNum TO STRING",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","SumNum = All Trim SumNum",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := SumNum",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = win1.text5.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = win1.text6.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text7.Value := cNum1+cNum2",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
