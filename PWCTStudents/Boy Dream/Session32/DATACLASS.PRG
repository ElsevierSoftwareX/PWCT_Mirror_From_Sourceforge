*---------------------------------------------------------------------------*
* Time : 18:03:34    Date : 01/07/2012
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
Function DATACLASS
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

Resistance R_DATACLASS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATACLASS_18smart1() code
Class DataC
Data DBB init ""
Data Tbl1 init ""
Data Col1 init ""
Data Col2 init ""
Data Col3 init ""
Data Col4 init ""
Data lbl1 init ""
Data lbl2 init ""
Data lbl3 init ""
Data lbl4 init ""
Data Qry init ""
Method InterfaceLayer
Method ActionLayer
Method ConDB
Method Mode
Method GetRec
Method Close
EndClass
Method InterfaceLayer Class DataC
if !iswindowdefined( DataLayer )
DEFINE WINDOW DataLayer ;
AT 10 ,10 ;
WIDTH 412 ;
HEIGHT 351 ;
MODAL ;
NOSIZE ;
BACKCOLOR {239,239,239} 

@ 208 ,2 BUTTONEX btn1;
CAPTION "|<";
FONTCOLOR {0,0,0};
ON CLICK self:ActionLayer("First")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 208 ,199 BUTTONEX btn2;
CAPTION ">>";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:ActionLayer("Next")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 208 ,102 BUTTONEX btn3;
CAPTION "<<";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:ActionLayer("Prev")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 208 ,299 BUTTONEX btn4;
CAPTION ">|";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:ActionLayer("Last")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 280 ,296 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:Close()  ;
WIDTH 104 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 58 ,86 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 312 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 95 ,86 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 312 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 132 ,85 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 312 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 165 ,83 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 312 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 59 ,5 LABEL lbl1 ;
VALUE "col1" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 96 ,6 LABEL lbl2 ;
VALUE "col2" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 133 ,6 LABEL lbl3 ;
VALUE "col3" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 164 ,3 LABEL lbl4 ;
VALUE "col4" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 247 ,299 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:ActionLayer("Del")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,203 BUTTONEX btn7;
CAPTION "Save";
FONTCOLOR {0,0,0};
BACKCOLOR {239,239,239};
ON CLICK self:ActionLayer("Save")  ;
WIDTH 96 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,104 BUTTONEX btn8;
CAPTION "Edit";
FONTCOLOR {0,0,0};
ON CLICK self:ActionLayer("Edit")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 247 ,3 BUTTONEX btn9;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
ON CLICK self:ActionLayer("Cancel")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 280 ,2 BUTTONEX btn10;
CAPTION "Add";
FONTCOLOR {0,0,0};
ON CLICK self:ActionLayer("Add")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
DEFAULT ;
TOOLTIP ""
@ 0 ,-5 LABEL lbl5 ;
VALUE "  Insert Data" ;
WIDTH 416 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
END WINDOW

self:ConDB ( 1 )
self:GetRec ()
self:Mode ( 2 )
DataLayer.Center ( )
Public Mark
Mark := 0
DataLayer.lbl1.Value := self:lbl1
DataLayer.lbl2.Value := self:lbl2
DataLayer.lbl3.Value := self:lbl3
DataLayer.lbl4.Value := self:lbl4
ACTIVATE WINDOW DataLayer
EndIF

Return 0
Method ActionLayer(Prm) Class DataC
IF Prm="First"
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
self:GetRec ()
ENDIF
ENDIF
IF Prm="Last"
Count := oRS:RecordCount
IF Count>0
oRS:MOVELAST()
self:GetRec ()
ENDIF
ENDIF
IF Prm="Next"
Count := oRS:RecordCount
IF Count>0
oRS:MOVENEXT()
EOF := oRS:EOF()
IF EOF
oRS:MOVEFIRST()
self:GetRec ()
ELSE
self:GetRec ()
ENDIF
ENDIF
ENDIF
IF Prm="Prev"
Count := oRS:RecordCount
IF Count>0
oRS:MOVENEXT()
EOF := oRS:EOF()
IF EOF
oRS:MOVEFIRST()
self:GetRec ()
ELSE
self:GetRec ()
ENDIF
ENDIF
ENDIF
IF Prm="Save"
self:Mode ( 2 )
col1 := DataLayer.text1.Value
col2 := DataLayer.text2.Value
col3 := DataLayer.text3.Value
col4 := DataLayer.text4.Value
oRS:fields:item(self:Col1):value := col1
oRS:fields:item(self:Col2):value := col2
oRS:fields:item(self:Col3):value := col3
oRS:fields:item(self:Col4):value := col4
oRS:UPDATE()
ENDIF
IF Prm="Edit"
Count := oRS:RecordCount
IF Count>0
self:Mode ( 1 )
ENDIF
ENDIF
IF Prm="Cancel"
IF Mark=1
oRS:DELETE()
oRS:UPDATE()
Count := oRS:RecordCount
IF Count>0
oRS:MOVEPREVIOUS()
ENDIF
ENDIF
self:GetRec ()
self:Mode ( 2 )
ENDIF
IF Prm="Del"
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
self:GetRec ()
ELSE
self:GetRec ()
ENDIF
ENDIF
ENDIF
ENDIF
IF Prm="Add"
oRS:ADDNEW()
self:GetRec ()
self:Mode ( 1 )
Mark := 1
ENDIF
Return 0
Method Mode(Prm) Class DataC
IF Prm=1
DataLayer.btn1.Enabled := false
DataLayer.btn2.Enabled := false
DataLayer.btn3.Enabled := false
DataLayer.btn4.Enabled := false
DataLayer.btn5.Enabled := false
DataLayer.btn6.Enabled := false
DataLayer.btn8.Enabled := false
DataLayer.btn7.Enabled := True
DataLayer.btn9.Enabled := True
DataLayer.text1.Enabled := True
DataLayer.text2.Enabled := True
DataLayer.text3.Enabled := True
DataLayer.text4.Enabled := True
DataLayer.btn10.Enabled := False
ENDIF
IF Prm=2
DataLayer.btn1.Enabled := True
DataLayer.btn2.Enabled := True
DataLayer.btn3.Enabled := True
DataLayer.btn4.Enabled := True
DataLayer.btn5.Enabled := True
DataLayer.btn6.Enabled := True
DataLayer.btn8.Enabled := True
DataLayer.btn7.Enabled := False
DataLayer.btn9.Enabled := False
DataLayer.text1.Enabled := False
DataLayer.text2.Enabled := False
DataLayer.text3.Enabled := False
DataLayer.text4.Enabled := False
DataLayer.btn10.Enabled := True
ENDIF
Return 0
Method GetRec Class DataC
Count := oRS:RecordCount
IF Count>0
col1 := oRS:fields:item(self:Col1):value
col2 := oRS:fields:item(self:Col2):value
col3 := oRS:fields:item(self:Col3):value
col4 := oRS:fields:item(self:Col4):value
DataLayer.text1.Value := col1
DataLayer.text2.Value := col2
DataLayer.text3.Value := col3
DataLayer.text4.Value := col4
ELSE
col1 := ""
col2 := ""
col3 := ""
col4 := ""
DataLayer.text1.Value := col1
DataLayer.text2.Value := col2
DataLayer.text3.Value := col3
DataLayer.text4.Value := col4
ENDIF
Return 0
Method ConDB(Prm) Class DataC
IF Prm=1
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog='+self:DBB )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( " select * from "+self:Tbl1+" "+self:Qry,oCon,3,3 )
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
ENDIF
ENDIF
IF Prm=0
oRS:Close()
oCon:CLOSE()
ENDIF
Return 0
Method Close Class DataC
self:ConDB ( 0 )
DataLayer.Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*
