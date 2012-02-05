*---------------------------------------------------------------------------*
* Time : 02:50:37    Date : 02/05/2012
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


Resistance R_NOTEPAD_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTEPAD_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 150 ,200 ;
WIDTH 479 ;
HEIGHT 566 ;
ICON "PWCTICON" ;
TITLE "Notepad " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -3 ,-3 IMAGE image1;
PICTURE "GRAY1.JPG";
STRETCH ;
WIDTH 479 HEIGHT 542
@ 27 ,13 LABEL lbl1 ;
VALUE "Title " ;
WIDTH 50 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {121,121,121} ;
TRANSPARENT ;
FONTCOLOR {121,121,121}
@ 133 ,13 LABEL lbl2 ;
VALUE "Note " ;
WIDTH 50 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {121,121,121} ;
TRANSPARENT ;
FONTCOLOR {121,121,121}
@ 72 ,34 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 304 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 177 ,35 EDITBOX edit1;
WIDTH 400 ;
HEIGHT 296;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 175 ,435 LABEL lbl3 ;
VALUE " " ;
WIDTH 5 ;
HEIGHT 300 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 172 ,31 LABEL lbl4 ;
VALUE " " ;
WIDTH 5 ;
HEIGHT 306 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 473 ,35 LABEL lbl5 ;
VALUE " " ;
WIDTH 405 ;
HEIGHT 5 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 171 ,32 LABEL lbl6 ;
VALUE " " ;
WIDTH 408 ;
HEIGHT 6 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 69 ,337 LABEL lbl7 ;
VALUE " " ;
WIDTH 6 ;
HEIGHT 40 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 67 ,30 LABEL lbl8 ;
VALUE " " ;
WIDTH 313 ;
HEIGHT 6 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 68 ,29 LABEL lbl9 ;
VALUE " " ;
WIDTH 6 ;
HEIGHT 42 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 104 ,34 LABEL lbl10 ;
VALUE " " ;
WIDTH 308 ;
HEIGHT 6 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,128,64} ;
FONTCOLOR {0,0,0}
@ 488 ,126 BUTTONEX btn1;
CAPTION "Save ";
ON CLICK save()  ;
WIDTH 68 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 488 ,197 BUTTONEX btn2;
CAPTION "Open ";
ON CLICK open()  ;
WIDTH 66 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 488 ,266 BUTTONEX btn3;
CAPTION "Quit ";
ON CLICK quit()  ;
WIDTH 66 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure quit()
win1.Release ( )
return
Proc open
GetFile := GetFile ( { {"Text","*.txt"} } , ;
" Open File" , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ENDIF
mynote = MEMOREAD ( GetFile )
win1.edit1.Value := mynote
Return Nil
Proc save
title := win1.text1.Value
mynote := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Save File " , ;
, ;
, ;
title )
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("This file already exists. Do you want to replace it?","Save")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,"Note"+":"+mynote)
FCLOSE(RPWI_TH)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,"Title"+":"+title+"  "+"Note"+":"+mynote)
FCLOSE(RPWI_TH)
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOTEPAD
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notepad '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'GRAY1.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Title '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Note '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ' '",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : ' '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : ' '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ' '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ' '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save '",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Open '",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action open",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Quit '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action quit",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure quit ( Event : CLICK )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure open",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",130,134)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile==false )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","File GetFile To String mynote",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mynote",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","title = win1.text1.Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mynote = win1.edit1.Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",145,149)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This file already exists. Do you want to replace it?' Title 'Save' Type: Message Ok/Cancel",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout==false )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","write String 'Note'+':'+mynote to File PutFile",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","write String 'Title'+':'+title+'  '+'Note'+':'+mynote to File PutFile",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
Return
*-------------------------------------------------------------------*
