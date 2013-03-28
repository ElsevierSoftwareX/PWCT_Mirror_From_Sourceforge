*---------------------------------------------------------------------------*
* Time : 20:13:53    Date : 02/25/2013
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
WIDTH 1230 ;
HEIGHT 693 ;
ON RELEASE disconnect()  ;
ON INIT ShowRecords()  ;
ICON "PWCTICON" ;
TITLE "Program do obs³ugi pacjentów" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 584 ,961 LABEL lbl1 ;
VALUE "Raporty by wasyl@o2.pl" ;
WIDTH 219 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {255,255,255}
@ 202 ,16 GRID Grid1;
WIDTH 1164 ;
HEIGHT 373 ;
HEADERS {"lp","Imie","Nazwisko","Pesel","Adres","Opis","Data"};
WIDTHS {60,100,100,100,350,350,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 588 ,19 BUTTONEX button_odswiez;
CAPTION "Wyœwietl wszystkie";
ON CLICK ShowRecords()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "Wyœwietla wszystkie dane z bazy"
@ 12 ,124 TEXTBOX textbox_imie;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 12 ,460 TEXTBOX textbox_nazwisko;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 12 ,797 TEXTBOX textbox_pesel;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 12 ,11 LABEL label_imie ;
VALUE "Imie:" ;
WIDTH 100 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 12 ,343 LABEL label_nazwisko ;
VALUE "Nazwisko:" ;
WIDTH 100 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 12 ,673 LABEL label_pesel ;
VALUE "Pesel:" ;
WIDTH 94 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 96 ,343 LABEL label_adres ;
VALUE "Adres:" ;
WIDTH 100 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 96 ,11 LABEL label_opis ;
VALUE "Opis:" ;
WIDTH 100 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 54,124 RICHEDITBOX textbox_adres;
WIDTH 200 ;
HEIGHT 130 ;
FONTCOLOR {0,0,0}
@ 54,458 RICHEDITBOX textbox_opis;
WIDTH 200 ;
HEIGHT 130 ;
FONTCOLOR {0,0,0}
@ 86 ,673 DATEPICKER datepicker1;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 132 ,673 BUTTONEX button_dodaj;
CAPTION "Dodaj";
ON CLICK AddRecords()  ;
WIDTH 100 HEIGHT 50 ;
FONT "Arial" SIZE 15 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "Dodaje nowego pacjenta"
@ 588 ,186 BUTTONEX button_zapisz;
CAPTION "Zapisz wszystkie";
ON CLICK ZapiszPlik()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "Zapisuje wszystkie dane z bazy do pliku"
@ 97 ,841 LABEL label_lista_pacjentow ;
VALUE "Lista pacjentów za miesi¹c:" ;
WIDTH 300 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
ITALIC ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 132 ,842 TEXTBOX textbox_miesiac;
HEIGHT 29 ;
WIDTH 45 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Miesi¹c np: Luty to 2" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 132 ,893 LABEL lbl7 ;
VALUE "-" ;
WIDTH 15 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 132 ,914 TEXTBOX textbox_rok;
HEIGHT 30 ;
WIDTH 50 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Rok np: 2013" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 132 ,970 BUTTONEX button_wyswietl_miesiac;
CAPTION "Wyœwietl";
ON CLICK WyswietlMiesiac()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP "Wyœwietla wybrany miesi¹c w tabeli"
@ 53 ,673 LABEL lbl8 ;
VALUE "Data:" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 167 ,970 BUTTONEX button_drukuj_miesiac;
CAPTION "Zapisz";
ON CLICK ZapiszPlikMiesiac()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP "Zapisuje dane z wybranego miesi¹ca do pliku"
@ 588 ,754 BUTTONEX btn1;
CAPTION "Zamknij";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP "Zamyka program"
DEFINE MAIN MENU
POPUP "Administracja"
MENUITEM "Edycja nag³ówka" Action AdminWindow()
MENUITEM "Edycja bazy" Action EdycjaRekordow()
MENUITEM "O autorze" Action MSGINFO( "Autor pogramu:"+CHR(13)+CHR(10)+"Piotr Wasilewski"+CHR(13)+CHR(10)+CHR(13)+CHR(10)+"Kontakt:"+CHR(13)+CHR(10)+"tel. 510-267-195"+CHR(13)+CHR(10)+"mail: p.wasilewski@o2.pl" )
END POPUP
END MENU
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
cLp := oRS:fields:item(alltrim("lp")):value
cLp = STR ( cLp )
cImie := oRS:fields:item(alltrim("Imie")):value
cNazwisko := oRS:fields:item(alltrim("Nazwisko")):value
cPesel := oRS:fields:item(alltrim("Pesel")):value
cAdres := oRS:fields:item(alltrim("Adres")):value
cOpis := oRS:fields:item(alltrim("Opis")):value
cData := oRS:fields:item(alltrim("Data")):value
Set cent ON
Set date GERMAN
cData = DTOC ( cData )
win1.Grid1.AddItem ( {cLp,cImie,cNazwisko,cPesel,cAdres,cOpis,cData} )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Niestety brak danych do wyœwietlenia","Brak danych")
ENDIF
DO WypelnijDate
return
procedure AddRecords()
cImie := win1.textbox_imie.Value
cNazwisko := win1.textbox_nazwisko.Value
cPesel := win1.textbox_pesel.Value
cAdres := win1.textbox_adres.Value
cOpis := win1.textbox_opis.Value
cNow := win1.datepicker1.Value
IF empty(cImie).or. empty(cNazwisko)
MyOut := MSGBOX("Rubryki Imie i Nazwisko nie mog¹ byæ puste","B³¹d!")
Return 0
ELSE
oRS:ADDNEW()
oRS:fields:item(alltrim("imie")):value := cImie
oRS:fields:item(alltrim("nazwisko")):value := cNazwisko
oRS:fields:item(alltrim("pesel")):value := cPesel
oRS:fields:item(alltrim("Adres")):value := cAdres
oRS:fields:item(alltrim("Opis")):value := cOpis
oRS:fields:item(alltrim("Data")):value := cNow
oRS:UPDATE()
MyOut := MSGBOX("Dodano do bazy pomyœlnie","OK")
DO ShowRecords
DO WyczyscFormularze
ENDIF
return
procedure ZapiszPlik()
PutFile := PutFile ( { {"Dokument","*.doc"} } , ;
, ;
, ;
.f. , ;
"raport-wszystkie" )
CheckFile := File(PutFile)
nMax := oRS:RecordCount
IF nMax >= 1
oRS:MOVEFIRST()
DoWydruku := "<HTML><HEAD><META HTTP-EQUIV='Content-Type' CONTENT='text/html;charset=windows-1250'"
DoWydruku := Dowydruku+"<meta name=ProgId content=Word.Document><meta name=Generator content='Microsoft Word 9'><meta name=Originator content='Microsoft Word 9'>"
DoWydruku := DoWydruku+"<style>@page Section1 {size:595.45pt 841.7pt; margin:1.0in 1.25in 1.0in"
DoWydruku := DoWydruku+"div.Section1 {page:Section1;}"
DoWydruku := DoWydruku+"@page Section2 {size:841.7pt 595.45pt;mso-page-orientation:landscape;margin:1.25in 1.0in 1.25in 1.0in;mso-header-margin:.5in;mso-footer-margin:.5in;mso-paper-source:0;}"
DoWydruku := DoWydruku+"div.Section2 {page:Section2;}</style></head><div class=Section2>"
DoWydruku := DoWydruku + "<H1>Raport kompleksowy</H1>"
DoWydruku := DoWydruku+"<table style='text-align: left; width: 100%;' border='1'>"
FOR x = 1 TO nMax STEP 1
cImie := oRS:fields:item(alltrim("Imie")):value
cNazwisko := oRS:fields:item(alltrim("Nazwisko")):value
cPesel := oRS:fields:item(alltrim("Pesel")):value
cAdres := oRS:fields:item(alltrim("Adres")):value
cOpis := oRS:fields:item(alltrim("Opis")):value
DoWydruku := DoWydruku + "<tr><td>" + cImie +"</td>"
DoWydruku := DoWydruku + "<td>" + cNazwisko + "</td>"
DoWydruku := DoWydruku + "<td>" + cPesel + "</td>"
DoWydruku := DoWydruku + "<td>" + cAdres + "</td>"
DoWydruku := DoWydruku + "<td>" + cOpis + "</td></tr>"
oRS:MOVENEXT()
Next
DoWydruku := DoWydruku + "</table></div></body>"
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,DoWydruku)
FCLOSE(RPWI_TH)
ELSE
MyOut := MSGBOX("Niestety brak danych do zapisania","Brak danych")
ENDIF
return
Proc WypelnijDate
Set cent ON
Set date GERMAN
set century on
cDzisiaj = DATE()
sDzisiaj = DTOC ( cDzisiaj )
sMiesiac = SUBSTR(sDzisiaj,4,2)
sMiesiac = VAL ( sMiesiac )
sMiesiac = sMiesiac - 1
sMiesiac = STR ( sMiesiac )
sMiesiac = STRTRAN(sMiesiac," ","")
sRok = SUBSTR(sDzisiaj,7,4)
win1.textbox_miesiac.Value := sMiesiac
win1.textbox_rok.Value := sRok
Return Nil
Proc WyczyscFormularze
nic := ""
nic = ALLTRIM ( nic )
win1.textbox_imie.Value := nic
win1.textbox_nazwisko.Value := nic
win1.textbox_pesel.Value := nic
win1.textbox_adres.Value := nic
win1.textbox_opis.Value := nic
Return Nil
procedure WyswietlMiesiac()
sMiesiac := win1.textbox_miesiac.Value
sRok := win1.textbox_rok.Value
sRokLength  = LEN(sRok)
IF empty(sMiesiac)
MyOut := MSGBOX("Musisz podaæ miesi¹c za jaki chcesz raport!"," ")
ELSEIF empty(sRok)
MyOut := MSGBOX("Musisz podaæ rok za jaki chcesz raport!"," ")
ELSE
public oRS_miesiac
oRS_miesiac := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS_miesiac:CursorType := 1
oRS_miesiac:ActiveConnection := oCon
oRS_miesiac:open ( "SELECT * FROM dane WHERE MONTH(data) = "+sMiesiac+" and YEAR(data) = "+sRok+";",oCon,3,3 )
nMax := oRS_miesiac:RecordCount
win1.Grid1.DeleteAllItems ( )
IF nMax >= 1
oRS_miesiac:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cImie := oRS_miesiac:fields:item(alltrim("Imie")):value
cNazwisko := oRS_miesiac:fields:item(alltrim("Nazwisko")):value
cPesel := oRS_miesiac:fields:item(alltrim("Pesel")):value
cAdres := oRS_miesiac:fields:item(alltrim("Adres")):value
cOpis := oRS_miesiac:fields:item(alltrim("Opis")):value
cData := oRS_miesiac:fields:item(alltrim("Data")):value
Set cent ON
Set date GERMAN
cData = DTOC ( cData )
win1.Grid1.AddItem ( {cImie,cNazwisko,cPesel,cAdres,cOpis,cData} )
oRS_miesiac:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Niestety brak danych do wyœwietlenia. SprawdŸ czy dobrze wpisa³eœ miesi¹c i rok !","Brak danych")
ENDIF
ENDIF
return
Proc ZapiszPlikMiesiac
sMiesiac := win1.textbox_miesiac.Value
sRok := win1.textbox_rok.Value
IF empty(sMiesiac)
MyOut := MSGBOX("Musisz podaæ miesi¹c za jaki chcesz raport!","B³¹d!")
ELSEIF empty(sRok)
MyOut := MSGBOX("Musisz podaæ rok za jaki chcesz raport!","B³¹d!")
ELSE
public oRS_miesiac
oRS_miesiac := TOLEAUTO():NEW( "ADODB.Recordset" )
public oRS_naglowek
oRS_naglowek := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS_miesiac:CursorType := 1
oRS_miesiac:ActiveConnection := oCon
oRS_miesiac:open ( "SELECT * FROM dane WHERE MONTH(data) = "+sMiesiac+" and YEAR(data) = "+sRok+";",oCon,3,3 )
oRS_naglowek:CursorType := 1
oRS_naglowek:ActiveConnection := oCon
oRS_naglowek:open ( "Select * from naglowek",oCon,3,3 )
PutFile := PutFile ( { {"Dokument","*.doc"} } , ;
, ;
, ;
.f. , ;
sRok + "-"+sMiesiac + "-Raport" )
CheckFile := File(PutFile)
nMax := oRS_miesiac:RecordCount
IF nMax >= 1
oRS_miesiac:MOVEFIRST()
DoWydruku := "<HTML><HEAD><META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=windows-1250'"
DoWydruku := Dowydruku+"<meta name=ProgId content=Word.Document><meta name=Generator content='Microsoft Word 9'><meta name=Originator content='Microsoft Word 9'>"
DoWydruku := DoWydruku+"<style>@page Section1 {size:595.45pt 841.7pt; margin:1.0in 1.25in 1.0in"
DoWydruku := DoWydruku+"div.Section1 {page:Section1;}"
DoWydruku := DoWydruku+"@page Section2 {size:841.7pt 595.45pt;mso-page-orientation:landscape;margin:1.25in 1.0in 1.25in 1.0in;mso-header-margin:.5in;mso-footer-margin:.5in;mso-paper-source:0;}"
DoWydruku := DoWydruku+"div.Section2 {page:Section2;}</style></head><div class=Section2>"
nRS:MOVEFIRST()
tNaglowek := nRS:fields:item(alltrim("tekst_naglowek")):value
DoWydruku := DoWydruku+tNaglowek
DoWydruku := DoWydruku + "<H1>Raport za okres:" + sMiesiac + "-" + sRok + "r.</H1>"
DoWydruku := DoWydruku+"<table style='text-align: left; width: 100%;' border='1'><tr><td>Imie</td><td>Nazwisko</td><td>Pesel</td><td>Adres</td><td>Opis</td><td>Data</td></tr>"
FOR x = 1 TO nMax STEP 1
cImie := oRS_miesiac:fields:item(alltrim("Imie")):value
cNazwisko := oRS_miesiac:fields:item(alltrim("Nazwisko")):value
cPesel := oRS_miesiac:fields:item(alltrim("Pesel")):value
cAdres := oRS_miesiac:fields:item(alltrim("Adres")):value
cOpis := oRS_miesiac:fields:item(alltrim("Opis")):value
cData := oRS_miesiac:fields:item(alltrim("Data")):value
Set cent ON
Set date GERMAN
sData = DTOC ( cData )
DoWydruku := DoWydruku + "<tr><td>" + cImie +"</td>"
DoWydruku := DoWydruku + "<td>" + cNazwisko + "</td>"
DoWydruku := DoWydruku + "<td>" + cPesel + "</td>"
DoWydruku := DoWydruku + "<td>" + cAdres + "</td>"
DoWydruku := DoWydruku + "<td>" + cOpis + "</td>"
DoWydruku := DoWydruku + "<td>" + sData + "</td></tr>"
oRS_miesiac:MOVENEXT()
Next
DoWydruku := DoWydruku + "</table></div></body>"
DoWydruku = STRTRAN(DoWydruku,"\n\r","<br>")
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,DoWydruku)
FCLOSE(RPWI_TH)
ELSE
MyOut := MSGBOX("Niestety brak danych do zapisania","Brak danych")
ENDIF
ENDIF
Return Nil
procedure AdminWindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 640 ;
HEIGHT 316 ;
ICON "PWCTICON" ;
TITLE "Edycja nag³ówka" ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 10,9 RICHEDITBOX textbox_naglowek;
WIDTH 490 ;
HEIGHT 211 ;
FONTCOLOR {0,0,0}
@ 18 ,507 BUTTONEX admin_odswiez_button;
CAPTION "Odœwie¿";
ON CLICK PokazNaglowek()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 61 ,507 BUTTONEX admin_zapisz_button;
CAPTION "Zapisz";
ON CLICK ZapiszNaglowek()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 104 ,507 BUTTONEX admin_button_zamknij;
CAPTION "Zamknij";
ON CLICK ZamknijAdmin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
Proc ZamknijAdmin
win2.Release ( )
Return Nil
procedure PokazNaglowek()
n_Max := nRS:RecordCount
IF n_Max >= 1
nRS:MOVEFIRST()
cNaglowek := nRS:fields:item(alltrim("tekst_naglowek")):value
cNaglowek = STRTRAN(cNaglowek,"<br>",CHR(13)+CHR(10))
win2.textbox_naglowek.Value := cNaglowek
ELSE
MyOut := MSGBOX("Niestety brak danych do wyœwietlenia","Brak danych")
ENDIF
return
procedure ZapiszNaglowek()
NewNaglowek := win2.textbox_naglowek.Value
NewNaglowek = STRTRAN(NewNaglowek,CHR(13)+CHR(10)+"<br>","<br>")
NewNaglowek = STRTRAN(NewNaglowek,CHR(13)+CHR(10),"<br>")
nRS:MOVEFIRST()
nRS:fields:item(alltrim("tekst_naglowek")):value := NewNaglowek
nRS:UPDATE()
return
Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:CursorLocation := 3
oCon:open ( 'Driver={MySQL ODBC 5.2w Driver};Server=localhost;Port=3306;Option=3;Database=pacjenci;Uid=root;Pwd=system;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from dane",oCon,3,3 )
public nRS
nRS := TOLEAUTO():NEW( "ADODB.Recordset" )
nRS:CursorType := 1
nRS:ActiveConnection := oCon
nRS:open ( "Select * from naglowek",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc EdycjaRekordow
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 688 ;
HEIGHT 471 ;
ICON "PWCTICON" ;
TITLE "Edycja rekordów w bazie " ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 91 ,6 TEXTBOX edycja_imie;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 91 ,222 TEXTBOX edycja_nazwisko;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 159 ,6 TEXTBOX edycja_pesel;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 219,6 RICHEDITBOX edycja_adres;
WIDTH 200 ;
HEIGHT 200 ;
FONTCOLOR {0,0,0}
@ 219,222 RICHEDITBOX edycja_opis;
WIDTH 200 ;
HEIGHT 200 ;
FONTCOLOR {0,0,0}
@ 98 ,556 BUTTONEX edycja_zapisz;
CAPTION "Zapisz";
ON CLICK AdminRekordZapisz()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 98 ,441 BUTTONEX edycja_usun;
CAPTION "Usuñ";
ON CLICK AdminRekordUsun()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 14 ,441 BUTTONEX edycja_poprzedni;
CAPTION "Poprzedni";
ON CLICK AdminRekordPoprzedni()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 14 ,556 BUTTONEX edycja_nastepny;
CAPTION "Nastepny";
ON CLICK AdminRekordNastepny()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 32 ,222 BUTTONEX edycja_szukaj;
CAPTION "Szukaj";
ON CLICK AdminRekordSzukaj()  ;
WIDTH 102 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 68 ,6 LABEL lbl9 ;
VALUE "Imie:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 68 ,222 LABEL lbl10 ;
VALUE "Nazwisko:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 134 ,6 LABEL lbl11 ;
VALUE "Pesel:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 194 ,6 LABEL lbl12 ;
VALUE "Adres:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 194 ,222 LABEL lbl13 ;
VALUE "Opis:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 32 ,6 TEXTBOX edycja_szukaj_textbox;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,6 LABEL lbl14 ;
VALUE "Szukaj:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 56 ,441 BUTTONEX edycja_poczatek;
CAPTION "Pierwszy";
ON CLICK AdminRekordPierwszy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 56 ,556 BUTTONEX edycja_koniec;
CAPTION "Ostatni";
ON CLICK AdminRekordOstatni()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 387 ,554 BUTTONEX edycja_koniec_admin;
CAPTION "Zakoñcz";
ON CLICK AdminRekordyZakoncz()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 159 ,222 TEXTBOX edycja_lp;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 134 ,222 LABEL lbl15 ;
VALUE "lp:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 140 ,556 BUTTONEX edycja_anuluj;
CAPTION "Nie zapisuj";
ON CLICK AdminRekordAnuluj()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 140 ,441 BUTTONEX edycja_edytuj;
CAPTION "Modyfikuj";
ON CLICK AdminRekordEdytuj()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO mode WITH 2
oRS:MOVELAST()
DO showrec
ACTIVATE WINDOW win3
EndIF

Return Nil
procedure AdminRekordyZakoncz()
win3.Release ( )
return
procedure AdminRekordZapisz()
DO mode WITH 2
oImie := win3.edycja_imie.Value
oNazwisko := win3.edycja_nazwisko.Value
oPesel := win3.edycja_pesel.Value
oAdres := win3.edycja_adres.Value
oOpis := win3.edycja_opis.Value
oRS:fields:item(alltrim("imie")):value := oImie
oRS:fields:item(alltrim("nazwisko")):value := oNazwisko
oRS:fields:item(alltrim("Pesel")):value := oPesel
oRS:fields:item(alltrim("adres")):value := oAdres
oRS:fields:item(alltrim("opis")):value := oOpis
oRS:UPDATE()
return
procedure AdminRekordUsun()
MyOut := MSGOKCANCEL("Czy na pewno chcesz usun¹æ ten rekord ?","PotwierdŸ usuniêcie!")
IF myout = true
mymax := oRS:RecordCount
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybegin := oRS:BOF()
IF mybegin
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrec
ENDIF
DO showrec
ENDIF
return
procedure AdminRekordPoprzedni()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybegin := oRS:BOF()
IF mybegin
oRS:MOVENEXT()
MyOut := MSGBOX("Nie ma poprzedniego rekordu, to jest pierwszy !","Komunikat")
ELSE
DO showrec
ENDIF
ENDIF
return
procedure AdminRekordNastepny()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Nie ma nastêpnych danych w bazie! To ostatni wpis.","Komunikat")
ELSE
DO showrec
ENDIF
ENDIF
return
procedure AdminRekordSzukaj()
nrlp := win3.edycja_szukaj_textbox.Value
nrlp = STR ( nrlp )
oRS:Find(" lp = '"+nrlp+"' ")
DO showrec
return
procedure AdminRekordPierwszy()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
return
procedure AdminRekordOstatni()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
return
Proc AdminRekordAnuluj
DO mode WITH 2
DO showrec
Return Nil
Proc AdminRekordEdytuj
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ENDIF
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
oLp := oRS:fields:item(alltrim("lp")):value
oLp = STR ( oLp )
oImie := oRS:fields:item(alltrim("imie")):value
oNazwisko := oRS:fields:item(alltrim("Nazwisko")):value
oPesel := oRS:fields:item(alltrim("Pesel")):value
oAdres := oRS:fields:item(alltrim("adres")):value
oOpis := oRS:fields:item(alltrim("opis")):value
oData := oRS:fields:item(alltrim("data")):value
ELSE
oLp := ""
oImie := ""
oNazwisko := ""
oPesel := ""
oAdres := ""
oOpis := ""
oData := ""
ENDIF
win3.edycja_imie.Value := oImie
win3.edycja_nazwisko.Value := oNazwisko
win3.edycja_pesel.Value := oPesel
win3.edycja_lp.Value := oLp
win3.edycja_adres.Value := oAdres
win3.edycja_opis.Value := oOpis
Return Nil
Proc mode( p1 )
IF p1 = 1
win3.edycja_nastepny.Enabled := false
win3.edycja_poprzedni.Enabled := false
win3.edycja_poczatek.Enabled := false
win3.edycja_koniec.Enabled := false
win3.edycja_anuluj.Enabled := true
win3.edycja_zapisz.Enabled := true
win3.edycja_usun.Enabled := false
win3.edycja_szukaj.Enabled := false
win3.edycja_koniec_admin.Enabled := false
win3.edycja_imie.ReadOnly := false
win3.edycja_nazwisko.ReadOnly := false
win3.edycja_pesel.ReadOnly := false
win3.edycja_adres.ReadOnly := false
win3.edycja_opis.ReadOnly := false
win3.edycja_lp.ReadOnly := true
win3.edycja_imie.BackColor := {255,255,255}
win3.edycja_nazwisko.BackColor := {255,255,255}
win3.edycja_pesel.BackColor := {255,255,255}
win3.edycja_lp.BackColor := {236,233,216}
win3.edycja_adres.BackColor := {255,255,255}
win3.edycja_adres.BackColor := {255,255,255}
ENDIF
IF p1 = 2
win3.edycja_nastepny.Enabled := true
win3.edycja_poprzedni.Enabled := true
win3.edycja_poczatek.Enabled := true
win3.edycja_koniec.Enabled := true
win3.edycja_anuluj.Enabled := false
win3.edycja_zapisz.Enabled := false
win3.edycja_usun.Enabled := true
win3.edycja_szukaj.Enabled := true
win3.edycja_koniec_admin.Enabled := true
win3.edycja_imie.ReadOnly := true
win3.edycja_nazwisko.ReadOnly := true
win3.edycja_pesel.ReadOnly := true
win3.edycja_adres.ReadOnly := true
win3.edycja_opis.ReadOnly := true
win3.edycja_lp.ReadOnly := true
win3.edycja_imie.BackColor := {236,233,216}
win3.edycja_nazwisko.BackColor := {236,233,216}
win3.edycja_pesel.BackColor := {236,233,216}
win3.edycja_lp.BackColor := {236,233,216}
win3.edycja_adres.BackColor := {236,233,216}
win3.edycja_opis.BackColor := {236,233,216}
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_PACJENCI
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Program do obs³ugi pacjentów'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action ShowRecords",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Raporty by wasyl@o2.pl'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'lp','Imie','Nazwisko','Pesel','Adres','Opis','Data'}",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",22,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_odswiez ) , Caption : 'Wyœwietl wszystkie'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowRecords",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_imie  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_nazwisko  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_pesel  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_imie ) , Caption : 'Imie:'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_nazwisko ) , Caption : 'Nazwisko:'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",70,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_pesel ) , Caption : 'Pesel:'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_adres ) , Caption : 'Adres:'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_opis ) , Caption : 'Opis:'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New DatePicker ( datepicker1 )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",113,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_dodaj ) , Caption : 'Dodaj'",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddRecords",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_zapisz ) , Caption : 'Zapisz wszystkie'",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZapiszPlik",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( label_lista_pacjentow ) , Caption : 'Lista pacjentów za miesi¹c:'",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",135,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_miesiac  )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",144,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '-'",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",153,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbox_rok  )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",161,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_wyswietl_miesiac ) , Caption : 'Wyœwietl'",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action WyswietlMiesiac",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",171,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Data:'",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",177,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( button_drukuj_miesiac ) , Caption : 'Zapisz'",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZapiszPlikMiesiac",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",186,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Zamknij'",190,191)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",193,197)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Administracja'",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Edycja nag³ówka' )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Edycja bazy' )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'O autorze' )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",207,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MyClose",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords ( Event : CLICK )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","cLp = ADODB RecordSet (oRS) Get Field ('lp') Value",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","cLp = CONVERT cLp TO STRING",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = ADODB RecordSet (oRS) Get Field ('Imie') Value",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = ADODB RecordSet (oRS) Get Field ('Nazwisko') Value",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = ADODB RecordSet (oRS) Get Field ('Pesel') Value",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","cAdres = ADODB RecordSet (oRS) Get Field ('Adres') Value",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","cOpis = ADODB RecordSet (oRS) Get Field ('Opis') Value",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","cData = ADODB RecordSet (oRS) Get Field ('Data') Value",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format GERMAN",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","cData = CONVERT Date cData TO String",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cLp,cImie,cNazwisko,cPesel,cAdres,cOpis,cData} )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do wyœwietlenia' Title 'Brak danych' Type: Message Box",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure WypelnijDate",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddRecords ( Event : CLICK )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = win1.textbox_imie.Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = win1.textbox_nazwisko.Value",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = win1.textbox_pesel.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","cAdres = win1.textbox_adres.Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","cOpis = win1.textbox_opis.Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","cNow = win1.datepicker1.Value",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(cImie).or. empty(cNazwisko) )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Rubryki Imie i Nazwisko nie mog¹ byæ puste' Title 'B³¹d!' Type: Message Box",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('imie') Value To (cImie)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('nazwisko') Value To (cNazwisko)",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('pesel') Value To (cPesel)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Adres') Value To (cAdres)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Opis') Value To (cOpis)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Data') Value To (cNow)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Dodano do bazy pomyœlnie' Title 'OK' Type: Message Box",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure WyczyscFormularze",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZapiszPlik ( Event : CLICK )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",263,267)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = '<HTML><HEAD><META HTTP-EQUIV='Content-Type' CONTENT='text/html;charset=windows-1250''",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = Dowydruku+'<meta name=ProgId content=Word.Document><meta name=Generator content='Microso",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'<style>@page Section1 {size:595.45pt 841.7pt; margin:1.0in 1.25in 1.0in'",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'div.Section1 {page:Section1;}'",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'@page Section2 {size:841.7pt 595.45pt;mso-page-orientation:landscape;margin:1",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'div.Section2 {page:Section2;}</style></head><div class=Section2>'",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<H1>Raport kompleksowy</H1>'",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'<table style='text-align: left; width: 100%;' border='1'>'",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = ADODB RecordSet (oRS) Get Field ('Imie') Value",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = ADODB RecordSet (oRS) Get Field ('Nazwisko') Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = ADODB RecordSet (oRS) Get Field ('Pesel') Value",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","cAdres = ADODB RecordSet (oRS) Get Field ('Adres') Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","cOpis = ADODB RecordSet (oRS) Get Field ('Opis') Value",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<tr><td>' + cImie +'</td>'",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cNazwisko + '</td>'",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cPesel + '</td>'",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cAdres + '</td>'",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cOpis + '</td></tr>'",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '</table></div></body>'",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","write String DoWydruku to File PutFile",294,296)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do zapisania' Title 'Brak danych' Type: Message Box",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure WypelnijDate",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format GERMAN",302,303)
SS_ESASTEP("Circuits\Main\Main\Main","cDzisiaj = System Date of today",304,305)
SS_ESASTEP("Circuits\Main\Main\Main","sDzisiaj = CONVERT Date cDzisiaj TO String",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = Sub String of sDzisiaj From 4 Count 2",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = CONVERT sMiesiac TO Numeric",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = sMiesiac - 1",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = CONVERT sMiesiac TO STRING",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = Sub String ' ' FROM sMiesiac TRANSFORM TO ''",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","sRok = Sub String of sDzisiaj From 7 Count 4",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_miesiac.Value := sMiesiac",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_rok.Value := sRok",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure WyczyscFormularze",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","nic = ''",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","nic = All Trim nic",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_imie.Value := nic",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_nazwisko.Value := nic",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_pesel.Value := nic",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_adres.Value := nic",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbox_opis.Value := nic",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure WyswietlMiesiac ( Event : CLICK )",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = win1.textbox_miesiac.Value",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","sRok = win1.textbox_rok.Value",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","sRokLength = Get Length of String/Variable/Array sRok",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(sMiesiac) )",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Musisz podaæ miesi¹c za jaki chcesz raport!' Title ' ' Type: Message Box",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( empty(sRok) )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Musisz podaæ rok za jaki chcesz raport!' Title ' ' Type: Message Box",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","oRS_miesiac = Create New ADODB RecordSet Object",334,335)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS_miesiac , Connection oCon , CursorType 1 , SQL Statement 'SELECT * FROM dane WHER",336,338)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS_miesiac) , Get Records Count",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS_miesiac - Goto First Record",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = ADODB RecordSet (oRS_miesiac) Get Field ('Imie') Value",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = ADODB RecordSet (oRS_miesiac) Get Field ('Nazwisko') Value",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = ADODB RecordSet (oRS_miesiac) Get Field ('Pesel') Value",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","cAdres = ADODB RecordSet (oRS_miesiac) Get Field ('Adres') Value",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","cOpis = ADODB RecordSet (oRS_miesiac) Get Field ('Opis') Value",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","cData = ADODB RecordSet (oRS_miesiac) Get Field ('Data') Value",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format GERMAN",350,351)
SS_ESASTEP("Circuits\Main\Main\Main","cData = CONVERT Date cData TO String",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cImie,cNazwisko,cPesel,cAdres,cOpis,cData} )",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS_miesiac - Goto Next Record",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do wyœwietlenia. SprawdŸ czy dobrze wpisa³eœ miesi¹c i rok !' Title 'Brak danych' Type: Message Box",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZapiszPlikMiesiac",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","sMiesiac = win1.textbox_miesiac.Value",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","sRok = win1.textbox_rok.Value",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(sMiesiac) )",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Musisz podaæ miesi¹c za jaki chcesz raport!' Title 'B³¹d!' Type: Message Box",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( empty(sRok) )",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Musisz podaæ rok za jaki chcesz raport!' Title 'B³¹d!' Type: Message Box",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","oRS_miesiac = Create New ADODB RecordSet Object",369,370)
SS_ESASTEP("Circuits\Main\Main\Main","oRS_naglowek = Create New ADODB RecordSet Object",371,372)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS_miesiac , Connection oCon , CursorType 1 , SQL Statement 'SELECT * FROM dane WHER",373,375)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS_naglowek , Connection oCon , CursorType 1 , SQL Statement 'Select * from naglowek'",376,378)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",379,383)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File PutFile",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS_miesiac) , Get Records Count",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS_miesiac - Goto First Record",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = '<HTML><HEAD><META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=windows-1250''",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = Dowydruku+'<meta name=ProgId content=Word.Document><meta name=Generator content='Microso",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'<style>@page Section1 {size:595.45pt 841.7pt; margin:1.0in 1.25in 1.0in'",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'div.Section1 {page:Section1;}'",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'@page Section2 {size:841.7pt 595.45pt;mso-page-orientation:landscape;margin:1.25in 1.0in 1.25in 1.0in;mso-header-margin:.5in;mso-footer-margin:.5in;mso-paper-source:0;}'",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'div.Section2 {page:Section2;}</style></head><div class=Section2>'",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet nRS - Goto First Record",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","tNaglowek = ADODB RecordSet (nRS) Get Field ('tekst_naglowek') Value",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+tNaglowek",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<H1>Raport za okres:' + sMiesiac + '-' + sRok + 'r.</H1>'",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku+'<table style='text-align: left; width: 100%;' border='1'><tr><td>Imie</td><td>Nazwisko</td><td>Pesel</td><td>Adres</td><td>Opis</td><td>Data</td></tr>'",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","cImie = ADODB RecordSet (oRS_miesiac) Get Field ('Imie') Value",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","cNazwisko = ADODB RecordSet (oRS_miesiac) Get Field ('Nazwisko') Value",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","cPesel = ADODB RecordSet (oRS_miesiac) Get Field ('Pesel') Value",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","cAdres = ADODB RecordSet (oRS_miesiac) Get Field ('Adres') Value",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","cOpis = ADODB RecordSet (oRS_miesiac) Get Field ('Opis') Value",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","cData = ADODB RecordSet (oRS_miesiac) Get Field ('Data') Value",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format GERMAN",406,407)
SS_ESASTEP("Circuits\Main\Main\Main","sData = CONVERT Date cData TO String",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<tr><td>' + cImie +'</td>'",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cNazwisko + '</td>'",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cPesel + '</td>'",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cAdres + '</td>'",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + cOpis + '</td>'",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '<td>' + sData + '</td></tr>'",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS_miesiac - Goto Next Record",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = DoWydruku + '</table></div></body>'",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","DoWydruku = Sub String '\n\r' FROM DoWydruku TRANSFORM TO '<br>'",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","write String DoWydruku to File PutFile",419,421)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do zapisania' Title 'Brak danych' Type: Message Box",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminWindow ( Event : CLICK )",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Edycja nag³ówka'",428,432)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",433,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",439,441)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( admin_odswiez_button ) , Caption : 'Odœwie¿'",442,443)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PokazNaglowek",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",445,447)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( admin_zapisz_button ) , Caption : 'Zapisz'",448,449)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZapiszNaglowek",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",451,453)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( admin_button_zamknij ) , Caption : 'Zamknij'",454,455)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZamknijAdmin",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",457,459)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",460,461)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",462,464)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZamknijAdmin",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PokazNaglowek ( Event : CLICK )",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","n_Max := ADODB RecordSet (nRS) , Get Records Count",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( n_Max >= 1 )",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet nRS - Goto First Record",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","cNaglowek = ADODB RecordSet (nRS) Get Field ('tekst_naglowek') Value",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","cNaglowek = Sub String '<br>' FROM cNaglowek TRANSFORM TO CHR(13)+CHR(10)",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","win2.textbox_naglowek.Value := cNaglowek",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Niestety brak danych do wyœwietlenia' Title 'Brak danych' Type: Message Box",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZapiszNaglowek ( Event : CLICK )",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","NewNaglowek = win2.textbox_naglowek.Value",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","NewNaglowek = Sub String CHR(13)+CHR(10)+'<br>' FROM NewNaglowek TRANSFORM TO '<br>'",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","NewNaglowek = Sub String CHR(13)+CHR(10) FROM NewNaglowek TRANSFORM TO '<br>'",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet nRS - Goto First Record",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (nRS) Set Field ('tekst_naglowek') Value To (NewNaglowek)",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet nRS - Update Record",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",489,490)
SS_ESASTEP("Circuits\Main\Main\Main","oCon.CursorLocation = 3",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={MySQL ODBC 5.2w Driver};Server=localhost;Port=3306;Option=3;Database=pacjenci;Uid=root;Pwd=system;'",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",493,494)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from dane'",495,497)
SS_ESASTEP("Circuits\Main\Main\Main","nRS = Create New ADODB RecordSet Object",498,499)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset nRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from naglowek'",500,502)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure EdycjaRekordow",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Edycja rekordów w bazie '",509,513)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",514,518)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( edycja_imie  )",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",520,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( edycja_nazwisko  )",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",527,532)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( edycja_pesel  )",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",534,539)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",541,543)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RichEditBox",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",545,547)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_zapisz ) , Caption : 'Zapisz'",548,549)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordZapisz()",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",551,553)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_usun ) , Caption : 'Usuñ'",554,555)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordUsun()",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",557,559)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_poprzedni ) , Caption : 'Poprzedni'",560,561)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordPoprzedni()",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",563,565)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_nastepny ) , Caption : 'Nastepny'",566,567)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordNastepny()",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",569,571)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_szukaj ) , Caption : 'Szukaj'",572,573)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordSzukaj",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",575,577)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Imie:'",578,579)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",580,584)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Nazwisko:'",585,586)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",587,591)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Pesel:'",592,593)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",594,598)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Adres:'",599,600)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",601,605)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Opis:'",606,607)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",608,612)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( edycja_szukaj_textbox  )",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",614,619)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : 'Szukaj:'",620,621)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",622,626)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_poczatek ) , Caption : 'Pierwszy'",627,628)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordPierwszy()",629,629)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",630,632)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_koniec ) , Caption : 'Ostatni'",633,634)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordOstatni()",635,635)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",636,638)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_koniec_admin ) , Caption : 'Zakoñcz'",639,640)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordyZakoncz",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",642,644)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( edycja_lp  )",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",646,651)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'lp:'",652,653)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",654,658)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_anuluj ) , Caption : 'Nie zapisuj'",659,660)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordAnuluj()",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",662,664)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( edycja_edytuj ) , Caption : 'Modyfikuj'",665,666)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AdminRekordEdytuj()",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",668,670)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",671,672)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",676,678)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordyZakoncz ( Event : CLICK )",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Release ( )",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordZapisz ( Event : CLICK )",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",684,684)
SS_ESASTEP("Circuits\Main\Main\Main","oImie = win3.edycja_imie.Value",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","oNazwisko = win3.edycja_nazwisko.Value",686,686)
SS_ESASTEP("Circuits\Main\Main\Main","oPesel = win3.edycja_pesel.Value",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","oAdres = win3.edycja_adres.Value",688,688)
SS_ESASTEP("Circuits\Main\Main\Main","oOpis = win3.edycja_opis.Value",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('imie') Value To (oImie)",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('nazwisko') Value To (oNazwisko)",691,691)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Pesel') Value To (oPesel)",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('adres') Value To (oAdres)",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('opis') Value To (oOpis)",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",695,695)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",696,696)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordUsun ( Event : CLICK )",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Czy na pewno chcesz usun¹æ ten rekord ?' Title 'PotwierdŸ usuniêcie!' Type: Message Ok/Cancel",698,698)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",700,700)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",701,701)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",702,702)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","mybegin = ADODB RecordSet oRS , Check BOF",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybegin )",708,708)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",709,709)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",710,710)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",711,711)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",712,712)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",713,713)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",714,714)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",715,715)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",716,716)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordPoprzedni ( Event : CLICK )",717,717)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",718,718)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",719,719)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",720,720)
SS_ESASTEP("Circuits\Main\Main\Main","mybegin = ADODB RecordSet oRS , Check BOF",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybegin )",722,722)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",723,723)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Nie ma poprzedniego rekordu, to jest pierwszy !' Title 'Komunikat' Type: Message Box",724,724)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",725,725)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",726,726)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",727,727)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",728,728)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",729,729)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordNastepny ( Event : CLICK )",730,730)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",732,732)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",733,733)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",734,734)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",736,736)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Nie ma nastêpnych danych w bazie! To ostatni wpis.' Title 'Komunikat' Type: Message Box",737,737)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",738,738)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",739,739)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",740,740)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordSzukaj ( Event : CLICK )",743,743)
SS_ESASTEP("Circuits\Main\Main\Main","nrlp = win3.edycja_szukaj_textbox.Value",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","nrlp = CONVERT nrlp TO STRING",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Find , Cirteria ' lp = ''+nrlp+'' '",746,746)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",747,747)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordPierwszy ( Event : CLICK )",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",750,750)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordOstatni ( Event : CLICK )",756,756)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",759,759)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",760,760)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",761,761)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",762,762)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordAnuluj",763,763)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",764,764)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",765,765)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",766,766)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AdminRekordEdytuj",767,767)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",768,768)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",769,769)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",770,770)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",771,771)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",772,772)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",773,773)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",774,774)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",775,775)
SS_ESASTEP("Circuits\Main\Main\Main","oLp = ADODB RecordSet (oRS) Get Field ('lp') Value",776,776)
SS_ESASTEP("Circuits\Main\Main\Main","oLp = CONVERT oLp TO STRING",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","oImie = ADODB RecordSet (oRS) Get Field ('imie') Value",778,778)
SS_ESASTEP("Circuits\Main\Main\Main","oNazwisko = ADODB RecordSet (oRS) Get Field ('Nazwisko') Value",779,779)
SS_ESASTEP("Circuits\Main\Main\Main","oPesel = ADODB RecordSet (oRS) Get Field ('Pesel') Value",780,780)
SS_ESASTEP("Circuits\Main\Main\Main","oAdres = ADODB RecordSet (oRS) Get Field ('adres') Value",781,781)
SS_ESASTEP("Circuits\Main\Main\Main","oOpis = ADODB RecordSet (oRS) Get Field ('opis') Value",782,782)
SS_ESASTEP("Circuits\Main\Main\Main","oData = ADODB RecordSet (oRS) Get Field ('data') Value",783,783)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","oLp = ''",785,785)
SS_ESASTEP("Circuits\Main\Main\Main","oImie = ''",786,786)
SS_ESASTEP("Circuits\Main\Main\Main","oNazwisko = ''",787,787)
SS_ESASTEP("Circuits\Main\Main\Main","oPesel = ''",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","oAdres = ''",789,789)
SS_ESASTEP("Circuits\Main\Main\Main","oOpis = ''",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","oData = ''",791,791)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_imie.Value := oImie",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nazwisko.Value := oNazwisko",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_pesel.Value := oPesel",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_lp.Value := oLp",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.Value := oAdres",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_opis.Value := oOpis",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nastepny.Enabled := false",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_poprzedni.Enabled := false",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_poczatek.Enabled := false",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_koniec.Enabled := false",805,805)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_anuluj.Enabled := true",806,806)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_zapisz.Enabled := true",807,807)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_usun.Enabled := false",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_szukaj.Enabled := false",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_koniec_admin.Enabled := false",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_imie.ReadOnly := false",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nazwisko.ReadOnly := false",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_pesel.ReadOnly := false",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.ReadOnly := false",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_opis.ReadOnly := false",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_lp.ReadOnly := true",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_imie.BackColor := {255,255,255}",817,817)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nazwisko.BackColor := {255,255,255}",818,818)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_pesel.BackColor := {255,255,255}",819,819)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_lp.BackColor := {236,233,216}",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.BackColor := {255,255,255}",821,821)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.BackColor := {255,255,255}",822,822)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",823,823)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nastepny.Enabled := true",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_poprzedni.Enabled := true",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_poczatek.Enabled := true",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_koniec.Enabled := true",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_anuluj.Enabled := false",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_zapisz.Enabled := false",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_usun.Enabled := true",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_szukaj.Enabled := true",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_koniec_admin.Enabled := true",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_imie.ReadOnly := true",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nazwisko.ReadOnly := true",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_pesel.ReadOnly := true",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.ReadOnly := true",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_opis.ReadOnly := true",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_lp.ReadOnly := true",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_imie.BackColor := {236,233,216}",840,840)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_nazwisko.BackColor := {236,233,216}",841,841)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_pesel.BackColor := {236,233,216}",842,842)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_lp.BackColor := {236,233,216}",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_adres.BackColor := {236,233,216}",844,844)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edycja_opis.BackColor := {236,233,216}",845,845)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",847,847)
Return
*-------------------------------------------------------------------*
