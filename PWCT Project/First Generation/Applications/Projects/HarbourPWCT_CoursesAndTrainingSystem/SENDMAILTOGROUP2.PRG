*---------------------------------------------------------------------------*
* Time : 17:16:39    Date : 12/11/2012
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
Function SENDMAILTOGROUP2
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

Resistance R_SENDMAILTOGROUP2_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SENDMAILTOGROUP2_18smart1() code
class SendMailtoGroup2Class From MailSMTPServer
Data TableName init "CustFriends_All"
Data windowtitle init "«—”«· —”«·… ⁄‰ ÿ—Ìﬁ «·»—Ìœ «·«·ﬂ —Ê‰Ï «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—…"
Data gridheader init {"«·»—Ìœ «·«·ﬂ —Ê‰Ï","«”„ «·„” ›”—"}
Data btncaption init "«—”«· «·—”«·… «·Ï «·„” ›”—Ì‰ ⁄‰ œÊ—…"
Method ShowWindow
Method msgSend
Method msgAttach
Method msgLoad
EndClass
Method ShowWindow Class SendMailtoGroup2Class
myout = self:LoadSMTPFile()
if !iswindowdefined( SendMailToGroup2Window )
DEFINE WINDOW SendMailToGroup2Window ;
AT 10 ,10 ;
WIDTH 664 ;
HEIGHT 636 ;
ICON "PWCTICON" ;
TITLE self:windowtitle ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216}

@ 561 ,244 BUTTONEX btn1;
CAPTION self:btncaption;
ON CLICK self:msgsend()  ;
WIDTH 240 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,0 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 656 HEIGHT 552
@ 48 ,492 LABEL lbl1 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 84 ,492 LABEL lbl2 ;
VALUE "ﬂ·„… «·”—" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 177 ,492 LABEL lbl6 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 215 ,492 LABEL lbl7 ;
VALUE "„Õ ÊÏ «·—”«·…" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 47 ,75 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 410 ;
VALUE UsersObject:EnteredEmployeeEMAIL ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 84 ,75 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD

@ 174 ,75 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 252 ,75 EDITBOX edit1;
WIDTH 410 ;
HEIGHT 120;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 215 ,75 BUTTONEX btnLoad;
CAPTION "htm  Õ„Ì· «·—”«·… „‰ „·› ";
ON CLICK self:MSGLOAD()  ;
WIDTH 230 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 380 ,492 LABEL lbl8 ;
VALUE "«·„—›ﬁ« " ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 380 ,124 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 360 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 381 ,75 BUTTONEX btnattach;
CAPTION "::";
ON CLICK self:msgattach()  ;
WIDTH 40 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 561 ,76 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK SendMailToGroup2Window.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 424 ,492 LABEL lbl9 ;
VALUE "Õ«·… «·«—”«·" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 421 ,75 GRID Grid1;
WIDTH 410 ;
HEIGHT 120 ;
HEADERS self:gridheader;
WIDTHS {200,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
@ 128 ,492 LABEL lbl10 ;
VALUE "—ﬁ„ «·œÊ—…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 126 ,75 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 9 ,492 LABEL lblSMTP ;
VALUE "„“Êœ «·Œœ„…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 8 ,75 TEXTBOX textSMTP;
HEIGHT 30 ;
WIDTH 410 ;
VALUE self:SMTPServer ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

SendMailToGroup2Window.Center ( )
ACTIVATE WINDOW SendMailToGroup2Window
EndIF

Return 0
Method msgSend Class SendMailtoGroup2Class
Local cSMTP,nPort,cUserID,cPassword,cFrom,cSubject,cMsgBody,cAttach,nMax,x,cTo,myemail,emailslist
emailslist := {}
myout = self:Connect()
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from CustFriends_All where orderid = " + SendMailToGroup2Window.text10.value,self:oCon,3,3 )
nMax := self:oRS:RecordCount
IF nMax > 0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
myemail := self:oRS:fields:item(alltrim("f_email")):value
myemail = ALLTRIM ( myemail )
myname := self:oRS:fields:item(alltrim("f_name")):value
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
BEGIN SEQUENCE WITH { |e| break(e) }
cSMTP := SendMailToGroup2Window.textSMTP.Value
nPort := SELF:SMTPPORT
cUserID := SendMailToGroup2Window.text1.value
cPassword := SendMailToGroup2Window.text2.value
cFrom := "<" + alltrim(SendMailToGroup2Window.text1.value) + ">"
cSubject := SendMailToGroup2Window.text5.value
cMsgBody := SendMailToGroup2Window.edit1.value
cAttach := SendMailToGroup2Window.text8.value
cTo := emailsList[x][1]
DO sendmailtoclient WITH cSMTP,nPort,cUserID,cPassword,cFrom,CTo,cSubject,cMsgBody,cAttach,false
SendMailToGroup2Window.Grid1.AddItem ( {emailslist[x][1],emailslist[x][2]} )
DO EVENTS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(alltrim("employeeid")):value := UsersObject:EnteredEmployeeID
oRS:fields:item(alltrim("ordernumberID")):value := val( SendMailToGroup2Window.text10.value )
oRS:fields:item(alltrim("noofpcs")):value := " «—”«· —”«·… «·Ï" + cTO
oRS:fields:item(alltrim("finishtime")):value := time()
oRS:fields:item(alltrim("dateofinput")):value := alltrim(dtoc(date()))
oRS:UPDATE()
oRS:Close()
RECOVER
MyOut := MSGBOX("Œÿ« ›Ï ⁄„·Ì… «·«—”«· ","⁄›Ê«")
END SEQUENCE
Next
ELSE
MyOut := MSGBOX("·«ÌÊÃœ »—Ìœ «·ﬂ —Ê‰Ï ·„—«”·… «·⁄„Ì· „‰ Œ·«·Â","⁄›Ê«")
ENDIF
myout = self:DisConnect()
MyOut := MSGBOX("«‰ Â  ⁄„·Ì… «·«—”«·","Õ”‰«")
Return 0
Method msgAttach Class SendMailtoGroup2Class
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToGroup2Window.text8.Value := getfile
ENDIF
Return 0
Method msgLoad Class SendMailtoGroup2Class
GetFile := GetFile ( { {"Html","*.htm"}, {"Html","*.html" } } , ;
, ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
SendMailToGroup2Window.Edit1.Value := ""
mystr := FILESTR( getfile )
if .not. empty(SendMailToGroup2Window.Edit1.VALUE)
SendMailToGroup2Window.Edit1.VALUE := SendMailToGroup2Window.Edit1.VALUE + CHR(13) + CHR(10) + mystr
else
SendMailToGroup2Window.Edit1.VALUE := mystr
endif
ENDIF
Return 0



End Of Resistance

*-------------------------------------------------------------------*
