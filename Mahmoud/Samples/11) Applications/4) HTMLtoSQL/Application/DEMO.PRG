#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:28:45    Date : 11/14/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
set autoadjust on
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 764 ;
HEIGHT 385 ;
ICON "PWCTICON" ;
TITLE "HTML To SQL" ;
MAIN ;
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
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnload )",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnconvert )",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myload",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File getfile",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","File getfile To String mystr",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit2.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","write String mystr to File putfile",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myconvert",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := ''",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.edit1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Lines count of mystr",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = 0",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array mydata",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystr",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","mytab = Get character of ASCII Code 9",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String mytab FROM myline TRANSFORM TO ''",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","myline = All Trim myline",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Myleft =  Get SubString from left, String: myline Count: 4",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Myright =  Get SubString from right, String: myline Count: 5",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","myleft = CONVERT String myleft To LOWER CASE",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","myright = CONVERT String myright To LOWER CASE",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myleft = '<td>' .and. myright = '</td>' )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Length of String/Variable/Array myline",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String of myline From 5 Count mymax-9",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","myline = All Trim myline",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Add item myline To Array mydata",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Myleft =  Get SubString from left, String: myline Count: 5",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","myleft = CONVERT String myleft To LOWER CASE",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myleft = '</tr>' .and. mycol  = 0 )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycol = Get Length of String/Variable/Array mydata",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := mystr",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('CREATE TABLE HTMLTOSQL') to Editbox (Edit2) of Window (Win1)",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('(') to Editbox (Edit2) of Window (Win1)",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycol Step 1)",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYCOL != X )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (MYDATA[X] + ' CHAR(100) , ') to Editbox (Edit2) of Window (Win1)",134,138)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (MYDATA[X] + ' CHAR(100) ') to Editbox (Edit2) of Window (Win1)",140,144)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ) ;') to Editbox (Edit2) of Window (Win1)",145,149)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Length of String/Variable/Array mydata",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value := ''",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = mycol To mycount Step mycol)",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myins = 'Insert Into HTMLTOSQL Values ('",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To mycol Step 1)",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x2+x > mycount )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x2 = mycol )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myins = myins + ''' + mydata[x+x2] + ''' + ');'",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myins = myins + ''' + mydata[x+x2] + ''' + ','",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (myins) to Editbox (Edit2) of Window (Win1)",169,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
Return
*-------------------------------------------------------------------*
