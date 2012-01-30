*---------------------------------------------------------------------------*
* Time : 05:25:28    Date : 01/29/2012
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


Resistance R_REGISTRATION_PAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REGISTRATION_PAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 573 ;
HEIGHT 709 ;
ICON "REGISTRATION-ICON.GIF" ;
TITLE "Registration " ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {255,255,255} 

@ 134 ,20 LABEL lbl1 ;
VALUE " Registration Form Application" ;
WIDTH 274 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 163 ,21 LABEL lbl2 ;
VALUE " " ;
WIDTH 499 ;
HEIGHT 3 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {0,198,0} ;
FONTCOLOR {0,0,0}
@ 204 ,23 LABEL lbl3 ;
VALUE "First Name" ;
WIDTH 87 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 241 ,22 LABEL lbl4 ;
VALUE "Last Name" ;
WIDTH 90 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 321 ,21 LABEL lbl5 ;
VALUE "Email Address" ;
WIDTH 113 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 366 ,21 LABEL lbl6 ;
VALUE "Password" ;
WIDTH 95 ;
HEIGHT 27 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 409 ,21 LABEL lbl7 ;
VALUE "Gender" ;
WIDTH 86 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 450 ,22 LABEL lbl8 ;
VALUE "Date of Birth" ;
WIDTH 103 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 495 ,24 LABEL lbl9 ;
VALUE "Address" ;
WIDTH 82 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 570 ,22 LABEL lbl10 ;
VALUE "City" ;
WIDTH 79 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 531 ,21 LABEL lbl11 ;
VALUE "State" ;
WIDTH 84 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 281 ,22 LABEL lbl12 ;
VALUE "Mobile No." ;
WIDTH 93 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 203 ,193 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 242 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 240 ,193 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 243 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 277 ,193 TEXTBOX text3;
HEIGHT 28 ;
WIDTH 243 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 319 ,192 TEXTBOX text4;
HEIGHT 28 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 362 ,193 TEXTBOX text5;
HEIGHT 28 ;
WIDTH 243 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 406 ,210 CHECKBOX check1;
CAPTION "Male";
WIDTH 98;
Height 27;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 405 ,307 CHECKBOX check2;
CAPTION "Female";
WIDTH 90;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 448 ,193 TEXTBOX text6;
HEIGHT 25 ;
WIDTH 77 ;
VALUE "Day" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 447 ,278 TEXTBOX text7;
HEIGHT 25 ;
WIDTH 69 ;
VALUE "Month" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 446 ,352 TEXTBOX text8;
HEIGHT 25 ;
WIDTH 82 ;
VALUE "Year" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 493 ,193 TEXTBOX text9;
HEIGHT 27 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 566 ,193 TEXTBOX text10;
HEIGHT 29 ;
WIDTH 243 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 531 ,193 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"USA","Uk","German","Italy","China","Egypt","Saudi Arabia","UAE","france","Japan","Tunis","Kuwait"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 624 ,322 BUTTONEX btn1;
CAPTION "Register ";
ON CLICK MSGINFO( "Thanks For Registration" ) ;
WIDTH 105 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 624 ,433 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK Close()  ;
WIDTH 103 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 11 ,157 IMAGE image2;
PICTURE "LOGO.GIF";
STRETCH ;
WIDTH 200 HEIGHT 113
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_REGISTRATION_PAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Registration '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Registration Form Application'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'First Name'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Last Name'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Email Address'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Password'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Gender'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Date of Birth'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Address'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'City'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'State'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",93,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Mobile No.'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",120,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",133,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Male'",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",141,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check2 ) , Caption : 'Female'",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",154,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",161,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",168,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",175,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",181,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'USA','Uk','German','Italy','China','Egypt','Saudi Arabia','UAE','france','Japan','Tunis','Kuwait'}",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",187,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Register '",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Thanks For Registration'",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",198,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",201,202)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'LOGO.GIF'",207,208)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",211,212)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",213,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
Return
*-------------------------------------------------------------------*
