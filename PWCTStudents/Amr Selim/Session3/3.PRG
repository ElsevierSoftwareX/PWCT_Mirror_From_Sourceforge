*---------------------------------------------------------------------------*
* Time : 21:49:08    Date : 01/07/2012
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 323 ;
HEIGHT 385 ;
ICON "PWCTICON" ;
TITLE "«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

@ 63 ,231 LABEL lbl3 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ì" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 24 ,253 LABEL lbl4 ;
VALUE "«·œ—Ã…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,219 BUTTONEX btn4;
CAPTION "«·‰”»… «·„∆ÊÌ…";
ON CLICK calc()  ;
WIDTH 65 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 18 ,11 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 54 ,12 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 118 ,12 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 159 ,219 BUTTONEX btn9;
CAPTION "«·Ã„⁄";
ON CLICK ADDD()  ;
WIDTH 65 HEIGHT 22 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 154 ,12 TEXTBOX text5;
HEIGHT 28 ;
WIDTH 198 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,9 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 199 ,216 BUTTONEX btn10;
CAPTION "ÿ—Õ";
ON CLICK mins()  ;
WIDTH 67 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure addlistt()
Win1.List1.Additem ( "1" )
Win1.List1.Additem ( "2" )
Win1.List1.Additem ( "3" )
return
procedure exitt()
win1.Release ( )
win1.Release ( )
return
procedure addname()
Win1.List1.Additem ( "amr" )
Win1.List1.Additem ( "amr" )
Win1.List1.Additem ( "selim" )
return
Proc calc
txt1 = VAL ( win1.text1.value )
txt2 = VAL ( win1.text2.value )
cac := (txt1/txt2)*100
cac = STR ( cac )
cac = ALLTRIM ( cac )
win1.text3.Value := cac
Return Nil
procedure ADDD()
txt11 = VAL ( win1.text1.VALUE )
txt12 = VAL ( win1.text2.value )
asd := (txt11+txt12)
asd = STR ( asd )
asd = ALLTRIM ( asd )
win1.text5.Value := asd
return
procedure addlist()
listt := win1.text4.value
win1.list1.AddItem ( listt )
return
procedure hiuser()
user1 := win1.text10.Value
IF user1==""
MyOut := MSGExclamation("—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…","«œŒ‹· «”‹‹„‹ﬂ")
ELSE
MyOut := MSGBOX("„—Õ»« »ﬂ Ì«"+ user1," ›÷· «ŒÌ")
ENDIF
return
procedure mins()
txt11 = VAL ( win1.text1.VALUE )
txt12 = VAL ( win1.text2.value )
aasd := (txt11-txt12)
aasd = STR ( aasd )
aasd = ALLTRIM ( aasd )
win1.text6.Value := aasd
return
ON CLICK mins()  ;


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«Õ»ﬂ —»Ì „‰ ﬂ· ﬁ·»Ì'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ì'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·œ—Ã…'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '«·Ã„⁄'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ADDD",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'ÿ—Õ'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mins",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlistt ( Event : CLICK )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('1') to Listbox (List1) of Window (Win1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('2') to Listbox (List1) of Window (Win1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('3') to Listbox (List1) of Window (Win1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exitt ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addname ( Event : CLICK )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('amr') to Listbox (List1) of Window (Win1)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('amr') to Listbox (List1) of Window (Win1)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('selim') to Listbox (List1) of Window (Win1)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","txt1 = CONVERT win1.text1.value TO Numeric",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","txt2 = CONVERT win1.text2.value TO Numeric",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cac = (txt1/txt2)*100",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","cac = CONVERT cac TO STRING",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cac = All Trim cac",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cac",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ADDD ( Event : CLICK )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","txt11 = CONVERT win1.text1.VALUE TO Numeric",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","txt12 = CONVERT win1.text2.value TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","asd = (txt11+txt12)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","asd = CONVERT asd TO STRING",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","asd = All Trim asd",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := asd",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addlist ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","listt = win1.text4.value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( listt )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hiuser ( Event : CLICK )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","user1 = win1.text10.Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user1=='' )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '—ﬂ‹‹‹“ ‘‹‹‹ÊÌ‹‹‹…' Title '«œŒ‹· «”‹‹„‹ﬂ' Type: Message Exclamation",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« »ﬂ Ì«'+ user1 Title ' ›÷· «ŒÌ' Type: Message Box",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mins ( Event : CLICK )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","txt11 = CONVERT win1.text1.VALUE TO Numeric",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","txt12 = CONVERT win1.text2.value TO Numeric",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","aasd = (txt11-txt12)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","aasd = CONVERT aasd TO STRING",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","aasd = All Trim aasd",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := aasd",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mins",129,129)
Return
*-------------------------------------------------------------------*
