*---------------------------------------------------------------------------*
* Time : 23:58:56    Date : 07/16/2012
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


Resistance R_LESSON14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON14_18smart1() code
DO connexion
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 630 ;
HEIGHT 353 ;
ICON "PWCTICON" ;
TITLE "Telephone Database  " ;
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

@ 73 ,292 LABEL lbl1 ;
VALUE "Nom " ;
WIDTH 88 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 114 ,292 LABEL lbl2 ;
VALUE "Adresse " ;
WIDTH 88 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 155 ,292 LABEL lbl3 ;
VALUE "Tel " ;
WIDTH 88 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Georgia" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,128,192}
@ 73 ,380 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 114 ,380 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 155 ,380 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,192} 

@ 54 ,39 BUTTONEX btn1;
CAPTION "Premier Enrg ";
ON CLICK firstrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 168 ,39 BUTTONEX btn2;
CAPTION "Dernier Enrg ";
ON CLICK lastrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 92 ,39 BUTTONEX btn3;
CAPTION "Enrg Suivant ";
ON CLICK nextrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 130 ,39 BUTTONEX btn4;
CAPTION "Enrg Précedent ";
ON CLICK prerecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 221 ,390 BUTTONEX btn5;
CAPTION "Fermer Application ";
ON CLICK exitpro()  ;
WIDTH 184 HEIGHT 38 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
@ 206 ,39 BUTTONEX btn6;
CAPTION "Supprimer ";
ON CLICK deletrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO showrecord
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
Proc connexion()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Tel",oCon,3,3 )
Return Nil
Proc deconnexion()
oRS:Close()
oCon:CLOSE()
Return Nil
Proc exitpro()
DO deconnexion
win1.Release ( )
Return Nil
Proc showrecord
max := oRS:RecordCount
IF max > 0
c1 := oRS:fields:item(alltrim("name ")):value
c2 := oRS:fields:item(alltrim("address ")):value
c3 := oRS:fields:item(alltrim("phone ")):value
ELSE
c1 := ""
c2 := ""
c3 := ""
ENDIF
win1.text1.Value := c1
win1.text2.Value := c2
win1.text3.Value := c3
Return Nil
Proc firstrecord
max := oRS:RecordCount
IF max > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc lastrecord
max := oRS:RecordCount
IF max > 0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
Proc nextrecord
max := oRS:RecordCount
IF max > 0
oRS:MOVENEXT()
end := oRS:EOF()
IF end
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("C'est La Fin De Ce Fichier ","Merci ")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc prerecord
max := oRS:RecordCount
IF max > 0
oRS:MOVEPREVIOUS()
begin := oRS:BOF()
IF begin
oRS:MOVENEXT()
MyOut := MSGBOX("C'est Le Début De Ce Fichier ","Merci ")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc deletrecord
max := oRS:RecordCount
IF max > 0
test := MSGOKCANCEL("Voulez Vous Vraiment Supprimer Cet enregistrement ? ","Supprimer ")
IF test=true
oRS:DELETE()
oRS:UPDATE()
max := oRS:RecordCount
IF max > 0
oRS:MOVEPREVIOUS()
begin := oRS:BOF()
IF begin
oRS:MOVENEXT()
ELSE
DO showrecord
ENDIF
ENDIF
ELSE
Return 0
ENDIF
ELSE
MyOut := MSGBOX("Il n y a pas d'Enregistrement Pour Le Supprimer ","Error ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connexion",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Date",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Nom '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adresse '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Tel '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",72,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Premier Enrg '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Dernier Enrg '",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Enrg Suivant '",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Enrg Précedent '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prerecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Fermer Application '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exitpro",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Supprimer '",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deletrecord",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connexion()",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deconnexion()",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exitpro()",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure deconnexion",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name ') Value",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address ') Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone ') Value",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ''",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ''",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ''",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := c1",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := c2",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := c3",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","end = ADODB RecordSet oRS , Check EOF",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( end )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'C'est La Fin De Ce Fichier ' Title 'Merci ' Type: Message Box",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prerecord",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","begin = ADODB RecordSet oRS , Check BOF",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( begin )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'C'est Le Début De Ce Fichier ' Title 'Merci ' Type: Message Box",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deletrecord",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Supprimer Cet enregistrement ? ' Title 'Supprimer ' Type: Message",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( test=true )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","begin = ADODB RecordSet oRS , Check BOF",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( begin )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Il n y a pas d'Enregistrement Pour Le Supprimer ' Title 'Error ' Type: Message Box",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
Return
*-------------------------------------------------------------------*
