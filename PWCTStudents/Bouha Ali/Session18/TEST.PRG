*---------------------------------------------------------------------------*
* Time : 05:13:17    Date : 12/22/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
 * (Noun) *
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 792 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·Â« ›" ;
MAIN ;
BACKCOLOR {237,190,92} 

@ 43 ,5 LABEL lbl1 ;
VALUE "name" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,3 LABEL lbl2 ;
VALUE "address" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 152 ,6 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 46 ,103 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {239,189,133} ;
FONTCOLOR {0,0,0} 

@ 98 ,103 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {239,189,133} ;
FONTCOLOR {0,0,0} 

@ 148 ,102 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {239,189,133} ;
FONTCOLOR {0,0,0} 

@ 298 ,57 BUTTONEX btnsave;
CAPTION "save record";
ON CLICK mysave()  ;
WIDTH 135 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 295 ,336 BUTTONEX btnclose;
CAPTION "close window";
ON CLICK myclose()  ;
WIDTH 135 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 3 ,328 GRID Grid1;
WIDTH 443 ;
HEIGHT 268 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 295 ,575 BUTTONEX btn2;
CAPTION "show rec";
ON CLICK showrec()  ;
WIDTH 133 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc mysave
DO connect
oRS:ADDNEW()
oname := win1.text1.Value
oadress := win1.text2.Value
ophone := win1.text3.Value
oRS:fields:item("name"):value := oname
oRS:fields:item("adress"):value := oadress
oRS:fields:item("phone"):value := ophone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" „  «·⁄„·Ì… »‰Ã«Õ","«ÊﬂÌ")
Return Nil
Proc showrec
DO connect
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
xname := oRS:fields:item("name"):value
xadress := oRS:fields:item("adress"):value
xphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {xname,xadress,xphone} )
oRS:MOVENEXT()
Next
Return Nil
Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… «·Â« ›'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'save record'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'close window'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",69,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'show rec'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrec()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","oname = win1.text1.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","oadress = win1.text2.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = win1.text3.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (oname)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('adress') Value To (oadress)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (ophone)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „  «·⁄„·Ì… »‰Ã«Õ' Title '«ÊﬂÌ' Type: Message Box",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","xname = ADODB RecordSet (oRS) Get Field ('name') Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","xadress = ADODB RecordSet (oRS) Get Field ('adress') Value",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","xphone = ADODB RecordSet (oRS) Get Field ('phone') Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {xname,xadress,xphone} )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
Return
*-------------------------------------------------------------------*
