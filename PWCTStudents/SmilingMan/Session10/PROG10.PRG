*---------------------------------------------------------------------------*
* Time : 21:22:48    Date : 12/25/2011
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


Resistance R_PROG10_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROG10_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„—«”·…" ;
MAIN ;
BACKCOLOR {128,255,128} 

@ 121 ,318 LABEL lbl1 ;
VALUE ": «”„ «·„—”·" ;
WIDTH 86 ;
HEIGHT 29 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 177 ,318 LABEL lbl2 ;
VALUE ": «·„—”· ≈·ÌÂ" ;
WIDTH 86 ;
HEIGHT 29 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,89 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 179 ,89 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 268 ,175 BUTTONEX btn1;
CAPTION "«· «·Ì";
ON CLICK start()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure start()
sender := win1.text1.Value
sendedto := win1.text2.Value
IF sender!="sendedto"
win1.Hide ( )
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 416 ;
HEIGHT 332 ;
ICON "PWCTICON" ;
TITLE " ÕœÌœ ‰Ê⁄ «·»ÿ«ﬁ…" ;
MODAL ;
BACKCOLOR {255,128,64} 

@ 64 ,225 BUTTONEX btn3;
CAPTION "»ÿ«ﬁ… „⁄«Ìœ…";
ON CLICK win3()  ;
WIDTH 103 HEIGHT 34 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 64 ,40 BUTTONEX btn4;
CAPTION "»ÿ«ﬁ…  Â‰∆…";
ON CLICK win4()  ;
WIDTH 100 HEIGHT 34 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 10 ,42 LABEL lbl3 ;
VALUE sender ;
WIDTH 76 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 11 ,257 LABEL lbl4 ;
VALUE sendedto ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 11 ,176 LABEL lbl5 ;
VALUE "to" ;
WIDTH 44 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 208 ,151 BUTTONEX btn7;
CAPTION "<<—ÃÊ⁄";
BACKCOLOR {200,150,216};
ON CLICK back()  ;
WIDTH 81 HEIGHT 33 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

win1.Release ( )
ENDIF
return
procedure win3()
if !iswindowdefined( win6 )
DEFINE WINDOW win6 ;
AT 10 ,10 ;
WIDTH 348 ;
HEIGHT 173 ;
ICON "PWCTICON" ;
TITLE "»ÿ«ﬁ… „⁄«Ìœ…" ;
MODAL ;
BACKCOLOR {128,64,64} 

@ 23 ,190 BUTTONEX btn20;
CAPTION "module 1";
ON CLICK win7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 23 ,22 BUTTONEX btn21;
CAPTION "module 2";
ON CLICK win8()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 80 ,190 BUTTONEX btn22;
CAPTION "module 3";
ON CLICK win9()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 80 ,22 BUTTONEX btn23;
CAPTION "module 4";
ON CLICK win10()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win6
EndIF

return
procedure win4()
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 403 ;
HEIGHT 191 ;
ICON "PWCTICON" ;
TITLE "»ÿ«ﬁ…  Â‰∆…" ;
MODAL ;
BACKCOLOR {0,128,255} 

@ 25 ,231 BUTTONEX btn12;
CAPTION "module 1";
ON CLICK win11()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 24 ,19 BUTTONEX btn13;
CAPTION "module 2";
ON CLICK win12()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 92 ,231 BUTTONEX btn14;
CAPTION "module 3";
ON CLICK win13()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
@ 92 ,19 BUTTONEX btn15;
CAPTION "module 4";
ON CLICK win14()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win4
EndIF

return
procedure back()
win2.Release ( )
win1.Show ( )
return
procedure win7()
if !iswindowdefined( win7 )
DEFINE WINDOW win7 ;
AT 10 ,10 ;
WIDTH 455 ;
HEIGHT 216 ;
ICON "PWCTICON" ;
TITLE "module1" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 60 ,40 TEXTBOX text3;
HEIGHT 78 ;
WIDTH 365 ;
VALUE sendedto+":"+"       "+"ﬂ· ”‰… Ê√‰  ”«·„ Ê»«·√›—«Õ €«‰„"+"           "+sender ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win7
EndIF

return
procedure win8()
if !iswindowdefined( win8 )
DEFINE WINDOW win8 ;
AT 10 ,10 ;
WIDTH 361 ;
HEIGHT 107 ;
ICON "PWCTICON" ;
TITLE "module 2" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text4;
HEIGHT 36 ;
WIDTH 234 ;
VALUE "√ „‰Ï ·ﬂ„ ⁄Ìœ« ”⁄Ìœ«"+"           "+sender ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win8
EndIF

return
procedure win9()
if !iswindowdefined( win9 )
DEFINE WINDOW win9 ;
AT 10 ,10 ;
WIDTH 361 ;
HEIGHT 122 ;
ICON "PWCTICON" ;
TITLE "module 3" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "”‰… Õ·Ê… Ì« Ã„Ì·"+"      "+sender ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win9
EndIF

return
procedure win10()
if !iswindowdefined( win10 )
DEFINE WINDOW win10 ;
AT 10 ,10 ;
WIDTH 391 ;
HEIGHT 122 ;
ICON "PWCTICON" ;
TITLE "module 4" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "«‰ ‘« «··Â «·”‰… «·Ã«Ì… «‘Ê›ﬂ ⁄·Ï ⁄—›« "+"       "+sender ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win10
EndIF

return
procedure win11()
if !iswindowdefined( win11 )
DEFINE WINDOW win11 ;
AT 10 ,10 ;
WIDTH 443 ;
HEIGHT 127 ;
ICON "PWCTICON" ;
TITLE "module 1" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "„« ‘«¡ «··Â „‰Â« ··√Õ”‰ Ì« ”Ìœ "+sendedto ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win11
EndIF

return
procedure win12()
if !iswindowdefined( win12 )
DEFINE WINDOW win12 ;
AT 10 ,10 ;
WIDTH 421 ;
HEIGHT 119 ;
ICON "PWCTICON" ;
TITLE "module 2" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "ﬂ»Ì— Ì« "+sendedto+" ‘Ê Â«·Õ·«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win12
EndIF

return
procedure win13()
if !iswindowdefined( win13 )
DEFINE WINDOW win13 ;
AT 10 ,10 ;
WIDTH 472 ;
HEIGHT 164 ;
ICON "PWCTICON" ;
TITLE "module 3" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text9;
HEIGHT 60 ;
WIDTH 428 ;
VALUE "„»—Êﬂ   Congratulations    FÈlicitations     "+"      "+"»ﬂ· «··€«  «ﬁÊ·Â«" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win13
EndIF

return
procedure win14()
if !iswindowdefined( win14 )
DEFINE WINDOW win14 ;
AT 10 ,10 ;
WIDTH 419 ;
HEIGHT 118 ;
ICON "PWCTICON" ;
TITLE "module 4" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10 ,10 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "·› „·ÌÊ‰  —Ì·ÌÊ‰ ﬂœ—·ÌÊ‰ „»—Êﬂ Ì« "+sendedto ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win14
EndIF

return


End Of Resistance

INIT PROCEDURE Init_PROG10
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„—«”·…'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ': «”„ «·„—”·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ': «·„—”· ≈·ÌÂ'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· «·Ì'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action start",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure start ( Event : CLICK )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","sender = win1.text1.Value",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","sendedto = win1.text2.Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( sender!='sendedto' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Hide ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' ÕœÌœ ‰Ê⁄ «·»ÿ«ﬁ…'",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '»ÿ«ﬁ… „⁄«Ìœ…'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win3",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '»ÿ«ﬁ…  Â‰∆…'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win4",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : sender",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : sendedto",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'to'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : '<<—ÃÊ⁄'",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action back",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win3 ( Event : CLICK )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win6 ) , Title : '»ÿ«ﬁ… „⁄«Ìœ…'",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",117,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn20 ) , Caption : 'module 1'",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win7",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn21 ) , Caption : 'module 2'",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win8",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn22 ) , Caption : 'module 3'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win9",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn23 ) , Caption : 'module 4'",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win10",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",148,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win4 ( Event : CLICK )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : '»ÿ«ﬁ…  Â‰∆…'",153,157)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",158,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : 'module 1'",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win11",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn13 ) , Caption : 'module 2'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win12",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn14 ) , Caption : 'module 3'",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win13",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn15 ) , Caption : 'module 4'",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win14",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure back ( Event : CLICK )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Show ( )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win7 ( Event : CLICK )",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win7 ) , Title : 'module1'",198,202)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",203,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",209,214)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",215,216)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",217,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win8 ( Event : CLICK )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win8 ) , Title : 'module 2'",222,226)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",227,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",233,238)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",239,240)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",241,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win9 ( Event : CLICK )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win9 ) , Title : 'module 3'",246,250)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",251,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",258,263)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",264,265)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",266,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win10 ( Event : CLICK )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win10 ) , Title : 'module 4'",271,275)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",276,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",282,287)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",288,289)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",290,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win11 ( Event : CLICK )",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win11 ) , Title : 'module 1'",295,299)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",300,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",306,311)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",314,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win12 ( Event : CLICK )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win12 ) , Title : 'module 2'",319,323)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",324,328)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",330,335)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",336,337)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",338,340)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win13 ( Event : CLICK )",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win13 ) , Title : 'module 3'",343,347)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",348,352)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",354,359)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",360,361)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",362,364)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure win14 ( Event : CLICK )",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win14 ) , Title : 'module 4'",367,371)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",372,376)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",378,383)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",384,385)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",386,388)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",389,389)
Return
*-------------------------------------------------------------------*
