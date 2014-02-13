*---------------------------------------------------------------------------*
* Time : 13:13:18    Date : 02/13/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.01.31
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


Resistance R_SHEMODATE_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SHEMODATE_19art1() code
Set Procedure to "DayOfWeek.PRG"
ShemoObject = ShemoDateClass()
DOW = DayOfWeek()
out = ShemoObject:ShowWindow()
Class ShemoDateClass
Data cMonth init ""
Data nDay init 0
Method ShowWindow
Method pExit
Method pCalc
Method pMoonCycle
Method pMoonEpotik
Method pJwishEaster
Method pEasterMonth
Method pDayIndex
Method pChristianEaster
EndClass
Method ShowWindow Class ShemoDateClass
if !iswindowdefined( winShemo )
DEFINE WINDOW winShemo ;
AT 10 ,10 ;
WIDTH 937 ;
HEIGHT 547 ;
ICON "PWCTICON" ;
TITLE "ÊÍÏíÏ ÊÇÑÈÎ Ôã ÇáäÓíã" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
winShemo.Center ( )
@ -36 ,-212 IMAGE image1;
PICTURE "Images\Back.jpg";
STRETCH ;
WIDTH 1260 HEIGHT 1007
@ 2 ,2 IMAGE image2;
PICTURE "Images\Photo.jpg";
STRETCH ;
WIDTH 250 HEIGHT 505
@ 56 ,829 LABEL lblYear ;
VALUE "ÇáÓäÉ" ;
WIDTH 49 ;
HEIGHT 31 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,255,64}
@ 385 ,397 LABEL lbl1Semi ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 16 ,397 LABEL lbl2Semi ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 30 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 140 ,397 LABEL lbl3Semi ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,0,0} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 194 ,397 LABEL lbl4Semi ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 37 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 243 ,397 LABEL lbl5Semi ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 20 ,263 LABEL lblMoonCycle ;
VALUE "Moon Cycle " ;
WIDTH 140 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 64 ,263 LABEL lblMoonEpotik ;
VALUE "Moon Epotik" ;
WIDTH 140 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 21 ,421 LABEL lblMCycle ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 63 ,421 LABEL lblMEpotik ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 191 ,419 LABEL lblEasterDay ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 140 ,419 LABEL lbl1EasterMonth1 ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 19  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 50 ,723 TEXTBOX txtYear;
HEIGHT 36 ;
WIDTH 81 ;
FONT "Times New Roman" SIZE 18 ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,255,64} ;
NUMERIC 
@ 443 ,795 BUTTONEX btnExit;
CAPTION "Exit ";
FONTCOLOR {0,255,64};
BACKCOLOR {0,128,192};
ON CLICK self:pExit()  ;
WIDTH 102 HEIGHT 34 ;
FONT "Times New Roman" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 443 ,684 BUTTONEX btnCalc;
CAPTION "Calc ";
FONTCOLOR {0,255,64};
BACKCOLOR {0,128,192};
ON CLICK self:pCalc()  ;
WIDTH 102 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 330 ,263 LABEL lbl13 ;
VALUE "Easter Day " ;
WIDTH 140 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 140 ,263 LABEL lbl1EsterMonth ;
VALUE "Easter Month " ;
WIDTH 140 ;
HEIGHT 33 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 243 ,419 LABEL lblDayIndex ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 243 ,263 LABEL lbl18 ;
VALUE "Day Index" ;
WIDTH 140 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 62 ,397 LABEL lbl17 ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 98 ,263 LABEL lbl5 ;
VALUE "------------------ Jwish Easter  ------------------" ;
WIDTH 483 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 287 ,263 LABEL lbl19 ;
VALUE "------------------ Estern Chrristian Easter  ------------------" ;
WIDTH 540 ;
HEIGHT 29 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,255,128} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 191 ,263 LABEL lbl20 ;
VALUE "Day Index" ;
WIDTH 140 ;
HEIGHT 34 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 332 ,397 LABEL lbl21 ;
VALUE ":" ;
WIDTH 10 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 334 ,419 LABEL lblEstDay ;
VALUE "" ;
WIDTH 100 ;
HEIGHT 35 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 383 ,263 LABEL lbl22 ;
VALUE "Sham El Neseem Date :" ;
WIDTH 235 ;
HEIGHT 38 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 385 ,494 LABEL lblShemo ;
VALUE " " ;
WIDTH 177 ;
HEIGHT 36 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
DEFINE STATUSBAR 
STATUSITEM "Ready"
KEYBOARD
DATE
CLOCK
END STATUSBAR
@ 223 ,1190 LABEL lblJECDay ;
VALUE "-------------" ;
WIDTH 107 ;
HEIGHT 34 ;
FONT "Times New Roman" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 233 ,1096 LABEL lblJEastrCDay ;
VALUE "Jwish Easter Coptic Day" ;
WIDTH 231 ;
HEIGHT 36 ;
FONT "Times New Roman" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 436 ,257 LABEL lbl26 ;
VALUE "Copyright@ Mohamed Nabeel Hassanein" ;
WIDTH 267 ;
HEIGHT 25 ;
FONT "Times New Roman" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
@ 463 ,254 LABEL lbl27 ;
VALUE "Open Source for learning and not for sale either all or any part of it" ;
WIDTH 410 ;
HEIGHT 20 ;
FONT "Times New Roman" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,64}
END WINDOW
ACTIVATE WINDOW winShemo
EndIF
Return 0
Method pExit Class ShemoDateClass
winShemo.Release ( )
Return 0
Method pCalc Class ShemoDateClass
winShemo.Center ( )
nYear := winShemo.txtYear.Value
nMoonCycle = self:pMoonCycle(nYear)
cMoonCycle = STR ( nMoonCycle )
cMoonCycle = ALLTRIM ( cMoonCycle )
winShemo.lblMCycle.Value := cMoonCycle
nMoonEpotik = self:pMoonEpotik(nMoonCycle)
cMoonEpotik = STR ( nMoonEpotik )
cMoonEpotik = ALLTRIM ( cMoonEpotik )
winShemo.lblMEpotik.Value := cMoonEpotik
nEasterDay = self:pJwishEaster(nMoonEpotik)
cEasterMonth = self:pEasterMonth(nEasterDay)
cEasterDay = STR ( nEasterDay )
cEasterDay = ALLTRIM ( cEasterDay )
winShemo.lblEasterDay.Value := cEasterDay
winShemo.lbl1EasterMonth1.Value := cEasterMonth
IF nEasterDay = 1
nMonth := 5
ELSE
nMonth := 4
ENDIF
nDay := nEasterDay
nDayIndex = self:pDayIndex(nDay, nMonth, nYear)
cDayIndex = STR ( nDayIndex )
cDayIndex = ALLTRIM ( cDayIndex )
winShemo.lblDayIndex.Value := cDayIndex
ncDayIndex = self:pChristianEaster(nDayIndex, cDayIndex)
IF ncDayIndex > 30
ncDayIndex = ncDayIndex - 30
cEasterMonth := "May"
ENDIF
ncDayIndex := int(ncDayIndex)
cCDayIndex = STR ( ncDayIndex )
cCDayIndex = ALLTRIM ( cCDayIndex )
winShemo.lblEstDay.Value := cCDayIndex
nShemoDate = ncDayIndex + 1
cShemoDate = STR ( nShemoDate )
cShemoDate = ALLTRIM ( cShemoDate )
cShemoDate := cShemoDate+"   "+cEasterMonth
winShemo.lblShemo.Value := cShemoDate
Return 0
Method pMoonCycle(nYear) Class ShemoDateClass
nMoonCycle = MOD( nYear , 19 )
IF nMoonCycle == 0
nMoonCycle := 19
ENDIF
nMoonCycle  = INT (nMoonCycle)
Return nMoonCycle
Method pMoonEpotik(nMoonCycle) Class ShemoDateClass
nMoonEpotik = nMoonCycle * 11
nMoonEpotik = MOD( nMoonEpotik , 30 )
nMoonEpotik  = INT (nMoonEpotik)
IF nMoonEpotik = 29
nMoonEpotik := 30
ENDIF
Return nMoonEpotik
Method pJwishEaster(nMoonEpotik) Class ShemoDateClass
nJwishEaster = 40 - nMoonEpotik
nJwishEaster = MOD( nJwishEaster , 30 )
winShemo.lblJECDay.Value := str(nJwishEaster)
IF nJwishEaster >= 1 .AND. nJwishEaster <= 22
nJwishEaster = nJwishEaster + 8
ELSEIF nJwishEaster >= 25 .AND. nJwishEaster <= 30
nJwishEaster = nJwishEaster - 22
ELSE
nJwishEaster := 1
ENDIF
Return nJwishEaster
Method pEasterMonth(nEasterDay) Class ShemoDateClass
IF nEasterDay == 1
cEasterMonth := "May"
ELSE
cEasterMonth := "April"
ENDIF
Return cEasterMonth
Method pDayIndex(nDay, nMonth, nYear) Class ShemoDateClass
nDayIndex = DOW:pCalc(nDay, nMonth,nYear)
Return nDayIndex
Method pChristianEaster(nDayIndex) Class ShemoDateClass
ncDayIndex := nDayIndex
ncDayIndex = 7 - nDayIndex
ncDayIndex = ncDayIndex + nEasterDay
Return ncDayIndex

End Of Resistance

INIT PROCEDURE Init_SHEMODATE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DayOfWeek.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ShemoObject of Class ShemoDateClass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DOW of Class DayOfWeek",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","out = ShemoObject.ShowWindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class ShemoDateClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cMonth Init Value ''",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data nDay Init Value 0",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method pExit",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method pCalc",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method pMoonCycle",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method pMoonEpotik",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method pJwishEaster",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method pEasterMonth",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method pDayIndex",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method pChristianEaster",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class ShemoDateClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winShemo ) , Title : 'ÊÍÏíÏ ÊÇÑÈÎ Ôã ÇáäÓíã'",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.Center( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Images\Back.jpg'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Images\Photo.jpg'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblYear ) , Caption : 'ÇáÓäÉ'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1Semi ) , Caption : ':'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2Semi ) , Caption : ':'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3Semi ) , Caption : ':'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4Semi ) , Caption : ':'",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",76,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5Semi ) , Caption : ':'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblMoonCycle ) , Caption : 'Moon Cycle '",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",92,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblMoonEpotik ) , Caption : 'Moon Epotik'",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblMCycle ) , Caption : ''",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblMEpotik ) , Caption : ''",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",116,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblEasterDay ) , Caption : ''",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1EasterMonth1 ) , Caption : ''",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",132,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtYear  )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",139,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnExit ) , Caption : 'Exit '",146,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:pExit",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCalc ) , Caption : 'Calc '",155,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:pCalc",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Easter Day '",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",166,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1EsterMonth ) , Caption : 'Easter Month '",172,173)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",174,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblDayIndex ) , Caption : ''",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",182,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18 ) , Caption : 'Day Index'",188,189)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",190,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : ':'",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",199,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '------------------ Jwish Easter  ------------------'",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",207,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19 ) , Caption : '------------------ Estern Chrristian Easter  ------------------'",213,214)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",215,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : 'Day Index'",221,222)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",223,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21 ) , Caption : ':'",229,230)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",231,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblEstDay ) , Caption : ''",237,238)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",239,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22 ) , Caption : 'Sham El Neseem Date :'",245,246)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",247,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblShemo ) , Caption : ' '",253,254)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",255,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",261,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",263,264)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",265,266)
SS_ESASTEP("Circuits\Main\Main\Main","Date",267,268)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",269,270)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",271,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblJECDay ) , Caption : '-------------'",273,274)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",275,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblJEastrCDay ) , Caption : 'Jwish Easter Coptic Day'",281,282)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",283,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26 ) , Caption : 'Copyright@ Mohamed Nabeel Hassanein'",289,290)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",291,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27 ) , Caption : 'Open Source for learning and not for sale either all or any part of it'",297,298)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",299,304)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",305,306)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",307,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pExit Class ShemoDateClass",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.Release( )",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pCalc Class ShemoDateClass",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.Center( )",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","nYear = winShemo.txtYear.Value",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonCycle = self.pMoonCycle(nYear)",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","cMoonCycle = CONVERT nMoonCycle TO STRING",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","cMoonCycle = All Trim cMoonCycle",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblMCycle.Value := cMoonCycle",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonEpotik = self.pMoonEpotik(nMoonCycle)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","cMoonEpotik = CONVERT nMoonEpotik TO STRING",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","cMoonEpotik = All Trim cMoonEpotik",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblMEpotik.Value := cMoonEpotik",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","nEasterDay = self.pJwishEaster(nMoonEpotik)",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterMonth = self.pEasterMonth(nEasterDay)",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterDay = CONVERT nEasterDay TO STRING",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterDay = All Trim cEasterDay",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblEasterDay.Value := cEasterDay",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lbl1EasterMonth1.Value := cEasterMonth",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nEasterDay = 1 )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","nMonth = 5",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","nMonth = 4",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","nDay = nEasterDay",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","nDayIndex = self.pDayIndex(nDay, nMonth, nYear)",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","cDayIndex = CONVERT nDayIndex TO STRING",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","cDayIndex = All Trim cDayIndex",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblDayIndex.Value := cDayIndex",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = self.pChristianEaster(nDayIndex, cDayIndex)",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( ncDayIndex > 30 )",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = ncDayIndex - 30",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterMonth = 'May'",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = int(ncDayIndex)",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","cCDayIndex = CONVERT ncDayIndex TO STRING",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","cCDayIndex = All Trim cCDayIndex",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblEstDay.Value := cCDayIndex",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","nShemoDate = ncDayIndex + 1",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","cShemoDate = CONVERT nShemoDate TO STRING",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","cShemoDate = All Trim cShemoDate",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","cShemoDate = cShemoDate+'   '+cEasterMonth",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblShemo.Value := cShemoDate",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pMoonCycle(nYear) Class ShemoDateClass",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonCycle = nYear % 19",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMoonCycle == 0 )",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonCycle = 19",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonCycle = Convert numeric value nMoonCycle to an integer",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nMoonCycle)",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pMoonEpotik(nMoonCycle) Class ShemoDateClass",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonEpotik = nMoonCycle * 11",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonEpotik = nMoonEpotik % 30",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonEpotik = Convert numeric value nMoonEpotik to an integer",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMoonEpotik = 29 )",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","nMoonEpotik = 30",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nMoonEpotik)",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pJwishEaster(nMoonEpotik) Class ShemoDateClass",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","nJwishEaster = 40 - nMoonEpotik",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","nJwishEaster = nJwishEaster % 30",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","winShemo.lblJECDay.Value := str(nJwishEaster)",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nJwishEaster >= 1 .AND. nJwishEaster <= 22 )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","nJwishEaster = nJwishEaster + 8",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nJwishEaster >= 25 .AND. nJwishEaster <= 30 )",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","nJwishEaster = nJwishEaster - 22",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","nJwishEaster = 1",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nJwishEaster)",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pEasterMonth(nEasterDay) Class ShemoDateClass",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nEasterDay == 1 )",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterMonth = 'May'",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","cEasterMonth = 'April'",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return cEasterMonth)",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pDayIndex(nDay, nMonth, nYear) Class ShemoDateClass",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","nDayIndex = DOW.pCalc(nDay, nMonth,nYear)",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return nDayIndex)",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method pChristianEaster(nDayIndex) Class ShemoDateClass",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = nDayIndex",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = 7 - nDayIndex",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","ncDayIndex = ncDayIndex + nEasterDay",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return ncDayIndex)",397,397)
Return
*-------------------------------------------------------------------*
