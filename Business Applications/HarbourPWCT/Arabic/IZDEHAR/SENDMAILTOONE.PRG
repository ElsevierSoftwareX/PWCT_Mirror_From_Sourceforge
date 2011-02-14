*---------------------------------------------------------------------------*
* Time : 23:58:03    Date : 12/07/2010
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

Resistance R_SENDMAILTOONE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SENDMAILTOONE_15speed1() code
class SendMailtoOneClass From MailSMTPServer
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
HEIGHT 542 ;
ICON "PWCTICON" ;
TITLE "«—”«· —”«·… ⁄‰ ÿ—Ìﬁ «·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 464 ,284 BUTTONEX btn1;
CAPTION "«—”«· «·—”«·… «·Ï «·⁄„Ì·";
ON CLICK self:msgsend()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,1 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 656 HEIGHT 452
@ 60 ,497 LABEL lbl1 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,496 LABEL lbl2 ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 138 ,493 LABEL lbl4 ;
VALUE "«·—”«·… «·Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 189 ,493 LABEL lbl6 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 236 ,492 LABEL lbl7 ;
VALUE "„Õ ÊÏ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 59 ,75 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 410 ;
VALUE UsersObject:EnteredEmployeeEMAIL ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 96 ,75 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 141 ,75 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 185 ,75 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 272 ,75 EDITBOX edit1;
WIDTH 410 ;
HEIGHT 120;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 235 ,77 BUTTONEX btnLoad;
CAPTION "htm  Õ„Ì· «·—”«·… „‰ „·› ";
ON CLICK self:MSGLOAD()  ;
WIDTH 230 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 400 ,492 LABEL lbl8 ;
VALUE "«·„—›ﬁ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 400 ,124 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 360 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 401 ,76 BUTTONEX btnattach;
CAPTION "::";
ON CLICK self:msgattach()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 464 ,76 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK SendMailToOneWindow.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 19 ,497 LABEL lblSMTP ;
VALUE "„“Êœ «·Œœ„…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,75 TEXTBOX textSMTP;
HEIGHT 30 ;
WIDTH 410 ;
VALUE self:SMTPServer ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

SendMailToOneWindow.Center ( )
ACTIVATE WINDOW SendMailToOneWindow
EndIF

Return 0
Method msgSend Class SendMailtoOneClass
cSMTP := SendMailToOneWindow.textSMTP.value
nPort := SELF:SMTPPORT
cUserID := SendMailToOneWindow.text1.value
cPassword := SendMailToOneWindow.text2.value
cFrom := "<" + alltrim(SendMailToOneWindow.text1.value) + ">"
cTO := "<" + alltrim(SendMailToOneWindow.text4.value) + ">"
cSubject := SendMailToOneWindow.text5.value
cMsgBody := SendMailToOneWindow.edit1.value
cAttach := SendMailToOneWindow.text8.value
TRY
DO sendmailtoclient WITH cSMTP,nPort,cUserID,cPassword,cFrom,CTo,cSubject,cMsgBody,cAttach
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item("employeeid"):value := UsersObject:EnteredEmployeeID
oRS:fields:item("ordernumberID"):value := ""
oRS:fields:item("noofpcs"):value := " «—”«· —”«·… «·Ï" + cTO
oRS:fields:item("finishtime"):value := time()
oRS:fields:item("dateofinput"):value := alltrim(dtoc(date()))
oRS:UPDATE()
oRS:Close()
CATCH
MyOut := MSGBOX("Œÿ« ›Ï ⁄„·Ì… «·«—”«· ","⁄›Ê«")
END
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
self:smtpport = VAL ( self:smtpport )
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
