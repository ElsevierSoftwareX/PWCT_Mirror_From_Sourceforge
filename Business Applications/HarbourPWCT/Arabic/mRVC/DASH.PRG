*---------------------------------------------------------------------------*
* Time : 17:35:52    Date : 09/16/2011
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
Function DASH
Public True,False 
True = .T. 
False = .F. 
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_DASH_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DASH_18smart1() code
class DashClass From SYSTEMDATABASE
Data datastring init ""
Data TableName init "Dash"
Data PrimaryKey init "ID"
Data C1 init 0
Data C2 init 0
Data C3 init 0
Data C4 init 0
Data C5 init 0
Data P1 init 0
Data P2 init 0
Data P3 init 0
Data P4 init 0
Data P5 init 0
Data TotalCount init 0
Data ActivePerformance init 0
Data performancestring init ""
Data LinePer init 0
Data TotalCount2 init 0
Data TotalCount3 init 0
Data TotalCount4 init 0
Data TP2 init 0
Data TP3 init 0
Data TP4 init 0
Data cWindowName init "DashWindow"
Data oActiveX init 0
Data oActiveX2 init 0
Data cWindowTitle init "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« "
Data PermissionID init 96
Data C6 init 0
Data P6 init 0
Data C7 init 0
Data P7 init 0
Data C8 init 0
Data P8 init 0
Data TotalCount1 init 0
Data TP1 init 0
Data TotalCount5 init 0
Data TP5 init 0
Data BasicDataTableName init "BasicData"
Data PW_TableName init "projects_all"
Data PW_SubTable1 init "projectprocesses"
Data PW_SubTable2 init "projectreviews"
Data PW_WindowTitle init "„‘«—Ì⁄ Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« "
Data PW_ReportName init "Projects"
Data PW_ReportWindowName init "DashProjectsReportWindow"
Data PW_PermissionID init 143
Data PW_ReportName2 init "ListOfProjects"
Method ShowWindow
Method MyTimer
Method DrawChart
Method CloseWindow
Method DrawLine
Method LoadData
Method UpdateDash
Method ClearData
Method OpenProjectsWindow
EndClass
Method ShowWindow Class DashClass
IF .not. UsersObject:CheckPermission(Self:PermissionID)
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1208 ;
HEIGHT 658 ;
ICON "PWCTICON" ;
TITLE self:cWindowTitle ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 335 ,759 IMAGE imagedownsel1;
PICTURE GetStartUpFolder()+"\image\downsel.jpg";
STRETCH ;
WIDTH 55 HEIGHT 48
self:oActiveX := TActiveX():New( self:cWindowName, "RMChart.RMChartX" , 10 , 476 , 270 , 140)
self:oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 200 ;
Action self:mytimer()
@ 580 ,502 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {150,252,196};
ON CLICK self:closewindow()  ;
WIDTH 196 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 438 ,740 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\c1.jpg";
ON CLICK self:openprojectswindow("3")  ;
STRETCH ;
WIDTH 100 HEIGHT 70
@ 438 ,359 IMAGE image2;
PICTURE GetStartUpFolder()+"\image\c2.jpg";
ON CLICK self:openprojectswindow("6")  ;
STRETCH ;
WIDTH 100 HEIGHT 70
@ 438 ,613 IMAGE image3;
PICTURE GetStartUpFolder()+"\image\c3.jpg";
ON CLICK self:openprojectswindow("4")  ;
STRETCH ;
WIDTH 100 HEIGHT 70
@ 438 ,486 IMAGE image4;
PICTURE GetStartUpFolder()+"\image\c4.jpg";
ON CLICK self:openprojectswindow("5")  ;
STRETCH ;
WIDTH 100 HEIGHT 70
@ 438 ,232 IMAGE image5;
PICTURE GetStartUpFolder()+"\image\c5.jpg";
ON CLICK self:openprojectswindow("7")  ;
STRETCH ;
WIDTH 100 HEIGHT 70
@ 409 ,754 LABEL lbl1 ;
VALUE "«· ﬁÌÌ„ «·›‰Ï" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,613 LABEL lbl2 ;
VALUE "«· ﬁÌÌ„ «·«” À„«—Ì" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,495 LABEL lbl3 ;
VALUE "„—Õ·…  ‰›Ì– 1" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,369 LABEL lbl4 ;
VALUE "„—Õ·…  ‰›Ì– 2" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 409 ,241 LABEL lbl5 ;
VALUE "„—Õ·…  ‰›Ì– 3" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
self:oActiveX2 := TActiveX():New( self:cWindowName, "RMChart.RMChartX" , 10 , 802 , 370 , 282)
self:oActiveX2:Load()
@ 514 ,755 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 514 ,629 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 514 ,502 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 514 ,376 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 514 ,247 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 545 ,755 TEXTBOX ptext1;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 545 ,629 TEXTBOX ptext2;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 544 ,502 TEXTBOX ptext3;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 546 ,376 TEXTBOX ptext4;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 544 ,247 TEXTBOX ptext5;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 266 ,476 PROGRESSBAR Progress1;
RANGE 0 , 100 ;
WIDTH 270 ;
HEIGHT 30 ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
@ 300 ,485 TEXTBOX ptext6;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 511 ,1074 LABEL tlbl1 ;
VALUE "  ⁄œœ «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 549 ,1074 LABEL tlbl2 ;
VALUE " ‰”»… «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 300 ,562 LABEL tlbl3 ;
VALUE "‰”»… «· —ÕÌ· ··„—«Õ· «· «·Ì…" ;
WIDTH 190 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 303 ,907 TEXTBOX ptext7;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 304 ,994 LABEL tlbl4 ;
VALUE "⁄œœ «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 146 ,477 IMAGE imageperformance;
PICTURE GetStartUpFolder()+"\Image\performance.jpg";
STRETCH ;
WIDTH 270 HEIGHT 116
DEFINE TIMER Timer2 INTERVAL 5000 ;
Action self:UpdateDash()
@ 378 ,230 LABEL tlblstages ;
VALUE "                      «Õ ÷«‰ «· ÿÊÌ— ··„‰ Ã" ;
WIDTH 360 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 409 ,974 LABEL lblgetfirst ;
VALUE "≈” ·«„ √Ê·Ï" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 438 ,968 IMAGE imagegetproject;
PICTURE GetStartUpFolder()+"\image\c6.jpg";
ON CLICK self:openprojectswindow("2")  ;
STRETCH ;
WIDTH 80 HEIGHT 70
@ 514 ,970 TEXTBOX textfirstget;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 545 ,970 TEXTBOX textfirstgetper;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 409 ,874 LABEL lblrefuse ;
VALUE "„—›Ê÷" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 438 ,859 IMAGE imagerefuseproject;
PICTURE GetStartUpFolder()+"\image\c7.jpg";
ON CLICK self:openprojectswindow("9")  ;
STRETCH ;
WIDTH 80 HEIGHT 70
@ 514 ,865 TEXTBOX textrefuse;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 545 ,865 TEXTBOX textrefuseper;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 378 ,14 LABEL lblinvest ;
VALUE "    «·«Õ ÷«‰ «·≈” À„«—Ì ··„‰ Ã" ;
WIDTH 200 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 417 ,15 IMAGE imageinvest;
PICTURE GetStartUpFolder()+"\image\c8.jpg";
ON CLICK self:openprojectswindow("8")  ;
STRETCH ;
WIDTH 197 HEIGHT 96
@ 514 ,75 TEXTBOX textinvest;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 545 ,75 TEXTBOX textinvestper;
HEIGHT 30 ;
WIDTH 70 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 378 ,1074 LABEL lblthestage ;
VALUE "     «·„—Õ·…" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 378 ,614 LABEL lblgetandvalue ;
VALUE "                                    «·≈” ·«„ Ê«· ﬁÌÌ„" ;
WIDTH 440 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 42 ,19 IMAGE imagedashtable;
PICTURE GetStartUpFolder()+"\image\dashtable.jpg";
STRETCH ;
WIDTH 435 HEIGHT 196
@ 97 ,206 TEXTBOX textDT11;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 97 ,148 TEXTBOX textDT12;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 97 ,88 TEXTBOX textDT13;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 97 ,31 TEXTBOX textDT14;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 145 ,206 TEXTBOX textDT21;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 145 ,148 TEXTBOX textDT22;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 145 ,88 TEXTBOX textDT23;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 145 ,31 TEXTBOX textDT24;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 193 ,206 TEXTBOX textDT31;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 193 ,148 TEXTBOX textDT32;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 193 ,88 TEXTBOX textDT33;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {150,252,196} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 193 ,31 TEXTBOX textDT34;
HEIGHT 30 ;
WIDTH 50 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

END WINDOW

&(self:cWindowName).timer1.Enabled := false
&(self:cWindowName).Center ( )
self:DataString := ""
myout = self:DrawChart()
myout = self:UpdateDash()
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method MyTimer Class DashClass
myangle := self:oactivex:OOLE:region(1):gridlessseries:StartAngle
IF myangle < 360
self:oactivex:OOLE:region(1):gridlessseries:StartAngle := myangle + 1
self:oactivex2:OOLE:region(1):gridlessseries:StartAngle := myangle + 1
ELSE
self:oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
self:oactivex2:OOLE:region(1):gridlessseries:StartAngle := 0
ENDIF
self:oactivex:OOLE:draw ( .T. )
self:oactivex2:OOLE:draw ( .T. )
Return 0
Method DrawChart Class DashClass
self:oactivex:OOLE:font := "Tahoma"
self:oactivex:OOLE:RMCstyle := 0
self:oactivex:OOLE:RMCUserWatermark := ""
self:oactivex:OOLE:addregion ( )
self:oactivex:OOLE:region(1):footer := ""
self:oactivex:OOLE:region(1):addcaption ( )
self:oactivex:OOLE:region(1):caption():titel := ""
self:oactivex:OOLE:region(1):caption():fontsize := 20
self:oactivex:OOLE:region(1):caption():bold := .t.
self:oactivex:OOLE:region(1) :addgridlessseries ( )
self:oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 56
self:oactivex:OOLE:region(1):gridlessseries:Alignment := 1
self:oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
self:oactivex:OOLE:region(1):gridlessseries:Lucent := .F.
self:oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 6
self:oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
self:oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
self:oactivex:OOLE:region(1):gridlessseries:DataString := self:performancestring
self:oactivex2:OOLE:font := "Tahoma"
self:oactivex2:OOLE:RMCstyle := 0
self:oactivex2:OOLE:RMCUserWatermark := ""
self:oactivex2:OOLE:addregion ( )
self:oactivex2:OOLE:region(1):footer := ""
self:oactivex2:OOLE:region(1):addcaption ( )
self:oactivex2:OOLE:region(1):caption():titel := ""
self:oactivex2:OOLE:region(1):caption():fontsize := 20
self:oactivex2:OOLE:region(1):caption():bold := .t.
self:oactivex2:OOLE:region(1) :addgridlessseries ( )
self:oactivex2:OOLE:region(1):gridlessseries:SeriesStyle := 52
self:oactivex2:OOLE:region(1):gridlessseries:Alignment := 1
self:oactivex2:OOLE:region(1):gridlessseries:Explodemode := 0
self:oactivex2:OOLE:region(1):gridlessseries:Lucent := .F.
self:oactivex2:OOLE:region(1):gridlessseries:ValueLabelOn := 6
self:oactivex2:OOLE:region(1):gridlessseries:HatchMode := 0
self:oactivex2:OOLE:region(1):gridlessseries:StartAngle := 0
self:oactivex2:OOLE:region(1):gridlessseries:DataString := self:datastring
self:oactivex2:OOLE:RMCBACKCOLOR := "&HFFFFFFFF"
self:oactivex2:OOLE:draw ( .T. )
&(self:cWindowName).timer1.Enabled := True
self:oactivex:OOLE:RMCBACKCOLOR := "&HFFFFFFFF"
self:oactivex:OOLE:draw ( .T. )
Return 0
Method CloseWindow Class DashClass
&(self:cWindowName).timer1.Enabled := false
self:oactivex:OOLE:reset ( )
self:oactivex2:OOLE:reset ( )
&(self:cWindowName).Release ( )
Return 0
Method DrawLine Class DashClass
Local XF,YF
IF self:lineper < 51
XF := 530+(1.6*SELF:LINEPER)
YF := 248-(1.5*SELF:LINEPER)
XF = ROUND (XF , 0)
YF = ROUND (YF , 0)
ELSE
XF := 610+(1.6*(SELF:LINEPER-50))
YF := 170+(1.5*(SELF:LINEPER-50))
XF = ROUND (XF , 0)
YF = ROUND (YF , 0)
ENDIF
ERASE WINDOW &(self:cWindowName)
DRAW LINE IN WINDOW &(self:cWindowName);
AT YF,XF;
TO 248,607;
PENCOLOR {0,0,0};
PENWIDTH 3

Return 0
Method LoadData Class DashClass
Local nStage,nCount,cDataStr,oRS
myout = self:Connect()
MYMAX := SELF:oRS:RecordCount
FOR x = 1 TO MYMAX STEP 1
nStage := self:oRS:fields:item("StageID"):value
nCount := self:oRS:fields:item("MyCount"):value
IF nStage = 3
self:c1 := nCount
ELSEIF nStage = 4
self:c2 := nCount
ELSEIF nStage = 5
self:c3 := nCount
ELSEIF nStage = 6
self:c4 := nCount
ELSEIF nStage = 7
self:c5 := nCount
ELSEIF nStage = 2
self:c6 := nCount
ELSEIF nStage = 8
self:c7 := nCount
ELSEIF nStage = 9
self:c8 := nCount
ENDIF
self:oRS:MOVENEXT()
Next
self:TotalCount := self:c1 + self:c2 + self:c3 + self:c4 + self:c5 + self:c6 + self:c7 + self:c8
self:TotalCount2 := self:c2 + self:c3 + self:c4 + self:c5 + self:c7
self:TotalCount3 := self:c3 + self:c4 + self:c5 + self:c7
self:TotalCount4 := self:c4 + self:c5 + self:c7
self:Tp2 := (self:c2/self:totalcount2)*100
self:Tp3 := (self:c3/self:totalcount3)*100
self:Tp4 := (self:c4/self:totalcount4)*100
self:TotalCount1 := self:c1 + self:c2 + self:c3 + self:c4 + self:c5 + self:c7
self:Tp1 := (self:c1/self:totalcount1)*100
self:TotalCount5 := self:c5 + self:c7
self:Tp5 := (self:c5/self:totalcount5)*100
self:p1 := (self:c1/self:totalcount)*100
self:p2 := (self:c2/self:totalcount)*100
self:p3 := (self:c3/self:totalcount)*100
self:p4 := (self:c4/self:totalcount)*100
self:p5 := (self:c5/self:totalcount)*100
self:C1 = STR ( self:c1 )
self:C2 = STR ( self:c2 )
self:C3 = STR ( self:c3 )
self:C4 = STR ( self:c4 )
self:C5 = STR ( self:c5 )
self:P1 = STR ( self:P1 )
self:P2 = STR ( self:P2 )
self:P3 = STR ( self:P3 )
self:P4 = STR ( self:P4 )
self:P5 = STR ( self:P5 )
SELF:C1 = ALLTRIM ( SELF:C1 )
SELF:C2 = ALLTRIM ( SELF:C2 )
SELF:C3 = ALLTRIM ( SELF:C3 )
SELF:C4 = ALLTRIM ( SELF:C4 )
SELF:C5 = ALLTRIM ( SELF:C5 )
SELF:P1 = ALLTRIM ( SELF:P1 )
SELF:P2 = ALLTRIM ( SELF:P2 )
SELF:P3 = ALLTRIM ( SELF:P3 )
SELF:P4 = ALLTRIM ( SELF:P4 )
SELF:P5 = ALLTRIM ( SELF:P5 )
self:p6 := (self:c6/self:totalcount)*100
self:C6 = STR ( self:c6 )
self:P6 = STR ( self:P6 )
SELF:C6 = ALLTRIM ( SELF:C6 )
SELF:P6 = ALLTRIM ( SELF:P6 )
self:p7 := (self:c7/self:totalcount)*100
self:C7 = STR ( self:c7 )
self:P7 = STR ( self:P7 )
SELF:C7 = ALLTRIM ( SELF:C7 )
SELF:P7 = ALLTRIM ( SELF:P7 )
self:p8 := (self:c8/self:totalcount)*100
self:C8 = STR ( self:c8 )
self:P8 = STR ( self:P8 )
SELF:C8 = ALLTRIM ( SELF:C8 )
SELF:P8 = ALLTRIM ( SELF:P8 )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from " + self:BasicDataTableName + " where 1 = 1 " + self:ComplexSearch,self:oCon,3,3 )
oRS:MOVEFIRST()
num1 := oRS:fields:item("num1"):value
num2 := oRS:fields:item("num2"):value
oRS:Close()
&(self:cWindowName).textDT11.Value := num1
&(self:cWindowName).textDT21.Value := num2
&(self:cWindowName).textDT31.Value := (num1 + num2)
num3 := val(self:c3)+val(self:c4)+val(self:c5)
num4 := val(self:c7)
&(self:cWindowName).textDT12.Value := num3
&(self:cWindowName).textDT22.Value := num4
&(self:cWindowName).textDT32.Value := num3+num4
&(self:cWindowName).textDT13.Value := num3-num1
&(self:cWindowName).textDT23.Value := num4-num2
&(self:cWindowName).textDT33.Value := (num3+num4)-(num1+num2)
num5 := (num3/num1)*100
num6 := (num4/num2)*100
num7 := ((num3+num4)/(num1+num2))*100
num5 = STR ( num5 )
num6 = STR ( num6 )
num7 = STR ( num7 )
num5 = ALLTRIM ( num5 )
num6 = ALLTRIM ( num6 )
num7 = ALLTRIM ( num7 )
&(self:cWindowName).textDT14.Value := num5
&(self:cWindowName).textDT24.Value := num6
&(self:cWindowName).textDT34.Value := num7
oldDataString := self:DataString
self:DataString := SELF:C1 +"*"+ SELF:C2 +"*"+ SELF:C3 +"*"+ SELF:C4 +"*"+ SELF:C5+"*"+self:c7+"*"+self:c6+"*"+self:c8
IF self:DataString == OldDataString
Return False
ENDIF
self:TotalCount = STR ( self:TotalCount )
&(self:cWindowName).ptext7.Value := self:TotalCount
&(self:cWindowName).text1.Value := self:c1
&(self:cWindowName).text2.Value := self:c2
&(self:cWindowName).text3.Value := self:c3
&(self:cWindowName).text4.Value := self:c4
&(self:cWindowName).text5.Value := self:c5
&(self:cWindowName).ptext1.Value := self:p1
&(self:cWindowName).ptext2.Value := self:p2
&(self:cWindowName).ptext3.Value := self:p3
&(self:cWindowName).ptext4.Value := self:p4
&(self:cWindowName).ptext5.Value := self:p5
&(self:cWindowName).textFirstGet.Value := self:c6
&(self:cWindowName).textFirstGetPer.Value := self:p6
&(self:cWindowName).textInvest.Value := self:c7
&(self:cWindowName).textInvestPer.Value := self:p7
&(self:cWindowName).textRefuse.Value := self:c8
&(self:cWindowName).textRefusePer.Value := self:p8
myout = self:Disconnect()
Return True
Method UpdateDash Class DashClass
myout = self:ClearData()
myout = self:LoadData()
IF myout = True
self:oactivex2:OOLE:region(1):gridlessseries:DataString := self:datastring
self:oactivex2:OOLE:draw ( .T. )
ENDIF
self:ActivePerformance := self:ActivePerformance+1
IF self:activeperformance = 6
self:ActivePerformance := 1
ENDIF
IF self:ActivePerformance = 1
Self:LinePer := 100 - self:TP1
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := self:lineper + "*0*0*0*0*" + alltrim(str(self:tp1))
&(self:cWindowName).ImageDownSel1.Col := 759
ELSEIF self:ActivePerformance = 2
Self:LinePer := 100 - self:Tp2
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*" + self:Lineper + "*0*0*0*" + alltrim(str(self:tp2))
&(self:cWindowName).ImageDownSel1.Col := 759-130
ELSEIF self:ActivePerformance = 3
Self:LinePer := 100 - self:Tp3
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*0*" + self:lineper + " *0*0*" + alltrim(str(self:tp3))
&(self:cWindowName).ImageDownSel1.Col := 759-260
ELSEIF self:ActivePerformance = 4
Self:LinePer := 100 - self:Tp4
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*0*0*" + self:lineper + "*0*" + alltrim(str(self:tp4))
&(self:cWindowName).ImageDownSel1.Col := 759-380
ELSEIF self:ActivePerformance = 5
Self:LinePer := 100 - self:tp5
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*0*0*0*" + self:lineper + "*" + alltrim(str(self:tp5))
&(self:cWindowName).ImageDownSel1.Col := 759-500
ENDIF
self:oactivex:OOLE:region(1):gridlessseries:DataString := self:performancestring
self:oactivex:OOLE:draw ( .T. )
&(self:cWindowName).pText6.Value := self:LinePer
Self:LinePer = VAL ( self:LinePer )
myout = Self:DrawLine()
&(self:cWindowName).Progress1.Value := self:LinePer
Return 0
Method ClearData Class DashClass
self:p1 := 0
self:p2 := 0
self:p3 := 0
self:p4 := 0
self:p5 := 0
self:c1 := 0
self:c2 := 0
self:c3 := 0
self:c4 := 0
self:c5 := 0
self:C6 := 0
self:C7 := 0
self:C8 := 0
self:P6 := 0
self:P7 := 0
self:P8 := 0
Return 0
Method OpenProjectsWindow(p1) Class DashClass
Local mypwobj
mypwobj = projectsclass()
mypwobj:complexsearch := Self:ComplexSearch + " and ( Projects.StageID =  " + p1 + ")"
mypwobj:cWindowName := "pwobj"+p1+self:cWindowName
mypwobj:TableName := self:pw_TableName
mypwobj:SubTable1 := self:pw_SubTable1
mypwobj:SubTable2 := self:pw_SubTable2
mypwobj:WindowTitle := self:pw_WindowTitle
mypwobj:ReportName := self:pw_ReportName
mypwobj:ReportWindowName := self:pw_ReportWindowName
mypwobj:PermissionID := self:pw_PermissionID
mypwobj:ReportName2 := self:pw_ReportName2
myout = mypwobj:ShowWindow()
Return 0



End Of Resistance

*-------------------------------------------------------------------*
