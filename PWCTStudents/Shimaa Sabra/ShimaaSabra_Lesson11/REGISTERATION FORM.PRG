*---------------------------------------------------------------------------*
* Time : 00:32:12    Date : 02/12/2012
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


Resistance R_REGISTERATION_FORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REGISTERATION_FORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 586 ;
HEIGHT 762 ;
ICON "REGISTRATION-ICON.GIF" ;
TITLE "Registration " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 161 ,-3 LABEL lbl2 ;
VALUE " " ;
WIDTH 582 ;
HEIGHT 7 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {155,172,163} ;
FONTCOLOR {0,0,0}
@ 205 ,30 LABEL lbl3 ;
VALUE "First Name" ;
WIDTH 87 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 242 ,30 LABEL lbl4 ;
VALUE "Last Name" ;
WIDTH 88 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 322 ,30 LABEL lbl5 ;
VALUE "Email Address" ;
WIDTH 106 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 364 ,30 LABEL lbl6 ;
VALUE "Password" ;
WIDTH 80 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 407 ,30 LABEL lbl7 ;
VALUE "Gender" ;
WIDTH 64 ;
HEIGHT 27 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 446 ,30 LABEL lbl8 ;
VALUE "Date of Birth" ;
WIDTH 102 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 494 ,30 LABEL lbl9 ;
VALUE "Address" ;
WIDTH 75 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 567 ,30 LABEL lbl10 ;
VALUE "City" ;
WIDTH 45 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 531 ,30 LABEL lbl11 ;
VALUE "State" ;
WIDTH 56 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 283 ,30 LABEL lbl12 ;
VALUE "Mobile No." ;
WIDTH 81 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 203 ,192 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 240 ,192 TEXTBOX text2;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 277 ,192 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 319 ,192 TEXTBOX text4;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 362 ,192 TEXTBOX text5;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 448 ,193 TEXTBOX text6;
HEIGHT 28 ;
WIDTH 73 ;
VALUE "Day" ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 2 ;
FONTCOLOR {0,0,0} 

@ 448 ,278 TEXTBOX text7;
HEIGHT 28 ;
WIDTH 73 ;
VALUE "Month" ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 2 ;
FONTCOLOR {0,0,0} 

@ 448 ,359 TEXTBOX text8;
HEIGHT 28 ;
WIDTH 73 ;
VALUE "Year" ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 4 ;
FONTCOLOR {0,0,0} 

@ 493 ,192 TEXTBOX text9;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 566 ,192 TEXTBOX text10;
HEIGHT 29 ;
WIDTH 244 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 531 ,192 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"USA","Uk","German","Italy","China","Egypt","Saudi Arabia","UAE","france","Japan","Tunis","Kuwait"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 648 ,347 BUTTONEX btn1;
CAPTION "Register ";
ON CLICK reg()  ;
WIDTH 105 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 647 ,455 BUTTONEX btn2;
CAPTION "Cancel ";
ON CLICK close()  ;
WIDTH 103 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ -5 ,-29 IMAGE image2;
PICTURE "REG.JPG";
STRETCH ;
WIDTH 608 HEIGHT 167
@ 134 ,9 LABEL lbl13 ;
VALUE "Registration Form Application " ;
WIDTH 256 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 615 ,-5 LABEL lbl14 ;
VALUE " " ;
WIDTH 589 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {154,175,164} ;
FONTCOLOR {0,0,0}
@ 648 ,238 BUTTONEX btn3;
CAPTION "Show ";
ON CLICK show()  ;
WIDTH 105 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 403 ,219 RADIOGROUP radio1;
OPTIONS {"Male","Female"};
WIDTH 100 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
HORIZONTAL ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure reg()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=reg.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Reg",oCon,3,3 )
oRS:ADDNEW()
cfname := win1.text1.Value
clname := win1.text2.Value
cmobileno := win1.text3.Value
cemail := win1.text4.Value
cpassword := win1.text5.Value
cddate := win1.text6.Value
cmdate := win1.text7.Value
cydate := win1.text8.Value
caddress := win1.text9.Value
ccity := win1.text10.Value
cstate := win1.combo1.Value
nGender := win1.radio1.Value
oRS:fields:item("First Name"):value := cfname
oRS:fields:item("Last Name"):value := clname
oRS:fields:item("Mobile No"):value := cmobileno
oRS:fields:item("Email Address"):value := cemail
oRS:fields:item("Password"):value := cpassword
oRS:fields:item("Gender"):value := nGender
oRS:fields:item("Date Of Birth"):value := cddate + "/" + cmdate + "/" + cydate
oRS:fields:item("Address"):value := caddress
oRS:fields:item("State"):value := cstate
oRS:fields:item("City"):value := ccity
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Thanks For Registration ","Ok ")
return
procedure close()
win1.Release ( )
return
procedure show()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 599 ;
HEIGHT 317 ;
ICON "PWCTICON" ;
TITLE "Show Record  " ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -4 ,-2 GRID Grid1;
WIDTH 595 ;
HEIGHT 289 ;
HEADERS {"First Name","Last Name","Mobile No","Email Address","Password","Gender","Date Of Birth","Address","State","City"};
WIDTHS {100,100,100,100,100,100,100,100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=reg.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Reg",oCon,3,3 )
max := oRS:RecordCount
oRS:MOVEFIRST()
win2.Grid1.DeleteAllItems ( )
FOR x = 1 TO max STEP 1
cfname := oRS:fields:item("First Name"):value
clname := oRS:fields:item("Last Name"):value
cmobileno := oRS:fields:item("Mobile No"):value
cemail := oRS:fields:item("Email Address"):value
cpassword := oRS:fields:item("Password"):value
cmale := oRS:fields:item("Gender"):value
cfemale := oRS:fields:item("Gender"):value
cddate := oRS:fields:item("Date Of Birth"):value
cmdate := oRS:fields:item("Date Of Birth"):value
cydate := oRS:fields:item("Date Of Birth"):value
caddress := oRS:fields:item("Address"):value
cstate := oRS:fields:item("State"):value
ccity := oRS:fields:item("City"):value
win2.Grid1.AddItem ( {cfname,clname,cmobileno,cemail,cpassword,cmale + cfemale,cddate + cmdate + cydate,caddress,cstate,ccity} )
oRS:MOVENEXT()
Next
END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_REGISTERATION_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Registration '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'First Name'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Last Name'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Email Address'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Password'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Gender'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Date of Birth'",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Address'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'City'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'State'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Mobile No.'",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",126,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",133,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",141,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",149,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'USA','Uk','German','Italy','China','Egypt','Saudi Arabia','UAE','france','Japan','Tunis','Kuwait'}",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",169,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Register '",177,178)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action reg",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",180,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel '",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",186,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'REG.JPG'",189,190)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Registration Form Application '",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",195,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ' '",202,203)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",204,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show '",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action show",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",212,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RadioGroup ( radio1 ) , Options : {'Male','Female'}",215,216)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",217,221)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",222,223)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",224,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure reg ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",228,229)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=reg.mdb'",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",231,232)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Reg'",233,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","cfname = win1.text1.Value",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","clname = win1.text2.Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cmobileno = win1.text3.Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = win1.text4.Value",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","cpassword = win1.text5.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","cddate = win1.text6.Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","cmdate = win1.text7.Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","cydate = win1.text8.Value",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text9.Value",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ccity = win1.text10.Value",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","cstate = win1.combo1.Value",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","nGender = win1.radio1.Value",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('First Name') Value To (cfname)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Last Name') Value To (clname)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile No') Value To (cmobileno)",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email Address') Value To (cemail)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Password') Value To (cpassword)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Gender') Value To (nGender)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Date Of Birth') Value To (cddate + '/' + cmdate + '/' + cydate)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (caddress)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('State') Value To (cstate)",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('City') Value To (ccity)",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Thanks For Registration ' Title 'Ok ' Type: Message Box",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show ( Event : CLICK )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Show Record  '",268,272)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",273,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'First Name','Last Name','Mobile No','Email Address','Password','Gender','Date Of Birth','Address','State','City'}",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",280,287)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",288,289)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",291,292)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Reg'",293,295)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Grid1.DeleteAllItems ( )",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To max Step 1)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","cfname = ADODB RecordSet (oRS) Get Field ('First Name') Value",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","clname = ADODB RecordSet (oRS) Get Field ('Last Name') Value",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","cmobileno = ADODB RecordSet (oRS) Get Field ('Mobile No') Value",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email Address') Value",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","cpassword = ADODB RecordSet (oRS) Get Field ('Password') Value",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","cmale = ADODB RecordSet (oRS) Get Field ('Gender') Value",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","cfemale = ADODB RecordSet (oRS) Get Field ('Gender') Value",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","cddate = ADODB RecordSet (oRS) Get Field ('Date Of Birth') Value",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","cmdate = ADODB RecordSet (oRS) Get Field ('Date Of Birth') Value",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","cydate = ADODB RecordSet (oRS) Get Field ('Date Of Birth') Value",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('Address') Value",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","cstate = ADODB RecordSet (oRS) Get Field ('State') Value",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ccity = ADODB RecordSet (oRS) Get Field ('City') Value",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Grid1.AddItem ( {cfname,clname,cmobileno,cemail,cpassword,cmale + cfemale,cddate + cmdate + cydate,caddress,cstate,ccity} )",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",316,317)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",318,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",321,321)
Return
*-------------------------------------------------------------------*
