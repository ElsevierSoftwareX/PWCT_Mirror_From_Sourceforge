*---------------------------------------------------------------------------*
* Time : 21:13:23    Date : 10/11/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.11
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_IMG2HTM_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IMG2HTM_19art1() code
StartUpFolder := GetStartUpFolder()
StartUpFolder = UPPER ( StartUpFolder )
nPos = AT("SSBUILD",StartUpFolder)
StartUpFolder = Left(StartUpFolder,nPos+6)
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 688 ;
HEIGHT 226 ;
ICON "PWCTICON" ;
TITLE "PWCT - Time Machine Documentation Generator " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 62 ,10 LABEL lbl1 ;
VALUE "Select Folder" ;
WIDTH 85 ;
HEIGHT 31 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 59 ,91 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 455 ;
VALUE StartUpFolder+"\PWCTSHOTS" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 59 ,553 BUTTONEX btn1;
CAPTION "Browse";
ON CLICK myfolder()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 107 ,91 BUTTONEX btn2;
CAPTION "Create HTML file";
ON CLICK mywork()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 10 ,10 LABEL lbl2 ;
VALUE "Introduction" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 8 ,91 TEXTBOX text2;
HEIGHT 31 ;
WIDTH 455 ;
VALUE "In this lesson we are going to create " ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 8 ,553 BUTTONEX btn3;
CAPTION "Save";
ON CLICK aboutfile()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 107 ,553 BUTTONEX btn4;
CAPTION "Close";
ON CLICK closeapp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc myfolder
GetFolder := GetFolder ( ;
,  ;
)
win1.text1.Value := GetFolder
Return Nil
Proc mywork
mytext := ""
mytext := mytext + CHR(13) + CHR(10) + "<html>"
mytext := mytext + CHR(13) + CHR(10) + "<body>"
mytext := mytext + CHR(13) + CHR(10) + "<div>"
cFolder := win1.text1.Value
cFolder = ALLTRIM ( cFolder )
mytext := mytext + CHR(13) + CHR(10) + htmline("               PWCT 1.9 Art Documentation ( http://doublesvsoop.sourceforge.net )")
mytext := mytext + CHR(13) + CHR(10) + htmline("               2006-2013, Mahmoud Fayed ( msfclipper@users.sourceforge.net )")
mytext := mytext + CHR(13) + CHR(10) + htmline("_____________________________________________________________________________________")
mytext := mytext + CHR(13) + CHR(10) + htmline3("Table of contents")
mytext := mytext + CHR(13) + CHR(10) + htmline("1 - Introduction")
mytext := mytext + CHR(13) + CHR(10) + htmline("2 - Implementation steps")
mytext := mytext + CHR(13) + CHR(10) + htmline("3 - Final Steps Tree")
mytext := mytext + CHR(13) + CHR(10) + htmline("4 - Application during the runtime")
mytext := mytext + CHR(13) + CHR(10) + htmline3("1 - Introduction")
mystepstree := FILESTR( cFolder + "\about.txt" )
mymax = MLCOUNT( mystepstree , 254 )
FOR x = 1 TO mymax STEP 1
myline = MEMOLINE( mystepstree , 254 , x )
mytext := mytext + CHR(13) + CHR(10) + htmline(myline)
Next
IF file(cFolder + "\details.dbf")
Use (cFolder + "\details.dbf")
ENDIF
mytext := mytext + CHR(13) + CHR(10) + htmline3("2 - Implementation Steps ")
FOR x = 1 TO 1000 STEP 1
mynum = STR ( x )
mynum = ALLTRIM ( mynum )
cFile := cFolder + "\s" + mynum + ".jpg"
CheckFile := File(cFile)
IF checkfile
IF File(cFolder + "\details.dbf")
Locate For f_number = x
IF f_type = 1
ENDIF
IF f_type = 2
mytext := mytext + CHR(13) + CHR(10) + htmline("We will start now new interaction process to generate new steps to our steps tree. ")
mytext := mytext + CHR(13) + CHR(10) + htmline("The slow way (Using Mouse): ")
mytext := mytext + CHR(13) + CHR(10) + htmline("                1 - Click Interact to open the components browser")
mytext := mytext + CHR(13) + CHR(10) + htmline("                2 - Select the domain ("+ alltrim(f_reg1) + ")")
mytext := mytext + CHR(13) + CHR(10) + htmline("                3 - Select the component ("+alltrim(f_reg2)+")")
mytext := mytext + CHR(13) + CHR(10) + htmline("The fast way (Using Keyboard shortcuts): ")
mytext := mytext + CHR(13) + CHR(10) + htmline("                1 - Get the component using its name by typing ("+alltrim(f_reg2)+")")
mytext := mytext + CHR(13) + CHR(10) + htmline("                Note : Stop typing when you see the required component is selected")
ENDIF
IF f_type = 3
ENDIF
IF f_type = 4
ENDIF
IF f_type = 5
ENDIF
ENDIF
mytext := mytext + CHR(13) + CHR(10) + '<p><img width=1080 height=506 id="Picture'+ mynum +'"'
mytext := mytext + CHR(13) + CHR(10) + 'src="s'+ mynum + '.JPG" alt=s'+ mynum+ '.JPG></p>'
IF file(cFolder + "\details.dbf")
IF f_type = 1
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Goal Desginer - Steps Tree")
mytext := mytext + CHR(13) + CHR(10) + htmline("Select the step ("+alltrim(f_reg1)+")")
ENDIF
IF f_type = 2
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Component Browser – Select the component ("+alltrim(f_reg2)+") ")
mytext := mytext + CHR(13) + CHR(10) + htmline("After selecting the component click Ok or press ENTER")
ENDIF
IF f_type = 3
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Interaction page -  Set the properties and enter the required data as in the image above")
ENDIF
IF f_type = 4
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Form Designer")
ENDIF
IF f_type = 5
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Goal Desginer - Final Steps Tree ")
ENDIF
ELSE
mytext := mytext + CHR(13) + CHR(10) + htmline2("Fig. " +Alltrim(Str(x)))
ENDIF
ENDIF
Next
mytext := mytext + CHR(13) + CHR(10) + htmline3("3 - Final Steps Tree ")
mystepstree := FILESTR( cFolder + "\steps.txt" )
mymax = MLCOUNT( mystepstree , 254 )
FOR x = 1 TO mymax STEP 1
myline = MEMOLINE( mystepstree , 254 , x )
myline = RTRIM ( myline )
myline = STRTRAN(myline,space(4),"                ")
mytext := mytext + CHR(13) + CHR(10) + htmline4(myline)
Next
mytext := mytext + CHR(13) + CHR(10) + htmline3("4 - Application during the runtime")
FOR x = 1 TO 100 STEP 1
mynum = STR ( x )
mynum = ALLTRIM ( mynum )
cFile := cFolder + "\runtime" + mynum + ".jpg"
CheckFile := File(cFile)
IF checkfile
mytext := mytext + CHR(13) + CHR(10) + '<p><img width=540 height=253 id="RuntimePicture'+ mynum +'"'
mytext := mytext + CHR(13) + CHR(10) + 'src="runtime'+ mynum + '.JPG" alt=runtime'+ mynum+ '.JPG></p>'
IF FILE(cFolder + "\details.dbf")
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber2(x) + "Application during the runtime")
ELSE
mytext := mytext + CHR(13) + CHR(10) + htmline2("Fig.")
ENDIF
ENDIF
Next
IF File(cFolder + "\details.dbf")
close
ENDIF
mytext := mytext + CHR(13) + CHR(10) + "</div> "
mytext := mytext + CHR(13) + CHR(10) + "</body>"
mytext := mytext + CHR(13) + CHR(10) + "</html>"
RPWI_TH = FCREATE(cFolder + "\lesson.htm",0)
FWRITE(RPWI_TH,mytext)
FCLOSE(RPWI_TH)
MyOut := MSGBOX("Operation Done.","Ok")
Return Nil
Proc htmline( p1 )
p1 := "<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:10.0pt'>" + p1 + "</span></p>"
Return p1
Return Nil
Proc htmline2( p1 )
p1 := "<p><span lang=EN-GB style='font-size:8.0pt'>" + p1 + "</span></p>"
Return p1
Return Nil
Proc fignumber
Return "Fig. (" + alltrim(str(f_number)) + ")  "
Return Nil
Proc htmline3( p1 )
p1 := "<p><span lang=EN-GB style='font-size:14.0pt'>" + p1 + "</span></p>"
Return p1
Return Nil
Proc htmline4( p1 )
p1 := "<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:8.0pt'>" + p1 + "</span></p>"
Return p1
Return Nil
Proc fignumber2( p1 )
Return "Fig. (" + alltrim(str(f_number+p1)) + ")  "
Return Nil
procedure aboutfile()
cFolder := win1.text1.Value
cFolder = ALLTRIM ( cFolder )
mydata := win1.text2.Value
RPWI_TH = FCREATE(cFolder + "\about.txt",0)
FWRITE(RPWI_TH,mydata)
FCLOSE(RPWI_TH)
MyOut := MSGBOX(" Operation done. "," Ok ")
return
procedure closeapp()
win1.Release ( )
return

End Of Resistance

INIT PROCEDURE Init_IMG2HTM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder = CONVERT String StartUpFolder To UPPER CASE",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF 'SSBUILD' IN StartUpFolder",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder =  Get SubString from left, String: StartUpFolder Count: nPos+6",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PWCT - Time Machine Documentation Generator '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,17)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Select Folder'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Browse'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myfolder",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Create HTML file'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Introduction'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Save'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action aboutfile",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Close'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapp",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myfolder",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder := Get Folder",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := GetFolder",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = ''",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<html>') to string (mytext)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<body>') to string (mytext)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<div>') to string (mytext)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = All Trim cFolder",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('               PWCT 1.9 Art Documentation ( http://doublesvsoop.sourceforge.net )')) to string (mytext)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('               2006-2013, Mahmoud Fayed ( msfclipper@users.sourceforge.net )')) to string (mytext)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('_____________________________________________________________________________________')) to string (mytext)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('Table of contents')) to string (mytext)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('1 - Introduction')) to string (mytext)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('2 - Implementation steps')) to string (mytext)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('3 - Final Steps Tree')) to string (mytext)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('4 - Application during the runtime')) to string (mytext)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('1 - Introduction')) to string (mytext)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","mystepstree := Read File cFolder + '\about.txt'",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystepstree",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystepstree",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline(myline)) to string (mytext)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file(cFolder + '\details.dbf') )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table (cFolder + '\details.dbf')",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('2 - Implementation Steps ')) to string (mytext)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 1000 Step 1)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT x TO STRING",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = All Trim mynum",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = cFolder + '\s' + mynum + '.jpg'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( File(cFolder + '\details.dbf') )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Locate For f_number = x",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 1 )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 2 )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('We will start now new interaction process to generate new steps to our steps tr",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('The slow way (Using Mouse): ')) to string (mytext)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                1 - Click Interact to open the components browser')) to string",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                2 - Select the domain ('+ alltrim(f_reg1) + ')')) to string (my",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                3 - Select the component ('+alltrim(f_reg2)+')')) to string (my",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('The fast way (Using Keyboard shortcuts): ')) to string (mytext)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                1 - Get the component using its name by typing ('+alltrim(f_reg",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                Note : Stop typing when you see the required component is selec",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 3 )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 4 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 5 )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<p><img width=1080 height=506 id='Picture'+ mynum +''') to string (mytext)",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('src='s'+ mynum + '.JPG' alt=s'+ mynum+ '.JPG></p>') to string (mytext)",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file(cFolder + '\details.dbf') )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 1 )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Goal Desginer - Steps Tree')) to string (mytext)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('Select the step ('+alltrim(f_reg1)+')')) to string (mytext)",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 2 )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Component Browser – Select the component ('+alltrim(f_reg2)+') '",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('After selecting the component click Ok or press ENTER')) to string (mytext)",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 3 )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Interaction page -  Set the properties and enter the required da",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 4 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Form Designer')) to string (mytext)",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 5 )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Goal Desginer - Final Steps Tree ')) to string (mytext)",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2('Fig. ' +Alltrim(Str(x)))) to string (mytext)",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('3 - Final Steps Tree ')) to string (mytext)",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","mystepstree := Read File cFolder + '\steps.txt'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystepstree",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystepstree",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Right Trim myline",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String space(4) FROM myline TRANSFORM TO '                '",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline4(myline)) to string (mytext)",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('4 - Application during the runtime')) to string (mytext)",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 100 Step 1)",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT x TO STRING",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = All Trim mynum",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = cFolder + '\runtime' + mynum + '.jpg'",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<p><img width=540 height=253 id='RuntimePicture'+ mynum +''') to string (mytext)",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('src='runtime'+ mynum + '.JPG' alt=runtime'+ mynum+ '.JPG></p>') to string (mytext)",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( FILE(cFolder + '\details.dbf') )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber2(x) + 'Application during the runtime')) to string (mytext)",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2('Fig.')) to string (mytext)",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( File(cFolder + '\details.dbf') )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</div> ') to string (mytext)",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</body>') to string (mytext)",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</html>') to string (mytext)",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","write String mytext to File cFolder + '\lesson.htm'",191,193)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done.' Title 'Ok' Type: Message Box",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline( p1 )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:10.0pt'>' + p1 + '</span></p>'",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline2( p1 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p><span lang=EN-GB style='font-size:8.0pt'>' + p1 + '</span></p>'",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fignumber",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Fig. (' + alltrim(str(f_number)) + ')  '",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline3( p1 )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p><span lang=EN-GB style='font-size:14.0pt'>' + p1 + '</span></p>'",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline4( p1 )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:8.0pt'>' + p1 + '</span></p>'",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fignumber2( p1 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Fig. (' + alltrim(str(f_number+p1)) + ')  '",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aboutfile ( Event : CLICK )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = win1.text1.Value",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = All Trim cFolder",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.text2.Value",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","write String mydata to File cFolder + '\about.txt'",222,224)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Operation done. ' Title ' Ok ' Type: Message Box",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",229,229)
Return
*-------------------------------------------------------------------*
