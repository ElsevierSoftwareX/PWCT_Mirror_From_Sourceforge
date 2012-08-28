*---------------------------------------------------------------------------*
* Time : 16:40:54    Date : 07/16/2012
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


Resistance R_LESSON11_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON11_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 837 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Lesson11  " ;
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

@ 67 ,51 LABEL lbl1 ;
VALUE "Nom : " ;
WIDTH 175 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 131 ,51 LABEL lbl2 ;
VALUE "Adresse : " ;
WIDTH 187 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 191 ,51 LABEL lbl3 ;
VALUE "Tel : " ;
WIDTH 161 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 65 ,238 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 129 ,238 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 189 ,238 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 271 ,35 BUTTONEX btn1;
CAPTION "Sauvgarder Enregistrement ";
ON CLICK saverecord()  ;
WIDTH 244 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 271 ,291 BUTTONEX btn2;
CAPTION "Fermer Fenêtre ";
ON CLICK exit()  ;
WIDTH 244 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 65 ,463 GRID Grid1;
WIDTH 341 ;
HEIGHT 154 ;
HEADERS {"Nom","Adresse","Tel"};
WIDTHS {100,150,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 271 ,548 BUTTONEX btn3;
CAPTION "Afficher Base ";
ON CLICK showrecord()  ;
WIDTH 244 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Fermer L'Application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc saverecord
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item(alltrim("name ")):value := cname
oRS:fields:item(alltrim("address ")):value := caddress
oRS:fields:item(alltrim("phone ")):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Opération Effectuée ","opp ")
Return Nil
procedure showrecord()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
max := oRS:RecordCount
win1.grid1.DeleteAllItems ( )
IF max > 0
oRS:MOVEFIRST()
FOR x = 1 TO max STEP 1
c1 := oRS:fields:item(alltrim("name ")):value
c2 := oRS:fields:item(alltrim("address ")):value
c3 := oRS:fields:item(alltrim("phone ")):value
win1.grid1.AddItem ( {c1,c2,c3} )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
return


End Of Resistance

INIT PROCEDURE Init_LESSON11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson11  '",1,5)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Nom : '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adresse : '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Tel : '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Sauvgarder Enregistrement '",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Fermer Fenêtre '",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Nom','Adresse','Tel'}",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",90,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Afficher Base '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecord",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address ') Value To (caddress)",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone ') Value To (cphone)",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Opération Effectuée ' Title 'opp ' Type: Message Box",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord ( Event : CLICK )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",144,146)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To max Step 1)",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name ') Value",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address ') Value",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone ') Value",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {c1,c2,c3} )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
Return
*-------------------------------------------------------------------*
