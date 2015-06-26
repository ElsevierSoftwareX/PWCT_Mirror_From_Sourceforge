*---------------------------------------------------------------------------*
* Time : 13:24:04    Date : 06/26/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.06.20
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_myprogram_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_myprogram_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 874 ;
HEIGHT 608 ;
ICON "PWCTICON" ;
TITLE "lessons from 1 to 20   " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
DEFINE STATUSBAR ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
BOLD 

STATUSITEM "Reem Mohammed Basheer" 

END STATUSBAR

@ 45 ,25 IMAGE image1;
PICTURE "images.jpg";
STRETCH ;
WIDTH 780 HEIGHT 490
@ 14 ,281 LABEL lbl1 ;
VALUE "Lessons from 1 to 20 " ;
WIDTH 283 ;
HEIGHT 55 ;
FONT "Baskerville Old Face" SIZE 24  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 75 ,53 BUTTONEX btnlesson1;
CAPTION "lesson 1 ";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson1()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 75 ,214 BUTTONEX btnlesson2;
CAPTION "lesson 2 ";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson2()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 75 ,375 BUTTONEX btnlesson3;
CAPTION "lesson 3";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson3()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 75 ,536 BUTTONEX btnlesson4;
CAPTION "lesson 4";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson4()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 75 ,697 BUTTONEX btnlesson5;
CAPTION "lesson 5";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson5()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,53 BUTTONEX btnlesson6;
CAPTION "lesson 6";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson6()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,214 BUTTONEX btnlesson7;
CAPTION "lesson 7";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson7()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,375 BUTTONEX btnlesson8;
CAPTION "lesson 8";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson8()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,536 BUTTONEX btnlesson9;
CAPTION "lesson 9";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson9()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,697 BUTTONEX btnlesson10;
CAPTION "lesson 10";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson10()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 224 ,53 BUTTONEX btnlesson11;
CAPTION "lesson 11";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson11()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 224 ,214 BUTTONEX btnlesson12;
CAPTION "lesson 12";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson12()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 224 ,375 BUTTONEX btnlesson13;
CAPTION "lesson 13";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson13()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 224 ,536 BUTTONEX btnlesson14;
CAPTION "lesson 14";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson14()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 224 ,697 BUTTONEX btnlesson15;
CAPTION "lesson 15 ";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson15()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 297 ,53 BUTTONEX btnlesson16;
CAPTION "lesson 16 ";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson16()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 297 ,214 BUTTONEX btnlesson17;
CAPTION "lesson 17";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson17()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 297 ,375 BUTTONEX btnlesson18;
CAPTION "lesson 18";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson18()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 297 ,536 BUTTONEX btnlesson19;
CAPTION "lesson 19";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson19()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 297 ,697 BUTTONEX btnlesson20;
CAPTION "lesson 20";
FONTCOLOR {64,0,64};
BACKCOLOR {174,174,255};
ON CLICK lesson20()  ;
WIDTH 114 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure lesson2()
if !iswindowdefined( winlesson2 )
DEFINE WINDOW winlesson2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson2 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 250 ,337 BUTTONEX btnlesson2;
CAPTION "close ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,255};
ON CLICK closewinlesson2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 112 ,47 LABEL lbllesson1 ;
VALUE "Welcome Lesson 2 " ;
WIDTH 481 ;
HEIGHT 163 ;
FONT "Arial Rounded MT Bold" SIZE 30  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW winlesson2
EndIF

return
procedure closewinlesson2()
winlesson2.Release ( )
return
procedure lesson3()
if !iswindowdefined( winlesson3 )
DEFINE WINDOW winlesson3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK windowlesson3()  ;
ICON "PWCTICON" ;
TITLE "lesson3  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 105 ,84 LABEL lbllesson3 ;
VALUE " Click Me !" ;
WIDTH 338 ;
HEIGHT 108 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW winlesson3
EndIF

return
procedure windowlesson3()
if !iswindowdefined( pwindowlesson3 )
DEFINE WINDOW pwindowlesson3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson3 pink  " ;
CHILD ;
BACKCOLOR {255,128,255} 

END WINDOW

ACTIVATE WINDOW pwindowlesson3
EndIF

return
procedure lesson4()
if !iswindowdefined( winlesson4 )
DEFINE WINDOW winlesson4 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK windowlesson4()  ;
ICON "PWCTICON" ;
TITLE "lesson4  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 105 ,84 LABEL lbllesson4 ;
VALUE " Click Me !" ;
WIDTH 338 ;
HEIGHT 108 ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,255}
END WINDOW

ACTIVATE WINDOW winlesson4
EndIF

return
procedure windowlesson4()
if !iswindowdefined( bwinlesson4 )
DEFINE WINDOW bwinlesson4 ;
AT 10 ,10 ;
WIDTH 405 ;
HEIGHT 336 ;
ON MOUSECLICK showmassege4()  ;
ICON "PWCTICON" ;
TITLE "blue lesson4  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 107 ,6 LABEL lbllesson3blue ;
VALUE "Click Me To Show The Massge " ;
WIDTH 510 ;
HEIGHT 152 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW bwinlesson4
EndIF

return
procedure showmassege4()
MyOut := MSGBOX("Welcome To Lesson 3 From PWCT ","massage ")
return
procedure lesson5()
if !iswindowdefined( winlesson5 )
DEFINE WINDOW winlesson5 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK windowlesson5()  ;
ICON "PWCTICON" ;
TITLE "lesson5  " ;
CHILD ;
BACKCOLOR {255,255,255} 

@ 124 ,112 LABEL lbllesson5 ;
VALUE "Click Me ! " ;
WIDTH 271 ;
HEIGHT 110 ;
FONT "Arial Rounded MT Bold" SIZE 36  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW winlesson5
EndIF

return
procedure windowlesson5()
if !iswindowdefined( subwinlesson5 )
DEFINE WINDOW subwinlesson5 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " sub lesson 5 " ;
CHILD ;
BACKCOLOR {255,128,255} 

@ 97 ,183 BUTTONEX btnmin3;
CAPTION "Minimize ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK minlesson5()  ;
WIDTH 104 HEIGHT 39 ;
FONT "arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 155 ,185 BUTTONEX btncenter3;
CAPTION "Center ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK centerlesson5()  ;
WIDTH 104 HEIGHT 39 ;
FONT "" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 211 ,184 BUTTONEX btnmax3;
CAPTION "Maximize ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,255,255};
ON CLICK maxlesson5()  ;
WIDTH 104 HEIGHT 39 ;
FONT "" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW subwinlesson5
EndIF

return
procedure minlesson5()
subwinlesson5.Minimize ( )
return
procedure centerlesson5()
subwinlesson5.Center ( )
return
procedure maxlesson5()
subwinlesson5.Maximize ( )
return
procedure lesson6()
if !iswindowdefined( winlesson6 )
DEFINE WINDOW winlesson6 ;
AT 10 ,10 ;
WIDTH 463 ;
HEIGHT 431 ;
ICON "PWCTICON" ;
TITLE "lesson6 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson6;
WIDTH 434 ;
HEIGHT 235 ;
FONT "Arial Rounded MT Bold" SIZE 20 ;
BACKCOLOR {135,220,252} ;
FONTCOLOR {0,0,0}
@ 260 ,15 LABEL lblname6 ;
VALUE "Name " ;
WIDTH 75 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 303 ,12 LABEL lblphone6 ;
VALUE "Phone " ;
WIDTH 82 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 348 ,13 LABEL lbladress6 ;
VALUE "Adress " ;
WIDTH 80 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {64,0,128}
@ 261 ,81 TEXTBOX textname6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 304 ,80 TEXTBOX textphone6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 347 ,82 TEXTBOX textadress6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 341 ,339 BUTTONEX btnprint6;
CAPTION "Print ";
FONTCOLOR {0,0,0};
BACKCOLOR {204,153,197};
ON CLICK printlesoon6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson6
EndIF

return
procedure printlesoon6()
cname := winlesson6.textname6.Value
cphone := winlesson6.textphone6.Value
cadress := winlesson6.textadress6.Value
winlesson6.listlesson6.Additem ( cname )
winlesson6.listlesson6.Additem ( cphone )
winlesson6.listlesson6.Additem ( cadress )
return
procedure lesson7()
if !iswindowdefined( winlesson7 )
DEFINE WINDOW winlesson7 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 422 ;
ICON "PWCTICON" ;
TITLE "lesson7  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson7;
WIDTH 434 ;
HEIGHT 235 ;
FONT "arial" SIZE 20 ;
BACKCOLOR {156,237,167} ;
FONTCOLOR {0,0,0}
@ 260 ,15 LABEL lblname7 ;
VALUE "Name " ;
WIDTH 75 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 303 ,12 LABEL lblphone7 ;
VALUE "Phone " ;
WIDTH 82 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 348 ,13 LABEL lbladress7 ;
VALUE "Adress " ;
WIDTH 80 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 261 ,81 TEXTBOX textname7;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 304 ,80 TEXTBOX textphone7;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 347 ,82 TEXTBOX textadress7;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 343 ,393 BUTTONEX btnprint7;
CAPTION "Print ";
FONTCOLOR {0,0,0};
BACKCOLOR {92,182,186};
ON CLICK printlesoon7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 290 ,395 BUTTONEX btnlesson7set;
CAPTION "Set Values ";
FONTCOLOR {0,0,0};
BACKCOLOR {92,182,186};
ON CLICK setfvalueslesson7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson7
EndIF

return
procedure printlesoon7()
cname7 := winlesson7.textname7.Value
cphone7 := winlesson7.textphone7.Value
cadress7 := winlesson7.textadress7.Value
winlesson7.listlesson7.Additem ( cname7 )
winlesson7.listlesson7.Additem ( cadress7 )
winlesson7.listlesson7.Additem ( cphone7 )
return
procedure setfvalueslesson7()
xname := "reem"
xphone := "0559566527"
xadress := "KSA"
winlesson7.textname7.Value := xname
winlesson7.textphone7.Value := xphone
winlesson7.textadress7.Value := xadress
winlesson7.listlesson7.DeleteAllItems ( )
return
procedure lesson8()
if !iswindowdefined( winlesson8 )
DEFINE WINDOW winlesson8 ;
AT 10 ,10 ;
WIDTH 514 ;
HEIGHT 450 ;
ICON "PWCTICON" ;
TITLE "lesson8  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson8;
WIDTH 378 ;
HEIGHT 237 ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {225,225,225} ;
FONTCOLOR {0,0,0}
@ 274 ,15 LABEL lblname8 ;
VALUE "Name " ;
WIDTH 75 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,23,139}
@ 317 ,12 LABEL lblphone8 ;
VALUE "Phone " ;
WIDTH 82 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,23,139}
@ 362 ,13 LABEL lbladress8 ;
VALUE "Adress " ;
WIDTH 80 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,23,139}
@ 274 ,104 TEXTBOX textname8;
HEIGHT 29 ;
WIDTH 286 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,206,206} ;
FONTCOLOR {0,0,0} 

@ 317 ,103 TEXTBOX textphone8;
HEIGHT 30 ;
WIDTH 288 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,206,206} ;
FONTCOLOR {0,0,0} 

@ 360 ,105 TEXTBOX textadress8;
HEIGHT 31 ;
WIDTH 286 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,206,206} ;
FONTCOLOR {0,0,0} 

@ 15 ,393 BUTTONEX btnprint8;
CAPTION "Print ";
FONTCOLOR {0,0,0};
BACKCOLOR {205,155,255};
ON CLICK printlesoon8()  ;
WIDTH 97 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 63 ,391 BUTTONEX btnlesson8set;
CAPTION "Set Values ";
FONTCOLOR {0,0,0};
BACKCOLOR {205,155,255};
ON CLICK setvalueslesson8()  ;
WIDTH 101 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 107 ,392 BUTTONEX btnlesson8copy;
CAPTION "copy ";
FONTCOLOR {0,0,0};
BACKCOLOR {205,155,255};
ON CLICK copylesson8()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 152 ,391 BUTTONEX btnlesson8past;
CAPTION "past";
FONTCOLOR {0,0,0};
BACKCOLOR {205,155,255};
ON CLICK pastlesson8()  ;
WIDTH 103 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson8
EndIF

return
procedure printlesoon8()
cname8 := winlesson8.textname8.Value
cphone8 := winlesson8.textphone8.Value
cadress8 := winlesson8.textadress8.Value
winlesson8.listlesson8.Additem ( cname8 )
winlesson8.listlesson8.Additem ( cphone8 )
winlesson8.listlesson8.Additem ( cadress8 )
return
procedure copylesson8()
Public cname8
Public cphone8
Public cadress8
cname8 := winlesson8.textname8.Value
cphone8 := winlesson8.textphone8.Value
cadress8 := winlesson8.textadress8.Value
return
procedure setvalueslesson8()
xname8 := "reem"
xphone8 := "0559566527"
xadress8 := "KSA"
winlesson8.textname8.Value := xname8
winlesson8.textphone8.Value := xphone8
winlesson8.textadress8.Value := xadress8
winlesson8.listlesson8.DeleteAllItems ( )
return
procedure pastlesson8()
winlesson8.textname8.Value := cname8
winlesson8.textphone8.Value := cphone8
winlesson8.textadress8.Value := cadress8
return
procedure lesson9()
if !iswindowdefined( winlesson9 )
DEFINE WINDOW winlesson9 ;
AT 10 ,10 ;
WIDTH 523 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson9  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 69 ,240 LABEL lbllesson8num ;
VALUE "Numbric variables " ;
WIDTH 206 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 70 ,29 LABEL lbllesson9str ;
VALUE "String variables " ;
WIDTH 183 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,128,0}
@ 128 ,245 TEXTBOX textlesson9num1;
HEIGHT 30 ;
WIDTH 186 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {193,193,225} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 187 ,246 TEXTBOX textlesson9num2;
HEIGHT 30 ;
WIDTH 193 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {193,193,225} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 249 ,248 TEXTBOX textlesson9num3;
HEIGHT 30 ;
WIDTH 191 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {193,193,225} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 129 ,22 TEXTBOX textlesson9num4;
HEIGHT 32 ;
WIDTH 177 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {169,233,181} ;
FONTCOLOR {0,0,0} 

@ 188 ,18 TEXTBOX textlesson9num5;
HEIGHT 31 ;
WIDTH 183 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {169,233,181} ;
FONTCOLOR {0,0,0} 

@ 250 ,18 TEXTBOX textlesson9num6;
HEIGHT 31 ;
WIDTH 185 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {169,233,181} ;
FONTCOLOR {0,0,0} 

@ 128 ,452 LABEL lbllesson9num1 ;
VALUE "num1 " ;
WIDTH 51 ;
HEIGHT 25 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 187 ,454 LABEL lbllesson9num2 ;
VALUE "num2 " ;
WIDTH 57 ;
HEIGHT 22 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 249 ,458 LABEL lbllesson9sum ;
VALUE "sum" ;
WIDTH 50 ;
HEIGHT 22 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 310 ,176 BUTTONEX btnlesson9sum;
CAPTION "Add Sum ";
FONTCOLOR {255,255,255};
BACKCOLOR {60,126,181};
ON CLICK addlesson9()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson9
EndIF

return
procedure addlesson9()
num1 := winlesson9.textlesson9num1.Value
num2 := winlesson9.textlesson9num2.Value
sum1 := num1+num2
winlesson9.textlesson9num3.Value := sum1
num4 := winlesson9.textlesson9num4.Value
num5 := winlesson9.textlesson9num5.Value
xnum4 = VAL ( num4 )
xnum5 = VAL ( num5 )
xnum6 := xnum4+xnum5
cnum6 = STR ( xnum6 )
trimname6 = ALLTRIM ( cnum6 )
winlesson9.textlesson9num6.Value := trimname6
return
procedure lesson10()
if !iswindowdefined( winlesson10 )
DEFINE WINDOW winlesson10 ;
AT 10 ,10 ;
WIDTH 609 ;
HEIGHT 399 ;
ICON "PWCTICON" ;
TITLE "lesson10  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson10;
WIDTH 473 ;
HEIGHT 294 ;
FONT "Arial Narrow" SIZE 16 ;
BACKCOLOR {174,228,255} ;
FONTCOLOR {0,0,0}
@ 16 ,488 BUTTONEX btntest10;
CAPTION "GO ! ";
FONTCOLOR {0,0,0};
BACKCOLOR {233,92,141};
ON CLICK golesson10()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 323 ,13 LABEL lblfrom10 ;
VALUE "From " ;
WIDTH 55 ;
HEIGHT 19 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 323 ,147 LABEL lblto10 ;
VALUE "To " ;
WIDTH 44 ;
HEIGHT 23 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 324 ,289 LABEL lblcount10 ;
VALUE "counter " ;
WIDTH 70 ;
HEIGHT 24 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 323 ,58 TEXTBOX textfrom;
HEIGHT 28 ;
WIDTH 80 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 323 ,186 TEXTBOX textto;
HEIGHT 28 ;
WIDTH 86 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 323 ,362 TEXTBOX textcount;
HEIGHT 28 ;
WIDTH 105 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW winlesson10
EndIF

return
procedure golesson10()
Public cto
Public cfrom
Public xcount
cfrom := winlesson10.textfrom.Value
cto := winlesson10.textto.Value
xcount := winlesson10.textcount.Value
FOR x=cfrom TO cto STEP xcount
winlesson10.Listlesson10.Additem ( "Hello Welcome to lesson 10 " )
Next
return
procedure lesson11()
if !iswindowdefined( winlesson11 )
DEFINE WINDOW winlesson11 ;
AT 10 ,10 ;
WIDTH 606 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson 11  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson11;
WIDTH 473 ;
HEIGHT 294 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,213} ;
FONTCOLOR {0,0,0}
@ 16 ,488 BUTTONEX btntest11;
CAPTION "GO ! ";
FONTCOLOR {0,0,0};
BACKCOLOR {213,170,255};
ON CLICK golesson11()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 323 ,13 LABEL lblfrom11 ;
VALUE "From " ;
WIDTH 55 ;
HEIGHT 19 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 323 ,147 LABEL lblto11 ;
VALUE "To " ;
WIDTH 44 ;
HEIGHT 23 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 324 ,289 LABEL lblcount11 ;
VALUE "counter " ;
WIDTH 70 ;
HEIGHT 24 ;
FONT "Arial Rounded MT Bold" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 323 ,58 TEXTBOX textfrom11;
HEIGHT 28 ;
WIDTH 80 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,202,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 323 ,186 TEXTBOX textto11;
HEIGHT 28 ;
WIDTH 86 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,202,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 323 ,362 TEXTBOX textcount11;
HEIGHT 28 ;
WIDTH 105 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,202,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW winlesson11
EndIF

return
procedure golesson11()
cfrom11 := winlesson11.textfrom11.Value
cto11 := winlesson11.textto11.Value
xcount11 := winlesson11.textcount11.Value
FOR x=cfrom11 TO cto11 STEP xcount11
IF x%2=0
Winlesson11.Listlesson11.Additem ( "this number is even " )
Loop
ENDIF
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
winlesson11.Listlesson11.Additem ( x2 )
Next
return
procedure lesson12()
if !iswindowdefined( winlesson12 )
DEFINE WINDOW winlesson12 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "lesson12  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson12;
WIDTH 423 ;
HEIGHT 223 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {196,225,255} ;
FONTCOLOR {0,0,0}
@ 277 ,12 LABEL lbllesson12 ;
VALUE "Name " ;
WIDTH 65 ;
HEIGHT 24 ;
FONT "Arial Rounded MT Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 277 ,96 TEXTBOX textlesson12;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,185} ;
FONTCOLOR {0,0,0} 

@ 313 ,373 BUTTONEX btnlesson12;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,220,185};
ON CLICK add12()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson12
EndIF

return
procedure add12()
name12 := winlesson12.textlesson12.Value
name12 = ALLTRIM ( name12 )
ncount12 = Addletters12 ( name12 )
ncount12 = STR ( ncount12 )
MyOut := MSGBOX("the number of letters "+ncount12,"hello ")
winlesson12.listlesson12.DeleteAllItems ( )
return
Function  Addletters12 ( cletter )
Local nmax12
nmax12  = LEN(cletter)
IF nmax12>1
FOR x = 1 TO nmax12 STEP 1
str = SUBSTR(cletter,x,1)
winlesson12.listlesson12.Additem ( str )
Next
ENDIF
Return nmax12
procedure lesson13()
if !iswindowdefined( winlesson13 )
DEFINE WINDOW winlesson13 ;
AT 10 ,10 ;
WIDTH 492 ;
HEIGHT 411 ;
ICON "PWCTICON" ;
TITLE "lesson13 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson13;
WIDTH 423 ;
HEIGHT 223 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,192,130} ;
FONTCOLOR {0,0,0}
@ 277 ,12 LABEL lbllesson13 ;
VALUE "Name " ;
WIDTH 65 ;
HEIGHT 24 ;
FONT "" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 277 ,96 TEXTBOX textlesson13;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
BACKCOLOR {255,255,206} ;
FONTCOLOR {0,0,0} 

@ 323 ,371 BUTTONEX btnlesson13;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {152,235,163};
ON CLICK add13()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson13
EndIF

return
procedure add13()
name13 := winlesson13.textlesson13.Value
name13 = ALLTRIM ( name13 )
ncount13 = Addletters13 ( name13 )
ncount13 = STR ( ncount13 )
MyOut := MSGBOX("the number of letters "+ncount13,"hello ")
return
Function  Addletters13 ( cletter )
Local nmax13
nmax13  = LEN(cletter)
IF True
Return nmax13
ENDIF
IF nmax13>1
FOR x = 1 TO nmax13 STEP 1
str = SUBSTR(cletter,x,1)
winlesson13.listlesson13.Additem ( str )
Next
ENDIF
Return nmax13
procedure lesson14()
array14 := {}
AADD( array14 , "1")
AADD( array14 , "2")
AADD( array14 , "3")
AADD( array14 , "4")
AADD( array14 , "one")
AADD( array14 , "two")
AADD( array14 , "three")
AADD( array14 , "four")
if !iswindowdefined( winlesson14 )
DEFINE WINDOW winlesson14 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "lesson14 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 LISTBOX listlesson14;
WIDTH 184 ;
HEIGHT 256 ;
ITEMS array14 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,198,198} ;
FONTCOLOR {0,0,0}
@ 10 ,263 LISTBOX listlesson142;
WIDTH 203 ;
HEIGHT 259 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {176,176,255} ;
FONTCOLOR {0,0,0}
@ 311 ,166 BUTTONEX btnadd14;
CAPTION "Add Items ";
FONTCOLOR {0,0,0};
BACKCOLOR {91,219,213};
ON CLICK addlesson14()  ;
WIDTH 107 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson14
EndIF

return
procedure addlesson14()
nvalue  = LEN(array14)
FOR x = 5 TO nvalue STEP 1
nlen  = LEN(array14)
IF nlen >5
winlesson14.listlesson142.Additem ( array14[x] )
ENDIF
Next
return
procedure lesson15()
array15 := {}
AADD( array15 , 1)
AADD( array15 , 10)
AADD( array15 , "welcome to lesson 15 ")
AADD( array15 , true)
set century on
cdate = DATE()
AADD( array15 , cdate)
if !iswindowdefined( winlesson15 )
DEFINE WINDOW winlesson15 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT windowlesson15()  ;
ICON "PWCTICON" ;
TITLE " lesson15 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 30 ,54 LISTBOX listlesson15;
WIDTH 373 ;
HEIGHT 290 ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {218,244,248} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW winlesson15
EndIF

return
procedure windowlesson15()
winlesson15.listlesson15.Additem ( array15[3] )
cdate1 = DTOC ( array15[5] )
winlesson15.listlesson15.Additem ( cdate1 )
FOR x=array15[1] TO array15[2] STEP 1
x2 = STR ( x )
winlesson15.listlesson15.Additem ( x2 )
Next
IF array15[4]=True
FOR x=array15[2] TO array15[1] STEP -1
x2 = STR ( x )
winlesson15.listlesson15.Additem ( x2 )
Next
ENDIF
return
procedure lesson16()
array16 := {}
FOR x = 1 TO 10 STEP 1
AADD( array16 , {x, x*x})
Next
if !iswindowdefined( winlesson16 )
DEFINE WINDOW winlesson16 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT windowlesson16()  ;
ICON "PWCTICON" ;
TITLE " lesson16 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 23 ,17 LISTBOX listlesson16;
WIDTH 392 ;
HEIGHT 300 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {203,232,164} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW winlesson16
EndIF

return
procedure windowlesson16()
nmax  = LEN(array16)
FOR x = 1 TO nmax STEP 1
nsum16 := array16[x][1] + array16[x][2]
csum16 = STR ( nsum16 )
csum16 = ALLTRIM ( csum16 )
winlesson16.listlesson16.Additem ( csum16 )
Next
return
procedure lesson17()
array17 := {}
FOR x = 1 TO 10 STEP 1
AADD( array17 , {x, x*x})
Next
if !iswindowdefined( winlesson17 )
DEFINE WINDOW winlesson17 ;
AT 10 ,10 ;
WIDTH 660 ;
HEIGHT 464 ;
ON INIT windowlesson17()  ;
ICON "PWCTICON" ;
TITLE "lesson17  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 20 ,245 GRID Gridlesson17;
WIDTH 397 ;
HEIGHT 293 ;
HEADERS {"x","x*x","x+(x*x)"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {206,225,244} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 20 ,11 LISTBOX listlesson17;
WIDTH 219 ;
HEIGHT 288 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,215,255} ;
FONTCOLOR {0,0,0}
@ 360 ,15 LABEL lblmax17 ;
VALUE "Max " ;
WIDTH 52 ;
HEIGHT 34 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 360 ,96 TEXTBOX textlesson17;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 360 ,338 BUTTONEX btnlesson17;
CAPTION "Add max ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,174};
ON CLICK max17()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winlesson17
EndIF

return
procedure windowlesson17()
nmax17  = LEN(array17)
FOR x = 1 TO nmax17 STEP 1
nsum17 := array17[x][1] + array17[x][2]
csum17 = STR ( nsum17 )
csum17 = ALLTRIM ( csum17 )
winlesson17.listlesson17.Additem ( csum17 )
cnum1 = STR ( array17[x][1] )
cnum2 = STR ( array17[x][2] )
cnum1 = ALLTRIM ( cnum1 )
cnum2 = ALLTRIM ( cnum2 )
winlesson17.Gridlesson17.AddItem ( {cnum1,cnum2,csum17} )
Next
return
procedure max17()
array17 := {}
textmax := winlesson17.textlesson17.Value
IF textmax>=1
FOR x = 1 TO textmax STEP 1
AADD( array17 , {x, x*x})
Next
ENDIF
winlesson17.Gridlesson17.DeleteAllItems ( )
winlesson17.listlesson17.DeleteAllItems ( )
DO windowlesson17
return
procedure lesson18()
array18 := {"9","8","10","17","44","30"}
if !iswindowdefined( winlesson18 )
DEFINE WINDOW winlesson18 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 446 ;
ICON "PWCTICON" ;
TITLE " lesson 18 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 65 ,10 LISTBOX listlesson18first;
HEIGHT 200 ;
ITEMS array18 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,206,231} ;
FONTCOLOR {0,0,0}
@ 65 ,250 LISTBOX listlesson18second;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {210,238,247} ;
FONTCOLOR {0,0,0}
@ 366 ,267 BUTTONEX btnlesson18push;
CAPTION "push ";
FONTCOLOR {0,0,0};
BACKCOLOR {157,255,182};
ON CLICK push18()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 366 ,104 BUTTONEX btnlesson18pop;
CAPTION "pop";
FONTCOLOR {0,0,0};
BACKCOLOR {157,255,182};
ON CLICK pop18()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial Rounded MT Bold" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 298 ,137 TEXTBOX textlesson18;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,159} ;
FONTCOLOR {0,0,0} 

@ 11 ,139 LABEL lbllesson18 ;
VALUE "Stack Structure " ;
WIDTH 166 ;
HEIGHT 33 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {196,0,98}
END WINDOW

ACTIVATE WINDOW winlesson18
EndIF

return
procedure pop18()
cmax18  = LEN(array18)
IF cmax18>0
Winlesson18.listlesson18second.Additem ( array18[cmax18] )
ADEL( array18 , cmax18)
ASIZE( array18 , LEN( array18 ) - 1 )
winlesson18.listlesson18first.DeleteItem ( cmax18 )
ENDIF
return
procedure push18()
citems := winlesson18.textlesson18.Value
citems = ALLTRIM ( citems )
AADD( array18 , citems)
winlesson18.listlesson18first.Additem ( citems )
return
procedure lesson19()
array19 := {"9","8","10","17","44","30"}
if !iswindowdefined( win19 )
DEFINE WINDOW win19 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 435 ;
ICON "PWCTICON" ;
TITLE " lesson 18 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 55 ,8 LISTBOX listlesson19first;
HEIGHT 200 ;
ITEMS array19 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {191,255,191} ;
FONTCOLOR {0,0,0}
@ 55 ,248 LISTBOX listlesson19second;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,176} ;
FONTCOLOR {0,0,0}
@ 356 ,265 BUTTONEX btnlesson19add;
CAPTION "add";
FONTCOLOR {0,0,0};
BACKCOLOR {188,210,147};
ON CLICK add19()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 356 ,102 BUTTONEX btnlesson19remove;
CAPTION "remove";
FONTCOLOR {0,0,0};
BACKCOLOR {188,210,147};
ON CLICK remove19()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 288 ,135 TEXTBOX textlesson19;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,217,179} ;
FONTCOLOR {0,0,0} 

@ 8 ,151 LABEL lbllesson19 ;
VALUE "Que Structure " ;
WIDTH 150 ;
HEIGHT 28 ;
FONT "Arial Rounded MT Bold" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win19
EndIF

return
procedure add19()
citems19 := win19.textlesson19.Value
citems19 = ALLTRIM ( citems19 )
AADD( array19 , citems19)
win19.listlesson19first.Additem ( citems19 )
return
procedure remove19()
cmax19  = LEN(array19)
IF cmax19>0
Win19.listlesson19second.Additem ( array19[1] )
ADEL( array19 , 1)
ASIZE( array19 , LEN( array19 ) - 1 )
win19.listlesson19first.DeleteItem ( 1 )
ENDIF
return
procedure lesson20()
obj20 = class20()
out = obj20:method20()
return
Class class20
Method method20
EndClass
Method method20 Class class20
MyOut := MSGINFO("welcome to OOP lesson 20 ","OOP ")
Return 0
procedure lesson1()
if !iswindowdefined( winlesson1 )
DEFINE WINDOW winlesson1 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 480 ;
ICON "PWCTICON" ;
TITLE "lesson1 " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 193 ,62 LABEL lbllesson1 ;
VALUE "Welcome To PWCT " ;
WIDTH 481 ;
HEIGHT 163 ;
FONT "Arial Rounded MT Bold" SIZE 30  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {69,217,32}
END WINDOW

ACTIVATE WINDOW winlesson1
EndIF

return


End Of Resistance

INIT PROCEDURE Init_myprogram
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'lessons from 1 to 20   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Reem Mohammed Basheer' )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'images.jpg'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Lessons from 1 to 20 '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson1 ) , Caption : 'lesson 1 '",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson1",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson2 ) , Caption : 'lesson 2 '",43,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson2",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson3 ) , Caption : 'lesson 3'",52,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson3",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson4 ) , Caption : 'lesson 4'",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson4",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson5 ) , Caption : 'lesson 5'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson5",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson6 ) , Caption : 'lesson 6'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson6",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson7 ) , Caption : 'lesson 7'",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson7",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson8 ) , Caption : 'lesson 8'",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson8",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson9 ) , Caption : 'lesson 9'",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson9",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson10 ) , Caption : 'lesson 10'",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson10",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson11 ) , Caption : 'lesson 11'",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson11",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",129,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson12 ) , Caption : 'lesson 12'",133,136)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson12",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",138,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson13 ) , Caption : 'lesson 13'",142,145)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson13",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",147,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson14 ) , Caption : 'lesson 14'",151,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson14",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson15 ) , Caption : 'lesson 15 '",160,163)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson15",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",165,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson16 ) , Caption : 'lesson 16 '",169,172)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson16",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",174,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson17 ) , Caption : 'lesson 17'",178,181)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson17",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",183,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson18 ) , Caption : 'lesson 18'",187,190)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson18",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",192,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson19 ) , Caption : 'lesson 19'",196,199)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson19",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",201,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson20 ) , Caption : 'lesson 20'",205,208)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lesson20",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",210,213)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",214,215)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",216,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson2 ( Event : CLICK )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson2 ) , Title : 'lesson2 '",220,224)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",225,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson2 ) , Caption : 'close '",233,236)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewinlesson2",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",238,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson1 ) , Caption : 'Welcome Lesson 2 '",242,243)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",244,248)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",249,250)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",251,253)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewinlesson2 ( Event : CLICK )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson2.Release( )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson3 ( Event : CLICK )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson3 ) , Title : 'lesson3  '",259,263)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action windowlesson3",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",265,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson3 ) , Caption : ' Click Me !'",273,274)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",275,279)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",280,281)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",282,284)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson3 - Event : MOUSECLICK",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( pwindowlesson3 ) , Title : 'lesson3 pink  '",287,291)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",292,296)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",297,298)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",299,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson4 ( Event : CLICK )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson4 ) , Title : 'lesson4  '",304,308)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action windowlesson4",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",310,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson4 ) , Caption : ' Click Me !'",318,319)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",320,324)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",325,326)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",327,329)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson4 - Event : MOUSECLICK",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( bwinlesson4 ) , Title : 'blue lesson4  '",332,336)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action showmassege4",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",338,345)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson3blue ) , Caption : 'Click Me To Show The Massge '",346,347)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",348,352)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",353,354)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",355,357)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showmassege4 - Event : MOUSECLICK",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Welcome To Lesson 3 From PWCT ' Title 'massage ' Type: Message Box",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson5 ( Event : CLICK )",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson5 ) , Title : 'lesson5  '",363,367)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action windowlesson5",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",369,373)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson5 ) , Caption : 'Click Me ! '",374,375)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",376,380)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",383,385)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson5 - Event : MOUSECLICK",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( subwinlesson5 ) , Title : ' sub lesson 5 '",388,392)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",393,397)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmin3 ) , Caption : 'Minimize '",398,401)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minlesson5",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",403,406)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncenter3 ) , Caption : 'Center '",407,410)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerlesson5",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",412,415)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnmax3 ) , Caption : 'Maximize '",416,419)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxlesson5",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",421,424)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",425,426)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",427,429)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minlesson5 ( Event : CLICK )",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","subwinlesson5.Minimize( )",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerlesson5 ( Event : CLICK )",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","subwinlesson5.Center( )",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxlesson5 ( Event : CLICK )",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","subwinlesson5.Maximize( )",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson6 ( Event : CLICK )",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson6 ) , Title : 'lesson6 '",441,445)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",446,453)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson6 )",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",455,459)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblname6 ) , Caption : 'Name '",460,461)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",462,466)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblphone6 ) , Caption : 'Phone '",467,468)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",469,473)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbladress6 ) , Caption : 'Adress '",474,475)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",476,480)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname6  )",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",482,487)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone6  )",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",489,494)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadress6  )",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",496,501)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprint6 ) , Caption : 'Print '",502,505)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action printlesoon6",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",507,510)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",511,512)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",513,515)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure printlesoon6 ( Event : CLICK )",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","cname = winlesson6.textname6.Value",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = winlesson6.textphone6.Value",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = winlesson6.textadress6.Value",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cname) to Listbox (listlesson6) of Window (winlesson6)",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cphone) to Listbox (listlesson6) of Window (winlesson6)",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cadress) to Listbox (listlesson6) of Window (winlesson6)",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson7 ( Event : CLICK )",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson7 ) , Title : 'lesson7  '",526,530)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",531,538)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson7 )",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",540,544)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblname7 ) , Caption : 'Name '",545,546)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",547,551)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblphone7 ) , Caption : 'Phone '",552,553)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",554,558)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbladress7 ) , Caption : 'Adress '",559,560)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",561,565)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname7  )",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",567,572)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone7  )",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",574,579)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadress7  )",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",581,586)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprint7 ) , Caption : 'Print '",587,590)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action printlesoon7",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",592,595)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson7set ) , Caption : 'Set Values '",596,599)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setfvalueslesson7",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",601,604)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",605,606)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",607,609)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure printlesoon7 ( Event : CLICK )",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","cname7 = winlesson7.textname7.Value",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","cphone7 = winlesson7.textphone7.Value",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","cadress7 = winlesson7.textadress7.Value",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cname7) to Listbox (listlesson7) of Window (winlesson7)",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cadress7) to Listbox (listlesson7) of Window (winlesson7)",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cphone7) to Listbox (listlesson7) of Window (winlesson7)",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setfvalueslesson7 ( Event : CLICK )",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","xname = 'reem'",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","xphone = '0559566527'",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","xadress = 'KSA'",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson7.textname7.Value := xname",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson7.textphone7.Value := xphone",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson7.textadress7.Value := xadress",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson7.listlesson7.DeleteAllItems ( )",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson8 ( Event : CLICK )",628,628)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson8 ) , Title : 'lesson8  '",629,633)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",634,641)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson8 )",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",643,647)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblname8 ) , Caption : 'Name '",648,649)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",650,654)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblphone8 ) , Caption : 'Phone '",655,656)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",657,661)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbladress8 ) , Caption : 'Adress '",662,663)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",664,668)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname8  )",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",670,675)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone8  )",676,676)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",677,682)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadress8  )",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",684,689)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprint8 ) , Caption : 'Print '",690,693)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action printlesoon8",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",695,698)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson8set ) , Caption : 'Set Values '",699,702)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setvalueslesson8",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",704,707)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson8copy ) , Caption : 'copy '",708,711)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action copylesson8",712,712)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",713,716)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson8past ) , Caption : 'past'",717,720)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pastlesson8",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",722,725)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",726,727)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",728,730)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure printlesoon8 ( Event : CLICK )",732,732)
SS_ESASTEP("Circuits\Main\Main\Main","cname8 = winlesson8.textname8.Value",733,733)
SS_ESASTEP("Circuits\Main\Main\Main","cphone8 = winlesson8.textphone8.Value",734,734)
SS_ESASTEP("Circuits\Main\Main\Main","cadress8 = winlesson8.textadress8.Value",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cname8) to Listbox (listlesson8) of Window (winlesson8)",736,736)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cphone8) to Listbox (listlesson8) of Window (winlesson8)",737,737)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cadress8) to Listbox (listlesson8) of Window (winlesson8)",738,738)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",739,739)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure copylesson8 ( Event : CLICK )",740,740)
SS_ESASTEP("Circuits\Main\Main\Main","Public cname8",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","Public cphone8",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","Public cadress8",743,743)
SS_ESASTEP("Circuits\Main\Main\Main","cname8 = winlesson8.textname8.Value",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","cphone8 = winlesson8.textphone8.Value",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","cadress8 = winlesson8.textadress8.Value",746,746)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",747,747)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setvalueslesson8 ( Event : CLICK )",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","xname8 = 'reem'",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","xphone8 = '0559566527'",750,750)
SS_ESASTEP("Circuits\Main\Main\Main","xadress8 = 'KSA'",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textname8.Value := xname8",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textphone8.Value := xphone8",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textadress8.Value := xadress8",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.listlesson8.DeleteAllItems ( )",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",756,756)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pastlesson8 ( Event : CLICK )",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textname8.Value := cname8",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textphone8.Value := cphone8",759,759)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson8.textadress8.Value := cadress8",760,760)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",761,761)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson9 ( Event : CLICK )",762,762)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson9 ) , Title : 'lesson9  '",763,767)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",768,775)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson8num ) , Caption : 'Numbric variables '",776,777)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",778,782)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson9str ) , Caption : 'String variables '",783,784)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",785,789)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num1  )",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",791,797)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num2  )",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",799,805)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num3  )",806,806)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",807,813)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num4  )",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",815,820)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num5  )",821,821)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",822,827)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson9num6  )",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",829,834)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson9num1 ) , Caption : 'num1 '",835,836)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",837,841)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson9num2 ) , Caption : 'num2 '",842,843)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",844,848)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson9sum ) , Caption : 'sum'",849,850)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",851,855)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson9sum ) , Caption : 'Add Sum '",856,859)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addlesson9",860,860)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",861,864)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",865,866)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",867,869)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",870,870)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlesson9 ( Event : CLICK )",871,871)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = winlesson9.textlesson9num1.Value",872,872)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = winlesson9.textlesson9num2.Value",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = num1+num2",874,874)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson9.textlesson9num3.Value := sum1",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = winlesson9.textlesson9num4.Value",876,876)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = winlesson9.textlesson9num5.Value",877,877)
SS_ESASTEP("Circuits\Main\Main\Main","xnum4 = CONVERT num4 TO Numeric",878,878)
SS_ESASTEP("Circuits\Main\Main\Main","xnum5 = CONVERT num5 TO Numeric",879,879)
SS_ESASTEP("Circuits\Main\Main\Main","xnum6 = xnum4+xnum5",880,880)
SS_ESASTEP("Circuits\Main\Main\Main","cnum6 = CONVERT xnum6 TO STRING",881,881)
SS_ESASTEP("Circuits\Main\Main\Main","trimname6 = All Trim cnum6",882,882)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson9.textlesson9num6.Value := trimname6",883,883)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",884,884)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson10 ( Event : CLICK )",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson10 ) , Title : 'lesson10  '",886,890)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",891,898)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson10 )",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",900,904)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btntest10 ) , Caption : 'GO ! '",905,908)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action golesson10",909,909)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",910,913)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblfrom10 ) , Caption : 'From '",914,915)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",916,920)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblto10 ) , Caption : 'To '",921,922)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",923,927)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcount10 ) , Caption : 'counter '",928,929)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",930,934)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textfrom  )",935,935)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",936,942)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textto  )",943,943)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",944,950)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textcount  )",951,951)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",952,958)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",959,960)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",961,963)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",964,964)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure golesson10 ( Event : CLICK )",965,965)
SS_ESASTEP("Circuits\Main\Main\Main","Public cto",966,966)
SS_ESASTEP("Circuits\Main\Main\Main","Public cfrom",967,967)
SS_ESASTEP("Circuits\Main\Main\Main","Public xcount",968,968)
SS_ESASTEP("Circuits\Main\Main\Main","cfrom = winlesson10.textfrom.Value",969,969)
SS_ESASTEP("Circuits\Main\Main\Main","cto = winlesson10.textto.Value",970,970)
SS_ESASTEP("Circuits\Main\Main\Main","xcount = winlesson10.textcount.Value",971,971)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x=cfrom To cto Step xcount)",972,972)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Hello Welcome to lesson 10 ') to Listbox (Listlesson10) of Window (winlesson10)",973,973)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",974,974)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",975,975)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson11 ( Event : CLICK )",976,976)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson11 ) , Title : 'lesson 11  '",977,981)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",982,989)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson11 )",990,990)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",991,995)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btntest11 ) , Caption : 'GO ! '",996,999)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action golesson11",1000,1000)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1001,1004)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblfrom11 ) , Caption : 'From '",1005,1006)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1007,1011)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblto11 ) , Caption : 'To '",1012,1013)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1014,1018)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcount11 ) , Caption : 'counter '",1019,1020)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1021,1025)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textfrom11  )",1026,1026)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1027,1033)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textto11  )",1034,1034)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1035,1041)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textcount11  )",1042,1042)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1043,1049)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1050,1051)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1052,1054)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1055,1055)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure golesson11 ( Event : CLICK )",1056,1056)
SS_ESASTEP("Circuits\Main\Main\Main","cfrom11 = winlesson11.textfrom11.Value",1057,1057)
SS_ESASTEP("Circuits\Main\Main\Main","cto11 = winlesson11.textto11.Value",1058,1058)
SS_ESASTEP("Circuits\Main\Main\Main","xcount11 = winlesson11.textcount11.Value",1059,1059)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x=cfrom11 To cto11 Step xcount11)",1060,1060)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x%2=0 )",1061,1061)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('this number is even ') to Listbox (Listlesson11) of Window (Winlesson11)",1062,1062)
SS_ESASTEP("Circuits\Main\Main\Main","Loop",1063,1063)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1064,1064)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",1065,1065)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",1066,1066)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (Listlesson11) of Window (winlesson11)",1067,1067)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1068,1068)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1069,1069)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson12 ( Event : CLICK )",1070,1070)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson12 ) , Title : 'lesson12  '",1071,1075)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1076,1083)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson12 )",1084,1084)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1085,1089)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson12 ) , Caption : 'Name '",1090,1091)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1092,1096)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson12  )",1097,1097)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1098,1103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson12 ) , Caption : 'Add '",1104,1107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add12",1108,1108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1109,1112)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1113,1114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1115,1117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1118,1118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add12 ( Event : CLICK )",1119,1119)
SS_ESASTEP("Circuits\Main\Main\Main","name12 = winlesson12.textlesson12.Value",1120,1120)
SS_ESASTEP("Circuits\Main\Main\Main","name12 = All Trim name12",1121,1121)
SS_ESASTEP("Circuits\Main\Main\Main","ncount12 = Call Function Addletters12 ( name12 )",1122,1122)
SS_ESASTEP("Circuits\Main\Main\Main","ncount12 = CONVERT ncount12 TO STRING",1123,1123)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'the number of letters '+ncount12 Title 'hello ' Type: Message Box",1124,1124)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson12.listlesson12.DeleteAllItems ( )",1125,1125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1126,1126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function Addletters12 ( cletter )",1127,1127)
SS_ESASTEP("Circuits\Main\Main\Main","Local nmax12",1128,1128)
SS_ESASTEP("Circuits\Main\Main\Main","nmax12 = Get Length of String/Variable/Array cletter",1129,1129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax12>1 )",1130,1130)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax12 Step 1)",1131,1131)
SS_ESASTEP("Circuits\Main\Main\Main","str = Sub String of cletter From x Count 1",1132,1132)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (str) to Listbox (listlesson12) of Window (winlesson12)",1133,1133)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1134,1134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1135,1135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nmax12)",1136,1136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson13 ( Event : CLICK )",1137,1137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson13 ) , Title : 'lesson13 '",1138,1142)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1143,1150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson13 )",1151,1151)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1152,1156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson13 ) , Caption : 'Name '",1157,1158)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1159,1163)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson13  )",1164,1164)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1165,1170)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson13 ) , Caption : 'Add '",1171,1174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add13",1175,1175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1176,1179)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1180,1181)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1182,1184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1185,1185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add13 ( Event : CLICK )",1186,1186)
SS_ESASTEP("Circuits\Main\Main\Main","name13 = winlesson13.textlesson13.Value",1187,1187)
SS_ESASTEP("Circuits\Main\Main\Main","name13 = All Trim name13",1188,1188)
SS_ESASTEP("Circuits\Main\Main\Main","ncount13 = Call Function Addletters13 ( name13 )",1189,1189)
SS_ESASTEP("Circuits\Main\Main\Main","ncount13 = CONVERT ncount13 TO STRING",1190,1190)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'the number of letters '+ncount13 Title 'hello ' Type: Message Box",1191,1191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1192,1192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function Addletters13 ( cletter )",1193,1193)
SS_ESASTEP("Circuits\Main\Main\Main","Local nmax13",1194,1194)
SS_ESASTEP("Circuits\Main\Main\Main","nmax13 = Get Length of String/Variable/Array cletter",1195,1195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( True )",1196,1196)
SS_ESASTEP("Circuits\Main\Main\Main","Return nmax13",1197,1197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1198,1198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax13>1 )",1199,1199)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax13 Step 1)",1200,1200)
SS_ESASTEP("Circuits\Main\Main\Main","str = Sub String of cletter From x Count 1",1201,1201)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (str) to Listbox (listlesson13) of Window (winlesson13)",1202,1202)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1203,1203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1204,1204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nmax13)",1205,1205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson14 ( Event : CLICK )",1206,1206)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array array14",1207,1207)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '1' To Array array14",1208,1208)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '2' To Array array14",1209,1209)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '3' To Array array14",1210,1210)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '4' To Array array14",1211,1211)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'one' To Array array14",1212,1212)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'two' To Array array14",1213,1213)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'three' To Array array14",1214,1214)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'four' To Array array14",1215,1215)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson14 ) , Title : 'lesson14 '",1216,1220)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1221,1228)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson14 ) , Items : array14",1229,1229)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1230,1235)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson142 )",1236,1236)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1237,1241)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd14 ) , Caption : 'Add Items '",1242,1245)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addlesson14",1246,1246)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1247,1250)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1251,1252)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1253,1255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1256,1256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlesson14 ( Event : CLICK )",1257,1257)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = Get Length of String/Variable/Array array14",1258,1258)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 5 To nvalue Step 1)",1259,1259)
SS_ESASTEP("Circuits\Main\Main\Main","nlen = Get Length of String/Variable/Array array14",1260,1260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nlen >5 )",1261,1261)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (array14[x]) to Listbox (listlesson142) of Window (winlesson14)",1262,1262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1263,1263)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1264,1264)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1265,1265)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson15 ( Event : CLICK )",1266,1266)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array array15",1267,1267)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 1 To Array array15",1268,1268)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 10 To Array array15",1269,1269)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'welcome to lesson 15 ' To Array array15",1270,1270)
SS_ESASTEP("Circuits\Main\Main\Main","Add item true To Array array15",1271,1271)
SS_ESASTEP("Circuits\Main\Main\Main","cdate = System Date of today",1272,1273)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cdate To Array array15",1274,1274)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson15 ) , Title : ' lesson15 '",1275,1279)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action windowlesson15",1280,1280)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1281,1288)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson15 )",1289,1289)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1290,1294)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1295,1296)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1297,1299)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1300,1300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson15 - Event : INIT",1301,1301)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (array15[3]) to Listbox (listlesson15) of Window (winlesson15)",1302,1302)
SS_ESASTEP("Circuits\Main\Main\Main","cdate1 = CONVERT Date array15[5] TO String",1303,1303)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cdate1) to Listbox (listlesson15) of Window (winlesson15)",1304,1304)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x=array15[1] To array15[2] Step 1)",1305,1305)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",1306,1306)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (listlesson15) of Window (winlesson15)",1307,1307)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1308,1308)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( array15[4]=True )",1309,1309)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x=array15[2] To array15[1] Step -1)",1310,1310)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",1311,1311)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (listlesson15) of Window (winlesson15)",1312,1312)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1313,1313)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1314,1314)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1315,1315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson16 ( Event : CLICK )",1316,1316)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array array16",1317,1317)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",1318,1318)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x, x*x} To Array array16",1319,1319)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1320,1320)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson16 ) , Title : ' lesson16 '",1321,1325)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action windowlesson16",1326,1326)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1327,1334)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson16 )",1335,1335)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1336,1340)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1341,1342)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1343,1345)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1346,1346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson16 - Event : INIT",1347,1347)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = Get Length of String/Variable/Array array16",1348,1348)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax Step 1)",1349,1349)
SS_ESASTEP("Circuits\Main\Main\Main","nsum16 = array16[x][1] + array16[x][2]",1350,1350)
SS_ESASTEP("Circuits\Main\Main\Main","csum16 = CONVERT nsum16 TO STRING",1351,1351)
SS_ESASTEP("Circuits\Main\Main\Main","csum16 = All Trim csum16",1352,1352)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (csum16) to Listbox (listlesson16) of Window (winlesson16)",1353,1353)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1354,1354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1355,1355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson17 ( Event : CLICK )",1356,1356)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array array17",1357,1357)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",1358,1358)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x, x*x} To Array array17",1359,1359)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1360,1360)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson17 ) , Title : 'lesson17  '",1361,1365)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action windowlesson17",1366,1366)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1367,1374)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Gridlesson17 ) , HEADERS : {'x','x*x','x+(x*x)'}",1375,1375)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",1376,1383)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson17 )",1384,1384)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1385,1389)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblmax17 ) , Caption : 'Max '",1390,1391)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1392,1396)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson17  )",1397,1397)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1398,1404)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson17 ) , Caption : 'Add max '",1405,1408)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action max17",1409,1409)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1410,1413)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1414,1415)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1416,1418)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1419,1419)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure windowlesson17 - Event : INIT",1420,1420)
SS_ESASTEP("Circuits\Main\Main\Main","nmax17 = Get Length of String/Variable/Array array17",1421,1421)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax17 Step 1)",1422,1422)
SS_ESASTEP("Circuits\Main\Main\Main","nsum17 = array17[x][1] + array17[x][2]",1423,1423)
SS_ESASTEP("Circuits\Main\Main\Main","csum17 = CONVERT nsum17 TO STRING",1424,1424)
SS_ESASTEP("Circuits\Main\Main\Main","csum17 = All Trim csum17",1425,1425)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (csum17) to Listbox (listlesson17) of Window (winlesson17)",1426,1426)
SS_ESASTEP("Circuits\Main\Main\Main","cnum1 = CONVERT array17[x][1] TO STRING",1427,1427)
SS_ESASTEP("Circuits\Main\Main\Main","cnum2 = CONVERT array17[x][2] TO STRING",1428,1428)
SS_ESASTEP("Circuits\Main\Main\Main","cnum1 = All Trim cnum1",1429,1429)
SS_ESASTEP("Circuits\Main\Main\Main","cnum2 = All Trim cnum2",1430,1430)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson17.Gridlesson17.AddItem ( {cnum1,cnum2,csum17} )",1431,1431)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1432,1432)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1433,1433)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure max17 ( Event : CLICK )",1434,1434)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array array17",1435,1435)
SS_ESASTEP("Circuits\Main\Main\Main","textmax = winlesson17.textlesson17.Value",1436,1436)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( textmax>=1 )",1437,1437)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To textmax Step 1)",1438,1438)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x, x*x} To Array array17",1439,1439)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1440,1440)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1441,1441)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson17.Gridlesson17.DeleteAllItems ( )",1442,1442)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson17.listlesson17.DeleteAllItems ( )",1443,1443)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure windowlesson17",1444,1444)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1445,1445)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson18 ( Event : CLICK )",1446,1446)
SS_ESASTEP("Circuits\Main\Main\Main","array18 = {'9','8','10','17','44','30'}",1447,1447)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson18 ) , Title : ' lesson 18 '",1448,1452)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1453,1460)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson18first ) , Items : array18",1461,1461)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1462,1466)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson18second )",1467,1467)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1468,1472)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson18push ) , Caption : 'push '",1473,1476)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action push18",1477,1477)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1478,1481)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson18pop ) , Caption : 'pop'",1482,1485)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pop18",1486,1486)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1487,1490)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson18  )",1491,1491)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1492,1497)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson18 ) , Caption : 'Stack Structure '",1498,1499)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1500,1504)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1505,1506)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1507,1509)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1510,1510)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pop18 ( Event : CLICK )",1511,1511)
SS_ESASTEP("Circuits\Main\Main\Main","cmax18 = Get Length of String/Variable/Array array18",1512,1512)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cmax18>0 )",1513,1513)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (array18[cmax18]) to Listbox (listlesson18second) of Window (Winlesson18)",1514,1514)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item cmax18 from Array array18",1515,1516)
SS_ESASTEP("Circuits\Main\Main\Main","winlesson18.listlesson18first.DeleteItem ( cmax18 )",1517,1517)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1518,1518)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1519,1519)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure push18 ( Event : CLICK )",1520,1520)
SS_ESASTEP("Circuits\Main\Main\Main","citems = winlesson18.textlesson18.Value",1521,1521)
SS_ESASTEP("Circuits\Main\Main\Main","citems = All Trim citems",1522,1522)
SS_ESASTEP("Circuits\Main\Main\Main","Add item citems To Array array18",1523,1523)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (citems) to Listbox (listlesson18first) of Window (winlesson18)",1524,1524)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1525,1525)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson19 ( Event : CLICK )",1526,1526)
SS_ESASTEP("Circuits\Main\Main\Main","array19 = {'9','8','10','17','44','30'}",1527,1527)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win19 ) , Title : ' lesson 18 '",1528,1532)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1533,1540)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson19first ) , Items : array19",1541,1541)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1542,1546)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listlesson19second )",1547,1547)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",1548,1552)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson19add ) , Caption : 'add'",1553,1556)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add19",1557,1557)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1558,1561)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlesson19remove ) , Caption : 'remove'",1562,1565)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action remove19",1566,1566)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",1567,1570)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textlesson19  )",1571,1571)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",1572,1577)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson19 ) , Caption : 'Que Structure '",1578,1579)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1580,1584)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1585,1586)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1587,1589)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1590,1590)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add19 ( Event : CLICK )",1591,1591)
SS_ESASTEP("Circuits\Main\Main\Main","citems19 = win19.textlesson19.Value",1592,1592)
SS_ESASTEP("Circuits\Main\Main\Main","citems19 = All Trim citems19",1593,1593)
SS_ESASTEP("Circuits\Main\Main\Main","Add item citems19 To Array array19",1594,1594)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (citems19) to Listbox (listlesson19first) of Window (win19)",1595,1595)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1596,1596)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure remove19 ( Event : CLICK )",1597,1597)
SS_ESASTEP("Circuits\Main\Main\Main","cmax19 = Get Length of String/Variable/Array array19",1598,1598)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cmax19>0 )",1599,1599)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (array19[1]) to Listbox (listlesson19second) of Window (Win19)",1600,1600)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item 1 from Array array19",1601,1602)
SS_ESASTEP("Circuits\Main\Main\Main","win19.listlesson19first.DeleteItem ( 1 )",1603,1603)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1604,1604)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1605,1605)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson20 ( Event : CLICK )",1606,1606)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj20 of Class class20",1607,1607)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj20.method20()",1608,1608)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1609,1609)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class class20",1610,1610)
SS_ESASTEP("Circuits\Main\Main\Main","Method method20",1611,1611)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",1612,1612)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method method20 Class class20",1613,1613)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'welcome to OOP lesson 20 ' Title 'OOP ' Type: Message Info",1614,1614)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1615,1615)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lesson1 ( Event : CLICK )",1616,1616)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlesson1 ) , Title : 'lesson1 '",1617,1621)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",1622,1629)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbllesson1 ) , Caption : 'Welcome To PWCT '",1630,1631)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1632,1636)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",1637,1638)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",1639,1641)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1642,1642)
Return
*-------------------------------------------------------------------*
