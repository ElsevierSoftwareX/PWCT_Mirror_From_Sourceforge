*---------------------------------------------------------------------------*
* Time : 06:08:30    Date : 01/28/2012
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


Resistance R_LESSON18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON18_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 712 ;
HEIGHT 332 ;
ICON "PWCTICON" ;
TITLE "Lesson 18" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 78 ,290 LABEL lbl1 ;
VALUE "«·≈”„ " ;
WIDTH 38 ;
HEIGHT 27 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 132 ,285 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 43 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 176 ,275 LABEL lbl3 ;
VALUE "«· ·Ì›Ê‰ " ;
WIDTH 53 ;
HEIGHT 25 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 78 ,63 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,63 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 168 ,63 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 257 ,201 BUTTONEX btn1;
CAPTION "Õ›Ÿ ";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 257 ,53 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 48 ,342 GRID Grid1;
WIDTH 344 ;
HEIGHT 201 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 257 ,417 BUTTONEX btn3;
CAPTION "Show";
ON CLICK showall()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saverecord
DO connect
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGINFO("Done","Result")
Return Nil
Proc exit
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Œ—ÊÃ »«·›⁄· ø"," ”ÃÌ· «·Œ—ÊÃ ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc showall
DO connect
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil
Proc connect
Public ocon,ors
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON18
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 18'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·≈”„ '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«· ·Ì›Ê‰ '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ›Ÿ '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",65,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showall",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Done' Title 'Result' Type: Message Info",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·Œ—ÊÃ »«·›⁄· ø' Title ' ”ÃÌ· «·Œ—ÊÃ ' Type: Message Ok/Cancel",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showall",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,caddress,cphone} )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Public ocon,ors",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
Return
*-------------------------------------------------------------------*
