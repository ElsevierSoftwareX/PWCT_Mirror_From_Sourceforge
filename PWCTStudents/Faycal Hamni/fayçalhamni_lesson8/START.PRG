*---------------------------------------------------------------------------*
* Time : 14:55:11    Date : 03/23/2013
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
 * (Noun) *
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 674 ;
HEIGHT 379 ;
ICON "PWCTICON" ;
TITLE "≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  " ;
MAIN ;
BACKCOLOR {0,64,0} 

@ 10 ,10 LISTBOX list1;
WIDTH 501 ;
HEIGHT 229 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 9 ,533 BUTTONEX btn1;
CAPTION "«·≈Œ »«— ";
ON CLICK pFa()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 259 ,25 LABEL lbl1 ;
VALUE "„‹‹‰ " ;
WIDTH 62 ;
HEIGHT 33 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {0,64,0} ;
FONTCOLOR {255,255,255}
@ 260 ,250 LABEL lbl2 ;
VALUE "≈·Ì" ;
WIDTH 55 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,0} ;
FONTCOLOR {255,255,255}
@ 260 ,469 LABEL lbl3 ;
VALUE "ŒÿÊ… " ;
WIDTH 61 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
ITALIC ;
BACKCOLOR {0,64,0} ;
FONTCOLOR {255,255,255}
@ 260 ,85 TEXTBOX textFrom;
HEIGHT 32 ;
WIDTH 66 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 259 ,280 TEXTBOX textTo;
HEIGHT 31 ;
WIDTH 51 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 259 ,520 TEXTBOX textStep;
HEIGHT 31 ;
WIDTH 58 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 210 ,526 BUTTONEX btn2;
CAPTION "«·≈Œ »«—2 ";
ON CLICK pFa2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pFa()
FOR x = 4 TO 8 STEP 2
Win1.List1.Additem ( "·«≈·Â ≈·««··Â ÊÕœÂ ·« ‘—Ìﬂ ·Â ·Â «·„·ﬂ Ê·Â «·Õ„œ ÊÂÊ ⁄·Ì ﬂ· ‘Ì¡ ﬁœÌ— " )
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return
procedure pFa2()
nFrom := win1.textFrom.Value
nTo := win1.textTo.Value
nStep := win1.textStep.Value
win1.list1.DeleteAllItems ( )
FOR x = nFrom TO nTo STEP nStep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·≈Œ »«— '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pFa",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‹‹‰ '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '≈·Ì'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'ŒÿÊ… '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textFrom  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textTo  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textStep  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·≈Œ »«—2 '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pFa2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pFa ( Event : CLICK )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 4 To 8 Step 2)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('·«≈·Â ≈·««··Â ÊÕœÂ ·« ‘—Ìﬂ ·Â ·Â «·„·ﬂ Ê·Â «·Õ„œ ÊÂÊ ⁄·Ì ﬂ· ‘Ì¡ ﬁœÌ— ') to Listbox (List1) of Window (Win1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pFa2 ( Event : CLICK )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","nFrom = win1.textFrom.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.textTo.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.textStep.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = nFrom To nTo Step nStep)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
Return
*-------------------------------------------------------------------*
