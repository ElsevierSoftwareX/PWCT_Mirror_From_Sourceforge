*---------------------------------------------------------------------------*
* Time : 14:19:05    Date : 02/01/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_SST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 684 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·„ Ê”ÿ «·Õ”«»Ï  " ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 34 ,544 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·«Ê· " ;
WIDTH 122 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 86 ,541 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·À«‰Ï " ;
WIDTH 125 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 142 ,538 LABEL lbl3 ;
VALUE "«·—ﬁ„ «·À«·À" ;
WIDTH 128 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 283 ,331 LABEL lbl5 ;
VALUE "«·‰« Ã " ;
WIDTH 65 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 199 ,539 LABEL lbl4 ;
VALUE "«·„⁄«„· " ;
WIDTH 127 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,264 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 83 ,265 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 141 ,263 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 198 ,262 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 282 ,122 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 282 ,474 BUTTONEX btn1;
CAPTION "«·‰« Ã ";
ON CLICK pSum()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSum()
nNum1 := win1.text1.Value
nNum2 := win1.text2.Value
nNum3 := win1.text3.Value
nNum4 := win1.text4.Value
nSum := (nNum1+nNum2+nNum3)/nNUM4
win1.text5.Value := nSum
return


End Of Resistance

INIT PROCEDURE Init_SST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·„ Ê”ÿ «·Õ”«»Ï  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ «·«Ê· '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·—ﬁ„ «·À«‰Ï '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·—ﬁ„ «·À«·À'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '«·‰« Ã '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·„⁄«„· '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",79,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·‰« Ã '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSum",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSum ( Event : CLICK )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","nNum1 = win1.text1.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","nNum2 = win1.text2.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","nNum3 = win1.text3.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","nNum4 = win1.text4.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = (nNum1+nNum2+nNum3)/nNUM4",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := nSum",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
Return
*-------------------------------------------------------------------*
