*---------------------------------------------------------------------------*
* Time : 20:58:40    Date : 01/14/2012
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


Resistance R_APPLICATION6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION6_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "Application6" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,152 LABEL lbl1 ;
VALUE "Student Information" ;
WIDTH 186 ;
HEIGHT 28 ;
FONT "Bauhaus 93" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU of win1
POPUP "Go"
MENUITEM "Student Profile" Action prof()
MENUITEM "Medical History" Action medi()
MENUITEM "Marks Grid" Action grid()
MENUITEM "Exit" Action close()
END POPUP
END MENU
@ 60 ,211 LABEL lbl2 ;
VALUE "Search" ;
WIDTH 67 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {209,24,224}
@ 129 ,7 LABEL lbl3 ;
VALUE "Student name :" ;
WIDTH 133 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 177 ,7 LABEL lbl4 ;
VALUE "Classe :" ;
WIDTH 78 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 225 ,7 LABEL lbl5 ;
VALUE "ID :" ;
WIDTH 40 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 130 ,157 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,157 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 222 ,157 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 267 ,172 BUTTONEX btn1;
CAPTION "Check";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK chk()  ;
WIDTH 156 HEIGHT 64 ;
FONT "Arial Rounded MT Bold" SIZE 22 ;
TOOLTIP ""
@ 353 ,11 LABEL lbl6 ;
VALUE "Student Fuond" ;
WIDTH 183 ;
HEIGHT 30 ;
FONT "BankGothic Md BT" SIZE 16  ;
BACKCOLOR {236,233,216} ;
INVISIBLE ;
FONTCOLOR {0,128,0}
@ 353 ,225 LABEL lbl7 ;
VALUE "Student Not Found" ;
WIDTH 235 ;
HEIGHT 25 ;
FONT "BankGothic Md BT" SIZE 16  ;
BACKCOLOR {236,233,216} ;
INVISIBLE ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc prof
name := win1.text1.Value
classe := win1.text2.Value
id := win1.text3.Value
IF name="Ahmad"
IF classe="4te"
DO prof1
ELSE
MyOut := MSGSTOP("Classe " + classe + " doesn't Exist","Error")
ENDIF
ELSEIF id="5"
DO prof1
ELSE
MyOut := MSGSTOP(name + "Doesn't Exist","Erorr")
ENDIF
Return Nil
Proc grid
name := win1.text1.Value
classe := win1.text2.Value
id := win1.text3.Value
IF name="Ahmad"
IF classe="4te"
DO grid1
ELSE
MyOut := MSGSTOP("Classe "+classe+" Dosen't Exist","Error")
ENDIF
ELSEIF id="5"
DO grid1
ELSE
MyOut := MSGSTOP("Student Dosen't Exist","Error")
ENDIF
Return Nil
Proc medi
name := win1.text1.Value
classe := win1.text2.Value
id := win1.text3.Value
IF name="Ahmad"
IF classe="4te"
DO medi1
ELSE
MyOut := MSGSTOP("Classe "+classe+" doesn't exist","Error")
ENDIF
ELSEIF id="5"
DO medi1
ELSE
MyOut := MSGSTOP("The name "+name+" or the ID "+id+" is not found","Error")
ENDIF
Return Nil
Proc close
win1.Release ( )
Return Nil
Proc chk
name := win1.text1.Value
classe := win1.text2.Value
id := win1.text3.Value
IF name="Ahmad"
IF classe="4te"
win1.lbl7.Visible := False
win1.lbl6.Visible := True
ELSE
win1.lbl6.Visible := False
win1.lbl7.Visible := True
ENDIF
ELSEIF id="5"
win1.lbl7.Visible := False
win1.lbl6.Visible := True
ELSE
win1.lbl7.Visible := True
win1.lbl6.Value := False
ENDIF
Return Nil
Proc prof1
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 492 ;
HEIGHT 431 ;
ICON "PWCTICON" ;
TITLE "Student Profile" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 11 ,159 LABEL lbl8 ;
VALUE "Student Profile" ;
WIDTH 164 ;
HEIGHT 37 ;
FONT "Traditional Arabic" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 115 ,16 LABEL lbl9 ;
VALUE "Name :" ;
WIDTH 68 ;
HEIGHT 27 ;
FONT "Book Antiqua" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 174 ,16 LABEL lbl10 ;
VALUE "Classe :" ;
WIDTH 67 ;
HEIGHT 31 ;
FONT "Book Antiqua" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 116 ,136 LABEL lbl11 ;
VALUE "Ahmad Amr Elbadri" ;
WIDTH 196 ;
HEIGHT 32 ;
FONT "Comic Sans MS" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 174 ,172 LABEL lbl12 ;
VALUE "4 ITI E" ;
WIDTH 77 ;
HEIGHT 32 ;
FONT "Comic Sans MS" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 237 ,16 LABEL lbl13 ;
VALUE "Date of Birth :" ;
WIDTH 120 ;
HEIGHT 29 ;
FONT "Book Antiqua" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 235 ,176 LABEL lbl14 ;
VALUE "20/09/1993" ;
WIDTH 125 ;
HEIGHT 32 ;
FONT "Comic Sans MS" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 298 ,16 LABEL lbl15 ;
VALUE "Adress :" ;
WIDTH 74 ;
HEIGHT 28 ;
FONT "Book Antiqua" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 295 ,174 LABEL lbl16 ;
VALUE "Shubra - Cairo" ;
WIDTH 145 ;
HEIGHT 32 ;
FONT "Comic Sans MS" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 29 ,355 IMAGE image1;
PICTURE "Ahmad.jpg";
STRETCH ;
WIDTH 103 HEIGHT 165
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc medi1
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 467 ;
HEIGHT 460 ;
ICON "PWCTICON" ;
TITLE "Medical History" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 7 ,101 LABEL lbl17 ;
VALUE "Medical History" ;
WIDTH 164 ;
HEIGHT 43 ;
FONT "Arial Narrow" SIZE 22  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 81 ,9 LABEL lbl18 ;
VALUE "Name:" ;
WIDTH 55 ;
HEIGHT 28 ;
FONT "Arial Narrow" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 81 ,96 LABEL lbl19 ;
VALUE "Ahmad Amr Elbadri" ;
WIDTH 183 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 166 ,102 LABEL lbl20 ;
VALUE "Medical History :" ;
WIDTH 160 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 208 ,83 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
VALUE "" ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
NOHSCROLL ;
FONTCOLOR {0,0,0}
@ 22 ,339 IMAGE image2;
PICTURE "Ahmad.jpg";
STRETCH ;
WIDTH 104 HEIGHT 156
END WINDOW

ACTIVATE WINDOW win3
EndIF

Return Nil
Proc grid1
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 494 ;
HEIGHT 573 ;
ON INIT sum()  ;
ICON "PWCTICON" ;
TITLE "Student's Marks" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 13 ,169 LABEL lbl21 ;
VALUE "Student's Marks" ;
WIDTH 175 ;
HEIGHT 32 ;
FONT "Book Antiqua" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 148 ,11 LABEL lbl22 ;
VALUE "Arabic" ;
WIDTH 61 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 194 ,11 LABEL lbl23 ;
VALUE "English" ;
WIDTH 67 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 246 ,11 LABEL lbl24 ;
VALUE "Math" ;
WIDTH 44 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 296 ,11 LABEL lbl25 ;
VALUE "Geography" ;
WIDTH 102 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 345 ,11 LABEL lbl26 ;
VALUE "Science" ;
WIDTH 73 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 394 ,11 LABEL lbl27 ;
VALUE "Religion" ;
WIDTH 74 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 441 ,11 LABEL lbl28 ;
VALUE "Sum" ;
WIDTH 45 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 490 ,11 LABEL lbl29 ;
VALUE "Percentage" ;
WIDTH 106 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 140 ,158 TEXTBOX text4;
HEIGHT 35 ;
WIDTH 65 ;
VALUE "7" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 191 ,158 TEXTBOX text5;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "9" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 241 ,158 TEXTBOX text6;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "8" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 290 ,158 TEXTBOX text7;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "6" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 342 ,158 TEXTBOX text8;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "8" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 384 ,158 TEXTBOX text9;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 435 ,158 TEXTBOX text10;
HEIGHT 33 ;
WIDTH 62 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 485 ,159 TEXTBOX text11;
HEIGHT 33 ;
WIDTH 62 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 140 ,331 TEXTBOX text12;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 185 ,331 TEXTBOX text13;
HEIGHT 39 ;
WIDTH 63 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 241 ,331 TEXTBOX text14;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 290 ,331 TEXTBOX text15;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 342 ,331 TEXTBOX text16;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 386 ,331 TEXTBOX text17;
HEIGHT 33 ;
WIDTH 62 ;
VALUE "10" ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 435 ,331 TEXTBOX text18;
HEIGHT 33 ;
WIDTH 62 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 72 ,19 LABEL lbl30 ;
VALUE "Name :" ;
WIDTH 64 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,64}
@ 72 ,101 LABEL lbl31 ;
VALUE "Ahmad Amr Elbadri" ;
WIDTH 169 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 72 ,304 LABEL lbl32 ;
VALUE "Classe :" ;
WIDTH 73 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,64}
@ 72 ,380 LABEL lbl33 ;
VALUE "4 ITI E" ;
WIDTH 64 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
END WINDOW

ACTIVATE WINDOW win4
EndIF

Return Nil
Proc sum
a := win4.text4.Value
b := win4.text5.Value
c := win4.text6.Value
d := win4.text7.Value
e := win4.text8.Value
f := win4.text9.Value
g := win4.text12.Value
h := win4.text13.Value
i := win4.text14.Value
k := win4.text16.Value
l := win4.text17.Value
j := win4.text15.Value
a = VAL ( a )
b = VAL ( b )
c = VAL ( c )
d = VAL ( d )
e = VAL ( e )
f = VAL ( f )
g = VAL ( g )
h = VAL ( h )
i = VAL ( i )
j = VAL ( j )
k = VAL ( k )
l = VAL ( l )
sum1 := g+h+i+j+k+l
sum2 := a+b+c+d+e+f
perc := (sum2/sum1)*100
sum1 = STR ( sum1 )
sum2 = STR ( sum2 )
perc = STR ( perc )
sum1 = ALLTRIM ( sum1 )
sum2 = ALLTRIM ( sum2 )
perc = ALLTRIM ( perc )
perc1 := perc+" %"
win4.text18.Value := sum1
win4.text10.Value := sum2
win4.text11.Value := perc1
Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Application6'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Student Information'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Go'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Student Profile' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Medical History' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Marks Grid' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Student name :'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Classe :'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'ID :'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Check'",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action chk",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Student Fuond'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Student Not Found'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",90,95)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prof",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","classe = win1.text2.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","id = win1.text3.Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name='Ahmad' )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( classe='4te' )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure prof1",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Classe ' + classe + ' doesn't Exist' Title 'Error' Type: Message Stop",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( id='5' )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure prof1",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message name + 'Doesn't Exist' Title 'Erorr' Type: Message Stop",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure grid",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","classe = win1.text2.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","id = win1.text3.Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name='Ahmad' )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( classe='4te' )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure grid1",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Classe '+classe+' Dosen't Exist' Title 'Error' Type: Message Stop",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( id='5' )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure grid1",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Student Dosen't Exist' Title 'Error' Type: Message Stop",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure medi",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","classe = win1.text2.Value",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","id = win1.text3.Value",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name='Ahmad' )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( classe='4te' )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure medi1",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Classe '+classe+' doesn't exist' Title 'Error' Type: Message Stop",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( id='5' )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure medi1",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The name '+name+' or the ID '+id+' is not found' Title 'Error' Type: Message Stop",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure chk",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","classe = win1.text2.Value",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","id = win1.text3.Value",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name='Ahmad' )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( classe='4te' )",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl7.Visible := False",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Visible := True",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Visible := False",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl7.Visible := True",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( id='5' )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl7.Visible := False",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Visible := True",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl7.Visible := True",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Value := False",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prof1",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Student Profile'",173,177)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",178,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Student Profile'",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",189,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Name :'",194,195)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",196,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Classe :'",201,202)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",203,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Ahmad Amr Elbadri'",208,209)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",210,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : '4 ITI E'",215,216)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",217,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Date of Birth :'",222,223)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",224,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : '20/09/1993'",229,230)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",231,235)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Adress :'",236,237)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",238,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : 'Shubra - Cairo'",243,244)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",245,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Ahmad.jpg'",250,251)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",252,253)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",254,255)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",256,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure medi1",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Medical History'",261,265)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",266,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : 'Medical History'",275,276)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",277,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18 ) , Caption : 'Name:'",282,283)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",284,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19 ) , Caption : 'Ahmad Amr Elbadri'",289,290)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",291,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : 'Medical History :'",296,297)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",298,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",304,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Ahmad.jpg'",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",314,315)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",316,317)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",318,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure grid1",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : 'Student's Marks'",323,327)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action sum",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",329,337)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21 ) , Caption : 'Student's Marks'",338,339)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",340,344)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22 ) , Caption : 'Arabic'",345,346)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",347,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23 ) , Caption : 'English'",352,353)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",354,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24 ) , Caption : 'Math'",359,360)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",361,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl25 ) , Caption : 'Geography'",366,367)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",368,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26 ) , Caption : 'Science'",373,374)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",375,379)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27 ) , Caption : 'Religion'",380,381)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",382,386)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl28 ) , Caption : 'Sum'",387,388)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",389,393)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl29 ) , Caption : 'Percentage'",394,395)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",396,400)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",402,408)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",410,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",418,424)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",426,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",434,440)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",442,448)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",450,455)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",457,462)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",464,470)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",472,478)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",480,486)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text15  )",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",488,494)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text16  )",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",496,502)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text17  )",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",504,510)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text18  )",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",512,517)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl30 ) , Caption : 'Name :'",518,519)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",520,524)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl31 ) , Caption : 'Ahmad Amr Elbadri'",525,526)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",527,531)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl32 ) , Caption : 'Classe :'",532,533)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",534,538)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl33 ) , Caption : '4 ITI E'",539,540)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",541,545)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",546,547)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",548,550)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sum",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","a = win4.text4.Value",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","b = win4.text5.Value",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","c = win4.text6.Value",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","d = win4.text7.Value",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","e = win4.text8.Value",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","f = win4.text9.Value",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","g = win4.text12.Value",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","h = win4.text13.Value",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","i = win4.text14.Value",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","k = win4.text16.Value",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","l = win4.text17.Value",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","j = win4.text15.Value",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","a = CONVERT a TO Numeric",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","b = CONVERT b TO Numeric",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","c = CONVERT c TO Numeric",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","d = CONVERT d TO Numeric",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","e = CONVERT e TO Numeric",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","f = CONVERT f TO Numeric",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","g = CONVERT g TO Numeric",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","h = CONVERT h TO Numeric",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","i = CONVERT i TO Numeric",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","j = CONVERT j TO Numeric",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","k = CONVERT k TO Numeric",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","l = CONVERT l TO Numeric",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = g+h+i+j+k+l",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","sum2 = a+b+c+d+e+f",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","perc = (sum2/sum1)*100",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = CONVERT sum1 TO STRING",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","sum2 = CONVERT sum2 TO STRING",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","perc = CONVERT perc TO STRING",582,582)
SS_ESASTEP("Circuits\Main\Main\Main","sum1 = All Trim sum1",583,583)
SS_ESASTEP("Circuits\Main\Main\Main","sum2 = All Trim sum2",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","perc = All Trim perc",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","perc1 = perc+' %'",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text18.Value := sum1",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text10.Value := sum2",588,588)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text11.Value := perc1",589,589)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",590,590)
Return
*-------------------------------------------------------------------*
