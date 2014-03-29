*---------------------------------------------------------------------------*
* Time : 18:18:41    Date : 03/29/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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


Resistance R_DEMO_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 574 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "Send Email  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 20 ,439 BUTTONEX btnSend;
CAPTION "Send ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pWork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 17 ,24 LABEL lbl1 ;
VALUE "SMTP : " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 8 ,120 TEXTBOX textSMTP;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "smtp.live.com" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 54 ,24 LABEL lbl2 ;
VALUE "Port : " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 50 ,120 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 200 ;
VALUE 25 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 92 ,24 LABEL lbl3 ;
VALUE "User Name : " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,24 LABEL lbl4 ;
VALUE "Password: " ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 85 ,120 TEXTBOX textUserName;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "email@hotmail.com" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {116,241,169} ;
FONTCOLOR {0,0,0} 

@ 127 ,120 TEXTBOX textPassword;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {116,241,169} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 170 ,24 LABEL lbl5 ;
VALUE "From : " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 211 ,24 LABEL lbl6 ;
VALUE "To :  " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 256 ,24 LABEL lbl7 ;
VALUE "Subject :  " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 290 ,24 LABEL lbl8 ;
VALUE "Body : " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 166 ,120 TEXTBOX textFrom;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "email@hotmail.com" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {116,241,169} ;
FONTCOLOR {0,0,0} 

@ 206 ,120 TEXTBOX textTo;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "msfclipper@yahoo.com" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 250 ,120 TEXTBOX textSubject;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "hello mahmoud" ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 62 ,439 BUTTONEX btnClose;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 291 ,120 EDITBOX editBody;
WIDTH 410 ;
HEIGHT 70;
VALUE "How Are you ? " ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 373 ,24 LABEL lbl9 ;
VALUE "Attachment : " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 371 ,120 TEXTBOX textAttachment;
HEIGHT 30 ;
WIDTH 310 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 370 ,439 BUTTONEX btnBrowse;
CAPTION "Browse ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pBrowse()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
win1.btnSend.Caption := "Wait..."
win1.btnSend.Enabled := False
BEGIN SEQUENCE WITH { |e| break(e) }
cSchema := "http://schemas.microsoft.com/cdo/configuration/"
oCDO := TOLEAUTO():NEW( "CDO.Configuration" )
oCDO:FIELDS:ITEM(cSchema+"smtpserver"):value := win1.textSMTP.Value
oCDO:FIELDS:ITEM(cSchema+"smtpport"):value := win1.textPort.Value
oCDO:FIELDS:ITEM(cSchema+"sendusing"):value := 2
oCDO:FIELDS:ITEM(cSchema+"smtpauthenticate"):value := True
oCDO:FIELDS:ITEM(cSchema+"smtpusessl"):value := True
oCDO:FIELDS:ITEM(cSchema+"sendusername"):value := win1.textUserName.Value
oCDO:FIELDS:ITEM(cSchema+"sendpassword"):value := win1.textPassword.Value
oCDO:FIELDS:Update ( )
oMsg := TOLEAUTO():NEW( "CDO.Message" )
oMsg:Configuration := oCDO
oMsg:From := win1.textFrom.value
oMsg:To := win1.textTo.Value
oMsg:Subject := win1.textSubject.Value
oMsg:TextBody := win1.editBody.Value
oMsg:BodyPart:Charset := "utf-8"
cFile := win1.textAttachment.Value
CheckFile := File(cFile)
IF CheckFile
oMsg:AddAttachment ( win1.textAttachment.Value )
ENDIF
oMsg:Send ( )
MyOut := MSGBOX("Email sent. ","Ok ")
RECOVER USING cError
MyOut := MSGBOX("Cann't Send the email ","Error ")
END SEQUENCE
win1.btnSend.Caption := "Send"
win1.btnSend.Enabled := True
return
procedure pBrowse()
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
win1.textAttachment.Value := GetFile
return


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Send Email  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSend ) , Caption : 'Send '",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'SMTP : '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSMTP  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Port : '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPort  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'User Name : '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Password: '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textUserName  )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",70,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPassword  )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",78,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'From : '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'To :  '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Subject :  '",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Body : '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textFrom  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textTo  )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",122,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSubject  )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",130,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",142,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( editBody )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",147,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Attachment : '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",155,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAttachment  )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",161,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnBrowse ) , Caption : 'Browse '",167,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pBrowse",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,175)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSend.Caption = 'Wait...'",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSend.Enabled = False",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","cSchema = 'http://schemas.microsoft.com/cdo/configuration/'",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oCDO of Type 'CDO.Configuration'",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'smtpserver'):value := win1.textSMTP.Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'smtpport'):value := win1.textPort.Value",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'sendusing'):value := 2",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'smtpauthenticate'):value := True",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'smtpusessl'):value := True",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'sendusername'):value := win1.textUserName.Value",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:ITEM(cSchema+'sendpassword'):value := win1.textPassword.Value",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","oCDO.FIELDS:Update ( )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oMsg of Type 'CDO.Message'",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.Configuration := oCDO",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.From := win1.textFrom.value",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.To := win1.textTo.Value",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.Subject := win1.textSubject.Value",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.TextBody := win1.editBody.Value",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.BodyPart:Charset := 'utf-8'",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = win1.textAttachment.Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.AddAttachment ( win1.textAttachment.Value )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","oMsg.Send ( )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Email sent. ' Title 'Ok ' Type: Message Box",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Catch (Variable (Error Description) : cError)",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Cann't Send the email ' Title 'Error ' Type: Message Box",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSend.Caption = 'Send'",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSend.Enabled = True",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pBrowse ( Event : CLICK )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",216,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAttachment.Value = GetFile",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
Return
*-------------------------------------------------------------------*
