*---------------------------------------------------------------------------*
* Time : 07:52:40    Date : 12/16/2011
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


Resistance R_PROG4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROG4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 895 ;
HEIGHT 549 ;
ICON "PWCTICON" ;
TITLE "«·»—‰«„Ã «·—«»⁄" ;
MAIN ;
BACKCOLOR {128,255,0} 

@ 11 ,633 LABEL lbl1 ;
VALUE "«·”ˆƒ«·" ;
WIDTH 43 ;
HEIGHT 30 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,128,255}
@ 14 ,255 LABEL lbl3 ;
VALUE "«·ÃÊ«»" ;
WIDTH 49 ;
HEIGHT 33 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {255,255,0}
@ 87 ,569 LABEL lbl4 ;
VALUE "„« ÂÌ √ﬂ»— ‰⁄„…   „ ⁄ »Â«ø" ;
WIDTH 172 ;
HEIGHT 32 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
FONTCOLOR {255,255,255}
@ 163 ,559 LABEL lbl5 ;
VALUE "„« ÂÌ √ﬂ»— ’Õ—«¡ ›Ì «·⁄«·„ø" ;
WIDTH 182 ;
HEIGHT 30 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
FONTCOLOR {255,128,255}
@ 127 ,537 LABEL lbl6 ;
VALUE "„« «·”Ê—… «· Ì ·«  »œ√ »«·»”„·… ø" ;
WIDTH 193 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
RIGHTALIGN ;
FONTCOLOR {255,128,255}
@ 197 ,492 LABEL lbl8 ;
VALUE "„« ÂÌ «· ﬁ‰Ì… «· Ì ÿÊ—Â« „Õ„Êœ «·›«Ìœ ø" ;
WIDTH 249 ;
HEIGHT 32 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,0,255} ;
CENTERALIGN ;
FONTCOLOR {255,128,255}
@ 71 ,29 BUTTONEX btn1;
CAPTION "«·ÃÊ«»";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK click1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 112 ,29 BUTTONEX btn2;
CAPTION "«·ÃÊ«»";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK click2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 161 ,29 BUTTONEX btn3;
CAPTION "«·ÃÊ«»";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK click3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 204 ,28 BUTTONEX btn4;
CAPTION "«·ÃÊ«»";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK click4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "andalus" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 73 ,258 LABEL lbl9 ;
VALUE "" ;
WIDTH 46 ;
HEIGHT 33 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,128,0}
@ 157 ,205 LABEL lbl11 ;
VALUE "" ;
WIDTH 168 ;
HEIGHT 30 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,128,0}
@ 203 ,253 LABEL lbl12 ;
VALUE "" ;
WIDTH 51 ;
HEIGHT 28 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,128,0}
@ 117 ,241 LABEL lbl10 ;
VALUE "" ;
WIDTH 84 ;
HEIGHT 32 ;
FONT "andalus" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,128,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure click1()
win1.lbl9.Value := "«·≈”·«„"
return
procedure click2()
win1.lbl10.Value := "”Ê—… «· Ê»…"
return
procedure click3()
win1.lbl11.Value := "«·’Õ—«¡ «·ﬂ»—Ï «·≈›—ÌﬁÌ…"
return
procedure click4()
win1.lbl12.Value := "pwct"
return


End Of Resistance

INIT PROCEDURE Init_PROG4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·»—‰«„Ã «·—«»⁄'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·”ˆƒ«·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·ÃÊ«»'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '„« ÂÌ √ﬂ»— ‰⁄„…   „ ⁄ »Â«ø'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '„« ÂÌ √ﬂ»— ’Õ—«¡ ›Ì «·⁄«·„ø'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '„« «·”Ê—… «· Ì ·«  »œ√ »«·»”„·… ø'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : '„« ÂÌ «· ﬁ‰Ì… «· Ì ÿÊ—Â« „Õ„Êœ «·›«Ìœ ø'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·ÃÊ«»'",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action click1",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·ÃÊ«»'",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action click2",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«·ÃÊ«»'",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action click3",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·ÃÊ«»'",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action click4",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ''",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : ''",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : ''",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",116,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ''",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,129)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure click1 ( Event : CLICK )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl9.Value := '«·≈”·«„'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure click2 ( Event : CLICK )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl10.Value := '”Ê—… «· Ê»…'",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure click3 ( Event : CLICK )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl11.Value := '«·’Õ—«¡ «·ﬂ»—Ï «·≈›—ÌﬁÌ…'",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure click4 ( Event : CLICK )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl12.Value := 'pwct'",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
Return
*-------------------------------------------------------------------*
