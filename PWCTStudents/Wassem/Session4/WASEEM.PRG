*---------------------------------------------------------------------------*
* Time : 20:07:29    Date : 01/03/2012
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


Resistance R_WASEEM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 476 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "Waseem`s electronic identity" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 16 ,21 BUTTONEX btn1;
CAPTION "My name ";
ON CLICK name()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 64 ,6 LABEL lbl1 ;
VALUE "" ;
WIDTH 132 ;
HEIGHT 37 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 130 ,17 BUTTONEX btn2;
CAPTION "My phone";
ON CLICK phone()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 174 ,5 LABEL lbl2 ;
VALUE "" ;
WIDTH 134 ;
HEIGHT 36 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 237 ,16 BUTTONEX btn3;
CAPTION "My adress";
ON CLICK adress()  ;
WIDTH 108 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 279 ,8 LABEL lbl3 ;
VALUE "" ;
WIDTH 130 ;
HEIGHT 36 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 6 ,336 IMAGE image1;
PICTURE "waseem..jpg";
STRETCH ;
WIDTH 127 HEIGHT 116
@ 63 ,161 LABEL lbl4 ;
VALUE "" ;
WIDTH 149 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 16 ,185 BUTTONEX btn4;
CAPTION "Sex";
ON CLICK sex()  ;
WIDTH 109 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 172 ,161 LABEL lbl5 ;
VALUE "" ;
WIDTH 149 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 129 ,184 BUTTONEX btn5;
CAPTION "Eye`s color";
ON CLICK eye()  ;
WIDTH 106 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 337 ,45 BUTTONEX btn6;
CAPTION "Close";
ON CLICK close()  ;
WIDTH 225 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 238 ,173 BUTTONEX btn7;
CAPTION "The place of birth";
ON CLICK place()  ;
WIDTH 125 HEIGHT 31 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 279 ,159 LABEL lbl6 ;
VALUE "" ;
WIDTH 155 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,0,0}
@ 181 ,331 IMAGE image2;
PICTURE "Electronic.jpg";
STRETCH ;
WIDTH 123 HEIGHT 53
@ 256 ,328 IMAGE image3;
PICTURE "identity.jpg";
STRETCH ;
WIDTH 132 HEIGHT 61
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc name
win1.lbl1.Value := "Waseem Mohammad saaed al-mofty"
Return Nil
Proc phone
win1.lbl2.Value := "111222"
Return Nil
Proc adress
win1.lbl3.Value := "Syria/Dair Al-zoor"
Return Nil
Proc sex
win1.lbl4.Value := "Male"
Return Nil
Proc eye
win1.lbl5.Value := "Black"
Return Nil
Proc place
win1.lbl6.Value := "Hungary"
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Waseem`s electronic identity'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'My name '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action name()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ''",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'My phone'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action phone()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'My adress'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action adress()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'waseem..jpg'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ''",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Sex'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sex()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ''",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Eye`s color'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action eye()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Close'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'The place of birth'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action place()",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : ''",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Electronic.jpg'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'identity.jpg'",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure name",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := 'Waseem Mohammad saaed al-mofty'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure phone",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '111222'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure adress",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := 'Syria/Dair Al-zoor'",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sex",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Value := 'Male'",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure eye",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Value := 'Black'",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure place",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Value := 'Hungary'",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
Return
*-------------------------------------------------------------------*
