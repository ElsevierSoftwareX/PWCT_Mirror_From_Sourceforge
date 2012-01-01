*---------------------------------------------------------------------------*
* Time : 16:06:59    Date : 12/30/2011
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


Resistance R_WASEEM_PWCT_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM_PWCT_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 513 ;
HEIGHT 310 ;
ICON "PWCTICON" ;
TITLE "waseem Al-mofty" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 212 ,314 BUTTONEX btn1;
CAPTION "close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 11 ,381 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"—ÌÕ«‰","Ì«”„Ì‰","›·","‰⁄‰⁄"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 112 ,292 LABEL lbl1 ;
VALUE "ﬁ«∆„… »‰»« «  «·ÕœÌﬁ…" ;
WIDTH 129 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 152 ,322 LABEL lbl2 ;
VALUE "«·„‰“·Ì… " ;
WIDTH 62 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 11 ,201 LISTBOX list1;
WIDTH 158 ;
HEIGHT 62 ;
ITEMS {"‰»« «  ⁄ÿ—Ì…","√‘Ã«— „À„—…"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 225 ,38 LABEL lbl3 ;
VALUE "Ê”Ì„ ”«·„ „Õ„œ ”⁄Ìœ «·„› Ì" ;
WIDTH 117 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 240 ,12 LABEL lbl4 ;
VALUE "«· ÿ»Ìﬁ «·À«‰Ì...√ÂœÌ ‰Ã«ÕÂ ≈·Ï √»Ì Ê√„Ì" ;
WIDTH 165 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 44 ,378 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 104 ;
VALUE "Plant`s name" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,10 IMAGE image1;
PICTURE "D:\SALEM 2011\10  „Ê“ 2010\Ê”Ì„\’Ê—\123456.JPG";
STRETCH ;
WIDTH 179 HEIGHT 198
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM_PWCT_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'waseem Al-mofty'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'—ÌÕ«‰','Ì«”„Ì‰','›·','‰⁄‰⁄'}",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",21,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ﬁ«∆„… »‰»« «  «·ÕœÌﬁ…'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„‰“·Ì… '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'‰»« «  ⁄ÿ—Ì…','√‘Ã«— „À„—…'}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Ê”Ì„ ”«·„ „Õ„œ ”⁄Ìœ «·„› Ì'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«· ÿ»Ìﬁ «·À«‰Ì...√ÂœÌ ‰Ã«ÕÂ ≈·Ï √»Ì Ê√„Ì'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'D:\SALEM 2011\10  „Ê“ 2010\Ê”Ì„\’Ê—\123456.JPG'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*
