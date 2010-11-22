*---------------------------------------------------------------------------*
* Time : 16:00:14    Date : 11/04/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_NEW_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 360 ;
HEIGHT 440 ;
ON INIT next()  ;
ICON "PWCTICON" ;
TITLE "«Œ »— „⁄·Ê„« ﬂ »—„Ã… «»—«ÂÌ„ ⁄»œ «··«Â" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} ;
NOTIFYTOOLTIP "«Œ »— „⁄·Ê„«  » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ »—„Ã… «»—«ÂÌ„ ⁄»œ «··«Â" 

win1.Center ( )
@ 39 ,5 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 274 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 80 ,51 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 125 ,51 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 167 ,51 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 208 ,50 TEXTBOX text5;
HEIGHT 32 ;
WIDTH 66 ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 192 ,551 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 245 ,226 TEXTBOX text7;
HEIGHT 27 ;
WIDTH 51 ;
READONLY ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 247 ,49 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 59 ;
READONLY ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 290 ,50 TEXTBOX text9;
HEIGHT 29 ;
WIDTH 54 ;
READONLY ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 287 ,228 TEXTBOX text10;
HEIGHT 28 ;
WIDTH 50 ;
READONLY ;
FONT "arial" SIZE 16 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 40 ,281 LABEL lbl1 ;
VALUE "«·”ƒ«·" ;
WIDTH 63 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 80 ,261 LABEL lbl2 ;
VALUE "1" ;
WIDTH 100 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 124 ,262 LABEL lbl3 ;
VALUE "2" ;
WIDTH 99 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 166 ,260 LABEL lbl4 ;
VALUE "3" ;
WIDTH 101 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 207 ,151 LABEL lbl5 ;
VALUE "√œŒ· —ﬁ„ «·≈Ã«»… «·’ÕÌÕ…" ;
WIDTH 164 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,69 LABEL lbl6 ;
VALUE "" ;
WIDTH 159 ;
HEIGHT 23 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 297 ,111 LABEL lbl7 ;
VALUE "⁄œœ «·«Ã«»«  «·’ÕÌÕ…" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 253 ,125 LABEL lbl8 ;
VALUE "⁄œœ «·«Ã«»«  «·Œÿ√" ;
WIDTH 82 ;
HEIGHT 22 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 249 ,287 LABEL lbl9 ;
VALUE "⁄œœ «·≈Ã«»« " ;
WIDTH 55 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 292 ,294 LABEL lbl10 ;
VALUE "% «·‰”»…" ;
WIDTH 42 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
TOOLTIP " «·‰”»… «·„∆ÊÌ… ··≈Ã«»«  «·’ÕÌÕ… "  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 358 ,228 BUTTONEX btn1;
CAPTION " €ÌÌ— «·”ƒ«·";
ON CLICK next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 357 ,116 BUTTONEX btn2;
CAPTION "«Œ »«— «·«Ã«»…";
ON CLICK test()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 357 ,3 BUTTONEX btn3;
CAPTION "Œ—ÊÃ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mytimer()
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc qu
Public con
con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from t1",Con,3,3 )
txt1 := oRS:fields:item("q"):value
txt2 := oRS:fields:item("an1"):value
txt3 := oRS:fields:item("an2"):value
txt4 := oRS:fields:item("an3"):value
txt5 := oRS:fields:item("ancor"):value
win1.text1.Value := txt1
win1.text2.Value := txt2
win1.text3.Value := txt3
win1.text4.Value := txt4
win1.text6.Value := txt5
win1.text5.SetFocus ( )
Return Nil
Proc next
cn := int(rand()*20)+1
cn = STR ( cn )
cn = ALLTRIM ( cn )
Public Con
Con := TOLEAUTO():NEW( "ADODB.Connection" )
Con:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := Con
oRS:open ( "Select * from t1 where n like '" + cn + "%'",Con,3,3 )
myn := oRS:RecordCount
IF myn > 0
FOR x = 1 TO myn STEP 1
txt1 := oRS:fields:item("q"):value
txt2 := oRS:fields:item("an1"):value
txt3 := oRS:fields:item("an2"):value
txt4 := oRS:fields:item("an3"):value
txt5 := oRS:fields:item("ancor"):value
win1.text1.Value := txt1
win1.text2.Value := txt2
win1.text3.Value := txt3
win1.text4.Value := txt4
win1.text6.Value := txt5
win1.text5.SetFocus ( )
oRS:MOVENEXT()
Next
ELSE
DO qu
ENDIF
Return Nil
Proc test
a := win1.text5.Value
b := win1.text6.Value
b = VAL ( b )
mans := win1.text8.Value
cans := win1.text9.Value
IF a<1 .or. a>3
MyOut := MSGBOX("«·—ﬁ„ «·„œŒ· €Ì— ’ÕÌÕ ° «·—ﬁ„ ÌÃ» √‰ ÌﬂÊ‰ ’ÕÌÕ „‰ 1 «·Ï 3","«œŒ«· Œÿ√")
win1.text5.Value := ""
win1.text5.SetFocus ( )
DO next
ENDIF
IF a=b
PLAY WAVE "CORECT.WAV"

win1.text5.Value := ""
win1.text5.SetFocus ( )
f := cans+1
win1.text9.Value := f
DO next
ENDIF
r := mans+cans+1
win1.text7.Value := r
p := win1.text9.Value
vans := (p/r)*100
win1.text10.Value := vans
IF a<>b
PLAY WAVE "BAD.WAV"

win1.text5.Value := ""
win1.text5.SetFocus ( )
g := mans+1
win1.text8.Value := g
ENDIF
Return Nil
Proc exit
win1.Release ( )
Return Nil
Proc mytimer
time = TIME()
win1.lbl6.Value := time
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
Return
*-------------------------------------------------------------------*
