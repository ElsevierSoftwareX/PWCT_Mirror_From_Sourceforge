*---------------------------------------------------------------------------*
* Time : 23:13:51    Date : 10/19/2011
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


Resistance R_TELEPHONECONTACT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELEPHONECONTACT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 575 ;
HEIGHT 562 ;
ON INIT opendata()  ;
ICON "PWCTICON" ;
TITLE "telephone" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -14 ,-21 IMAGE image1;
PICTURE "TELE.JPG";
STRETCH ;
WIDTH 593 HEIGHT 565
TRANS_TEMP = "tel"
@ 73 ,68 ;
BROWSE browse1 ;
WIDTH 434 ;
HEIGHT 217 ;
HEADERS {"Telephone","Name","Address"} ;
WIDTHS {130,130,150} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Cooper Black" SIZE 16 ;
BACKCOLOR {201,201,201} ;
FONTCOLOR {255,0,128} ;
Edit InPlace ;
IMAGE "" 

@ 299 ,140 BUTTONEX btnadd;
CAPTION "add";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 299 ,306 BUTTONEX btndel;
CAPTION "delete";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc opendata()
CheckFile := File("tel.dbf")
IF CheckFile=false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
Return Nil
Proc myadd()
SELECT AREA tel
Append Blank
myrec := GET_RECORD_NUMBER
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel()
SELECT AREA tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TELEPHONECONTACT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'telephone'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendata()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'TELE.JPG'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",19,30)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'add'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'delete'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendata()",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile=false )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'name'",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'address'",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'phone'",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area tel",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","myrec := GET_RECORD_NUMBER",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel()",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area tel",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
Return
*-------------------------------------------------------------------*
