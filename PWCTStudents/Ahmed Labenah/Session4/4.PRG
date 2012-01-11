*---------------------------------------------------------------------------*
* Time : 10:07:28    Date : 01/10/2012
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


Resistance R_4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 706 ;
HEIGHT 335 ;
ICON "PWCTICON" ;
TITLE "Eng. LABANA" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 59 ,7 LABEL lbl1 ;
VALUE "2. Who is the founder of TWITTER???" ;
WIDTH 360 ;
HEIGHT 28 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {255,0,255} ;
FONTCOLOR {0,0,0}
@ 17 ,7 LABEL lbl2 ;
VALUE "1. Who is the founder of FACEBOOK???" ;
WIDTH 360 ;
HEIGHT 28 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,160}
@ 250 ,7 LABEL lbl3 ;
VALUE "" ;
WIDTH 414 ;
HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,160}
@ 9 ,443 IMAGE image1;
PICTURE "";
STRETCH ;
WIDTH 230 HEIGHT 273
@ 147 ,164 BUTTONEX btn1;
CAPTION "Facebook";
ON CLICK Facebook1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 190 ,164 BUTTONEX btn2;
CAPTION "Twitter";
ON CLICK twitter1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Facebook1()
win1.lbl3.Value := "Mark Elliot Zuckerberg (born May 14, 1984)"
win1.image1.Picture := "220px-Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg"
return
procedure twitter1()
win1.lbl3.Value := "Jack Dorsey (born November 19, 1976)"
win1.image1.Picture := "220px-Jack_Dorsey_David_Shankbone_2010.jpg"
return


End Of Resistance

INIT PROCEDURE Init_4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Eng. LABANA'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '2. Who is the founder of TWITTER???'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '1. Who is the founder of FACEBOOK???'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : ''",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Facebook'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Facebook1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Twitter'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action twitter1",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Facebook1 ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := 'Mark Elliot Zuckerberg (born May 14, 1984)'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Picture := '220px-Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure twitter1 ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := 'Jack Dorsey (born November 19, 1976)'",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.image1.Picture := '220px-Jack_Dorsey_David_Shankbone_2010.jpg'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*
