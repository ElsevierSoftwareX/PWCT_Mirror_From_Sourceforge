*---------------------------------------------------------------------------*
* Time : 17:40:13    Date : 10/21/2011
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


Resistance R_NUNPUZLLE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NUNPUZLLE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 386 ;
HEIGHT 245 ;
ICON "PWCTICON" ;
TITLE "NumGame by Ibrahim Abdelelah" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 158 ,7 BUTTONEX b1;
CAPTION "1";
ON CLICK mybtn1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 54 ,7 BUTTONEX b2;
CAPTION "2";
ON CLICK mybtn2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 106 ,135 BUTTONEX b3;
CAPTION "3";
ON CLICK mybtn3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 54 ,135 BUTTONEX b4;
CAPTION "4";
ON CLICK mybtn4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 106 ,7 BUTTONEX b5;
CAPTION "5";
ON CLICK mybtn5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 158 ,135 BUTTONEX b6;
CAPTION "0";
ON CLICK mybtn6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 106 ,262 BUTTONEX b7;
CAPTION "6";
ON CLICK mybtn7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 54 ,262 BUTTONEX b8;
CAPTION "7";
ON CLICK mybtn8()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 158 ,262 BUTTONEX b9;
CAPTION "8";
ON CLICK mybtn9()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 11 ,19 LABEL lbl1 ;
VALUE "Number of Moves" ;
WIDTH 162 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,193 TEXTBOX t1;
HEIGHT 29 ;
WIDTH 57 ;
VALUE 0 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

win1.b6.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc loaddata
Public a1,a2,a3,a4,a5,a6,a7,a8,a9
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
Return Nil
Proc MovesCounter
a10 := win1.t1.value
a10 := a10+1
win1.t1.Value := a10
IF a10>=100
MyOut := MSGBOX("Number of Moves = 100 - Try Again","GAME OVER")
win1.t1.Value := 0
ENDIF
Return Nil
Proc CheckStatus
Local lWin
lWin := False
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
lWin := True
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
lWin := True
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
lWin := True
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
lWin := True
ENDIF
IF lwin = True
MyOut := MSGBOX("You win !!!","Wow")
Return 0
ENDIF
DO MovesCounter
Return Nil
Proc DoMove( p1,p2 )
Local cVar1,cVar2,cControl1,cControl2,t1,t2
cVar1 := "a"+p1
cVar2 := "a"+p2
cControl1 := "b" + p1
cControl2 := "b" + p2
t1 = STR ( &cVar1 )
t2 = STR ( &cVar2 )
DO SetProperty WITH "win1",cControl2,"caption",t1
DO SetProperty WITH "win1",cControl1,"caption",t2
DO DoMethod WITH "win1",cControl1,"Show"
DO DoMethod WITH "win1",cControl2,"Hide"
Return Nil
Proc mybtn1
DO LoadData
IF a5=0
DO DoMove WITH "5","1"
ENDIF
IF a6=0
DO DoMove WITH "6","1"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn2
DO LoadData
IF a4=0
DO DoMove WITH "4","2"
ENDIF
IF a5=0
DO DoMove WITH "5","2"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn3
DO LoadData
IF a4=0
DO DoMove WITH "4","3"
ENDIF
IF a5=0
DO DoMove WITH "5","3"
ENDIF
IF a6=0
DO DoMove WITH "6","3"
ENDIF
IF a7=0
DO DoMove WITH "7","3"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn4
DO LoadData
IF a2=0
DO DoMove WITH "2","4"
ENDIF
IF a3=0
DO DoMove WITH "3","4"
ENDIF
IF a8=0
DO DoMove WITH "8","4"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn5
DO LoadData
IF a2=0
DO DoMove WITH "2","5"
ENDIF
IF a3=0
DO DoMove WITH "3","5"
ENDIF
IF a1=0
DO DoMove WITH "1","5"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn6
DO LoadData
IF a3=0
DO DoMove WITH "3","6"
ENDIF
IF a1=0
DO DoMove WITH "1","6"
ENDIF
IF a9=0
DO DoMove WITH "9","6"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn7
DO LoadData
IF a8=0
DO DoMove WITH "8","7"
ENDIF
IF a9=0
DO DoMove WITH "9","7"
ENDIF
IF a3=0
DO DoMove WITH "3","7"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn8
DO LoadData
IF a7=0
DO DoMove WITH "7","8"
ENDIF
IF a4=0
DO DoMove WITH "4","8"
ENDIF
DO CheckStatus
Return Nil
Proc mybtn9
DO LoadData
IF a7=0
DO DoMove WITH "7","9"
ENDIF
IF a6=0
DO DoMove WITH "6","9"
ENDIF
DO CheckStatus
Return Nil


End Of Resistance

INIT PROCEDURE Init_NUNPUZLLE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'NumGame by Ibrahim Abdelelah'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b1 ) , Caption : '1'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn1()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b2 ) , Caption : '2'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn2()",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b3 ) , Caption : '3'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn3()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b4 ) , Caption : '4'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn4()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b5 ) , Caption : '5'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn5()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b6 ) , Caption : '0'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn6()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b7 ) , Caption : '6'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn7()",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b8 ) , Caption : '7'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn8()",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( b9 ) , Caption : '8'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybtn9()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number of Moves'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t1  )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",73,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.b6.Hide ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure loaddata",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Public a1,a2,a3,a4,a5,a6,a7,a8,a9",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","a1 = win1.b1.caption",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","a2 = win1.b2.caption",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","a3 = win1.b3.caption",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","a4 = win1.b4.caption",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","a5 = win1.b5.caption",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","a6 = win1.b6.caption",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","a7 = win1.b7.caption",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","a8 = win1.b8.caption",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","a9 = win1.b9.caption",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","a1 = All Trim a1",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","a2 = All Trim a2",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","a3 = All Trim a3",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","a4 = All Trim a4",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","a5 = All Trim a5",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","a6 = All Trim a6",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","a7 = All Trim a7",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","a8 = All Trim a8",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","a9 = All Trim a9",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","a1 = CONVERT a1 TO Numeric",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","a2 = CONVERT a2 TO Numeric",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","a3 = CONVERT a3 TO Numeric",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","a4 = CONVERT a4 TO Numeric",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","a5 = CONVERT a5 TO Numeric",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","a6 = CONVERT a6 TO Numeric",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","a7 = CONVERT a7 TO Numeric",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","a8 = CONVERT a8 TO Numeric",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","a9 = CONVERT a9 TO Numeric",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MovesCounter",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","a10 = win1.t1.value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","a10 = a10+1",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.t1.Value := a10",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a10>=100 )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Number of Moves = 100 - Try Again' Title 'GAME OVER' Type: Message Box",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.t1.Value := 0",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CheckStatus",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Local lWin",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","lWin = False",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7 )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","lWin = True",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0 )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","lWin = True",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1 )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","lWin = True",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3 )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","lWin = True",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lwin = True )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You win !!!' Title 'Wow' Type: Message Box",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MovesCounter",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DoMove( p1,p2 )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Local cVar1,cVar2,cControl1,cControl2,t1,t2",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cVar1 = 'a'+p1",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","cVar2 = 'a'+p2",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cControl1 = 'b' + p1",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","cControl2 = 'b' + p2",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","t1 = CONVERT &cVar1 TO STRING",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = CONVERT &cVar2 TO STRING",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SetProperty Parameters 'win1',cControl2,'caption',t1",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SetProperty Parameters 'win1',cControl1,'caption',t2",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMethod Parameters 'win1',cControl1,'Show'",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMethod Parameters 'win1',cControl2,'Hide'",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn1",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a5=0 )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '5','1'",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a6=0 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '6','1'",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn2",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a4=0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '4','2'",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a5=0 )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '5','2'",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn3",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a4=0 )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '4','3'",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a5=0 )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '5','3'",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a6=0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '6','3'",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a7=0 )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '7','3'",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn4",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a2=0 )",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '2','4'",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a3=0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '3','4'",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a8=0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '8','4'",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn5",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a2=0 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '2','5'",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a3=0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '3','5'",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=0 )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '1','5'",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn6",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a3=0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '3','6'",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a1=0 )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '1','6'",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a9=0 )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '9','6'",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn7",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a8=0 )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '8','7'",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a9=0 )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '9','7'",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a3=0 )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '3','7'",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn8",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a7=0 )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '7','8'",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a4=0 )",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '4','8'",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybtn9",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadData",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a7=0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '7','9'",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( a6=0 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DoMove Parameters '6','9'",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure CheckStatus",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",266,266)
Return
*-------------------------------------------------------------------*
