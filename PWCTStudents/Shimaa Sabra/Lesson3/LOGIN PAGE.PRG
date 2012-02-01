*---------------------------------------------------------------------------*
* Time : 05:17:38    Date : 02/01/2012
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


Resistance R_LOGIN_PAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_PAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 488 ;
HEIGHT 413 ;
ICON "PWCTICON" ;
TITLE "Login Page  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 0 ,0 IMAGE image1;
PICTURE "5B0EF50163D3536C21D7A775E372DCAE.JPG";
STRETCH ;
WIDTH 492 HEIGHT 98
@ 70 ,7 LABEL lbl1 ;
VALUE "USER LOGIN " ;
WIDTH 107 ;
HEIGHT 21 ;
FONT "Arabic Transparent" SIZE 14  ;
BACKCOLOR {0,35,70} ;
FONTCOLOR {255,255,255}
@ 176 ,41 LABEL lbl2 ;
VALUE "Usrname " ;
WIDTH 79 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 236 ,39 LABEL lbl3 ;
VALUE "Password " ;
WIDTH 83 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 116 ,23 LABEL lbl4 ;
VALUE "Please login your username and password " ;
WIDTH 310 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 317 ,-6 IMAGE image2;
PICTURE "B0EF50163D3536C21D7A775E372DCAE.JPG";
STRETCH ;
WIDTH 491 HEIGHT 74
@ 176 ,142 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 201 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 237 ,142 TEXTBOX text2;
HEIGHT 29 ;
WIDTH 202 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 331 ,167 BUTTONEX btn1;
CAPTION "LOGIN ";
ON CLICK login()  ;
WIDTH 91 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 331 ,357 BUTTONEX btn2;
CAPTION "QUIT";
ON CLICK quit()  ;
WIDTH 90 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 331 ,261 BUTTONEX btn3;
CAPTION "REGISTER";
ON CLICK register()  ;
WIDTH 93 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
password := win1.text2.Value
IF user==""
MyOut := MSGExclamation("Please Enter Username ","Error ")
ELSEIF password==""
MyOut := MSGExclamation("Please Enter Password","Error ")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 563 ;
HEIGHT 337 ;
ICON "PWCTICON" ;
TITLE "New Application  " ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 3 ,128 LABEL lbl1 ;
VALUE "Welcome to New Application " ;
WIDTH 297 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,131 CHECKBOX check1;
CAPTION "Take a tour about the application ";
WIDTH 277;
Height 31;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 152 ,131 CHECKBOX check2;
CAPTION "Enter to the application directly";
WIDTH 261;
Height 36;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 40 ,129 LABEL lbl2 ;
VALUE "You will enjoy using this application because it is easy to use" ;
WIDTH 461 ;
HEIGHT 32 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 261 ,435 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK closeapplication()  ;
WIDTH 92 HEIGHT 25 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ -9 ,-1 IMAGE sh;
PICTURE "E:\photo\green background\green background.jpg";
STRETCH ;
WIDTH 126 HEIGHT 327
@ 261 ,336 BUTTONEX btn3;
CAPTION "Next";
ON CLICK MSGINFO( "Next Page" ) ;
WIDTH 96 HEIGHT 25 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
ENDIF
procedure closeapplication()
win2.Release ( )
Return Nil
procedure register()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 573 ;
HEIGHT 703 ;
ICON "PWCTICON" ;
TITLE "Registration Page " ;
MODAL ;
NOSIZE ;
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
FONT "Arial" SIZE 14 ;
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
@ -7 ,172 IMAGE image2;
PICTURE "IMAGE.JPG";
STRETCH ;
WIDTH 156 HEIGHT 143
END WINDOW

ACTIVATE WINDOW win3
EndIF

return
procedure Close()
win3.Release ( )
return
procedure quit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LOGIN_PAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The Second Step",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '5B0EF50163D3536C21D7A775E372DCAE.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'USER LOGIN '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Usrname '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Password '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Please login your username and password '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'B0EF50163D3536C21D7A775E372DCAE.JPG'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'LOGIN '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'QUIT'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action quit",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'REGISTER'",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action register",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","password = win1.text2.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Username ' Title 'Error ' Type: Message Exclamation",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( password=='' )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Password' Title 'Error ' Type: Message Exclamation",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'New Application  '",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",98,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Welcome to New Application '",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",106,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Take a tour about the application '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check2 ) , Caption : 'Enter to the application directly'",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'You will enjoy using this application because it is easy to use'",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( sh ) , Image : 'E:\photo\green background\green background.jpg'",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Next'",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Next Page'",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Procedure",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Registration Page '",159,163)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",164,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Registration Form Application'",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",172,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",178,179)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",180,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'First Name'",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",187,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Last Name'",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",195,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Email Address'",201,202)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",203,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Password'",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",211,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Gender'",217,218)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",219,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Date of Birth'",225,226)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",227,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Address'",233,234)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",235,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'City'",241,242)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",243,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'State'",249,250)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",251,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Mobile No.'",257,258)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",259,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",266,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",272,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",278,283)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",285,289)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",291,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check1 ) , Caption : 'Male'",297,298)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",299,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define CheckBox ( check2 ) , Caption : 'Female'",304,305)
SS_ESASTEP("Circuits\Main\Main\Main","CheckBox Properties",306,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",312,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",319,324)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",326,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",333,337)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",339,343)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'USA','Uk','German','Italy','China','Egypt','Saudi Arabia','UAE','france','Japan','Tunis','Kuwait'}",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",345,352)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Register '",353,354)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Thanks For Registration'",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",356,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",359,360)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",362,364)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'IMAGE.JPG'",365,366)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",367,368)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",369,370)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",371,373)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Release ( )",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure quit ( Event : CLICK )",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",380,380)
Return
*-------------------------------------------------------------------*
