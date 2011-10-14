*---------------------------------------------------------------------------*
* Time : 22:10:39    Date : 10/14/2011
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


Resistance R_IMG2HTM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IMG2HTM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 678 ;
HEIGHT 130 ;
ICON "PWCTICON" ;
TITLE "PWCT Help Maker " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 12 ,10 LABEL lbl1 ;
VALUE "Select Folder" ;
WIDTH 85 ;
HEIGHT 31 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,102 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 435 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 9 ,553 BUTTONEX btn1;
CAPTION "Browse";
ON CLICK myfolder()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 47 ,101 BUTTONEX btn2;
CAPTION "Create HTML file";
ON CLICK mywork()  ;
WIDTH 190 HEIGHT 35 ;
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
Use (cFolder + "\details.dbf")
mytext := mytext + CHR(13) + CHR(10) + htmline3("2 - Implementation Steps ")
FOR x = 1 TO 1000 STEP 1
mynum = STR ( x )
mynum = ALLTRIM ( mynum )
cFile := cFolder + "\s" + mynum + ".jpg"
CheckFile := File(cFile)
IF checkfile
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
mytext := mytext + CHR(13) + CHR(10) + '<p><img width=623 height=253 id="Picture'+ mynum +'"'
mytext := mytext + CHR(13) + CHR(10) + 'src="s'+ mynum + '.jpg" alt=s'+ mynum+ '.JPG></p>'
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
mytext := mytext + CHR(13) + CHR(10) + htmline("Afer entering data , Click OK or press CTRL+W")
ENDIF
IF f_type = 4
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Form Designer")
ENDIF
IF f_type = 5
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber() + "Goal Desginer - Final Steps Tree ")
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
mytext := mytext + CHR(13) + CHR(10) + '<p><img id="RuntimePicture'+ mynum +'"'
mytext := mytext + CHR(13) + CHR(10) + 'src="runtime'+ mynum + '.jpg" alt=runtime'+ mynum+ '.JPG></p>'
mytext := mytext + CHR(13) + CHR(10) + htmline2(fignumber2(x) + "Application during the runtime")
ENDIF
Next
close
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


End Of Resistance

INIT PROCEDURE Init_IMG2HTM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PWCT Help Maker '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Select Folder'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Browse'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myfolder",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Create HTML file'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myfolder",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder := Get Folder",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := GetFolder",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = ''",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<html>') to string (mytext)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<body>') to string (mytext)",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<div>') to string (mytext)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = win1.text1.Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","cFolder = All Trim cFolder",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('Table of contents')) to string (mytext)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('1 - Introduction')) to string (mytext)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('2 - Implementation steps')) to string (mytext)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('3 - Final Steps Tree')) to string (mytext)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('4 - Application during the runtime')) to string (mytext)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('1 - Introduction')) to string (mytext)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mystepstree := Read File cFolder + '\about.txt'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystepstree",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystepstree",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline(myline)) to string (mytext)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table (cFolder + '\details.dbf')",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('2 - Implementation Steps ')) to string (mytext)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 1000 Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT x TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = All Trim mynum",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = cFolder + '\s' + mynum + '.jpg'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Locate For f_number = x",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 1 )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 2 )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('We will start now new interaction process to generate new steps to our steps tree. ')) to string (mytext)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('The slow way (Using Mouse): ')) to string (mytext)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                1 - Click Interact to open the components browser')) to string (mytext)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                2 - Select the domain ('+ alltrim(f_reg1) + ')')) to string (mytext)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                3 - Select the component ('+alltrim(f_reg2)+')')) to string (mytext)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('The fast way (Using Keyboard shortcuts): ')) to string (mytext)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                1 - Get the component using its name by typing ('+alltrim(f_reg2)+')')) to string (mytext)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('                Note : Stop typing when you see the required component is selected')) to string (mytext)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 3 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 4 )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 5 )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<p><img width=623 height=253 id='Picture'+ mynum +''') to string (mytext)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('src='s'+ mynum + '.jpg' alt=s'+ mynum+ '.JPG></p>') to string (mytext)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 1 )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Goal Desginer - Steps Tree')) to string (mytext)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('Select the step ('+alltrim(f_reg1)+')')) to string (mytext)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 2 )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Component Browser – Select the component ('+alltrim(f_reg2)+') ')) to string (mytext)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('After selecting the component click Ok or press ENTER')) to string (mytext)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 3 )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Interaction page -  Set the properties and enter the required data as in the image above')) to string (mytext)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline('Afer entering data , Click OK or press CTRL+W')) to string (mytext)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 4 )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Form Designer')) to string (mytext)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( f_type = 5 )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber() + 'Goal Desginer - Final Steps Tree ')) to string (mytext)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('3 - Final Steps Tree ')) to string (mytext)",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","mystepstree := Read File cFolder + '\steps.txt'",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Lines count of mystepstree",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myline = LINE x FROM MEMO mystepstree",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Right Trim myline",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","myline = Sub String space(4) FROM myline TRANSFORM TO '                '",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline4(myline)) to string (mytext)",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline3('4 - Application during the runtime')) to string (mytext)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 100 Step 1)",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = CONVERT x TO STRING",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","mynum = All Trim mynum",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = cFolder + '\runtime' + mynum + '.jpg'",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('<p><img id='RuntimePicture'+ mynum +''') to string (mytext)",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('src='runtime'+ mynum + '.jpg' alt=runtime'+ mynum+ '.JPG></p>') to string (mytext)",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (htmline2(fignumber2(x) + 'Application during the runtime')) to string (mytext)",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</div> ') to string (mytext)",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</body>') to string (mytext)",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('</html>') to string (mytext)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","write String mytext to File cFolder + '\lesson.htm'",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done.' Title 'Ok' Type: Message Box",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline( p1 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:10.0pt'>' + p1 + '</span></p>'",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline2( p1 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p><span lang=EN-GB style='font-size:8.0pt'>' + p1 + '</span></p>'",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fignumber",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Fig. (' + alltrim(str(f_number)) + ')  '",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline3( p1 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p><span lang=EN-GB style='font-size:14.0pt'>' + p1 + '</span></p>'",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure htmline4( p1 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = '<p style='margin:0cm;margin-bottom:.0001pt'><span lang=EN-GB style='font-size:8.0pt'>' + p1 + '</span></p>'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Return p1",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fignumber2( p1 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Fig. (' + alltrim(str(f_number+p1)) + ')  '",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",166,166)
Return
*-------------------------------------------------------------------*
