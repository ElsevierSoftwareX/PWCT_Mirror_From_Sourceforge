*---------------------------------------------------------------------------*
* Time : 01:47:56    Date : 03/03/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_ADKAR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ADKAR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 651 ;
HEIGHT 545 ;
ICON "PWCTICON" ;
TITLE "√–ﬂ«— «·’»«Õ Ê«·„”«¡  " ;
MAIN ;
BACKCOLOR {128,128,0} 

@ 0 ,188 LABEL lbl1 ;
VALUE "√–ﬂ«— «·’»«Õ Ê«·„”«¡ " ;
WIDTH 274 ;
HEIGHT 50 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,128,0}
@ 138 ,505 BUTTONEX btn1;
CAPTION "¬Ì… «·ﬂ—”Ì ";
ON CLICK Ayatalkerci()  ;
WIDTH 115 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 139 ,348 BUTTONEX btn2;
CAPTION "”Ê—… «·«Œ·«’ ";
ON CLICK hkhlasse()  ;
WIDTH 118 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 138 ,195 BUTTONEX btn3;
CAPTION "”Ê—… «·›·ﬁ ";
ON CLICK Alfalak()  ;
WIDTH 112 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 138 ,25 BUTTONEX btn4;
CAPTION "”Ê—… «·‰«” ";
ON CLICK Alnass()  ;
WIDTH 122 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 439 ,247 BUTTONEX btn6;
CAPTION "≈€‹‹‹·«ﬁ ";
ON CLICK fermetuer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Times New Roman" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Ayatalkerci()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 621 ;
HEIGHT 352 ;
ICON "PWCTICON" ;
TITLE "¬Ì… «·ﬂ—”Ì  " ;
CHILD ;
BACKCOLOR {192,192,192} 

@ 2 ,256 LABEL lbl2 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„  " ;
WIDTH 209 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 36 ,483 LABEL lbl3 ;
VALUE "«··Â ·« «·Â «·« ÂÊ  " ;
WIDTH 205 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 36 ,271 LABEL lbl4 ;
VALUE "«·ÕÌ «·ﬁÌÊ„ ·« √Œ–Â ”‰… Ê·« ‰Ê„   " ;
WIDTH 215 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 38 ,30 LABEL lbl5 ;
VALUE "·Â „« ›Ì «·”„Ê«  Ê„« ›Ì «·√—÷   " ;
WIDTH 238 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 71 ,305 LABEL lbl6 ;
VALUE "„‰ –« «·–Ì Ì‘›⁄ ⁄‰œÂ «·« »«œ‰Â   " ;
WIDTH 217 ;
HEIGHT 52 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 70 ,110 LABEL lbl7 ;
VALUE "Ì⁄·„ „«»Ì‰ √ÌœÌÂ„ Ê„« Œ·›Â„  " ;
WIDTH 186 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 112 ,178 LABEL lbl8 ;
VALUE "Ê·« ÌÕÌÿÊ‰ »‘Ì¡ „‰ ⁄·„Â «·« »„« ‘¬¡  " ;
WIDTH 281 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 154 ,288 LABEL lbl9 ;
VALUE "Ê”⁄ ﬂ—”ÌÂ «·”„Ê«  Ê«·√—÷   " ;
WIDTH 209 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 152 ,160 LABEL lbl10 ;
VALUE "Ê·« ÌƒÊœÂ Õ›ŸÂ„«   " ;
WIDTH 127 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 196 ,253 LABEL lbl11 ;
VALUE "ÊÂÊ «·⁄·Ì «·⁄ŸÌ‹‹‹‹‹‹‹‹‹‹‹„  " ;
WIDTH 167 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 246 ,35 BUTTONEX btn5;
CAPTION "«·—∆Ì”Ì… ";
ON CLICK ar()  ;
WIDTH 62 HEIGHT 29 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure hkhlasse()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 193 ;
ICON "PWCTICON" ;
TITLE "”Ê—… «·«Œ·«’  " ;
CHILD ;
BACKCOLOR {192,192,192} 

@ 58 ,359 LABEL lbl12 ;
VALUE "ﬁ· ÂÊ «··Â √Õœ " ;
WIDTH 102 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 58 ,283 LABEL lbl13 ;
VALUE "«··Â «·’„œ" ;
WIDTH 76 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 59 ,187 LABEL lbl14 ;
VALUE "·„ Ì·œ Ê·„ ÌÊ·œ" ;
WIDTH 99 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 59 ,54 LABEL lbl15 ;
VALUE "Ê·„ Ìﬂ‰ ·Â ﬂ›ƒ« √Õœ" ;
WIDTH 135 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 6 ,150 LABEL lbl16 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
WIDTH 218 ;
HEIGHT 42 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win3
EndIF

return
procedure Alfalak()
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 494 ;
HEIGHT 242 ;
ICON "PWCTICON" ;
TITLE "”Ê—… «·›·ﬁ  " ;
CHILD ;
BACKCOLOR {192,192,192} 

@ 0 ,143 LABEL lbl17 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
WIDTH 211 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 66 ,325 LABEL lbl18 ;
VALUE "ﬁ· ¬⁄Ê– »—» «·›·ﬁ " ;
WIDTH 136 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 66 ,231 LABEL lbl19 ;
VALUE "„‰ ‘—„« Œ·ﬁ  " ;
WIDTH 94 ;
HEIGHT 26 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 65 ,67 LABEL lbl20 ;
VALUE "Ê„‰ ‘— €«”ﬁ «–« Êﬁ» " ;
WIDTH 164 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 102 ,271 LABEL lbl21 ;
VALUE "Ê„‰ ‘— «·‰›À  ›Ì «·⁄ﬁœ" ;
WIDTH 164 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 103 ,115 LABEL lbl22 ;
VALUE "Ê„‰ ‘— Õ«”œ «–« Õ”œ" ;
WIDTH 155 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win4
EndIF

return
procedure Alnass()
if !iswindowdefined( win5 )
DEFINE WINDOW win5 ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 228 ;
ICON "PWCTICON" ;
TITLE "”Ê—… «·‰«”  " ;
CHILD ;
BACKCOLOR {192,192,192} 

@ 0 ,156 LABEL lbl23 ;
VALUE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„ " ;
WIDTH 211 ;
HEIGHT 40 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 54 ,340 LABEL lbl24 ;
VALUE "ﬁ· ¬⁄Ê– »—» «·‰«”  " ;
WIDTH 135 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 55 ,264 LABEL lbl25 ;
VALUE "„·ﬂ «·‰«”  " ;
WIDTH 75 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 55 ,201 LABEL lbl26 ;
VALUE "«·Â «·‰«”  " ;
WIDTH 62 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 55 ,33 LABEL lbl27 ;
VALUE "„‰ ‘— «·Ê”Ê«” «·Œ‰«”   " ;
WIDTH 167 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 97 ,231 LABEL lbl28 ;
VALUE "«·–Ì ÌÊ”Ê” ›Ì ’œÊ·— «·‰«”    " ;
WIDTH 213 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 99 ,121 LABEL lbl29 ;
VALUE "„‰ «·Ã‰… Ê«·‰«”   " ;
WIDTH 111 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win5
EndIF

return
procedure ar()
win2.Release ( )
return
procedure fermetuer()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_ADKAR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '√–ﬂ«— «·’»«Õ Ê«·„”«¡  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '√–ﬂ«— «·’»«Õ Ê«·„”«¡ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '¬Ì… «·ﬂ—”Ì '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Ayatalkerci",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '”Ê—… «·«Œ·«’ '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hkhlasse",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '”Ê—… «·›·ﬁ '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Alfalak",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '”Ê—… «·‰«” '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Alnass",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : '≈€‹‹‹·«ﬁ '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action fermetuer",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Ayatalkerci ( Event : CLICK )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '¬Ì… «·ﬂ—”Ì  '",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„  '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«··Â ·« «·Â «·« ÂÊ  '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·ÕÌ «·ﬁÌÊ„ ·« √Œ–Â ”‰… Ê·« ‰Ê„   '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '·Â „« ›Ì «·”„Ê«  Ê„« ›Ì «·√—÷   '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '„‰ –« «·–Ì Ì‘›⁄ ⁄‰œÂ «·« »«œ‰Â   '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Ì⁄·„ „«»Ì‰ √ÌœÌÂ„ Ê„« Œ·›Â„  '",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Ê·« ÌÕÌÿÊ‰ »‘Ì¡ „‰ ⁄·„Â «·« »„« ‘¬¡  '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Ê”⁄ ﬂ—”ÌÂ «·”„Ê«  Ê«·√—÷   '",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Ê·« ÌƒÊœÂ Õ›ŸÂ„«   '",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'ÊÂÊ «·⁄·Ì «·⁄ŸÌ‹‹‹‹‹‹‹‹‹‹‹„  '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '«·—∆Ì”Ì… '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ar",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hkhlasse ( Event : CLICK )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '”Ê—… «·«Œ·«’  '",147,151)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",152,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'ﬁ· ÂÊ «··Â √Õœ '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",159,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : '«··Â «·’„œ'",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",166,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : '·„ Ì·œ Ê·„ ÌÊ·œ'",171,172)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",173,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Ê·„ Ìﬂ‰ ·Â ﬂ›ƒ« √Õœ'",178,179)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",180,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„ '",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",187,191)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",192,193)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",194,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Alfalak ( Event : CLICK )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : '”Ê—… «·›·ﬁ  '",199,203)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",204,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„ '",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",211,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18 ) , Caption : 'ﬁ· ¬⁄Ê– »—» «·›·ﬁ '",216,217)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",218,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19 ) , Caption : '„‰ ‘—„« Œ·ﬁ  '",223,224)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",225,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : 'Ê„‰ ‘— €«”ﬁ «–« Êﬁ» '",230,231)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",232,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21 ) , Caption : 'Ê„‰ ‘— «·‰›À  ›Ì «·⁄ﬁœ'",237,238)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",239,243)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22 ) , Caption : 'Ê„‰ ‘— Õ«”œ «–« Õ”œ'",244,245)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",246,250)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",251,252)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",253,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Alnass ( Event : CLICK )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win5 ) , Title : '”Ê—… «·‰«”  '",258,262)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",263,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23 ) , Caption : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„ '",268,269)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",270,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24 ) , Caption : 'ﬁ· ¬⁄Ê– »—» «·‰«”  '",275,276)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",277,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl25 ) , Caption : '„·ﬂ «·‰«”  '",282,283)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",284,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26 ) , Caption : '«·Â «·‰«”  '",289,290)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",291,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27 ) , Caption : '„‰ ‘— «·Ê”Ê«” «·Œ‰«”   '",296,297)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",298,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl28 ) , Caption : '«·–Ì ÌÊ”Ê” ›Ì ’œÊ·— «·‰«”    '",303,304)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",305,309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl29 ) , Caption : '„‰ «·Ã‰… Ê«·‰«”   '",310,311)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",312,316)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",317,318)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",319,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ar ( Event : CLICK )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fermetuer ( Event : CLICK )",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",328,328)
Return
*-------------------------------------------------------------------*
