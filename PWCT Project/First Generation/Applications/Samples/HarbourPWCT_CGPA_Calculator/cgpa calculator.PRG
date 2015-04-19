*---------------------------------------------------------------------------*
* Time : 01:07:50    Date : 04/19/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.12
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


Resistance R_cgpa_calculator_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_cgpa_calculator_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 364 ;
HEIGHT 426 ;
ICON "PWCTICON" ;
TITLE "Main Choose" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "name.jpg";
STRETCH ;
WIDTH 496 HEIGHT 390
@ 349 ,19 BUTTONEX btn2;
CAPTION "GPA Calculator ";
FONTCOLOR {255,255,255};
BACKCOLOR {1,152,117};
ON CLICK pGPA()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 349 ,209 BUTTONEX btn1;
CAPTION "CGPA Calculator ";
FONTCOLOR {255,255,255};
BACKCOLOR {217,30,24};
ON CLICK pCGPA()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 7 ,58 GRID Grid1;
WIDTH 246 ;
HEIGHT 337 ;
HEADERS {"Symbol","Grade"};
WIDTHS {100,100} ;
ITEMS { {"A","4"} , {"A-","3.67"}, {"B+","3.33"}, {"B","3.00"}, {"B-","2.67"}, {"C+","2.33"}, {"C","2.00"}, {"C-","1.67"} , {"D+","1.33"}, {"D","1.00"}, {"F","0.00"}} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 349 ,149 BUTTONEX btn5;
CAPTION "Exit ";
FONTCOLOR {255,255,255};
BACKCOLOR {103,65,114};
ON CLICK exit()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pGPA()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 587 ;
ICON "PWCTICON" ;
TITLE "GPA Calculator  " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 0 ,1 IMAGE image2;
PICTURE "name.jpg";
STRETCH ;
WIDTH 507 HEIGHT 563
@ 497 ,30 BUTTONEX btn3;
CAPTION "Submit ";
FONTCOLOR {255,255,255};
BACKCOLOR {51,110,123};
ON CLICK GpaCalc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 10 ,110 LABEL lbl1 ;
VALUE "Grade " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 10 ,279 LABEL lbl2 ;
VALUE "Credit Hours Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 58 ,30 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 58 ,249 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 101 ,30 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,249 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 144 ,30 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 144 ,249 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 187 ,30 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 187 ,249 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 230 ,30 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,249 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 273 ,30 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 273 ,249 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 316 ,30 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 316 ,249 TEXTBOX text14;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 359 ,30 TEXTBOX text15;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 359 ,249 TEXTBOX text16;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 402 ,30 TEXTBOX text17;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 402 ,249 TEXTBOX text18;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 445 ,30 TEXTBOX text19;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 445 ,249 TEXTBOX text20;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 497 ,249 TEXTBOX text21;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure GpaCalc()
x1 := win2.text1.Value
x1 = VAL ( x1 )
x2 := win2.text2.Value
x3 := win2.text3.Value
x3 = VAL ( x3 )
x4 := win2.text4.Value
x5 := win2.text5.Value
x5 = VAL ( x5 )
x6 := win2.text6.Value
x7 := win2.text7.Value
x7 = VAL ( x7 )
x8 := win2.text8.Value
x9 := win2.text9.Value
x9 = VAL ( x9 )
x10 := win2.text10.Value
x11 := win2.text11.Value
x11 = VAL ( x11 )
x12 := win2.text12.Value
x13 := win2.text13.Value
x13 = VAL ( x13 )
x14 := win2.text14.Value
x15 := win2.text15.Value
x15 = VAL ( x15 )
x16 := win2.text16.Value
x17 := win2.text17.Value
x17 = VAL ( x17 )
x18 := win2.text18.Value
x19 := win2.text19.Value
x19 = VAL ( x19 )
x20 := win2.text20.Value
XT := (x1*x2+x3*x4+x5*x6+x7*x8+x9*x10+x11*x12+x13*x14+x15*x16+x17*x18+x19*x20)/(x2+x4+x6+x8+x10+x12+x14+x16+x18+x20)
XT = STR ( XT )
XT = ALLTRIM ( XT )
win2.text21.Value := XT
return
procedure pCGPA()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 311 ;
ICON "PWCTICON" ;
TITLE " CGPA Calculator " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image3;
PICTURE "name.jpg";
STRETCH ;
WIDTH 491 HEIGHT 271
@ 9 ,10 LABEL lbl3 ;
VALUE "Last CGPA " ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 101 ,10 LABEL lbl4 ;
VALUE "Current Term GPA " ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 147 ,10 LABEL lbl5 ;
VALUE "Current Term Gained Hours" ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 55 ,10 LABEL lbl6 ;
VALUE "Last Total Gained Hours Of Your CGPA" ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 193 ,10 LABEL lbl7 ;
VALUE "Total CGPA " ;
WIDTH 220 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 10 ,240 TEXTBOX tex1;
HEIGHT 30 ;
WIDTH 190 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 56 ,240 TEXTBOX tex2;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 102 ,240 TEXTBOX tex3;
HEIGHT 30 ;
WIDTH 190 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 148 ,240 TEXTBOX tex4;
HEIGHT 30 ;
WIDTH 190 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 194 ,240 TEXTBOX tex5;
HEIGHT 30 ;
WIDTH 190 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,10 BUTTONEX btn4;
CAPTION "Calculate CGPA ";
FONTCOLOR {255,255,255};
BACKCOLOR {103,65,114};
ON CLICK CalcCGPA()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 11 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win3
EndIF

return
procedure CalcCGPA()
z1 := win3.tex1.Value
z1 = VAL ( z1 )
z2 := win3.tex2.Value
z3 := win3.tex3.Value
z3 = VAL ( z3 )
z4 := win3.tex4.Value
ZT := (z1*z2+z3*z4)/(z2+z4)
ZT = STR ( ZT )
ZT = ALLTRIM ( ZT )
win3.tex5.Value := ZT
return
procedure exit()
MyOut := MSGBOX("Thnx For Using My App .... 3omar 7asan "," ")
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_cgpa_calculator
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Main Choose'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'name.jpg'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'GPA Calculator '",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pGPA",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'CGPA Calculator '",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCGPA",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Symbol','Grade'}",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",36,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Exit '",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pGPA ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'GPA Calculator  '",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'name.jpg'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Submit '",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GpaCalc",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Grade '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Credit Hours Number '",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",102,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",109,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",117,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",124,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",132,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",139,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",147,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",154,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",162,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",169,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",177,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",184,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",192,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",199,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text15  )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",207,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text16  )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",214,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text17  )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",222,227)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text18  )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",229,235)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text19  )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",237,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text20  )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",244,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text21  )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",252,258)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",259,260)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",261,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GpaCalc ( Event : CLICK )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = win2.text1.Value",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = CONVERT x1 TO Numeric",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = win2.text2.Value",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","x3 = win2.text3.Value",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","x3 = CONVERT x3 TO Numeric",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","x4 = win2.text4.Value",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","x5 = win2.text5.Value",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","x5 = CONVERT x5 TO Numeric",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","x6 = win2.text6.Value",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","x7 = win2.text7.Value",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","x7 = CONVERT x7 TO Numeric",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","x8 = win2.text8.Value",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","x9 = win2.text9.Value",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","x9 = CONVERT x9 TO Numeric",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","x10 = win2.text10.Value",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","x11 = win2.text11.Value",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","x11 = CONVERT x11 TO Numeric",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","x12 = win2.text12.Value",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","x13 = win2.text13.Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","x13 = CONVERT x13 TO Numeric",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","x14 = win2.text14.Value",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","x15 = win2.text15.Value",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","x15 = CONVERT x15 TO Numeric",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","x16 = win2.text16.Value",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","x17 = win2.text17.Value",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","x17 = CONVERT x17 TO Numeric",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","x18 = win2.text18.Value",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","x19 = win2.text19.Value",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","x19 = CONVERT x19 TO Numeric",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","x20 = win2.text20.Value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","XT = (x1*x2+x3*x4+x5*x6+x7*x8+x9*x10+x11*x12+x13*x14+x15*x16+x17*x18+x19*x20)/(x2+x4+x6+x8+x10+x12+x14+x16+x18+x20)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","XT = CONVERT XT TO STRING",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","XT = All Trim XT",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text21.Value := XT",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCGPA ( Event : CLICK )",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : ' CGPA Calculator '",302,306)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",307,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'name.jpg'",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",314,315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Last CGPA '",316,317)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",318,323)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Current Term GPA '",324,325)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",326,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Current Term Gained Hours'",332,333)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",334,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Last Total Gained Hours Of Your CGPA'",340,341)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",342,347)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Total CGPA '",348,349)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",350,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( tex1  )",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",357,362)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( tex2  )",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",364,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( tex3  )",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",372,377)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( tex4  )",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",379,385)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( tex5  )",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",387,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Calculate CGPA '",393,396)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CalcCGPA",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",398,402)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",403,404)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",405,407)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CalcCGPA ( Event : CLICK )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","z1 = win3.tex1.Value",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","z1 = CONVERT z1 TO Numeric",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","z2 = win3.tex2.Value",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","z3 = win3.tex3.Value",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","z3 = CONVERT z3 TO Numeric",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","z4 = win3.tex4.Value",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","ZT = (z1*z2+z3*z4)/(z2+z4)",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","ZT = CONVERT ZT TO STRING",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","ZT = All Trim ZT",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","win3.tex5.Value := ZT",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Thnx For Using My App .... 3omar 7asan ' Title ' ' Type: Message Box",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",424,424)
Return
*-------------------------------------------------------------------*
