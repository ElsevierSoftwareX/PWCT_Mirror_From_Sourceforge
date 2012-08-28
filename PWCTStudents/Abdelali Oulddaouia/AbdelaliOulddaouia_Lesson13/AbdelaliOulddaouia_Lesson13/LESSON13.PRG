*---------------------------------------------------------------------------*
* Time : 22:48:51    Date : 07/16/2012
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


Resistance R_LESSON13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 417 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE "Recherche  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Exit " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

@ 40 ,23 LABEL lbl1 ;
VALUE "Nom " ;
WIDTH 200 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 40 ,75 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 40 ,283 BUTTONEX btn1;
CAPTION "Chercher ";
ON CLICK search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 95 ,76 LISTBOX list1;
WIDTH 305 ;
HEIGHT 198 ;
FONT "Georgia" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit()
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Fermer L'Application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc search
c := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + c + "%'",oCon,3,3 )
max := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF max > 0
FOR x = 1 TO max STEP 1
v1 := oRS:fields:item(alltrim("name ")):value
v2 := oRS:fields:item(alltrim("address ")):value
v3 := oRS:fields:item(alltrim("phone ")):value
win1.list1.AddItem ( v1 + "-" + v2 + "-" + v3 )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("enregistrement n'est pas trouvé ","Error ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Recherche  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Date",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Nom '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Chercher '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","c = win1.text1.Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + c + '%''",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To max Step 1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = ADODB RecordSet (oRS) Get Field ('name ') Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = ADODB RecordSet (oRS) Get Field ('address ') Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = ADODB RecordSet (oRS) Get Field ('phone ') Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( v1 + '-' + v2 + '-' + v3 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'enregistrement n'est pas trouvé ' Title 'Error ' Type: Message Box",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
Return
*-------------------------------------------------------------------*
