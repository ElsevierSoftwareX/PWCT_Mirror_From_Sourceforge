*---------------------------------------------------------------------------*
* Time : 04:39:10    Date : 01/26/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 393 ;
HEIGHT 377 ;
ICON "PWCTICON" ;
TITLE "increament" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,255} 

@ 53 ,128 LABEL lbl1 ;
VALUE "1" ;
WIDTH 120 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 111 ,175 BUTTONEX btn1;
CAPTION "Increment";
ON CLICK countnum()  ;
WIDTH 132 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,23 BUTTONEX btn2;
CAPTION "Decrement";
ON CLICK decnum()  ;
WIDTH 135 HEIGHT 32 ;
FONT "Broadway" SIZE 14 ;
TOOLTIP ""
@ 212 ,24 BUTTONEX btn3;
CAPTION "num^2";
ON CLICK all()  ;
WIDTH 135 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 159 ,25 BUTTONEX btn4;
CAPTION "num*2";
ON CLICK yes()  ;
WIDTH 133 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 158 ,173 BUTTONEX btn5;
CAPTION "num÷2";
ON CLICK can()  ;
WIDTH 132 HEIGHT 32 ;
FONT "Cooper Black" SIZE 16 ;
TOOLTIP ""
@ 214 ,172 BUTTONEX btn6;
CAPTION "num^3";
ON CLICK we()  ;
WIDTH 132 HEIGHT 34 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 308 ,4 LABEL lbl2 ;
VALUE "creating by:ahmed warda" ;
WIDTH 164 ;
HEIGHT 23 ;
FONT "Baskerville Old Face" SIZE 12  ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {0,64,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc countnum
countnum := win1.lbl1.Value
countnum = VAL ( countnum )
countnum := countnum+1
countnum = STR ( countnum )
countnum = ALLTRIM ( countnum )
win1.lbl1.Value := countnum
Return Nil
Proc decnum
decnum := win1.lbl1.Value
decnum = VAL ( decnum )
decnum := decnum-1
decnum = STR ( decnum )
decnum = ALLTRIM ( decnum )
win1.lbl1.Value := decnum
Return Nil
Proc yes
yes := win1.lbl1.Value
yes = VAL ( yes )
yes := yes*2
yes = STR ( yes )
yes = ALLTRIM ( yes )
win1.lbl1.Value := yes
Return Nil
Proc can
can := win1.lbl1.Value
can = VAL ( can )
can := can/2
can = STR ( can )
can = ALLTRIM ( can )
win1.lbl1.Value := can
Return Nil
Proc all
all := win1.lbl1.Value
all = VAL ( all )
all := all*all
all = STR ( all )
all = ALLTRIM ( all )
win1.lbl1.Value := all
Return Nil
Proc we
we := win1.lbl1.Value
we = VAL ( we )
we := we*we*we
we = STR ( we )
we = ALLTRIM ( we )
win1.lbl1.Value := we
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'increament'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '1'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action countnum()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Decrement'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action decnum()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'num^2'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action all()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'num*2'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action yes()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'num÷2'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action can()",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'num^3'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action we()",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'creating by:ahmed warda'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure countnum",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure decnum",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","decnum = win1.lbl1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","decnum = CONVERT decnum TO Numeric",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","decnum = decnum-1",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","decnum = CONVERT decnum TO STRING",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","decnum = All Trim decnum",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := decnum",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure yes",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","yes = win1.lbl1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","yes = CONVERT yes TO Numeric",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","yes = yes*2",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","yes = CONVERT yes TO STRING",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","yes = All Trim yes",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := yes",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure can",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","can = win1.lbl1.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","can = CONVERT can TO Numeric",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","can = can/2",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","can = CONVERT can TO STRING",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","can = All Trim can",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := can",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure all",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","all = win1.lbl1.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","all = CONVERT all TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","all = all*all",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","all = CONVERT all TO STRING",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","all = All Trim all",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := all",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure we",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","we = win1.lbl1.Value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","we = CONVERT we TO Numeric",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","we = we*we*we",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","we = CONVERT we TO STRING",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","we = All Trim we",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := we",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
Return
*-------------------------------------------------------------------*
