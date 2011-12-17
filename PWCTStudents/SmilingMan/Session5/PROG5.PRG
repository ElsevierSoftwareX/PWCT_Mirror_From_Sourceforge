*---------------------------------------------------------------------------*
* Time : 12:38:40    Date : 12/17/2011
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


Resistance R_PROG5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROG5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 580 ;
HEIGHT 498 ;
ICON "PWCTICON" ;
TITLE "√Ì‰ √‰«" ;
MAIN ;
BACKCOLOR {0,255,0} 

@ 3 ,465 BUTTONEX btn1;
CAPTION "√‰« Â‰«";
ON GOTFOCUS hide1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 132 ,236 BUTTONEX btn2;
CAPTION "·« »· Â‰«";
ON GOTFOCUS hide2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 BUTTONEX btn3;
CAPTION "Â« Â« »· Â‰«";
ON GOTFOCUS hide3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
BOLD ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action exit()
END POPUP
END MENU
@ 323 ,382 BUTTONEX btn4;
CAPTION "«ŸÂ«—";
ON CLICK munzer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 323 ,52 BUTTONEX btn5;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 269 ,20 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 221 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 269 ,314 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 229 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 204 ,80 BUTTONEX btn6;
CAPTION "count";
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 171 ,398 LABEL lbl1 ;
VALUE "0" ;
WIDTH 53 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

win1.btn2.Hide ( )
win1.btn3.Hide ( )
ACTIVATE WINDOW win1
EndIF

procedure hide1()
win1.btn1.Hide ( )
win1.btn2.Show ( )
return
procedure hide2()
win1.btn2.Hide ( )
win1.btn3.Show ( )
return
procedure hide3()
win1.btn3.Hide ( )
win1.btn1.Show ( )
return
Proc exit
win1.Release ( )
Return Nil
procedure munzer()
mumu := win1.text1.Value
mumu1 := win1.text2.Value
MyOut := MSGINFO(mumu,mumu1)
return
procedure count()
count := win1.lbl1.Value
count = VAL ( count )
count := count+1
count = STR ( count )
win1.lbl1.Value := count
return


End Of Resistance

INIT PROCEDURE Init_PROG5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '√Ì‰ √‰«'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√‰« Â‰«'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '·« »· Â‰«'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Â« Â« »· Â‰«'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide3",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«ŸÂ«—'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action munzer",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'count'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1 ( Event : GOTFOCUS )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 ( Event : GOTFOCUS )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Show ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide3 ( Event : GOTFOCUS )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Hide ( )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure munzer ( Event : CLICK )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","mumu = win1.text1.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","mumu1 = win1.text2.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mumu Title mumu1 Type: Message Info",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count ( Event : CLICK )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.lbl1.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO Numeric",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","count = count+1",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO STRING",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := count",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
Return
*-------------------------------------------------------------------*
