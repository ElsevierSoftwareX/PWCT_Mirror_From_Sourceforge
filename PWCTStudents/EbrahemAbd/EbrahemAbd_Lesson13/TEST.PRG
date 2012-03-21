*---------------------------------------------------------------------------*
* Time : 20:09:20    Date : 03/19/2012
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
WIDTH 803 ;
HEIGHT 606 ;
ICON "PWCTICON" ;
TITLE "«·»ÕÀ ›Ï ﬁÊ«⁄œ «·»Ì«‰«   " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -5 ,2 IMAGE image1;
PICTURE "PICO\PIC13.JPG";
STRETCH ;
WIDTH 799 HEIGHT 573
@ 138 ,210 TEXTBOX text1;
HEIGHT 39 ;
WIDTH 233 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,128,192} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 498 ,625 BUTTONEX btn1;
CAPTION "«»œ√ «·»ÕÀ ";
FONTCOLOR {0,0,0};
BACKCOLOR {185,55,58};
ON CLICK connect()  ;
WIDTH 134 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 496 ,53 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {0,0,0};
BACKCOLOR {185,55,58};
PICTURE "PICO\CLOSE.BMP";
ON CLICK exit()  ;
WIDTH 169 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 227 ,214 LISTBOX list1;
WIDTH 405 ;
HEIGHT 176 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc connect
win1.text1.SetFocus ( )
cname := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cname + "%'",oCon,3,3 )
mycount := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mycount>0
win1.list1.AddItem ( "«·«”„"+"           "+"«·⁄‰Ê«‰"+"                  "+"«· ·Ì›Ê‰" )
FOR x = 1 TO mycount STEP 1
lname := oRS:fields:item(alltrim("name ")):value
laddress := oRS:fields:item(alltrim("address")):value
lphone := oRS:fields:item(alltrim("phone")):value
win1.list1.AddItem ( lname+"     "+laddress+"      "+lphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGExclamation("⁄›Ê« ·« ÌÊÃœ ”Ã· »Â–« «·«”„ "," ”Ã· €Ì— „ÊÃÊœ")
win1.text1.SetFocus ( )
ENDIF
Return Nil
Proc exit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·»ÕÀ ›Ï ﬁÊ«⁄œ «·»Ì«‰«   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\PIC13.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«»œ√ «·»ÕÀ '",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action connect",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name li",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","mycount := ADODB RecordSet (oRS) , Get Records Count",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount>0 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '«·«”„'+'           '+'«·⁄‰Ê«‰'+'                  '+'«· ·Ì›Ê‰' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","lname = ADODB RecordSet (oRS) Get Field ('name ') Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","laddress = ADODB RecordSet (oRS) Get Field ('address') Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","lphone = ADODB RecordSet (oRS) Get Field ('phone') Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( lname+'     '+laddress+'      '+lphone )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« ·« ÌÊÃœ ”Ã· »Â–« «·«”„ ' Title ' ”Ã· €Ì— „ÊÃÊœ' Type: Message Exclamation",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
Return
*-------------------------------------------------------------------*
