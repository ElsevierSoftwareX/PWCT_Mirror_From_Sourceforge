*---------------------------------------------------------------------------*
* Time : 22:56:33    Date : 02/19/2012
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
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 517 ;
HEIGHT 397 ;
ICON "PWCTICON" ;
TITLE " Personal Data " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 28 ,80 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 64 ,78 LABEL lbl2 ;
VALUE "Mobile No " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 103 ,80 LABEL lbl3 ;
VALUE "Email " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 144 ,80 LABEL lbl4 ;
VALUE "Country " ;
WIDTH 85 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,200 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 63 ,200 TEXTBOX textmobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 103 ,200 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,200 TEXTBOX textcountry;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 211 ,30 BUTTONEX btnfirst;
CAPTION " ";
ON CLICK first()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 264 ,30 BUTTONEX btnlast;
CAPTION " ";
ON CLICK goLast()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 212 ,181 BUTTONEX btnnext;
CAPTION " ";
ON CLICK next()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 263 ,182 BUTTONEX btnprev;
CAPTION " ";
ON CLICK prev()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 321 ,404 BUTTONEX btn5;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 88 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 214 ,57 LABEL lbl5 ;
VALUE "First Record " ;
WIDTH 97 ;
HEIGHT 18 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 216 ,208 LABEL lbl6 ;
VALUE "Next Record " ;
WIDTH 98 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,210 LABEL lbl7 ;
VALUE "Prev Record " ;
WIDTH 94 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,60 LABEL lbl8 ;
VALUE "Last Record " ;
WIDTH 103 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 196 ,497 LABEL lbl9 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 109 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 196 ,15 LABEL lbl10 ;
VALUE " " ;
WIDTH 2 ;
HEIGHT 110 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 304 ,16 LABEL lbl11 ;
VALUE " " ;
WIDTH 483 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 196 ,15 LABEL lbl13 ;
VALUE " " ;
WIDTH 484 ;
HEIGHT 2 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,108,108} ;
FONTCOLOR {0,0,0}
@ 265 ,404 BUTTONEX btn6;
CAPTION " ";
ON CLICK del()  ;
WIDTH 25 HEIGHT 24 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 212 ,317 BUTTONEX btnsave;
CAPTION " ";
ON CLICK save()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 263 ,318 BUTTONEX btnedit;
CAPTION "";
ON CLICK edit()  ;
WIDTH 26 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 215 ,346 LABEL lbl15 ;
VALUE "Save " ;
WIDTH 53 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 267 ,347 LABEL lbl16 ;
VALUE "Edit " ;
WIDTH 40 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 321 ,312 BUTTONEX btn8;
CAPTION "Cancel ";
ON CLICK cancel()  ;
WIDTH 88 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 214 ,404 BUTTONEX btn9;
CAPTION "";
ON CLICK add()  ;
WIDTH 26 HEIGHT 25 ;
FONT "" SIZE 9 ;
TOOLTIP ""
@ 217 ,433 LABEL lbl17 ;
VALUE "Add " ;
WIDTH 55 ;
HEIGHT 21 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 266 ,431 LABEL lbl18 ;
VALUE "Delete " ;
WIDTH 59 ;
HEIGHT 19 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
cemail := oRS:fields:item("Email"):value
ccountry := oRS:fields:item("Country"):value
ELSE
cname := ""
cmobile := ""
cemail := ""
ccountry := ""
ENDIF
win1.textname.Value := cname
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
win1.btn9.Enabled := false
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
win1.btn9.Enabled := true
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
savemode := 1
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
IF savemode=2
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
ENDIF
DO mode WITH 2
DO show
return
procedure add()
oRS:ADDNEW()
DO show
savemode := 2
DO mode WITH 1
return


End Of Resistance

INIT PROCEDURE Init_PERSDATA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Personal Data '",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Mobile No '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Email '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Country '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textmobile  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textemail  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textcountry  )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : ' '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : ' '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action goLast",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnnext ) , Caption : ' '",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : ' '",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close '",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'First Record '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Next Record '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",117,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Prev Record '",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",126,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Last Record '",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",135,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",144,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ' '",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : ' '",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",158,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : ' '",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",165,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : ' '",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",173,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : ' '",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",179,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : ''",182,183)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action edit",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",185,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Save '",188,189)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",190,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : 'Edit '",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",199,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Cancel '",206,207)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancel",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",209,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : ''",212,213)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",215,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : 'Add '",218,219)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",220,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18 ) , Caption : 'Delete '",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",229,235)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",236,237)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",240,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",244,245)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=persdata.mdb'",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",247,248)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from persdata'",249,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ADODB RecordSet (oRS) Get Field ('MobileNo') Value",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email') Value",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ADODB RecordSet (oRS) Get Field ('Country') Value",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = ''",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ''",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ''",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textmobile.Value := cmobile",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textemail.Value := cemail",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textcountry.Value := ccountry",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is Last Record ' Title 'Information ' Type: Message Ok/Cancel",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is First Record ' Title 'Information ' Type: Message Ok/Cancel",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure goLast",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records ' Title 'Information ' Type: Message Ok/Cancel",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=1 )",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=2 )",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := true",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := true",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del ( Event : CLICK )",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do you want to delete record? ' Title 'Information ' Type: Message Ok/Cancel",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=false )",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no Records ' Title 'Information ' Type: Message Ok/Cancel",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save ( Event : CLICK )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","cmobile = win1.textmobile.Value",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = win1.textemail.Value",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = win1.textcountry.Value",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('MobileNo') Value To (cmobile)",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email') Value To (cemail)",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Country') Value To (ccountry)",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit ( Event : CLICK )",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records to modify ' Title 'Information ' Type: Message Ok/Cancel",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancel ( Event : CLICK )",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode=2 )",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check )",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",426,426)
Return
*-------------------------------------------------------------------*
