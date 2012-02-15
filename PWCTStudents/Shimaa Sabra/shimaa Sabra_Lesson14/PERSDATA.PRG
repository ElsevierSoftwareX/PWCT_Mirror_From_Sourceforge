*---------------------------------------------------------------------------*
* Time : 01:10:28    Date : 02/15/2012
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
WIDTH 429 ;
HEIGHT 423 ;
ICON "PWCTICON" ;
TITLE " Personal Data " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 23 ,39 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 59 ,37 LABEL lbl2 ;
VALUE "Mobile No " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 98 ,39 LABEL lbl3 ;
VALUE "Email " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 139 ,39 LABEL lbl4 ;
VALUE "Country " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 17 ,153 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 57 ,153 TEXTBOX textmobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 97 ,153 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 140 ,153 TEXTBOX textcountry;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 208 ,71 BUTTONEX btnfirst;
CAPTION " ";
ON CLICK first()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 261 ,71 BUTTONEX btnlast;
CAPTION " ";
ON CLICK goLast()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 208 ,218 BUTTONEX btnnext;
CAPTION " ";
ON CLICK next()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 261 ,221 BUTTONEX btnprev;
CAPTION " ";
ON CLICK prev()  ;
WIDTH 26 HEIGHT 23 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 350 ,324 BUTTONEX btn5;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 86 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 210 ,99 LABEL lbl5 ;
VALUE "First Record " ;
WIDTH 97 ;
HEIGHT 18 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 209 ,247 LABEL lbl6 ;
VALUE "Next Record " ;
WIDTH 98 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 263 ,251 LABEL lbl7 ;
VALUE "Prev Record " ;
WIDTH 94 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 263 ,100 LABEL lbl8 ;
VALUE "Last Record " ;
WIDTH 103 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 192 ,350 LABEL lbl9 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 111 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 192 ,60 LABEL lbl10 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 110 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {187,239,152} ;
FONTCOLOR {0,0,0}
@ 301 ,60 LABEL lbl11 ;
VALUE " " ;
WIDTH 292 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 192 ,62 LABEL lbl13 ;
VALUE " " ;
WIDTH 290 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,242,159} ;
FONTCOLOR {0,0,0}
@ 315 ,-1 LABEL lbl14 ;
VALUE " " ;
WIDTH 429 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {200,238,166} ;
FONTCOLOR {0,0,0}
@ 350 ,234 BUTTONEX btn6;
CAPTION "Delete ";
ON CLICK del()  ;
WIDTH 86 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
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
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc show
mymax := oRS:RecordCount
IF mymax>0
cname := oRS:fields:item("Name"):value
cmobile := oRS:fields:item("MobileNo"):value
cMobile = STR ( cMobile )
cemail := oRS:fields:item("Email"):value
ccountry := oRS:fields:item("Country"):value
ELSE
cname := ""
cmobile := ""
cemail := ""
ccountry := ""
ENDIF
win1.textname.Value := cname
cmobile = ALLTRIM ( cmobile )
win1.textmobile.Value := cmobile
win1.textemail.Value := cemail
win1.textcountry.Value := ccountry
Return Nil
Proc first
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEFIRST()
DO show
ELSE
MyOut := MSGOKCANCEL("There are no records ","Information ")
ENDIF
Return Nil
Proc next
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
check := oRS:EOF()
IF check
MyOut := MSGOKCANCEL("This Is Last Record ","Information ")
oRS:MOVEPREVIOUS()
ELSE
DO show
ENDIF
ELSE
MyOut := MSGOKCANCEL("There are no records ","Information ")
ENDIF
Return Nil
Proc prev
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check
MyOut := MSGOKCANCEL("This Is First Record ","Information ")
oRS:MOVENEXT()
ELSE
DO show
ENDIF
ELSE
MyOut := MSGOKCANCEL("There are no records ","Information ")
ENDIF
Return Nil
Proc goLast
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO show
ELSE
MyOut := MSGOKCANCEL("There are no records ","Information ")
ENDIF
Return Nil
procedure close()
DO disconnect
win1.Release ( )
return
procedure del()
mymax := oRS:RecordCount
IF mymax>0
MyOut := MSGOKCANCEL("Do you want to delete record? ","Information ")
IF myout=false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check
oRS:MOVENEXT()
ENDIF
ENDIF
DO show
ELSE
MyOut := MSGOKCANCEL("There are no other records ","Information ")
ENDIF
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'First Record '",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",106,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Next Record '",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Prev Record '",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Last Record '",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",133,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",142,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ' '",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",149,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : ' '",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : ' '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ' '",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",170,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete '",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",188,189)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=persdata.mdb'",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from persdata'",193,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ADODB RecordSet (oRS) Get Field ('MobileNo') Value",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","cMobile = CONVERT cMobile TO STRING",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email') Value",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ADODB RecordSet (oRS) Get Field ('Country') Value",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ''",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ''",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ''",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = All Trim cmobile",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textmobile.Value := cmobile",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textemail.Value := cemail",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textcountry.Value := ccountry",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is Last Record ' Title 'Information ' Type: Message Ok/Cancel",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is First Record ' Title 'Information ' Type: Message Ok/Cancel",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure goLast",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del ( Event : CLICK )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to delete record? ' Title 'Information ' Type: Message Ok/Cancel",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no other records ' Title 'Information ' Type: Message Ok/Cancel",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",294,294)
Return
*-------------------------------------------------------------------*
