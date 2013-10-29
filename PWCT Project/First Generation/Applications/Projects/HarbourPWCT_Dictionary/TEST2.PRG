*---------------------------------------------------------------------------*
* Time : 22:45:17    Date : 10/26/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.09.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_TEST2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_18smart1() code
DictionaryOBJ = Dictionary()
Ibr = DictionaryOBJ:WelcomeWin()
Class Dictionary
Data oCon init 0
Data oRS init 0
Data cW init ""
Data cM init ""
Data nMax init 0
Method WelcomeWin
Method InsertWords
Method Connect
Method ShowRecords
Method ShowDictionary
Method ShowWordsInGrid
Method CloseWind3
Method SearchInDictionary
Method DisConnect
Method ClearTextBoxsInWin2
Method AddWords
Method BackToHomePageFromWin2
Method Sentense
Method AddSentences
Method BackToHomePageFromWin4
Method CheckData
Method Connect2
Method SearchByMeaning
Method Pronouns
Method ShowSentences
Method PShowSentences
Method Closedwin6
Method PrintTexts
Method ClosedPrintTexts
Method ClosedDictionary
EndClass
Method WelcomeWin Class Dictionary
Ibr = Self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 100 ,300 ;
WIDTH 838 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " Welcome To  Dictionary " ;
MAIN ;
BACKCOLOR {125,116,245} 
@ 11 ,184 LABEL lbl1 ;
VALUE " Welcome To Dictionary English-Arabic " ;
WIDTH 460 ;
HEIGHT 58 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 110 ,148 BUTTONEX btn1;
CAPTION " Insert Words ÅÖÇÝÉ ßáãÇÊ ";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Self:InsertWords()  ;
WIDTH 299 HEIGHT 40 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 111 ,462 BUTTONEX btn2;
CAPTION " Dictionary ÇáÞÇãæÓ";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Self:ShowDictionary()  ;
WIDTH 218 HEIGHT 41 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 157 ,147 BUTTONEX btn4;
CAPTION " Sentences  ÇáÌãá ";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Self:Sentense()  ;
WIDTH 302 HEIGHT 36 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 274 ,127 BUTTONEX btn5;
CAPTION " Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {192,192,192};
ON CLICK Self:ClosedDictionary()  ;
WIDTH 101 HEIGHT 42 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 157 ,460 BUTTONEX btn16;
CAPTION "Pronouns ÇáÖãÇÆÑ ";
BACKCOLOR {192,192,192};
ON CLICK Self:Pronouns()  ;
WIDTH 221 HEIGHT 35 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 43 ,221 LABEL lbl13 ;
VALUE " ãÑÍÈÇð Èß Åáì ÇáÞÇãæÓ ÇáÅäÌáíÒí ÇáÚÑÈí " ;
WIDTH 396 ;
HEIGHT 36 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
Return 0
Method InsertWords Class Dictionary
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 100 ,300 ;
WIDTH 721 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " Insert Words" ;
CHILD ;
BACKCOLOR {125,116,245} 
@ 22 ,102 LABEL lbl2 ;
VALUE " You Can Insert New Words Frome Here " ;
WIDTH 452 ;
HEIGHT 49 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 105 ,101 LABEL lbl3 ;
VALUE " Word ÇáßáãÉ " ;
WIDTH 134 ;
HEIGHT 36 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 106 ,356 LABEL lbl4 ;
VALUE " Meaning ÇáãÚäì " ;
WIDTH 167 ;
HEIGHT 36 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 140 ,59 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 
@ 147 ,337 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 
@ 237 ,70 BUTTONEX btn6;
CAPTION "Home ÇáÑÆíÓíÉ ";
BACKCOLOR {128,128,128};
ON CLICK Self:BackToHomePageFromWin2()  ;
WIDTH 157 HEIGHT 41 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 237 ,240 BUTTONEX btn7;
CAPTION " Save ÍÝÙ ";
BACKCOLOR {128,128,128};
ON CLICK Self:AddWords()  ;
WIDTH 130 HEIGHT 41 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 237 ,383 BUTTONEX btn8;
CAPTION "Clear ÊÝÑíÛ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,128,128};
ON CLICK Self:ClearTextBoxsInWin2()  ;
WIDTH 145 HEIGHT 41 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 51 ,152 LABEL lbl14 ;
VALUE " ÊÓÊØíÚ ãä åäÇ ÅÖÇÝÉ ßáãÇÊ ÌÏíÏÉ " ;
WIDTH 360 ;
HEIGHT 31 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
END WINDOW
ACTIVATE WINDOW win2
EndIF
Return 0
Method Connect Class Dictionary
Self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
Self:oCon:open ( "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Dictionary.mdb;" )
Self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Words",Self:oCon,3,3 )
Return 0
Method ShowRecords Class Dictionary
nMax := Self:oRS:RecordCount
MyOut := MSGBOX(nMax,"Test ")
Return 0
Method ShowDictionary Class Dictionary
Ibr = Self:Connect()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 100 ,300 ;
WIDTH 838 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE " Dictionary  " ;
CHILD ;
BACKCOLOR {125,116,245} 
@ 8 ,383 GRID Grid1;
WIDTH 423 ;
HEIGHT 373 ;
HEADERS {"Words","Meaning"};
WIDTHS {180,250} ;
FONT "Times New Roman" SIZE 25 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {255,0,0}
@ 266 ,12 BUTTONEX btn12;
CAPTION "Close ÅÛáÇÞ";
ON CLICK Self:CloseWind3()  ;
WIDTH 126 HEIGHT 44 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 103 ,12 TEXTBOX textSearch;
ON CHANGE Self:SearchInDictionary()  ;
HEIGHT 36 ;
WIDTH 203 ;
FONT "Times New Roman" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 
@ 72 ,15 LABEL lbl9 ;
VALUE "ÇáÈÍË ÈÇáßáãÉ " ;
WIDTH 148 ;
HEIGHT 31 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
FONTCOLOR {255,0,0}
@ 173 ,6 LABEL lbl10 ;
VALUE "ÇáÈÍË ÈÇáãÚäì " ;
WIDTH 145 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
FONTCOLOR {255,0,0}
@ 37 ,8 LABEL lbl11 ;
VALUE "Search By Word " ;
WIDTH 181 ;
HEIGHT 37 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
FONTCOLOR {255,0,0}
@ 144 ,0 LABEL lbl12 ;
VALUE "Search By Meaning " ;
WIDTH 230 ;
HEIGHT 34 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
FONTCOLOR {255,0,0}
@ 206 ,6 TEXTBOX textSearMeaning;
ON CHANGE Self:SearchByMeaning()  ;
HEIGHT 38 ;
WIDTH 204 ;
FONT "Times New Roman" SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0} 
END WINDOW
myout = Self:ShowWordsInGrid()
ACTIVATE WINDOW win3
EndIF
Return 0
Method ShowWordsInGrid Class Dictionary
nMax := Self:oRS:RecordCount
IF nMax > 0
Self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cW := Self:oRS:fields:item(alltrim("Word ")):value
cM := Self:oRS:fields:item(alltrim("Meaning")):value
win3.Grid1.AddItem ( {cW,cM} )
Self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method CloseWind3 Class Dictionary
win3.Release ( )
Return 0
Method SearchInDictionary Class Dictionary
cW := win3.textSearch.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Words where Word like '" + cW + "%'",Self:oCon,3,3 )
win3.Grid1.DeleteAllItems ( )
myout = Self:ShowWordsInGrid()
Return 0
Method DisConnect Class Dictionary
Self:oRS:Close()
Self:oCon:CLOSE()
Return 0
Method ClearTextBoxsInWin2 Class Dictionary
win2.text1.Value := " "
win2.text2.Value := " "
Return 0
Method AddWords Class Dictionary
cW := win2.text1.Value
cW = ALLTRIM ( cW )
nW  = LEN(cW)
cM := win2.text2.Value
cM = ALLTRIM ( cM )
nM  = LEN(cM)
IF nW < 1
Mes := ""
Mes := Mes + CHR(13) + CHR(10) + " Please Insert Word "
Mes := Mes + CHR(13) + CHR(10) + " ÇáÑÌÇÁ ÅÏÑÇÌ ÇáßáãÉ "
MyOut := MSGINFO(Mes," Information ãáÇÍÙÉ")
win2.text1.SetFocus ( )
Return nW
ENDIF
IF nM < 1
Mess := ""
Mess := Mess + CHR(13) + CHR(10) + " Please Insert Meaning"
Mess := Mess + CHR(13) + CHR(10) + " ÇáÑÌÇÁ ÅÏÑÇÌ ÇáãÚäì"
MyOut := MSGINFO(Mess," Information ãáÇÍÙÉ")
win2.text2.SetFocus ( )
Return nM
ENDIF
Ibr = Self:Connect()
Self:oRS:ADDNEW()
Self:cW := win2.text1.Value
Self:cM := win2.text2.Value
Self:oRS:fields:item(alltrim("Word ")):value := Self:cW
Self:oRS:fields:item(alltrim("Meaning ")):value := Self:cM
Self:oRS:UPDATE()
myout = Self:ClearTextBoxsInWin2()
WMess := ""
WMess := WMess + CHR(13) + CHR(10) + "Êã ÇáÚãáíÉ ÈäÌÇÍ "
WMess := WMess + CHR(13) + CHR(10) + " Operation Done successfully "
MyOut := MSGINFO(WMess,"Notification ÅÔÚÇÑ ")
Return 0
Method BackToHomePageFromWin2 Class Dictionary
win2.Release ( )
Return 0
Method Sentense Class Dictionary
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 100 ,300 ;
WIDTH 716 ;
HEIGHT 437 ;
ICON "PWCTICON" ;
TITLE " Insert Sentese  " ;
CHILD ;
BACKCOLOR {125,116,245} 
@ 15 ,184 LABEL lbl5 ;
VALUE " Welcome To Dictionary  " ;
WIDTH 278 ;
HEIGHT 47 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 42 ,31 LABEL lbl6 ;
VALUE " Here You Can Insert Sentences To Support Your Dictionary" ;
WIDTH 659 ;
HEIGHT 45 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 222 ,28 LABEL lbl7 ;
VALUE " Sentence :" ;
WIDTH 123 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {0,0,160}
@ 155 ,54 TEXTBOX text3;
HEIGHT 47 ;
WIDTH 156 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 
@ 337 ,121 BUTTONEX btn14;
CAPTION " Save ";
ON CLICK Self:AddSentences()  ;
WIDTH 103 HEIGHT 42 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 121 ,47 LABEL lbl8 ;
VALUE " Word : " ;
WIDTH 97 ;
HEIGHT 26 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {0,0,160}
@ 258 ,30 TEXTBOX text4;
HEIGHT 56 ;
WIDTH 624 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0} 
@ 339 ,239 BUTTONEX btn15;
CAPTION " Close ";
ON CLICK Self:BackToHomePageFromWin4()  ;
WIDTH 97 HEIGHT 42 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 341 ,350 BUTTONEX btn19;
CAPTION " Show Sentences ";
ON CLICK Self:ShowSentences()  ;
WIDTH 221 HEIGHT 38 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 74 ,120 LABEL lbl15 ;
VALUE " ãä åäÇ ÊÓÊØíÚ ÅÖÇÝÉ Ìãá áÊÏÚíã ÞÇãæÓß" ;
WIDTH 389 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 20  ;
BACKCOLOR {125,116,245} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
END WINDOW
ACTIVATE WINDOW win4
EndIF
Return 0
Method AddSentences Class Dictionary
mout = Self:Connect2()
mout = Self:CheckData()
Return 0
Method BackToHomePageFromWin4 Class Dictionary
win4.Release ( )
Return 0
Method CheckData Class Dictionary
cW := win4.text3.Value
cW = ALLTRIM ( cW )
nW  = LEN(cW)
cM := win4.text4.Value
cM = ALLTRIM ( cM )
nM  = LEN(cM)
IF nW < 1
Mes := ""
Mes := Mes + CHR(13) + CHR(10) + " Please Insert Word "
Mes := Mes + CHR(13) + CHR(10) + " ÇáÑÌÇÁ ÅÏÑÇÌ ÇáßáãÉ "
MyOut := MSGINFO(Mes," Information ãáÇÍÙÉ")
win4.text3.SetFocus ( )
Return nW
ENDIF
IF nM < 1
Mess := ""
Mess := Mess + CHR(13) + CHR(10) + " Please Insert Sentence"
Mess := Mess + CHR(13) + CHR(10) + " ÇáÑÌÇÁ ÅÏÑÇÌ ÇáÌãáÉ"
MyOut := MSGINFO(Mess," Information ãáÇÍÙÉ")
win4.text4.SetFocus ( )
Return nM
ENDIF
Self:oRS:ADDNEW()
Self:cW := win4.text3.Value
Self:cM := win4.text4.Value
Self:oRS:fields:item(alltrim("Word ")):value := Self:cW
Self:oRS:fields:item(alltrim("Sentence ")):value := Self:cM
Self:oRS:UPDATE()
win4.text3.Value := ""
win4.text4.Value := ""
Mess := ""
Mess := Mess + CHR(13) + CHR(10) + "Êã ÇáÚãáíÉ ÈäÌÇÍ "
Mess := Mess + CHR(13) + CHR(10) + " Operation Done successfully "
MyOut := MSGINFO(Mess,"Notification ÅÔÚÇÑ ")
Return 0
Method Connect2 Class Dictionary
Self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
Self:oCon:open ( "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Dictionary.mdb;" )
Self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Sentences",Self:oCon,3,3 )
Return 0
Method SearchByMeaning Class Dictionary
cM := win3.textSearMeaning.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Words where Meaning like '" + cM + "%'",Self:oCon,3,3 )
win3.Grid1.DeleteAllItems ( )
myout = Self:ShowWordsInGrid()
Return 0
Method ShowSentences Class Dictionary
Self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
Self:oCon:open ( "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Dictionary.mdb;" )
Self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Sentences",Self:oCon,3,3 )
if !iswindowdefined( win6 )
DEFINE WINDOW win6 ;
AT 100 ,300 ;
WIDTH 762 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " ShowSentences " ;
CHILD ;
BACKCOLOR {128,0,255} 
@ 307 ,78 BUTTONEX btn18;
CAPTION " Closed ";
ON CLICK Self:Closedwin6()  ;
WIDTH 112 HEIGHT 42 ;
FONT "Times New Roman" SIZE 20 ;
TOOLTIP ""
@ 5 ,76 GRID Grid3;
WIDTH 650 ;
HEIGHT 300 ;
HEADERS {"Word","Sentence"};
WIDTHS {150,800} ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {230,71,32}
END WINDOW
myout = Self:PShowSentences()
ACTIVATE WINDOW win6
EndIF
Return 0
Method PShowSentences Class Dictionary
win4.Release ( )
n := Self:oRS:RecordCount
IF n > 0
Self:oRS:MOVEFIRST()
FOR x = 1 TO n STEP 1
cW := Self:oRS:fields:item(alltrim("Word ")):value
cM := Self:oRS:fields:item(alltrim("Sentence")):value
win6.Grid3.AddItem ( {cW,cM} )
Self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method Closedwin6 Class Dictionary
win6.Release ( )
Return 0
Method Pronouns Class Dictionary
if !iswindowdefined( win5 )
DEFINE WINDOW win5 ;
AT 100 ,200 ;
WIDTH 1078 ;
HEIGHT 597 ;
ICON "PWCTICON" ;
TITLE "Pronouns " ;
CHILD ;
BACKCOLOR {125,116,245} 
@ 491 ,77 BUTTONEX btn17;
CAPTION "Close ÅÛáÇÞ ";
ON CLICK Self:ClosedPrintTexts()  ;
WIDTH 137 HEIGHT 36 ;
FONT "Times New Roman" SIZE 18 ;
TOOLTIP ""
@ 6 ,15 GRID Grid2;
ON CHANGE Self:PrintTexts()  ;
WIDTH 1000 ;
HEIGHT 300 ;
HEADERS {"Subject Pronouns","Object Pronouns","Possessive Adjectives","Possessive Pronouns" };
WIDTHS {250,250,250,250} ;
ITEMS {{"I","Me","My","Mine"},{"He","Him","His","His"},{"She","Her","Her","Hers"},{"It","It","Its","Its"},{"We","Us","Our","Ours"},{"They","Them","Their","Theirs"}} ;
FONT "Times New Roman" SIZE 20 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {"p"} ;
FONTCOLOR {230,71,32}
@ 318 ,14 LISTBOX list1;
WIDTH 1001 ;
HEIGHT 138 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {156,149,3} ;
FONTCOLOR {0,128,0}
END WINDOW
ACTIVATE WINDOW win5
EndIF
Return 0
Method PrintTexts Class Dictionary
nLD := win5.Grid2.Value
win5.list1.DeleteAllItems ( )
IF nLD = 1
Array := {}
AADD( Array , "  I can bring them some lunch")
AADD( Array , " That book belongs to me ")
AADD( Array , " My house is on the corner")
AADD( Array , "The house on the corner is mine")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
IF nLD = 2
Array := {}
AADD( Array , "He wants to borrow my book ")
AADD( Array , "I'm lending the book to him ")
AADD( Array , "His hair is longer than hers ")
AADD( Array , "Is his car really that fast")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
IF nLD =3
Array := {}
AADD( Array , "She Likes Ice Cream")
AADD( Array , "she will give him some of her food ")
AADD( Array , "Her timing couldn't have been less appropriate ")
AADD( Array , "His hair is longer than hers ")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
IF nLD =4
Array := {}
AADD( Array , "It is raining")
AADD( Array , "I like this film. I saw it last week")
AADD( Array , "It's been good to know you")
AADD( Array , "It's a bird! It's a plane")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
IF nLD =5
Array := {}
AADD( Array , "We talk to our neighbour ")
AADD( Array , "Nick came to us from main entrance ")
AADD( Array , "Our house is big ")
AADD( Array , "We shall finally have what is rightfully ours ")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
IF nLD = 6
Array := {}
AADD( Array , "They have three books ")
AADD( Array , "Will you go with Them ")
AADD( Array , "those Their books ")
AADD( Array , "These are your notebooks and those are theirs")
nMax  = LEN(Array)
FOR x = 1 TO nMax STEP 1
Le  = LEN(Array[x])
IF Le > 2
win5.list1.Additem ( Array[x] )
ENDIF
Next
ENDIF
Return 0
Method ClosedPrintTexts Class Dictionary
win5.Release ( )
Return 0
Method ClosedDictionary Class Dictionary
win1.Release ( )
Return 0

End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DictionaryOBJ of Class Dictionary",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Ibr = DictionaryOBJ.WelcomeWin()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Dictionary",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cW Init Value ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cM Init Value ''",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data nMax Init Value 0",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method WelcomeWin",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method InsertWords",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowDictionary",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWordsInGrid",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWind3",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method SearchInDictionary",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClearTextBoxsInWin2",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddWords",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method BackToHomePageFromWin2",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sentense",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddSentences",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method BackToHomePageFromWin4",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method CheckData",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect2",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method SearchByMeaning",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method Pronouns",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSentences",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method PShowSentences",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method Closedwin6",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method PrintTexts",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClosedPrintTexts",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method ClosedDictionary",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WelcomeWin Class Dictionary",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Ibr = Self.Connect()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Welcome To  Dictionary '",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Welcome To Dictionary English-Arabic '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Insert Words ÅÖÇÝÉ ßáãÇÊ '",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:InsertWords",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' Dictionary ÇáÞÇãæÓ'",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ShowDictionary",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' Sentences  ÇáÌãá '",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Sentense",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' Close '",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ClosedDictionary",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn16 ) , Caption : 'Pronouns ÇáÖãÇÆÑ '",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Pronouns",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : ' ãÑÍÈÇð Èß Åáì ÇáÞÇãæÓ ÇáÅäÌáíÒí ÇáÚÑÈí '",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method InsertWords Class Dictionary",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Insert Words'",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' You Can Insert New Words Frome Here '",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",121,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' Word ÇáßáãÉ '",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : ' Meaning ÇáãÚäì '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",137,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",144,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",151,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Home ÇáÑÆíÓíÉ '",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:BackToHomePageFromWin2",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",161,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : ' Save ÍÝÙ '",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddWords",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",168,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Clear ÊÝÑíÛ'",171,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ClearTextBoxsInWin2",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ' ÊÓÊØíÚ ãä åäÇ ÅÖÇÝÉ ßáãÇÊ ÌÏíÏÉ '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",181,186)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Dictionary",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Dictionary.mdb;'",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Words'",197,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class Dictionary",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nMax Title 'Test ' Type: Message Box",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowDictionary Class Dictionary",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Ibr = Self.Connect()",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : ' Dictionary  '",207,211)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",212,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Words','Meaning'}",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",218,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : 'Close ÅÛáÇÞ'",226,227)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CloseWind3",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",229,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:SearchInDictionary",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",234,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'ÇáÈÍË ÈÇáßáãÉ '",240,241)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",242,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'ÇáÈÍË ÈÇáãÚäì '",247,248)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",249,253)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Search By Word '",254,255)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",256,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Search By Meaning '",261,262)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",263,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearMeaning  )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:SearchByMeaning",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",270,275)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",276,277)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowWordsInGrid()",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",279,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWordsInGrid Class Dictionary",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","cW = ADODB RecordSet (Self:oRS) Get Field ('Word ') Value",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","cM = ADODB RecordSet (Self:oRS) Get Field ('Meaning') Value",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.AddItem ( {cW,cM} )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWind3 Class Dictionary",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Release ( )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SearchInDictionary Class Dictionary",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","cW = win3.textSearch.Value",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Words where Word like '' + cW + '%''",301,303)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.DeleteAllItems ( )",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowWordsInGrid()",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Dictionary",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClearTextBoxsInWin2 Class Dictionary",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text1.Value := ' '",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.Value := ' '",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddWords Class Dictionary",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","cW = win2.text1.Value",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","cW = All Trim cW",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","nW = Get Length of String/Variable/Array cW",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","cM = win2.text2.Value",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","cM = All Trim cM",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","nM = Get Length of String/Variable/Array cM",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nW < 1 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Mes = ''",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Please Insert Word ') to string (Mes)",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ÇáÑÌÇÁ ÅÏÑÇÌ ÇáßáãÉ ') to string (Mes)",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Mes Title ' Information ãáÇÍÙÉ' Type: Message Info",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text1.SetFocus ( )",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Return nW",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nM < 1 )",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Mess = ''",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Please Insert Meaning') to string (Mess)",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ÇáÑÌÇÁ ÅÏÑÇÌ ÇáãÚäì') to string (Mess)",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Mess Title ' Information ãáÇÍÙÉ' Type: Message Info",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text2.SetFocus ( )",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Return nM",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Ibr = Self.Connect()",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Add New Record",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cW = win2.text1.Value",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cM = win2.text2.Value",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('Word ') Value To (Self:cW)",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('Meaning ') Value To (Self:cM)",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ClearTextBoxsInWin2()",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","WMess = ''",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Êã ÇáÚãáíÉ ÈäÌÇÍ ') to string (WMess)",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Operation Done successfully ') to string (WMess)",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message WMess Title 'Notification ÅÔÚÇÑ ' Type: Message Info",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method BackToHomePageFromWin2 Class Dictionary",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sentense Class Dictionary",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : ' Insert Sentese  '",355,359)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",360,364)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : ' Welcome To Dictionary  '",365,366)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",367,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : ' Here You Can Insert Sentences To Support Your Dictionary'",373,374)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",375,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : ' Sentence :'",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",383,388)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",390,395)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn14 ) , Caption : ' Save '",396,397)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddSentences",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",399,401)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ' Word : '",402,403)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",404,409)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",411,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn15 ) , Caption : ' Close '",417,418)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:BackToHomePageFromWin4",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",420,422)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn19 ) , Caption : ' Show Sentences '",423,424)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ShowSentences",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",426,428)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : ' ãä åäÇ ÊÓÊØíÚ ÅÖÇÝÉ Ìãá áÊÏÚíã ÞÇãæÓß'",429,430)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",431,436)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",437,438)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",439,441)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddSentences Class Dictionary",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","mout = Self.Connect2()",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","mout = Self.CheckData()",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method BackToHomePageFromWin4 Class Dictionary",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Release ( )",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CheckData Class Dictionary",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","cW = win4.text3.Value",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","cW = All Trim cW",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","nW = Get Length of String/Variable/Array cW",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","cM = win4.text4.Value",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","cM = All Trim cM",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","nM = Get Length of String/Variable/Array cM",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nW < 1 )",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","Mes = ''",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Please Insert Word ') to string (Mes)",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ÇáÑÌÇÁ ÅÏÑÇÌ ÇáßáãÉ ') to string (Mes)",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Mes Title ' Information ãáÇÍÙÉ' Type: Message Info",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text3.SetFocus ( )",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Return nW",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nM < 1 )",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","Mess = ''",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Please Insert Sentence') to string (Mess)",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ÇáÑÌÇÁ ÅÏÑÇÌ ÇáÌãáÉ') to string (Mess)",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Mess Title ' Information ãáÇÍÙÉ' Type: Message Info",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text4.SetFocus ( )",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","Return nM",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Add New Record",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cW = win4.text3.Value",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","Self:cM = win4.text4.Value",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('Word ') Value To (Self:cW)",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (Self:oRS) Set Field ('Sentence ') Value To (Self:cM)",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Update Record",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text3.Value := ''",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","win4.text4.Value := ''",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","Mess = ''",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Êã ÇáÚãáíÉ ÈäÌÇÍ ') to string (Mess)",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' Operation Done successfully ') to string (Mess)",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Mess Title 'Notification ÅÔÚÇÑ ' Type: Message Info",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect2 Class Dictionary",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Sentenc",490,492)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SearchByMeaning Class Dictionary",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","cM = win3.textSearMeaning.Value",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Words where Meaning like '' + cM + '%''",497,499)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.DeleteAllItems ( )",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowWordsInGrid()",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSentences Class Dictionary",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Sentenc",507,509)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win6 ) , Title : ' ShowSentences '",510,514)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",515,519)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn18 ) , Caption : ' Closed '",520,521)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Closedwin6",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",523,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid3 ) , HEADERS : {'Word','Sentence'}",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",527,534)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",535,536)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.PShowSentences()",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",538,540)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PShowSentences Class Dictionary",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Release ( )",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","n := ADODB RecordSet (Self:oRS) , Get Records Count",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( n > 0 )",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To n Step 1)",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","cW = ADODB RecordSet (Self:oRS) Get Field ('Word ') Value",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","cM = ADODB RecordSet (Self:oRS) Get Field ('Sentence') Value",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","win6.Grid3.AddItem ( {cW,cM} )",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Closedwin6 Class Dictionary",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","win6.Release ( )",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Pronouns Class Dictionary",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win5 ) , Title : 'Pronouns '",559,563)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",564,568)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn17 ) , Caption : 'Close ÅÛáÇÞ '",569,570)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ClosedPrintTexts",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",572,574)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid2 ) , HEADERS : {'Subject Pronouns','Object Pronouns','Possessive Adjectives','Possessive Pronouns' }",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:PrintTexts",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",577,585)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",587,591)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",592,593)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",594,596)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",597,597)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method PrintTexts Class Dictionary",598,598)
SS_ESASTEP("Circuits\Main\Main\Main","nLD = win5.Grid2.Value",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","win5.list1.DeleteAllItems ( )",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD = 1 )",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",602,602)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '  I can bring them some lunch' To Array Array",603,603)
SS_ESASTEP("Circuits\Main\Main\Main","Add item ' That book belongs to me ' To Array Array",604,604)
SS_ESASTEP("Circuits\Main\Main\Main","Add item ' My house is on the corner' To Array Array",605,605)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'The house on the corner is mine' To Array Array",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD = 2 )",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'He wants to borrow my book ' To Array Array",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'I'm lending the book to him ' To Array Array",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'His hair is longer than hers ' To Array Array",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Is his car really that fast' To Array Array",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",628,628)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD =3 )",629,629)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",630,630)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'She Likes Ice Cream' To Array Array",631,631)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'she will give him some of her food ' To Array Array",632,632)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Her timing couldn't have been less appropriate ' To Array Array",633,633)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'His hair is longer than hers ' To Array Array",634,634)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",635,635)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",636,636)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",637,637)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",638,638)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",639,639)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",640,640)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD =4 )",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'It is raining' To Array Array",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'I like this film. I saw it last week' To Array Array",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'It's been good to know you' To Array Array",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'It's a bird! It's a plane' To Array Array",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",652,652)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",653,653)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD =5 )",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'We talk to our neighbour ' To Array Array",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Nick came to us from main entrance ' To Array Array",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Our house is big ' To Array Array",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'We shall finally have what is rightfully ours ' To Array Array",662,662)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",663,663)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",664,664)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",666,666)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLD = 6 )",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array Array",672,672)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'They have three books ' To Array Array",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Will you go with Them ' To Array Array",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'those Their books ' To Array Array",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'These are your notebooks and those are theirs' To Array Array",676,676)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array Array",677,677)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",678,678)
SS_ESASTEP("Circuits\Main\Main\Main","Le = Get Length of String/Variable/Array Array[x]",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Le > 2 )",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Array[x]) to Listbox (list1) of Window (win5)",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",684,684)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClosedPrintTexts Class Dictionary",686,686)
SS_ESASTEP("Circuits\Main\Main\Main","win5.Release ( )",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",688,688)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ClosedDictionary Class Dictionary",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",691,691)
Return
*-------------------------------------------------------------------*
