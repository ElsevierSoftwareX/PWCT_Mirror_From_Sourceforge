*---------------------------------------------------------------------------*
* Time : 09:37:34    Date : 10/08/2010
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
Function SENDMAILTOALLEMPLOYEES
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_SENDMAILTOALLEMPLOYEES_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SENDMAILTOALLEMPLOYEES_15speed1() code
class SendMailtoAllEmployeesClass From SystemDatabase
Data TableName init "Employees"
Data windowtitle init "«—”«· —”«·… ⁄‰ ÿ—Ìﬁ «·»—Ìœ «·«·ﬂ —Ê‰Ï «·Ï ﬂ· «·„ÊŸ›Ì‰"
Data gridheader init {"«·»—Ìœ «·«·ﬂ —Ê‰Ï","«”„ «·„ÊŸ›"}
Data btncaption init "«—”«· «·—”«·… «·Ï ﬂ· «·„ÊŸ›Ì‰"
Method ShowWindow
Method msgSend
Method msgAttach
Method msgLoad
EndClass
Method ShowWindow Class SendMailtoAllEmployeesClass
if !iswindowdefined( SendMailToAllEmployeesWindow )
DEFINE WINDOW SendMailToAllEmployeesWindow ;
AT 10 ,10 ;
WIDTH 664 ;
HEIGHT 560 ;
ICON "PWCTICON" ;
TITLE self:windowtitle ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 484 ,274 BUTTONEX btn1;
CAPTION self:btncaption;
ON CLICK self:msgsend()  ;
WIDTH 210 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,0 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 656 HEIGHT 472
@ 10 ,497 LABEL lbl1 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 46 ,496 LABEL lbl2 ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 89 ,493 LABEL lbl6 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 136 ,492 LABEL lbl7 ;
VALUE "„Õ ÊÏ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 9 ,75 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 410 ;
VALUE "msfclipper@yahoo.com" ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 46 ,75 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 85 ,75 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 172 ,75 EDITBOX edit1;
WIDTH 410 ;
HEIGHT 120;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 135 ,77 BUTTONEX btnLoad;
CAPTION "htm  Õ„Ì· «·—”«·… „‰ „·› ";
ON CLICK self:MSGLOAD()  ;
WIDTH 230 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 300 ,492 LABEL lbl8 ;
VALUE "«·„—›ﬁ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 300 ,124 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 360 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 301 ,76 BUTTONEX btnattach;
CAPTION "::";
ON CLICK self:msgattach()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 484 ,76 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK SendMailToAllEmployeesWindow.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 344 ,492 LABEL lbl9 ;
VALUE "Õ«·… «·«—”«·" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 341 ,76 GRID Grid1;
WIDTH 410 ;
HEIGHT 120 ;
HEADERS self:gridheader;
WIDTHS {200,200} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
END WINDOW

SendMailToAllEmployeesWindow.Center ( )
ACTIVATE WINDOW SendMailToAllEmployeesWindow
EndIF

Return 0
Method msgSend Class SendMailtoAllEmployeesClass
Local cSMTP,nPort,cUserID,cPassword,cFrom,cSubject,cMsgBody,cAttach,nMax,x,cTo,myemail,emailslist
emailslist := {}
myout = self:Connect()
nMax := self:oRS:RecordCount
IF nMax > 0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
myemail := self:oRS:fields:item("f_email"):value
myemail = ALLTRIM ( myemail )
myname := self:oRS:fields:item("f_name"):value
IF .not. empty(myemail)
myemail := "<" + myemail + ">"
AADD( emailslist , {myemail,myname})
ENDIF
self:oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
myout = self:DisConnect()
Return 0
ENDIF
nMax  = LEN(emailslist)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
TRY
cSMTP := "smtp.mail.yahoo.com"
nPort := 25
cUserID := SendMailToAllEmployeesWindow.text1.value
cPassword := SendMailToAllEmployeesWindow.text2.value
cFrom := "<" + alltrim(SendMailToAllEmployeesWindow.text1.value) + ">"
cSubject := SendMailToAllEmployeesWindow.text5.value
cMsgBody := SendMailToAllEmployeesWindow.edit1.value
cAttach := SendMailToAllEmployeesWindow.text8.value
cTo := emailsList[x][1]
DO sendmailtoclient WITH cSMTP,nPort,cUserID,cPassword,cFrom,CTo,cSubject,cMsgBody,cAttach,false
SendMailToAllEmployeesWindow.Grid1.AddItem ( {emailslist[x][1],emailslist[x][2]} )
DO EVENTS
CATCH
MyOut := MSGBOX("Œÿ« ›Ï ⁄„·Ì… «·«—”«· ","⁄›Ê«")
END
Next
ELSE
MyOut := MSGBOX("·«ÌÊÃœ »—Ìœ «·ﬂ —Ê‰Ï ·„—«”·… «·⁄„Ì· „‰ Œ·«·Â","⁄›Ê«")
ENDIF
myout = self:DisConnect()
MyOut := MSGBOX("«‰ Â  ⁄„·Ì… «·«—”«·","Õ”‰«")
Return 0
Method msgAttach Class SendMailtoAllEmployeesClass
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToAllEmployeesWindow.text8.Value := getfile
ENDIF
Return 0
Method msgLoad Class SendMailtoAllEmployeesClass
GetFile := GetFile ( { {"Html","*.htm"}, {"Html","*.html" } } , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToAllEmployeesWindow.Edit1.Value := ""
mystr := FILESTR( getfile )
if .not. empty(SendMailToAllEmployeesWindow.Edit1.VALUE)
SendMailToAllEmployeesWindow.Edit1.VALUE := SendMailToAllEmployeesWindow.Edit1.VALUE + CHR(13) + CHR(10) + mystr
else
SendMailToAllEmployeesWindow.Edit1.VALUE := mystr
endif
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
