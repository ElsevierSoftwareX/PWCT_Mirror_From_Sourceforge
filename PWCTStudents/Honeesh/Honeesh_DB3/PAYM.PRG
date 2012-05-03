*---------------------------------------------------------------------------*
* Time : 18:25:34    Date : 05/03/2012
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
Function PAYM
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

Resistance R_PAYM_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PAYM_18smart1() code
class PayMClass From SystemDatabase
Data cWindowName init "PayMWindow"
Data TableName init "TblPay"
Data cZN init ""
Data cDateZ init ""
Data cAmount init ""
Data nNameAccID init 0
Data aNameAccItems init {}
Data aNameAccItemsIDs init {}
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
Method showwindow Class PayMClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "PayM Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,7 IMAGE image1;
PICTURE "images\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 8 ,6 LABEL lblTitle ;
VALUE "PayM Window" ;
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
@ 128 ,140 LABEL lbl1 ;
VALUE "zn " ;
WIDTH 87 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 199 ,135 LABEL lbl2 ;
VALUE "Datez " ;
WIDTH 85 ;
HEIGHT 29 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 262 ,136 LABEL lbl3 ;
VALUE "Amount " ;
WIDTH 83 ;
HEIGHT 25 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 127 ,239 TEXTBOX textZN;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 196 ,237 TEXTBOX textDatez;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 261 ,238 TEXTBOX textAmount;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC

myout = Self:LoadLookupTable("Accounts","NameAcc",@Self:aNameAccItems,"ID",@Self:aNameAccItemsIDs)
@ 73 ,136 LABEL lblAccounts ;
VALUE "Accounts " ;
WIDTH 89 ;
HEIGHT 36 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 76 ,238 COMBOBOX comboAccounts;
WIDTH 200 ;
HEIGHT 300;
ITEMS Self:aNameAccItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class PayMClass
Self:cZn := &(self:cWindowName).textZN.Value
Self:cDatez := &(self:cWindowName).textDatez.Value
Self:cAmount := &(self:cWindowName).textAmount.Value
Self:nNameAccID := &(self:cWindowName).comboAccounts.Value
Self:nNameAccID := Self:aNameAccItemsIDs[Self:nNameAccID]
Return 0
Method Class2ADO Class PayMClass
Self:oRS:fields:item(alltrim(" ZN")):value := Self:cZn
Self:oRS:fields:item(alltrim(" Datez")):value := Self:cDatez
Self:oRS:fields:item(alltrim(" Amount")):value := Self:cAmount
Self:oRS:fields:item(alltrim("AccID")):value := Self:nNameAccID
Return 0
Method ADO2Class Class PayMClass
Self:cZn := Self:oRS:fields:item(alltrim("Zn ")):value
Self:cDatez := Self:oRS:fields:item(alltrim("Datez ")):value
Self:cAmount := Self:oRS:fields:item(alltrim("Amount ")):value
Self:nNameAccID := Self:oRS:fields:item(alltrim("AccID ")):value
Return 0
Method Class2UserInterface Class PayMClass
&(self:cWindowName).textZN.Value := Self:cZN
&(self:cWindowName).textDatez.Value := Self:cDatez
&(self:cWindowName).textAmount.Value := Self:cAmount
nIndex = Self:LookupIDTOIndex(self:nNameAccID,Self:aNameAccItemsIDs)
&(self:cWindowName).comboAccounts.Value := nIndex
Return 0
Method ClearRecord Class PayMClass
Self:cZN := ""
Self:cDatez := ""
Self:cAmount := ""
Self:nNameAccID := 0
Return 0
Method setmode(p1) Class PayMClass
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
&(self:cWindowName).textZN.Enabled := True
&(self:cWindowName).textDatez.Enabled := True
&(self:cWindowName).textAmount.Enabled := True
&(self:cWindowName).comboAccounts.Enabled := True
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
&(self:cWindowName).textZN.Enabled := False
&(self:cWindowName).textDatez.Enabled := False
&(self:cWindowName).textAmount.Enabled := False
&(self:cWindowName).comboAccounts.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class PayMClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class PayMClass
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
