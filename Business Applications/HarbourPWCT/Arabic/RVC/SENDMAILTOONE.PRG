*---------------------------------------------------------------------------*
* Time : 15:33:04    Date : 08/14/2011
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
Function SENDMAILTOONE
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

Resistance R_SENDMAILTOONE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SENDMAILTOONE_18smart1() code
class SendMailtoOneClass From MailSMTPServer
Data RecEMail init ""
Data SecretCode init ""
Method ShowWindow
Method msgSend
Method msgAttach
Method msgLoad
EndClass
Method ShowWindow Class SendMailtoOneClass
myout = self:LoadSMTPFile()
if !iswindowdefined( SendMailToOneWindow )
DEFINE WINDOW SendMailToOneWindow ;
AT 10 ,10 ;
WIDTH 664 ;
HEIGHT 568 ;
ICON "PWCTICON" ;
TITLE "«—”«· —”«·… ⁄‰ ÿ—Ìﬁ «·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 484 ,284 BUTTONEX btn1;
CAPTION "«—”«· «·—”«·… «·Ï «·⁄„Ì·";
ON CLICK self:msgsend()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,1 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 656 HEIGHT 472
@ 91 ,499 LABEL lbl1 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 127 ,498 LABEL lbl2 ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 169 ,495 LABEL lbl4 ;
VALUE "«·—”«·… «·Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 220 ,495 LABEL lbl6 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 267 ,494 LABEL lbl7 ;
VALUE "„Õ ÊÏ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 90 ,77 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 410 ;
VALUE UsersObject:EnteredEmployeeEMAIL ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 127 ,77 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 172 ,77 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 410 ;
VALUE self:RecEMail ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 216 ,77 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 410 ;
VALUE "RVC - Dear Reviewer " ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 303 ,77 EDITBOX edit1;
WIDTH 410 ;
HEIGHT 120;
VALUE "http://localhost:1517/RVCWeb/default.aspx?SecretCode=" + self:SecretCode ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 266 ,79 BUTTONEX btnLoad;
CAPTION "htm  Õ„Ì· «·—”«·… „‰ „·› ";
ON CLICK self:MSGLOAD()  ;
WIDTH 230 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 431 ,493 LABEL lbl8 ;
VALUE "«·„—›ﬁ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 430 ,125 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 360 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 432 ,77 BUTTONEX btnattach;
CAPTION "::";
ON CLICK self:msgattach()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 484 ,76 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK SendMailToOneWindow.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,499 LABEL lblSMTP ;
VALUE "„“Êœ «·Œœ„…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 9 ,76 TEXTBOX textSMTP;
HEIGHT 30 ;
WIDTH 410 ;
VALUE self:SMTPServer ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 50 ,499 LABEL lblPORT ;
VALUE "—ﬁ„ «·„‰›–" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 49 ,76 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 410 ;
VALUE self:SMTPPort ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

SendMailToOneWindow.Center ( )
ACTIVATE WINDOW SendMailToOneWindow
EndIF

Return 0
Method msgSend Class SendMailtoOneClass
cSMTP := SendMailToOneWindow.textSMTP.value
nPort := val(SendMailToOneWindow.textPort.value)
cUserID := SendMailToOneWindow.text1.value
cPassword := SendMailToOneWindow.text2.value
cFrom := "<" + alltrim(SendMailToOneWindow.text1.value) + ">"
cTO := "<" + alltrim(SendMailToOneWindow.text4.value) + ">"
cSubject := SendMailToOneWindow.text5.value
cMsgBody := SendMailToOneWindow.edit1.value
cAttach := SendMailToOneWindow.text8.value
BEGIN SEQUENCE WITH { |e| break(e) }
DO sendmailtoclient WITH cSMTP,nPort,cUserID,cPassword,cFrom,CTo,cSubject,cMsgBody,cAttach
RECOVER
MyOut := MSGBOX("Œÿ« ›Ï ⁄„·Ì… «·«—”«· ","⁄›Ê«")
END SEQUENCE
Return 0
Method msgAttach Class SendMailtoOneClass
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToOneWindow.text8.Value := getfile
ENDIF
Return 0
Method msgLoad Class SendMailtoOneClass
GetFile := GetFile ( { {"Html","*.htm"}, {"Html","*.html" } } , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToOneWindow.Edit1.Value := ""
mystr := FILESTR( getfile )
if .not. empty(SendMailToOneWindow.Edit1.VALUE)
SendMailToOneWindow.Edit1.VALUE := SendMailToOneWindow.Edit1.VALUE + CHR(13) + CHR(10) + mystr
else
SendMailToOneWindow.Edit1.VALUE := mystr
endif
ENDIF
Return 0
class MailSMTPServer From SystemDatabase
Data SMTPServer init "smtp.mail.yahoo.com"
Data SMTPPORT init 25
Method LoadSMTPFile
EndClass
Method LoadSMTPFile Class MailSMTPServer
StartUpFolder := GetStartUpFolder()
CheckFile := File(startupfolder + "\smtpfile.txt")
IF CheckFile = true
mydata := FILESTR( startupfolder + "\smtpfile.txt" )
self:smtpserver = MEMOLINE( mydata , 254 , 1 )
self:smtpserver = ALLTRIM ( self:smtpserver )
self:smtpport = MEMOLINE( mydata , 254 , 2 )
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
