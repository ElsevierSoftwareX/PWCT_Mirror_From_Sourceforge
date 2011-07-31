*---------------------------------------------------------------------------*
* Time : 05:54:21    Date : 07/31/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function BASICDATA
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

Resistance R_BASICDATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BASICDATA_15speed1() code
class BasicDataClass From SystemDatabase
Data TableName init "BasicData"
Method showwindow
Method closewindow
Method LoadData
Method SaveData
EndClass
Method showwindow Class BasicDataClass
if !iswindowdefined( BasicDataWindow )
DEFINE WINDOW BasicDataWindow ;
AT 10 ,10 ;
WIDTH 513 ;
HEIGHT 266 ;
ON INIT self:loaddata()  ;
ICON "PWCTICON" ;
TITLE "«·»Ì«‰«  «·«”«”Ì…" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -5 ,-4 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 514 HEIGHT 259
@ 182 ,140 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 24 ,390 LABEL lbl1 ;
VALUE "«”„ «·Õ«÷‰…" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 71 ,130 LABEL lbl2 ;
VALUE "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ… ·„—Õ·… «·≈Õ ÷«‰ · ÿÊÌ— «·„‰ Ã" ;
WIDTH 340 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 116 ,100 LABEL lbl3 ;
VALUE "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ… ·„—Õ·… «·≈Õ ÷«‰ «·≈” À„«—Ì ··„‰ Ã" ;
WIDTH 370 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,30 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 71 ,30 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 60 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {150,252,196} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 116 ,30 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 60 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {150,252,196} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 182 ,262 BUTTONEX btnSave;
CAPTION "Õ›Ÿ";
ON CLICK self:savedata()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

BasicDataWindow.Center ( )
ACTIVATE WINDOW BasicDataWindow
EndIF

Return 0
Method closewindow Class BasicDataClass
BasicDataWindow.Release ( )
Return 0
Method LoadData Class BasicDataClass
myout = self:Connect()
self:oRS:MOVEFIRST()
BasicDataWindow.text1.value := self:oRS:fields:item("IncName"):value
BasicDataWindow.text2.value := self:oRS:fields:item("num1"):value
BasicDataWindow.text3.value := self:oRS:fields:item("Num2"):value
myout = self:DisConnect()
Return 0
Method SaveData Class BasicDataClass
myout = self:Connect()
self:oRS:MOVEFIRST()
self:oRS:fields:item("num1"):value := BasicDataWindow.text2.value
self:oRS:fields:item("Num2"):value := BasicDataWindow.text3.value
self:oRS:UPDATE()
myout = self:CloseWindow()
Return 0



End Of Resistance

*-------------------------------------------------------------------*
