*---------------------------------------------------------------------------*
* Time : 23:26:35    Date : 06/09/2012
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
WIDTH 752 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE " ÕÊÌ· «·„ €Ì—« " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 110 ,644 LABEL lbl1 ;
VALUE "«·√Ê·" ;
WIDTH 74 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 177 ,644 LABEL lbl2 ;
VALUE "«·À«‰Ì" ;
WIDTH 74 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 264 ,641 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄" ;
WIDTH 74 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 104 ,421 TEXTBOX num1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,421 TEXTBOX num2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 258 ,418 TEXTBOX total;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 224 ,298 BUTTONEX btn1;
CAPTION "«·‰« Ã";
ON CLICK sum()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 24 ,425 LABEL lbl4 ;
VALUE "«· ⁄«„· „⁄ «·„—»⁄«  «·‰’Ì… " ;
WIDTH 204 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 23 ,79 LABEL lbl5 ;
VALUE "«· ⁄«„· „⁄ «·„—»⁄«  «·—ﬁ„Ì…" ;
WIDTH 198 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 104 ,78 TEXTBOX num3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 170 ,77 TEXTBOX num4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 258 ,78 TEXTBOX total1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure sum()
num1 := win1.num1.Value
num2 := win1.num2.Value
num1 = VAL ( num1 )
num2 = VAL ( num2 )
num5 := num1 + num2
num5 = STR ( num5 )
num5 = ALLTRIM ( num5 )
win1.total.Value := num5
num3 := win1.num3.Value
num4 := win1.num4.Value
num6 := num3+num4
win1.total1.Value := num6
return


End Of Resistance

INIT PROCEDURE Init_LESSON9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÕÊÌ· «·„ €Ì—« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·√Ê·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·À«‰Ì'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( num1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( num2  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( total  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·‰« Ã'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sum",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«· ⁄«„· „⁄ «·„—»⁄«  «·‰’Ì… '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '«· ⁄«„· „⁄ «·„—»⁄«  «·—ﬁ„Ì…'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( num3  )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",77,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( num4  )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",86,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( total1  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sum ( Event : CLICK )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.num1.Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.num2.Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT num1 TO Numeric",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT num2 TO Numeric",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = num1 + num2",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = CONVERT num5 TO STRING",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = All Trim num5",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.total.Value := num5",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = win1.num3.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = win1.num4.Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","num6 = num3+num4",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.total1.Value := num6",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
Return
*-------------------------------------------------------------------*
