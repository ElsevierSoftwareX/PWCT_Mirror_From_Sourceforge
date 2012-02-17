*---------------------------------------------------------------------------*
* Time : 00:38:16    Date : 02/17/2012
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
WIDTH 533 ;
HEIGHT 386 ;
ICON "PWCTICON" ;
TITLE " Personal Data " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 9 ,145 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,143 LABEL lbl2 ;
VALUE "Mobile No " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 84 ,145 LABEL lbl3 ;
VALUE "Email " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,145 LABEL lbl4 ;
VALUE "Country " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 5 ,265 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 45 ,265 TEXTBOX textmobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 85 ,265 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 128 ,265 TEXTBOX textcountry;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,143 BUTTONEX btnfirst;
CAPTION " ";
ON CLICK first()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 249 ,143 BUTTONEX btnlast;
CAPTION " ";
ON CLICK goLast()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 197 ,294 BUTTONEX btnnext;
CAPTION " ";
ON CLICK next()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 248 ,295 BUTTONEX btnprev;
CAPTION " ";
ON CLICK prev()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 310 ,430 BUTTONEX btn5;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 88 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 199 ,170 LABEL lbl5 ;
VALUE "First Record " ;
WIDTH 97 ;
HEIGHT 18 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 201 ,321 LABEL lbl6 ;
VALUE "Next Record " ;
WIDTH 98 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 251 ,323 LABEL lbl7 ;
VALUE "Prev Record " ;
WIDTH 94 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 251 ,173 LABEL lbl8 ;
VALUE "Last Record " ;
WIDTH 103 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 181 ,515 LABEL lbl9 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 109 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 181 ,128 LABEL lbl10 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 110 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 289 ,129 LABEL lbl11 ;
VALUE " " ;
WIDTH 386 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 181 ,128 LABEL lbl13 ;
VALUE " " ;
WIDTH 387 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ -2 ,-4 LABEL lbl14 ;
VALUE " " ;
WIDTH 128 ;
HEIGHT 400 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 310 ,339 BUTTONEX btn6;
CAPTION "Delete ";
ON CLICK del()  ;
WIDTH 88 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 197 ,430 BUTTONEX btnsave;
CAPTION " ";
ON CLICK save()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 248 ,431 BUTTONEX btnedit;
CAPTION "";
ON CLICK edit()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,459 LABEL lbl15 ;
VALUE "Save " ;
WIDTH 53 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 253 ,465 LABEL lbl16 ;
VALUE "Edit " ;
WIDTH 40 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 310 ,248 BUTTONEX btn8;
CAPTION "Cancel ";
ON CLICK cancel()  ;
WIDTH 88 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

DO show
DO mode WITH 2
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
Proc mode( p1 )
IF p1=1
win1.btnfirst.Enabled := false
win1.btnlast.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btnedit.Enabled := false
win1.btnsave.Enabled := true
win1.btn8.Enabled := true
ENDIF
IF p1=2
win1.btnfirst.Enabled := true
win1.btnlast.Enabled := true
win1.btnnext.Enabled := true
win1.btnprev.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btn8.Enabled := false
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
MyOut := MSGOKCANCEL("There are no Records ","Information ")
ENDIF
return
procedure save()
DO mode WITH 2
cname := win1.textname.Value
cmobile := win1.textmobile.Value
cemail := win1.textemail.Value
ccountry := win1.textcountry.Value
oRS:fields:item("Name"):value := cname
oRS:fields:item("MobileNo"):value := cmobile
oRS:fields:item("Email"):value := cemail
oRS:fields:item("Country"):value := ccountry
oRS:UPDATE()
return
procedure edit()
mymax := oRS:RecordCount
IF mymax>0
DO mode WITH 1
ELSE
MyOut := MSGOKCANCEL("There are no records to modify ","Information ")
win1.btnfirst.Enabled := false
win1.btnlast.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btn5.Enabled := true
win1.btn6.Enabled := false
win1.btnedit.Enabled := false
win1.btnsave.Enabled := false
win1.btn8.Enabled := false
ENDIF
return
procedure cancel()
DO mode WITH 2
DO show
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : ' '",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : ''",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action edit",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Save '",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",195,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : 'Edit '",202,203)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",204,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Cancel '",211,212)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancel",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",214,216)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",217,218)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",221,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",225,226)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=persdata.mdb'",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",228,229)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from persdata'",230,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ADODB RecordSet (oRS) Get Field ('MobileNo') Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","cMobile = CONVERT cMobile TO STRING",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email') Value",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ADODB RecordSet (oRS) Get Field ('Country') Value",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ''",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ''",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ''",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = All Trim cmobile",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textmobile.Value := cmobile",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textemail.Value := cemail",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textcountry.Value := ccountry",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is Last Record ' Title 'Information ' Type: Message Ok/Cancel",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is First Record ' Title 'Information ' Type: Message Ok/Cancel",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure goLast",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=1 )",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=2 )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := true",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := true",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del ( Event : CLICK )",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to delete record? ' Title 'Information ' Type: Message Ok/Cancel",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no Records ' Title 'Information ' Type: Message Ok/Cancel",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save ( Event : CLICK )",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = win1.textmobile.Value",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = win1.textemail.Value",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = win1.textcountry.Value",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('MobileNo') Value To (cmobile)",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email') Value To (cemail)",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Country') Value To (ccountry)",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit ( Event : CLICK )",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records to modify ' Title 'Information ' Type: Message Ok/Cancel",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancel ( Event : CLICK )",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",388,388)
Return
*-------------------------------------------------------------------*
