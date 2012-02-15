*---------------------------------------------------------------------------*
* Time : 00:38:41    Date : 02/12/2012
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
#include "xhb.ch"
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


Resistance R_PERSDATA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PERSDATA_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE " Personal Data " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 39 ,176 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 75 ,174 LABEL lbl2 ;
VALUE "Mobile No " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 114 ,176 LABEL lbl3 ;
VALUE "Email " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 155 ,176 LABEL lbl4 ;
VALUE "Country " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 33 ,290 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,290 TEXTBOX textmobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 113 ,290 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 156 ,290 TEXTBOX textcountry;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 224 ,208 BUTTONEX btnfirst;
CAPTION " ";
ON CLICK first()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 277 ,208 BUTTONEX btnlast;
CAPTION " ";
ON CLICK goLast()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,355 BUTTONEX btnnext;
CAPTION " ";
ON CLICK next()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 277 ,358 BUTTONEX btnprev;
CAPTION " ";
ON CLICK prev()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 367 ,407 BUTTONEX btn5;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 90 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ -6 ,-4 IMAGE image1;
PICTURE "GREEN-WAVES.JPG";
STRETCH ;
WIDTH 167 HEIGHT 438
@ 226 ,236 LABEL lbl5 ;
VALUE "First Record " ;
WIDTH 97 ;
HEIGHT 18 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 225 ,384 LABEL lbl6 ;
VALUE "Next Record " ;
WIDTH 98 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,388 LABEL lbl7 ;
VALUE "Prev Record " ;
WIDTH 94 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,237 LABEL lbl8 ;
VALUE "Last Record " ;
WIDTH 103 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 208 ,487 LABEL lbl9 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 111 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 208 ,197 LABEL lbl10 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 110 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {187,239,152} ;
FONTCOLOR {0,0,0}
@ 317 ,197 LABEL lbl11 ;
VALUE " " ;
WIDTH 292 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 208 ,199 LABEL lbl12 ;
VALUE " " ;
WIDTH 290 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 208 ,199 LABEL lbl13 ;
VALUE " " ;
WIDTH 290 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 331 ,160 LABEL lbl14 ;
VALUE " " ;
WIDTH 370 ;
HEIGHT 28 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {200,238,166} ;
FONTCOLOR {0,0,0}
END WINDOW

DO show
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=persdata.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from persdata",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc show
cname := oRS:fields:item("Name"):value
cmobile := oRS:fields:item("MobileNo"):value
cMobile = STR ( cMobile )
cemail := oRS:fields:item("Email"):value
ccountry := oRS:fields:item("Country"):value
win1.textname.Value := cname
cmobile = ALLTRIM ( cmobile )
win1.textmobile.Value := cmobile
win1.textemail.Value := cemail
win1.textcountry.Value := ccountry
Return Nil
Proc first
oRS:MOVEFIRST()
DO show
Return Nil
Proc next
oRS:MOVENEXT()
check := oRS:EOF()
IF check
MyOut := MSGOKCANCEL("This Is Last Record ","Information ")
oRS:MOVEPREVIOUS()
ELSE
DO show
ENDIF
Return Nil
Proc prev
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check
MyOut := MSGOKCANCEL("This Is First Record ","Information ")
oRS:MOVENEXT()
ELSE
DO show
ENDIF
Return Nil
Proc goLast
oRS:MOVELAST()
DO show
Return Nil
procedure close()
DO disconnect
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PERSDATA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Personal Data '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Mobile No '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Email '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Country '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textmobile  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textemail  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textcountry  )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : ' '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : ' '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action goLast",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnnext ) , Caption : ' '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : ' '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'GREEN-WAVES.JPG'",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'First Record '",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",110,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Next Record '",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",119,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Prev Record '",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",128,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Last Record '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",137,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ' '",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",153,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : ' '",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",160,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : ' '",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",167,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : ' '",172,173)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",174,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ' '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",181,185)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=persdata.mdb'",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",196,197)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from persdata'",198,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ADODB RecordSet (oRS) Get Field ('MobileNo') Value",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","cMobile = CONVERT cMobile TO STRING",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email') Value",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ADODB RecordSet (oRS) Get Field ('Country') Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = All Trim cmobile",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textmobile.Value := cmobile",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textemail.Value := cemail",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textcountry.Value := ccountry",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is Last Record ' Title 'Information ' Type: Message Ok/Cancel",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is First Record ' Title 'Information ' Type: Message Ok/Cancel",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure goLast",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
Return
*-------------------------------------------------------------------*
