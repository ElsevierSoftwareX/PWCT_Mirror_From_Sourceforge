*---------------------------------------------------------------------------*
* Time : 14:35:46    Date : 01/06/2012
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
Function DATA_LAYER
Public True,False 
True = .T. 
False = .F. 
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_DATA_LAYER_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATA_LAYER_18smart1() code
if !iswindowdefined( DataLayer )
DEFINE WINDOW DataLayer ;
AT 10 ,10 ;
WIDTH 413 ;
HEIGHT 264 ;
ICON "PWCTICON" ;
TITLE "Data" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 118 ,2 BUTTONEX btn1;
CAPTION "|<";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK FRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,199 BUTTONEX btn2;
CAPTION ">>";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK NRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,102 BUTTONEX btn3;
CAPTION "<<";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK PRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,299 BUTTONEX btn4;
CAPTION ">|";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK LRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 188 ,297 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Close()  ;
WIDTH 104 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 8 ,86 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 310 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 45 ,86 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 312 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 82 ,85 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 152 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 8 ,27 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 54 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 45 ,6 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,22 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 61 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 157 ,299 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Del()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,203 BUTTONEX btn7;
CAPTION "Save";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Save()  ;
WIDTH 96 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,104 BUTTONEX btn8;
CAPTION "Edit";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Edit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,3 BUTTONEX btn9;
CAPTION "Cancel";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Cancel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 190 ,3 BUTTONEX btn10;
CAPTION "Add";
FONTCOLOR {239,239,239};
BACKCOLOR {0,0,0};
ON CLICK Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO Con
DO GetRec
DO mode WITH 2
Public Prm
ACTIVATE WINDOW DataLayer
EndIF

Proc Con
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=DB\Phone.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone",oCon,3,3 )
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
ENDIF
Return Nil
Proc Dcon
oRS:Close()
oCon:CLOSE()
Return Nil
Proc Close
DO Dcon
win1.Release ( )
Return Nil
Proc GetRec
Count := oRS:RecordCount
IF Count>0
vName := oRS:fields:item("Name"):value
vAddress := oRS:fields:item("Address"):value
vPhone := oRS:fields:item("Phone"):value
win1.text1.Value := vName
win1.text2.Value := vAddress
win1.text3.Value := vPhone
ELSE
vName := ""
vAddress := ""
vPhone := ""
win1.text1.Value := vName
win1.text2.Value := vAddress
win1.text3.Value := vPhone
ENDIF
Return Nil
Proc FRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
DO GetRec
ENDIF
Return Nil
Proc LRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVELAST()
DO GetRec
ENDIF
Return Nil
Proc NRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVENEXT()
EOF := oRS:EOF()
IF EOF
oRS:MOVEFIRST()
DO GetRec
MyOut := MSGBOX("EOF","Error")
ELSE
DO GetRec
ENDIF
ENDIF
Return Nil
Proc PRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVEPREVIOUS()
BOF := oRS:BOF()
IF BOF
oRS:MOVEFIRST()
DO GetRec
MyOut := MSGBOX("BOF","Error")
ELSE
DO GetRec
ENDIF
ENDIF
Return Nil
Proc Del
Count := oRS:RecordCount
IF Count>0
MyOut := MSGOKCANCEL("Delete Record","Confirm")
IF MyOut=true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
BOF := oRS:BOF()
IF BOF
oRS:MOVEFIRST()
DO GetRec
ELSE
DO GetRec
ENDIF
ENDIF
ENDIF
Return Nil
Proc mode( p )
IF p=1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn8.Enabled := false
win1.btn7.Enabled := True
win1.btn9.Enabled := True
win1.text1.Enabled := True
win1.text2.Enabled := True
win1.text3.Enabled := True
win1.btn10.Enabled := False
ENDIF
IF p=2
win1.btn1.Enabled := True
win1.btn2.Enabled := True
win1.btn3.Enabled := True
win1.btn4.Enabled := True
win1.btn5.Enabled := True
win1.btn6.Enabled := True
win1.btn8.Enabled := True
win1.btn7.Enabled := False
win1.btn9.Enabled := False
win1.text1.Enabled := False
win1.text2.Enabled := False
win1.text3.Enabled := False
win1.btn10.Enabled := True
ENDIF
Return Nil
Proc Save
DO mode WITH 2
name := win1.text1.Value
address := win1.text2.Value
phone := win1.text3.Value
oRS:fields:item("Name"):value := name
oRS:fields:item("Address"):value := address
oRS:fields:item("Phone"):value := phone
oRS:UPDATE()
Return Nil
Proc Edit
Count := oRS:RecordCount
IF Count>0
DO mode WITH 1
Prm := 2
ENDIF
Return Nil
Proc Cancel
IF Prm=1
oRS:DELETE()
oRS:UPDATE()
Count := oRS:RecordCount
IF Count>0
oRS:MOVEPREVIOUS()
ENDIF
ENDIF
DO mode WITH 2
DO GetRec
Return Nil
Proc Add
oRS:ADDNEW()
DO GetRec
Prm := 1
DO mode WITH 1
Return Nil
Class DataClass
Data DBB init ""
Method InterfaceLayer
Method ActionLayer
Method ConORDisconDB
Method Close
EndClass
Method InterfaceLayer Class DataClass
Return 0
Method ActionLayer(Prm) Class DataClass
Return 0
Method ConORDisconDB(Prm) Class DataClass
Return 0
Method Close Class DataClass
Return 0


End Of Resistance

*-------------------------------------------------------------------*
