*---------------------------------------------------------------------------*
* Time : 23:48:23    Date : 02/16/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
 * Get parameters from command line Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
		Main Circuit    Main                          
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_PACJENCI_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PACJENCI_18smart1() code
DO Connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1143 ;
HEIGHT 480 ;
ON RELEASE disconnect()  ;
ICON "PWCTICON" ;
TITLE "Welcome to PWCT" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 7 ,10 LABEL lbl1 ;
VALUE "Program" ;
WIDTH 170 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 301 ,12 BUTTONEX btn1;
CAPTION "Close Window";
ON CLICK myclose()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 12 ,323 GRID Grid1;
WIDTH 551 ;
HEIGHT 383 ;
HEADERS {"Imie","Nazwisko","Pesel"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 53 ,122 BUTTONEX button_odswiez;
CAPTION "Odswiez baze";
ON CLICK ShowRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 52 ,9 BUTTONEX button_dodaj;
CAPTION "Dodaj";
ON CLICK AddRecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 95 ,7 TEXTBOX textbox_imie;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 136 ,7 TEXTBOX textbox_nazwisko;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,5 TEXTBOX textbox_pesel;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MyClose
win1.Release ( )
Return Nil
procedure ShowRecords()
nMax := oRS:RecordCount
win1.Grid1.DeleteAllItems ( )
IF nMax >= 1
oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cImie := oRS:fields:item(alltrim("Imie")):value
cNazwisko := oRS:fields:item(alltrim("Nazwisko")):value
cPesel := oRS:fields:item(alltrim("Pesel")):value
win1.Grid1.AddItem ( {cImie,cNazwisko,cPesel} )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Niestety brak danych do wyœwietlenia","Brak danych")
ENDIF
return
procedure AddRecords()
cImie := win1.textbox_imie.Value
cNazwisko := win1.textbox_nazwisko.Value
cPesel := win1.textbox_pesel.Value
oRS:ADDNEW()
oRS:fields:item(alltrim("imie")):value := cImie
oRS:fields:item(alltrim("nazwisko")):value := cNazwisko
oRS:fields:item(alltrim("pesel")):value := cPesel
oRS:UPDATE()
MyOut := MSGBOX("Dodano do bazy pomyœlnie","OK")
DO ShowRecords
return
Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:CursorLocation := 3
oCon:open ( 'Driver={MySQL ODBC 5.2w Driver};Server=localhost;Port=3306;Option=4;Database=pacjenci;Uid=root;Pwd=system;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from dane",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil


End Of Resistance

INIT PROCEDURE Init_PACJENCI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome to PWCT'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Program'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Imie','Nazwisko','Pesel'}",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",27,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_odswiez ) , Caption : 'Odswiez baze'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowRecords",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_dodaj ) , Caption : 'Dodaj'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddRecords",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_imie  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_nazwisko  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_pesel  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = ADODB RecordSet (oRS) Get Field ('Imie') Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = ADODB RecordSet (oRS) Get Field ('Nazwisko') Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = ADODB RecordSet (oRS) Get Field ('Pesel') Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cImie,cNazwisko,cPesel} )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do wyœwietlenia' Title 'Brak danych' Type: Message Box",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddRecords ( Event : CLICK )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = win1.textbox_imie.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = win1.textbox_nazwisko.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = win1.textbox_pesel.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('imie') Value To (cImie)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('nazwisko') Value To (cNazwisko)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('pesel') Value To (cPesel)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Dodano do bazy pomyœlnie' Title 'OK' Type: Message Box",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","oCon.CursorLocation = 3",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={MySQL ODBC 5.2w Driver};Server=localhost;Port=3306;Option=4;Database=pacjenci;Uid=root;Pwd=system;'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from dane'",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
