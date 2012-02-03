*---------------------------------------------------------------------------*
* Time : 11:08:52    Date : 02/03/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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


Resistance R_LESSON5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ﬁ· „⁄Ï" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 11 ,13 BUTTONEX btn1;
CAPTION "”»Õ«‰ «··Â";
ON CLICK hide2()  ;
WIDTH 104 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 307 ,353 BUTTONEX btn2;
CAPTION "«·Õ„œ ··Â";
ON GOTFOCUS hide1()  ;
WIDTH 122 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 15 ,371 BUTTONEX btn3;
CAPTION "·« ≈·Â ≈·« «··Â";
ON GOTFOCUS hide3()  ;
WIDTH 104 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 312 ,9 BUTTONEX btn4;
CAPTION "«··Â √ﬂ»—";
ON GOTFOCUS hide4()  ;
WIDTH 122 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 162 ,181 BUTTONEX btn5;
CAPTION "√–ﬂ— «··Â „‰ ÃœÌœ";
ON GOTFOCUS hide5()  ;
WIDTH 127 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 82 ,82 LABEL lbl1 ;
VALUE "" ;
WIDTH 326 ;
HEIGHT 56 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
END WINDOW

win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.lbl1.Hide ( )
ACTIVATE WINDOW win1
EndIF

procedure hide2()
win1.btn1.Hide ( )
win1.btn2.Show ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
return
procedure hide1()
win1.btn2.Hide ( )
win1.btn1.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.btn3.Show ( )
return
procedure hide3()
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn5.Hide ( )
win1.btn4.Show ( )
return
procedure hide4()
win1.btn1.Hide ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Show ( )
win1.lbl1.Value := "„À· «·–Ï Ì–ﬂ— —»Â Ê«·–Ï ·« Ì–ﬂ—Â ﬂ„À· «·ÕÏ Ê«·„Ì "
win1.lbl1.Show ( )
return
procedure hide5()
win1.btn1.Show ( )
win1.btn2.Hide ( )
win1.btn3.Hide ( )
win1.btn4.Hide ( )
win1.btn5.Hide ( )
win1.lbl1.Hide ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ﬁ· „⁄Ï'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '”»Õ«‰ «··Â'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hide2",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·Õ„œ ··Â'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '·« ≈·Â ≈·« «··Â'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide3",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«··Â √ﬂ»—'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide4",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '√–ﬂ— «··Â „‰ ÃœÌœ'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide5",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ''",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Hide ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Hide ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Hide ( )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Hide ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Hide ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1 ( Event : GOTFOCUS )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Hide ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Hide ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Show ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide3 ( Event : GOTFOCUS )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Hide ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Show ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide4 ( Event : GOTFOCUS )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Hide ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Show ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := '„À· «·–Ï Ì–ﬂ— —»Â Ê«·–Ï ·« Ì–ﬂ—Â ﬂ„À· «·ÕÏ Ê«·„Ì '",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Show ( )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide5 ( Event : GOTFOCUS )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Hide ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Hide ( )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Hide ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
Return
*-------------------------------------------------------------------*
