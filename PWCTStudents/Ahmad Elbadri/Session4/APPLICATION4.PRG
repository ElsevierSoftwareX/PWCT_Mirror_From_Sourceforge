*---------------------------------------------------------------------------*
* Time : 14:51:38    Date : 01/04/2012
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


Resistance R_APPLICATION4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 688 ;
HEIGHT 347 ;
ICON "PWCTICON" ;
TITLE "Application4" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 118 ,7 COMBOBOX combo1;
WIDTH 120 ;
HEIGHT 300;
ITEMS {"Yemen","UAE","Egypt","Algeria","Bahrain","Comoros","Djibouti","Iraq","Jordan","Kuwait","Lebanon","Libya","Mauritania","Morocco","Oman","Palestine","Qatar","Saudi Arabia","Somalia","Sudan","Syria"} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 236 ,138 BUTTONEX btn1;
CAPTION "See Capital";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK test()  ;
WIDTH 178 HEIGHT 49 ;
FONT "Vivaldi" SIZE 20 ;
TOOLTIP ""
@ 64 ,7 LABEL lbl1 ;
VALUE "Choose a Country:" ;
WIDTH 170 ;
HEIGHT 32 ;
FONT "Eras Demi ITC" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,114 LABEL lbl2 ;
VALUE "Arab Capitals Finder" ;
WIDTH 225 ;
HEIGHT 42 ;
FONT "Arial Unicode MS" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 64 ,294 LABEL lbl3 ;
VALUE "The Capital Is :" ;
WIDTH 139 ;
HEIGHT 31 ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 118 ,285 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 132 ;
VALUE "" ;
FONT "Comic Sans MS" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 61 ,429 IMAGE image1;
PICTURE "1.jpg";
STRETCH ;
WIDTH 244 HEIGHT 185
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc test
nvalue := win1.combo1.Value
nvalue := win1.combo1.item(nvalue)
IF nvalue="Egypt"
win1.text1.Value := "Cairo"
ELSEIF nvalue="Algeria"
win1.text1.Value := "Algiers"
ELSEIF nvalue="Tunisia"
win1.text1.Value := "Tunis"
ELSEIF nvalue="Libya"
win1.text1.Value := "Tripoli"
ELSEIF nvalue="Bahrain"
win1.text1.Value := "Manama"
ELSEIF nvalue="Comoros"
win1.text1.Value := "Moroni"
ELSEIF nvalue="Djibouti"
win1.text1.Value := "Djibouti"
ELSEIF nvalue="Iraq"
win1.text1.Value := "Baghdad"
ELSEIF nvalue="UAE"
win1.text1.Value := "Abu Dhabi"
ELSEIF nvalue="Morocco"
win1.text1.Value := "Rabat"
ELSEIF nvalue="Jordan"
win1.text1.Value := "Amman"
ELSEIF nvalue="Kuwait"
win1.text1.Value := "Kuwait City"
ELSEIF nvalue="Lebanon"
win1.text1.Value := "Beirut"
ELSEIF nvalue="Mauritania"
win1.text1.Value := "Nouakchott"
ELSEIF nvalue="Oman"
win1.text1.Value := "Muscat"
ELSEIF nvalue="Palestine"
win1.text1.Value := "Jerusalem"
ELSEIF nvalue="Qatar"
win1.text1.Value := "Doha"
ELSEIF nvalue="Saudi Arabia"
win1.text1.Value := "Riyadh"
ELSEIF nvalue="Sudan"
win1.text1.Value := "Khartoum"
ELSEIF nvalue="Syria"
win1.text1.Value := "Damascus"
ELSEIF nvalue="Yemen"
win1.text1.Value := "Sanaa"
ELSEIF nvalue="Somalia"
win1.text1.Value := "Mogadishu"
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Application4'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Yemen','UAE','Egypt','Algeria','Bahrain','Comoros','Djibouti','Iraq','Jordan','Kuwait','Lebanon','Libya','Mauritania','Morocco','Oman','Palestine','Qatar','Saudi Arabia','Somalia','Sudan','Syria'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'See Capital'",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action test",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Choose a Country:'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Arab Capitals Finder'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'The Capital Is :'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '1.jpg'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure test",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win1.combo1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win1.combo1.item(nvalue)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue='Egypt' )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Cairo'",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Algeria' )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Algiers'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Tunisia' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Tunis'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Libya' )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Tripoli'",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Bahrain' )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Manama'",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Comoros' )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Moroni'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Djibouti' )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Djibouti'",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Iraq' )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Baghdad'",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='UAE' )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Abu Dhabi'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Morocco' )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Rabat'",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Jordan' )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Amman'",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Kuwait' )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Kuwait City'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Lebanon' )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Beirut'",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Mauritania' )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Nouakchott'",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Oman' )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Muscat'",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Palestine' )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Jerusalem'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Qatar' )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Doha'",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Saudi Arabia' )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Riyadh'",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Sudan' )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Khartoum'",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Syria' )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Damascus'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Yemen' )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Sanaa'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue='Somalia' )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'Mogadishu'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*
