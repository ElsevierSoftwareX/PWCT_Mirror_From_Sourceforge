*---------------------------------------------------------------------------*
* Time : 12:33:44    Date : 07/22/2012
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


Resistance R_LESSON15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON15_18smart1() code
DO connexion
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 771 ;
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
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 168 ,39 BUTTONEX btn2;
CAPTION "Dernier Enrg ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 92 ,39 BUTTONEX btn3;
CAPTION "Enrg Suivant ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 130 ,39 BUTTONEX btn4;
CAPTION "Enrg Précedent ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK prerecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 221 ,390 BUTTONEX btn5;
CAPTION "Fermer Application ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK exitpro()  ;
WIDTH 184 HEIGHT 38 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 206 ,39 BUTTONEX btn6;
CAPTION "Supprimer ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK deletrecord()  ;
WIDTH 150 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 114 ,592 BUTTONEX btn7;
CAPTION "Sauvgarder ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK saverecord()  ;
WIDTH 141 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 72 ,592 BUTTONEX btn8;
CAPTION "Modifier ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK editrecord()  ;
WIDTH 141 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 156 ,592 BUTTONEX btn9;
CAPTION "Annuler ";
FONTCOLOR {0,128,192};
BACKCOLOR {255,255,255};
ON CLICK cancelrecord()  ;
WIDTH 141 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO showrecord
DO mode WITH 2
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
MyOut := MSGINFO("C'est La Fin De Ce Fichier ","Merci ")
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
MyOut := MSGINFO("C'est Le Début De Ce Fichier ","Merci ")
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
ELSE
DO showrecord
ENDIF
ELSE
Return 0
ENDIF
ELSE
MyOut := MSGBOX("Il n y a pas d'Enregistrement Pour Le Supprimer ","Error ")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn8.Enabled := false
win1.btn7.Enabled := true
win1.btn9.Enabled := true
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn8.Enabled := true
win1.btn7.Enabled := false
win1.btn9.Enabled := false
ENDIF
Return Nil
Proc editrecord
max := oRS:RecordCount
IF max > 0
DO mode WITH 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
c1 := win1.text1.Value
c2 := win1.text2.Value
c3 := win1.text3.Value
oRS:fields:item(alltrim("name ")):value := c1
oRS:fields:item(alltrim("address ")):value := c2
oRS:fields:item(alltrim("phone ")):value := c3
oRS:UPDATE()
Return Nil
Proc cancelrecord
DO mode WITH 2
DO showrecord
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON15
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Premier Enrg '",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Dernier Enrg '",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Enrg Suivant '",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Enrg Précedent '",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prerecord",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Fermer Application '",110,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exitpro",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Supprimer '",118,121)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deletrecord",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Sauvgarder '",126,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Modifier '",134,137)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Annuler '",142,145)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",147,149)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connexion()",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deconnexion()",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exitpro()",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure deconnexion",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name ') Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address ') Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone ') Value",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ''",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ''",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := c1",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := c2",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := c3",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","end = ADODB RecordSet oRS , Check EOF",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( end )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'C'est La Fin De Ce Fichier ' Title 'Merci ' Type: Message Info",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prerecord",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","begin = ADODB RecordSet oRS , Check BOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( begin )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'C'est Le Début De Ce Fichier ' Title 'Merci ' Type: Message Info",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deletrecord",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Supprimer Cet enregistrement ? ' Title 'Supprimer ' Type: Message",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( test=true )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","begin = ADODB RecordSet oRS , Check BOF",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( begin )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Il n y a pas d'Enregistrement Pour Le Supprimer ' Title 'Error ' Type: Message Box",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = win1.text1.Value",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = win1.text2.Value",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = win1.text3.Value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (c1)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address ') Value To (c2)",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone ') Value To (c3)",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",307,307)
Return
*-------------------------------------------------------------------*
