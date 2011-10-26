*---------------------------------------------------------------------------*
* Time : 12:20:15    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_AMINE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_AMINE_18smart1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 592 ;
HEIGHT 504 ;
ON INIT opendb()  ;
TITLE "»—‰«„Ã «·„ÊŸ›Ì‰" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} ;
NOTIFYICON "FACE.ICO" 

TRANS_TEMP = "am"
@ 1 ,2 ;
BROWSE browse1 ;
WIDTH 553 ;
HEIGHT 265 ;
HEADERS {" ·Ì›Ê‰ «·„ÊŸ›","⁄‰Ê«‰ «·„ÊŸ›","«”„ «·„ÊŸ›","—ﬁ„ «·„ÊŸ›","—« » «·„ÊŸ›"} ;
WIDTHS {100,100,100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"am->phone","am->address","am->name","am->num","am->rat"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 300 ,297 BUTTONEX btnadd;
CAPTION "«÷«›… ”Ã·";
ON CLICK myadd()  ;
WIDTH 122 HEIGHT 36 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 299 ,148 BUTTONEX btndel;
CAPTION "Õ–› ”Ã·";
ON CLICK mydel()  ;
WIDTH 123 HEIGHT 36 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 298 ,3 BUTTONEX btn1;
CAPTION "ÕÊ·";
ON CLICK MSGINFO( "»—„Ã… Ê ’„Ì„ / √„Ì‰ œ»«»”Ì…" ) ;
WIDTH 125 HEIGHT 35 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Win1", "GIF89.Gif89.1" , 351 , 28 , 533 , 93)
oActiveX:Load()
Public oActiveX2
oActiveX2 := TActiveX():New( "Win1", "GIF89.Gif89.1" , 451 , 45 , 463 , 77)
oActiveX2:Load()
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
END POPUP
POPUP "„⁄·Ê„« "
MENUITEM "ÕÊ· «·»—‰«„Ã" Action MSGINFO( "„⁄ Â–« «·»—‰«„Ã Ì„ﬂ‰ﬂ «‰  ”Ã· „⁄·Ê„«  «·„ÊŸÌ›Ì‰ „‰ «”„, Ê ·Ì›Ê‰, Ê—« »...«·Œ ÊÌ„ﬂ‰ﬂ √Ì÷« Õ–› √Ì ”Ã·  —ÌœÂ" )
MENUITEM "ÕÊ· «·„»—„Ã" Action MSGINFO( "·ﬁœ  „ »—„Ã… Ê ’„Ì„ Â–« «·»—‰«„Ã „‰ ÿ—›  / √„Ì‰ œ»«»”Ì…" )
END POPUP
END MENU
@ 300 ,433 BUTTONEX mybtn;
CAPTION "„⁄·Ê„«  «·„»—„Ã";
ON CLICK mywin()  ;
WIDTH 144 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 416 ,200 LABEL lbl1 ;
VALUE "a" ;
WIDTH 189 ;
HEIGHT 49 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mytimer()
END WINDOW

oactivex:OOLE:glass := .t.
oactivex:OOLE:autosize := .f.
oactivex:OOLE:FileName := "a.gif"
oactivex2:OOLE:glass := .t.
oactivex2:OOLE:autosize := .f.
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc opendb
CheckFile := File("am.dbf")
IF checkfile = false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "num",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "rat",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE "am" FROM TempStru
ENDIF
Use am
Return Nil
Proc myadd
SELECT AREA am
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT AREA am
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil
Proc myexit
win1.Release ( )
Return Nil
Proc mywin
DEFINE WINDOW mywin1 ;
AT 10 ,10 ;
WIDTH 721 ;
HEIGHT 423 ;
ICON "PWCTICON" ;
TITLE "„⁄·Ê„«  «·„»—„Ã" ;
MODAL ;
BACKCOLOR {0,64,128} 

@ 338 ,112 BUTTONEX mybtn2;
CAPTION "Œ—ÊÃ „‰ Â–Â «·‰«›–…";
ON CLICK mywin1.release()  ;
WIDTH 214 HEIGHT 39 ;
FONT "Arial" SIZE 22 ;
TOOLTIP ""
@ 0 ,449 IMAGE image1;
PICTURE "PIC.JPG";
WIDTH 261 HEIGHT 383
@ 5 ,178 LABEL mylbl1 ;
VALUE "«·«”„ Ê«··ﬁ» : „Õ„œ √„Ì‰ œ»«»”Ì…" ;
WIDTH 264 ;
HEIGHT 50 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 80 ,178 LABEL mylbl2 ;
VALUE " «—ÌŒ «·„Ì·«œ : 06 ÃÊ«‰ 1993" ;
WIDTH 259 ;
HEIGHT 46 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 164 ,56 LABEL mylbl3 ;
VALUE "„ﬂ«‰ «·«ﬁ«„… : »·œÌ… Õ„«„ «·‰»«∆· / ﬁ«·„… / «·Ã“«∆—" ;
WIDTH 385 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 236 ,15 LABEL lbl5 ;
VALUE "·ﬁœ  „ »‰«¡ «·»—‰«„Ã » ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ··„Â‰œ” „Õ„Êœ ›«Ìœ" ;
WIDTH 428 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,0}
END WINDOW

ACTIVATE WINDOW mywin1

Return Nil
Proc mytimer
thetime = TIME()
win1.lbl1.Value := thetime
Return Nil


End Of Resistance

INIT PROCEDURE Init_AMINE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",14,25)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd )",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel )",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX2 )",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„⁄·Ê„« '",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÊ· «·»—‰«„Ã' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÊ· «·„»—„Ã' )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( mybtn )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.glass := .t.",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.autosize := .f.",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.FileName := 'a.gif'",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.glass := .t.",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex2.autosize := .f.",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'am.dbf'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'am'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'name'",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'address'",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'phone'",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'num'",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'rat'",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table am",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area am",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area am",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywin",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( mywin1 )",144,147)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( mybtn2 )",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( mylbl1 )",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( mylbl2 )",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( mylbl3 )",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",178,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",185,189)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",190,191)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",192,193)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mytimer",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","thetime = System Time",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := thetime",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",198,198)
Return
*-------------------------------------------------------------------*
