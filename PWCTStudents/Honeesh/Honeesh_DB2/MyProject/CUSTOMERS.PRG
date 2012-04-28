*---------------------------------------------------------------------------*
* Time : 01:15:40    Date : 04/23/2012
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
Function CUSTOMERS
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

Resistance R_CUSTOMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_18smart1() code
class CustomersClass From SystemDatabase
Data cWindowName init "CustomersWindow"
Data cNoCus init ""
Data cNameCust init ""
Data cPhoneCust init ""
Data TableName init "Customers"
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
Method showwindow Class CustomersClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "Customers Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,6 IMAGE Image1;
PICTURE "image\vvv.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 8 ,6 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 316 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 81 ,506 LABEL lbl1 ;
VALUE "—ﬁ„ «·⁄„Ì· " ;
WIDTH 220 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 140 ,506 LABEL lbl2 ;
VALUE "«”„ «·⁄„Ì· " ;
WIDTH 220 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 200 ,503 LABEL lbl3 ;
VALUE "ÃÊ«· «·⁄„Ì·" ;
WIDTH 223 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 82 ,282 TEXTBOX textNoCus;
HEIGHT 46 ;
WIDTH 208 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 137 ,193 TEXTBOX textNameCust;
HEIGHT 45 ;
WIDTH 300 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 199 ,281 TEXTBOX textPhoneCust;
HEIGHT 45 ;
WIDTH 209 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class CustomersClass
Self:cNoCus := &(self:cWindowName).textNoCus.Value
Self:cNameCust := &(self:cWindowName).textNameCust.Value
Self:cPhoneCust := &(self:cWindowName).textPhoneCust.Value
Return 0
Method Class2ADO Class CustomersClass
Self:oRS:fields:item(alltrim("NoCus")):value := Self:cNoCus
Self:oRS:fields:item(alltrim("NameCust ")):value := Self:cNameCust
Self:oRS:fields:item(alltrim("PhoneCust ")):value := Self:cPhoneCust
Return 0
Method ADO2Class Class CustomersClass
Self:cNoCus := Self:oRS:fields:item(alltrim("NoCus ")):value
Self:cNameCust := Self:oRS:fields:item(alltrim("NameCust ")):value
Self:cPhoneCust := Self:oRS:fields:item(alltrim("PhoneCust ")):value
Return 0
Method Class2UserInterface Class CustomersClass
&(self:cWindowName).textNoCus.Value := Self:cNoCus
&(self:cWindowName).textNameCust.Value := Self:cNameCust
&(self:cWindowName).textPhoneCust.Value := Self:cPhoneCust
Return 0
Method ClearRecord Class CustomersClass
Self:cNoCus := ""
Self:cNameCust := ""
Self:cPhoneCust := ""
Return 0
Method setmode(p1) Class CustomersClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textNoCus.Enabled := True
&(self:cWindowName).textNameCust.Enabled := True
&(self:cWindowName).textPhoneCust.Enabled := True
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textNoCus.Enabled := False
&(self:cWindowName).textNameCust.Enabled := False
&(self:cWindowName).textPhoneCust.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustomersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class CustomersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*
