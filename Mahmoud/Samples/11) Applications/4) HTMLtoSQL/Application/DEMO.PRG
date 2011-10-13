*---------------------------------------------------------------------------*
* Time : 22:57:09    Date : 10/12/2011
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


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 764 ;
HEIGHT 385 ;
ICON "PWCTICON" ;
TITLE "HTML To SQL" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 20 ,136 LABEL lbl1 ;
VALUE "Html" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 20 ,576 LABEL lbl2 ;
VALUE "SQL" ;
WIDTH 41 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 57 ,11 EDITBOX edit1;
WIDTH 310 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 57 ,434 EDITBOX edit2;
WIDTH 310 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 281 ,92 BUTTONEX btnload;
CAPTION "Load from file";
ON CLICK myload()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 281 ,533 BUTTONEX btnsave;
CAPTION "Save to file";
ON CLICK mysave()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 128 ,340 BUTTONEX btnconvert;
CAPTION "Convert ---->";
ON CLICK myconvert()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myload
GetFile := GetFile ( { {"Html","*.htm"}} , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
ENDIF
Return Nil
Proc mysave
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Save" , ;
, ;
, ;
)
mystr := win1.edit2.Value
RPWI_TH = FCREATE(putfile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myconvert
win1.edit2.Value := ""
mystr := win1.edit1.Value
mycount = MLCOUNT( mystr , 254 )
IF mycount = 0
Return 0
ENDIF
mycol := 0
mydata := {}
FOR x = 1 TO mycount STEP 1
myline = MEMOLINE( mystr , 254 , x )
mytab  = CHR(9)
myline = STRTRAN(myline,mytab,"")
myline = ALLTRIM ( myline )
Myleft = Left(myline,4)
Myright = Right(myline,5)
myleft = LOWER ( myleft )
myright = LOWER ( myright )
IF myleft = "<td>" .and. myright = "</td>"
mymax  = LEN(myline)
myline = SUBSTR(myline,5,mymax-9)
myline = ALLTRIM ( myline )
AADD( mydata , myline)
ENDIF
Myleft = Left(myline,5)
myleft = LOWER ( myleft )
IF myleft = "</tr>" .and. mycol  = 0
mycol  = LEN(mydata)
ENDIF
Next
win1.edit1.Value := mystr
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + "CREATE TABLE HTMLTOSQL"
else
Win1.Edit2.VALUE := "CREATE TABLE HTMLTOSQL"
endif
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + "("
else
Win1.Edit2.VALUE := "("
endif
FOR x = 1 TO mycol STEP 1
IF MYCOL != X
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + MYDATA[X] + " CHAR(100) , "
else
Win1.Edit2.VALUE := MYDATA[X] + " CHAR(100) , "
endif
ELSE
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + MYDATA[X] + " CHAR(100) "
else
Win1.Edit2.VALUE := MYDATA[X] + " CHAR(100) "
endif
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + " ) ;"
else
Win1.Edit2.VALUE := " ) ;"
endif
ENDIF
Next
mycount  = LEN(mydata)
IF mycount = 0
win1.edit2.Value := ""
Return 0
ENDIF
FOR x = mycol TO mycount STEP mycol
myins := "Insert Into HTMLTOSQL Values ("
FOR x2 = 1 TO mycol STEP 1
IF x2+x > mycount
Return 0
ENDIF
IF x2 = mycol
myins := myins + '"' + mydata[x+x2] + '"' + ');'
ELSE
myins := myins + '"' + mydata[x+x2] + '"' + ','
ENDIF
Next
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + myins
else
Win1.Edit2.VALUE := myins
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'HTML To SQL'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Html'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'SQL'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload ) , Caption : 'Load from file'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myload()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save to file'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnconvert ) , Caption : 'Convert ---->'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myconvert()",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String mystr",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myconvert",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := ''",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Lines count of mystr",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = 0",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array mydata",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystr",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","mytab = Get character of ASCII Code 9",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String mytab FROM myline TRANSFORM TO ''",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","myline = All Trim myline",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Myleft =  Get SubString from left, String: myline Count: 4",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Myright =  Get SubString from right, String: myline Count: 5",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","myleft = CONVERT String myleft To LOWER CASE",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","myright = CONVERT String myright To LOWER CASE",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myleft = '<td>' .and. myright = '</td>' )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Length of String/Variable/Array myline",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String of myline From 5 Count mymax-9",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","myline = All Trim myline",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Add item myline To Array mydata",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Myleft =  Get SubString from left, String: myline Count: 5",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","myleft = CONVERT String myleft To LOWER CASE",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myleft = '</tr>' .and. mycol  = 0 )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = Get Length of String/Variable/Array mydata",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('CREATE TABLE HTMLTOSQL') to Editbox (Edit2) of Window (Win1)",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('(') to Editbox (Edit2) of Window (Win1)",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycol Step 1)",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYCOL != X )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (MYDATA[X] + ' CHAR(100) , ') to Editbox (Edit2) of Window (Win1)",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (MYDATA[X] + ' CHAR(100) ') to Editbox (Edit2) of Window (Win1)",142,146)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ) ;') to Editbox (Edit2) of Window (Win1)",147,151)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Length of String/Variable/Array mydata",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := ''",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = mycol To mycount Step mycol)",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","myins = 'Insert Into HTMLTOSQL Values ('",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To mycol Step 1)",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x2+x > mycount )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x2 = mycol )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","myins = myins + ''' + mydata[x+x2] + ''' + ');'",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","myins = myins + ''' + mydata[x+x2] + ''' + ','",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myins) to Editbox (Edit2) of Window (Win1)",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
Return
*-------------------------------------------------------------------*
