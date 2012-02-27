*---------------------------------------------------------------------------*
* Time : 21:21:19    Date : 02/26/2012
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
Function CUSTUMERS
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_CUSTUMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTUMERS_18smart1() code
class CustumersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data TableName init "custdata"
Data cName init ""
Data cMobile init ""
Data cEmail init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
EndClass
Method showwindow Class CustumersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustumersDataWindow )
DEFINE WINDOW CustumersDataWindow ;
AT 10 ,10 ;
WIDTH 482 ;
HEIGHT 396 ;
ICON "PWCTICON" ;
TITLE "Custumers Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 2 ,-27 IMAGE image1;
PICTURE "GRAY-1.JPG";
STRETCH ;
WIDTH 791 HEIGHT 371
@ 19 ,20 LABEL lbl5 ;
VALUE " Data Custumers " ;
WIDTH 167 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 278 ,202 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 318 ,203 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,273 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,364 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,273 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,364 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {240,240,240};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,27 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,104 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,104 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,27 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 68 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 89 ,69 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 74 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 134 ,69 LABEL lbl2 ;
VALUE "Mobile No" ;
WIDTH 91 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 176 ,69 LABEL lbl3 ;
VALUE "Email" ;
WIDTH 81 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 88 ,179 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 130 ,179 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 170 ,179 TEXTBOX textemail;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

CustumersDataWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW CustumersDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustumersDataClass
self:cName := CustumersDataWindow.TextName.Value
self:cMobile := CustumersDataWindow.TextMobile.Value
self:cEmail := CustumersDataWindow.TextEmail.Value
Return 0
Method Class2ADO Class CustumersDataClass
self:oRS:fields:item("Name"):value := self:cName
self:oRS:fields:item("MobileNo"):value := self:cMobile
self:oRS:fields:item("Email"):value := self:cEmail
Return 0
Method ADO2Class Class CustumersDataClass
self:cName := self:oRS:fields:item("Name"):value
self:cMobile := self:oRS:fields:item("MobileNo"):value
self:cEmail := self:oRS:fields:item("Email"):value
Return 0
Method Class2UserInterface Class CustumersDataClass
CustumersDataWindow.TextName.Value := self:cName
CustumersDataWindow.TextMobile.Value := self:cMobile
CustumersDataWindow.TextEmail.Value := self:cEmail
Return 0
Method ClearRecord Class CustumersDataClass
self:cName := ""
self:cMobile := ""
self:cEmail := ""
Return 0
Method setmode(p1) Class CustumersDataClass
IF p1 = 1
CustumersDataWindow.btnfirst.Enabled := false
CustumersDataWindow.btnnext.Enabled := false
CustumersDataWindow.btnprev.Enabled := false
CustumersDataWindow.btnlast.Enabled := false
CustumersDataWindow.btndel.Enabled := false
CustumersDataWindow.btnclose.Enabled := false
CustumersDataWindow.btnsave.Enabled := true
CustumersDataWindow.btncancel.Enabled := true
CustumersDataWindow.btnedit.Enabled := false
CustumersDataWindow.btnadd.Enabled := false
CustumersDataWindow.TextName.Enabled := true
CustumersDataWindow.TextMobile.Enabled := true
CustumersDataWindow.TextEmail.Enabled := true
ENDIF
IF p1 = 2
CustumersDataWindow.btnfirst.Enabled := true
CustumersDataWindow.btnnext.Enabled := true
CustumersDataWindow.btnprev.Enabled := true
CustumersDataWindow.btnlast.Enabled := true
CustumersDataWindow.btndel.Enabled := true
CustumersDataWindow.btnclose.Enabled := true
CustumersDataWindow.btnsave.Enabled := false
CustumersDataWindow.btncancel.Enabled := false
CustumersDataWindow.btnedit.Enabled := true
CustumersDataWindow.btnadd.Enabled := true
CustumersDataWindow.TextName.Enabled := false
CustumersDataWindow.TextMobile.Enabled := false
CustumersDataWindow.TextEmail.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustumersDataClass
myout = self:disconnect()
CustumersDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustumersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustumersDataWindow )
myout = self:showrecord()
CustumersDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
