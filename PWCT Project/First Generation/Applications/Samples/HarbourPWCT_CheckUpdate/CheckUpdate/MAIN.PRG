*---------------------------------------------------------------------------*
* Time : 14:10:40    Date : 02/14/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.12
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 513 ;
HEIGHT 339 ;
ON INIT pLoad()  ;
ICON "PWCTICON" ;
TITLE "Check Updates Sample  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 39 ,22 LABEL lbl1 ;
VALUE "Current Version :  " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 34 ,129 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 77 ,129 EDITBOX edit1;
WIDTH 250 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 78 ,69 LABEL lbl2 ;
VALUE "Output :" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 75 ,385 BUTTONEX btnCheck;
CAPTION "Check Update ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pCheck()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 158 ,385 BUTTONEX btnClose;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 119 ,385 BUTTONEX btnUpdate;
CAPTION "Update ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pUpdate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pClose()
win1.Release ( )
return
procedure pLoad()
cVersion := FILESTR( "version.txt" )
win1.text1.Value := cVersion
win1.btnUpdate.Enabled := False
return
procedure pCheck()
Public MyCon
MyCon := THttp():New()
MyCon:Connect( 'doublesvsoop.sourceforge.net', 80 )
GET URL "/version.txt" TO Response CONNECTION MyCon
CLOSE CONNECTION MyCon
cTitle := "=== Version Information ==="
nPos = AT(cTitle,Response)
IF nPos >0
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Getting version information "
else
Win1.Edit1.VALUE := "Getting version information "
endif
cNewVersion = SUBSTR(response,nPos+len(cTitle)+1,5)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Latest version : " + cNewVersion
else
Win1.Edit1.VALUE := "Latest version : " + cNewVersion
endif
IF val(cNewVersion) > val(win1.text1.Value)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "We have new version "
else
Win1.Edit1.VALUE := "We have new version "
endif
win1.btnUpdate.Enabled := True
ELSE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "No updates "
else
Win1.Edit1.VALUE := "No updates "
endif
ENDIF
ELSE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Cann't get version information"
else
Win1.Edit1.VALUE := "Cann't get version information"
endif
ENDIF
return
procedure pUpdate()
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Downloading updates ... Please wait ..."
else
Win1.Edit1.VALUE := "Downloading updates ... Please wait ..."
endif
DO EVENTS
Public MyCon
MyCon := THttp():New()
MyCon:Connect( 'doublesvsoop.sourceforge.net', 80 )
GET URL "/NEWVER.exe" TO Response CONNECTION MyCon
CLOSE CONNECTION MyCon
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "New updates downloaded "
else
Win1.Edit1.VALUE := "New updates downloaded "
endif
nPos = AT(CRLF+CRLF,response)
Response = SUBSTR(Response,nPos+4,Len(Response)-nPos-3)
RPWI_TH = FCREATE("NewVerUpdate.exe",0)
FWRITE(RPWI_TH,Response)
FCLOSE(RPWI_TH)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Run update program. "
else
Win1.Edit1.VALUE := "Run update program. "
endif
Execute File "NewVerUpdate.exe"
return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Check Updates Sample  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pLoad",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Current Version :  '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Output :'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCheck ) , Caption : 'Check Update '",44,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCheck",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pClose",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnUpdate ) , Caption : 'Update '",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pUpdate",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pLoad - Event : INIT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","cVersion := Read File 'version.txt'",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value = cVersion",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnUpdate.Enabled = False",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCheck ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Open Connection (MyCon) Server ('doublesvsoop.sourceforge.net') Port (80)",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Get URL ('/version.txt') Connection (MyCon) Variable-Response (Response)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Close Connection (MyCon)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cTitle = '=== Version Information ==='",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF cTitle IN Response",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nPos >0 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Getting version information ') to Editbox (Edit1) of Window (Win1)",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","cNewVersion = Sub String of response From nPos+len(cTitle)+1 Count 5",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Latest version : ' + cNewVersion) to Editbox (Edit1) of Window (Win1)",99,103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( val(cNewVersion) > val(win1.text1.Value) )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('We have new version ') to Editbox (Edit1) of Window (Win1)",105,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnUpdate.Enabled = True",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No updates ') to Editbox (Edit1) of Window (Win1)",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Cann't get version information') to Editbox (Edit1) of Window (Win1)",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pUpdate ( Event : CLICK )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Downloading updates ... Please wait ...') to Editbox (Edit1) of Window (Win1)",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Open Connection (MyCon) Server ('doublesvsoop.sourceforge.net') Port (80)",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Get URL ('/NEWVER.exe') Connection (MyCon) Variable-Response (Response)",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","(HTTP) Close Connection (MyCon)",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('New updates downloaded ') to Editbox (Edit1) of Window (Win1)",138,142)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF CRLF+CRLF IN response",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Response = Sub String of Response From nPos+4 Count Len(Response)-nPos-3",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","write String Response to File 'NewVerUpdate.exe'",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Run update program. ') to Editbox (Edit1) of Window (Win1)",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'NewVerUpdate.exe'",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",154,154)
Return
*-------------------------------------------------------------------*
