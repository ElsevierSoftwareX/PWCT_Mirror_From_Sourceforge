*---------------------------------------------------------------------------*
* Time : 13:42:28    Date : 12/28/2011
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


Resistance R_REGISTRATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REGISTRATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 977 ;
VIRTUAL HEIGHT 2000 ;
ICON "PWCTICON" ;
TITLE "Registration" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 11 ,10 IMAGE image1;
PICTURE "logo.jpg";
STRETCH ;
WIDTH 604 HEIGHT 99
@ 229 ,152 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 285 ,154 LABEL lbl2 ;
VALUE "Gender" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 338 ,154 LABEL lbl3 ;
VALUE "Birthday" ;
WIDTH 121 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 394 ,155 LABEL lbl4 ;
VALUE "Country" ;
WIDTH 114 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 557 ,147 LABEL lbl5 ;
VALUE "Language" ;
WIDTH 119 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 688 ,139 LABEL lbl6 ;
VALUE "Password" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 621 ,156 LABEL lbl7 ;
VALUE "Email" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 757 ,159 LABEL lbl8 ;
VALUE "Visit Us Here" ;
WIDTH 132 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,255,0}
@ 143 ,156 LABEL lbl9 ;
VALUE "EGYPT" ;
WIDTH 114 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 143 ,241 LABEL lbl10 ;
VALUE "SITE" ;
WIDTH 102 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,255,255}
@ 143 ,310 LABEL lbl11 ;
VALUE "REGISTRATION" ;
WIDTH 165 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 228 ,248 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 222 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 287 ,246 COMBOBOX combo1;
WIDTH 222 ;
HEIGHT 300;
ITEMS {"Female","Male"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 334 ,246 COMBOBOX combo2;
WIDTH 104 ;
HEIGHT 300;
ITEMS {"jan","feb","March","april","may","june","july","august","sep","oct","nov","dec"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 335 ,357 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 53 ;
VALUE "day" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 335 ,415 TEXTBOX text3;
HEIGHT 27 ;
WIDTH 53 ;
VALUE "year" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 399 ,246 LISTBOX list1;
WIDTH 226 ;
HEIGHT 131 ;
ITEMS {"africa","ashia","north america","south america","euorp"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 558 ,244 RADIOGROUP radio1;
OPTIONS {"Arabic","English"};
WIDTH 234 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 684 ,248 TEXTBOX text4;
HEIGHT 29 ;
WIDTH 231 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 628 ,245 TEXTBOX text5;
HEIGHT 31 ;
WIDTH 231 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 754,304 HYPERLINK Hyper1;
VALUE "Click Here" ;
ADDRESS "https://www.facebook.com/groups/doublesvsoop/?notif_t=group_activity";
WIDTH 169 ;
HEIGHT 24 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,255} 

@ 836 ,201 BUTTONEX btn1;
CAPTION "Submit";
ON CLICK MSGINFO( "congratulation you become a member in egypt site" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 835 ,340 BUTTONEX btn2;
CAPTION "Reset";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_REGISTRATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Registration'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'logo.jpg'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Gender'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Birthday'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Country'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Language'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Password'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Email'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Visit Us Here'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'EGYPT'",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'SITE'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'REGISTRATION'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Female','Male'}",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo2 ) , Items : {'jan','feb','March','april','may','june','july','august','sep','oct','nov','dec'}",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",121,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'africa','ashia','north america','south america','euorp'}",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",128,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RadioGroup ( radio1 ) , Options : {'Arabic','English'}",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",136,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",141,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",153,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Submit'",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'congratulation you become a member in egypt site'",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Reset'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
Return
*-------------------------------------------------------------------*
