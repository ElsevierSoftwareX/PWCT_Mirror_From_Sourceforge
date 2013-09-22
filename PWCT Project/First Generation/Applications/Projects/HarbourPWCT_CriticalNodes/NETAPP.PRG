*---------------------------------------------------------------------------*
* Time : 18:43:39    Date : 09/22/2013
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


Resistance R_NETAPP_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NETAPP_18smart1() code
oNetApp = NetApp()
oSettings = Settings()
oNodesTable = NodesTable()
myout = oNetApp:ShowWindow()
Class NetApp
Method ShowWindow
Method CloseWindow
Method Settings
Method NodesTable
Method WindowInit
EndClass
Method ShowWindow Class NetApp
if !iswindowdefined( winNetApp )
DEFINE WINDOW winNetApp ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT self:WindowInit()  ;
ICON "PWCTICON" ;
TITLE "NetApp  " ;
MAIN ;
BACKCOLOR {236,233,216} 
DEFINE MAIN MENU
POPUP "File "
MENUITEM "New network settings " Action self:Settings()
MENUITEM "Nodes Table " Action self:NodesTable()
MENUITEM "Exit " Action self:CloseWindow()
END POPUP
END MENU
DEFINE STATUSBAR 
DATE
CLOCK
KEYBOARD
END STATUSBAR
END WINDOW
ACTIVATE WINDOW winNetApp
EndIF
Return 0
Method CloseWindow Class NetApp
winNetApp.Release ( )
Return 0
Method Settings Class NetApp
myout = oSettings:ShowWindow()
Return 0
Method NodesTable Class NetApp
myout = oNodesTable:ShowWindow()
Return 0
Method WindowInit Class NetApp
winNetApp.Maximize ( )
myout = self:Settings()
Return 0
Class Settings
Data nWidth init 600
Data nHeight init 350
Data nNodes init 3
Data nRange init 100
Method ShowWindow
Method CloseWindow
Method SaveData
Method WindowInit
EndClass
Method ShowWindow Class Settings
if !iswindowdefined( winSettings )
DEFINE WINDOW winSettings ;
AT 10 ,10 ;
WIDTH 316 ;
HEIGHT 314 ;
ON INIT self:WindowInit()  ;
ICON "PWCTICON" ;
TITLE " New Network Settings  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
@ 19 ,25 LABEL lbl1 ;
VALUE " Area " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 146 ,25 LABEL lbl2 ;
VALUE " Number of nodes " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 184 ,25 LABEL lbl3 ;
VALUE " Transmission Range " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 54 ,25 LABEL lbl4 ;
VALUE "Width " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 92 ,25 LABEL lbl5 ;
VALUE "Height " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 44 ,183 TEXTBOX textWidth;
HEIGHT 30 ;
WIDTH 80 ;
VALUE self:nWidth ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 84 ,183 TEXTBOX textHeight;
HEIGHT 30 ;
WIDTH 80 ;
VALUE Self:nHeight ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 141 ,183 TEXTBOX textNodes;
HEIGHT 30 ;
WIDTH 80 ;
VALUE Self:nNodes ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 181 ,183 TEXTBOX textRange;
HEIGHT 30 ;
WIDTH 80 ;
VALUE Self:nRange ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 236 ,48 BUTTONEX btnSave;
CAPTION "Run ";
ON CLICK self:SaveData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 236 ,157 BUTTONEX btnClose;
CAPTION "Cancel ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW winSettings
EndIF
Return 0
Method CloseWindow Class Settings
winSettings.Release ( )
Return 0
Method SaveData Class Settings
self:nWidth := winSettings.textWidth.Value
self:nHeight := winSettings.textHeight.Value
self:nNodes := winSettings.textNodes.Value
self:nRange := winSettings.textRange.Value
myout = Self:CloseWindow()
myout = oNodesTable:ShowWindow()
Return 0
Method WindowInit Class Settings
winSettings.Center ( )
Return 0
Class NodesTable
Data Header init {"ID","X","Y","Transmission Range","Is connected ?","Number of connections","Is Critical ?","1-Hop Critical","2-Hop Critical","3-Hop Critical"}
Data Widths init {70,70,70,200,100,200,100,100,100,100}
Data Nodes init {}
Method ShowWindow
Method LoadNodesData
Method ShowNodesData
Method DrawNodes
Method GridChange
Method CloseWindow
Method FindCriticalNodes
Method OneHop
Method Determine2HopsNeighbors
Method TwoHops
Method ShowNeighbors
Method SaveNetwork
Method LoadNetwork
Method Statistics
Method SavetoTXT
Method LoadFromTXT
Method Find1HopUsingRules
Method Find2HopUsingRules
Method RefreshNodesCount
Method Export2Excel
Method ThreeHops
Method Determine3HopsNeighbors
Method Find3HopUsingRules
Method WindowInit
Method DrawNodesProcess
Method GetAllConnections
Method ShowHops
Method CheckNodes
EndClass
Method ShowWindow Class NodesTable
myout = Self:LoadNodesData()
if !iswindowdefined( winNodesTable )
DEFINE WINDOW winNodesTable ;
AT 10 ,10 ;
WIDTH 1173 ;
HEIGHT 523 ;
ON INIT self:WindowInit()  ;
ICON "PWCTICON" ;
TITLE " Nodes Table  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
@ 7 ,6 GRID Grid1;
ON LOSTFOCUS Self:GridChange()  ;
ON CHANGE Self:ShowNeighbors()  ;
WIDTH 1150 ;
HEIGHT 160 ;
HEADERS self:header;
WIDTHS self:widths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 441 ,17 BUTTONEX btn2;
CAPTION " Draw Network ";
ON CLICK Self:DrawNodes()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 179 ,8 LABEL lbl6 ;
VALUE "1-Hop Neighbors " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 208 ,9 LISTBOX list1;
WIDTH 100 ;
HEIGHT 160 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 179 ,126 LABEL lbl7 ;
VALUE "2-Hops Neighbors " ;
WIDTH 120 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 208 ,125 LISTBOX list2;
WIDTH 100 ;
HEIGHT 160 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 208 ,354 LISTBOX ListConnections;
WIDTH 120 ;
HEIGHT 160 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 179 ,359 LABEL lbl8 ;
VALUE "Connections " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 441 ,205 BUTTONEX btnSaveNetwork;
CAPTION "Save network to DBF file ";
ON CLICK Self:SaveNetwork()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 441 ,397 BUTTONEX btnLoadNetwork;
CAPTION "Load network from DBF file ";
ON CLICK Self:LoadNetwork()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,487 LABEL lbl9 ;
VALUE "Average Node Degree " ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 216 ,487 LABEL lbl10 ;
VALUE "Leaf Nodes " ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 283 ,487 LABEL lbl11 ;
VALUE "No. of critical nodes " ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 324 ,487 LABEL lbl12 ;
VALUE "No. of non-critical nodes " ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 363 ,487 LABEL lbl13 ;
VALUE "Intermediate non-critical nodes" ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 258 ,681 LABEL lbl14 ;
VALUE "global information" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 258 ,798 LABEL lbl15 ;
VALUE "1-hop information" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 178 ,681 TEXTBOX textAvgNodeDegree;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 217 ,681 TEXTBOX textLeafNodes;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 283 ,681 TEXTBOX textCriticalGlobal;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 324 ,681 TEXTBOX textNonCriticalGlobal;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 283 ,798 TEXTBOX textCritical1Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 324 ,798 TEXTBOX textNonCritical1Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 362 ,681 TEXTBOX textIntermediateGlobal;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 362 ,798 TEXTBOX textIntermediate1Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 402 ,487 LABEL lbl16 ;
VALUE "Accuracy " ;
WIDTH 180 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 402 ,798 TEXTBOX textAccuracy;
HEIGHT 30 ;
WIDTH 110 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 402 ,681 TEXTBOX textGlobalAccuracy;
HEIGHT 30 ;
WIDTH 110 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 441 ,586 BUTTONEX btnSaveToTXT;
CAPTION "Save network to TXT file ";
ON CLICK Self:SaveToTXT()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 441 ,776 BUTTONEX btnLoadFromTXT;
CAPTION "Load network from TXT file ";
ON CLICK Self:LoadFromTXT()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 258 ,918 LABEL lbl2hopinf ;
VALUE "2-hop information" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 283 ,918 TEXTBOX textCritical2Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 324 ,918 TEXTBOX textNonCritical2Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 362 ,918 TEXTBOX textIntermediate2Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 402 ,918 TEXTBOX text2hopAccuracy;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 441 ,966 BUTTONEX btnExport2Excel;
CAPTION "Export to Excel ";
ON CLICK Self:Export2Excel()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 180 ,240 LABEL lbl17 ;
VALUE "3-Hop Neighbors " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 208 ,240 LISTBOX list3;
WIDTH 100 ;
HEIGHT 160 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 258 ,1038 LABEL lbl3hopinf ;
VALUE "3-hop information" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 283 ,1038 TEXTBOX textCritical3Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 324 ,1038 TEXTBOX textNonCritical3Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 362 ,1038 TEXTBOX textIntermediate3Hop;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 402 ,1038 TEXTBOX text3hopAccuracy;
HEIGHT 30 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
ACTIVATE WINDOW winNodesTable
EndIF
Return 0
Method LoadNodesData Class NodesTable
Local aNode,nMax,nMax2
nMax  = LEN(self:Nodes)
IF nMax != oSettings:nNodes
self:Nodes := {}
nMax := 0
ENDIF
IF nMax = 0
nMax2 := oSettings:nNodes
IF nMax2 > 0
FOR x = 1 TO nMax2 STEP 1
AADD( Self:Nodes , {x,x*100,100,oSettings:nRange,"No",0,"No",{},"No",{},"No",{},"No"})
Next
ENDIF
ENDIF
nMax  = LEN(self:Nodes)
FOR x = 1 TO nMax STEP 1
self:Nodes[x][4] := oSettings:nRange
Next
Return 0
Method ShowNodesData Class NodesTable
Local nMax
nMax  = LEN(self:Nodes)
IF nMax > 0
winNodesTable.Grid1.DeleteAllItems ( )
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
aNode[1] = STR ( aNode[1] )
aNode[1] = ALLTRIM ( aNode[1] )
aNode[2] = STR ( aNode[2] )
aNode[2] = ALLTRIM ( aNode[2] )
aNode[3] = STR ( aNode[3] )
aNode[3] = ALLTRIM ( aNode[3] )
aNode[4] = STR ( aNode[4] )
aNode[4] = ALLTRIM ( aNode[4] )
aNode[6] = STR ( aNode[6] )
aNode[6] = ALLTRIM ( aNode[6] )
winNodesTable.Grid1.AddItem ( {aNode[1],aNode[2],aNode[3],aNode[4],aNode[5],aNode[6],aNode[7],aNode[9],aNode[11],aNode[13]} )
aNode[1] = VAL ( aNode[1] )
aNode[2] = VAL ( aNode[2] )
aNode[3] = VAL ( aNode[3] )
aNode[4] = VAL ( aNode[4] )
aNode[6] = VAL ( aNode[6] )
Next
ENDIF
Return 0
Method DrawNodes Class NodesTable
Local nMax,aNode,nX,nY,nX2,nY2,cID
if !iswindowdefined( winArea )
DEFINE WINDOW winArea ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT self:DrawNodesProcess()  ;
ICON "PWCTICON" ;
TITLE " Network  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,255,255} 
END WINDOW
ACTIVATE WINDOW winArea
EndIF
Return 0
Method GridChange Class NodesTable
Local nRow,cX,cY
nRow := winNodesTable.Grid1.Value
IF nRow > 0
cX := winNodesTable.Grid1.cell(nRow,2)
cY := winNodesTable.Grid1.cell(nRow,3)
cX = VAL ( cX )
cY = VAL ( cY )
self:nodes[nrow][2] := cX
self:nodes[nrow][3] := cY
cRange := winNodesTable.Grid1.cell(nRow,4)
cRange = VAL ( cRange )
self:nodes[nrow][4] := cRange
ENDIF
Return 0
Method CloseWindow Class NodesTable
winNodesTable.Release ( )
Return 0
Method OneHop Class NodesTable
myout = self:ShowHops(8,"list1")
Return 0
Method Determine2HopsNeighbors Class NodesTable
Local nMax,x,nMax2,x2,aNode,subNodes
nMax  = LEN(self:Nodes)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[8]
nMax2  = LEN(subNodes)
aNode[10] := {}
FOR x2 = 1 TO nMax2 STEP 1
AADD( aNode[10] , subNodes[x2])
aNode2 := self:Nodes[subNodes[x2]]
subNodes2 := aNode2[8]
nMax3  = LEN(subNodes2)
IF nMax3 > 0
FOR x3 = 1 TO nMax3 STEP 1
IF .not. subNodes2[x3]  = x
AADD( aNode[10] , subNodes2[x3])
ENDIF
Next
ENDIF
Next
Next
ENDIF
Return 0
Method TwoHops Class NodesTable
myout = self:ShowHops(10,"list2")
Return 0
Method ShowNeighbors Class NodesTable
myout = Self:OneHop()
myout = Self:TwoHops()
myout = Self:ThreeHops()
Return 0
Method FindCriticalNodes Class NodesTable
Local nMax,aConnections
aConnections := {}
nMax  = LEN(self:Nodes)
winNodesTable.ListConnections.DeleteAllItems ( )
IF nMax > 0
nConnectedNodes := 0
aConnections = self:GetAllConnections ( True )
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
IF aNode[6] > 0
nConnectedNodes := nConnectedNodes + 1
ENDIF
Next
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
IF aNode[6] > 1
ActiveNodes := {}
nMax2  = LEN(aConnections)
nNetworkSize  = LEN(ActiveNodes)
myout = self:CheckNodes(@aConnections,@ActiveNodes)
nNetworkSize  = LEN(ActiveNodes)
IF nNetworkSize < (nConnectedNodes-1)
aNode[7] := "Yes"
winNodesTable.Grid1.cell(x,7) := aNode[7]
ELSE
aNode[7] := "No"
winNodesTable.Grid1.cell(x,7) := aNode[7]
ENDIF
ENDIF
Next
ENDIF
Return 0
Method SaveNetwork Class NodesTable
PutFile := PutFile ( { {"Database","*.dbf"} } , ;
, ;
, ;
, ;
)
IF PutFile == ""
Return 0
ENDIF
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "Node_X",;
Field_type WITH "N",;
Field_len WITH 3,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Node_Y",;
Field_type WITH "N",;
Field_len WITH 3,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Node_R",;
Field_type WITH "N",;
Field_len WITH 3,;
Field_dec WITH 0
CLOSE
CREATE &putfile FROM TempStru
nMax  = LEN(self:Nodes)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Use &putfile
Append Blank
REPLACE Node_X WITH Self:Nodes[x][2]
REPLACE Node_Y WITH Self:Nodes[x][3]
REPLACE Node_R WITH Self:Nodes[x][4]
Next
close
ENDIF
MyOut := MSGBOX("Network data saved to file " + PutFile," Ok ")
Delete File TempStru.dbf
Return 0
Method LoadNetwork Class NodesTable
GetFile := GetFile ( { {"Database","*.dbf"}  } , ;
, ;
, ;
, ;
)
IF .NOT. GetFile == ""
CheckFile := File(GetFile)
IF CheckFile
Use &GetFile
Goto Top
bEOF := EOF()
Self:Nodes := {}
DO WHILE  .NOT. bEOF
AADD( Self:Nodes , {Recno(),NODE_X,NODE_Y,NODE_R,"No",0,"No",{},"No",{},"No",{},"No"})
Skip 1
bEOF := EOF()
ENDDO
myout = Self:ShowNodesData()
myout = Self:RefreshNodesCount()
close
myout = Self:DrawNodes()
ENDIF
ENDIF
Return 0
Method Statistics Class NodesTable
Local nConnections,nMax,x
nMax  = LEN(self:Nodes)
IF nMax = 0
Return 0
ENDIF
nLeafNodes := 0
nCriticalGlobal := 0
nCritical1Hop := 0
nNonCriticalGlobal := 0
nNonCritical1Hop := 0
nAccuracy := 0
nCritical2Hop := 0
nNonCritical2Hop := 0
nAccuracy2 := 0
nConnections := 0
nCritical3Hop := 0
nNonCritical3Hop := 0
nAccuracy3 := 0
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
IF aNode[6] = 1
nLeafNodes := nLeafNodes + 1
ENDIF
IF aNode[7] = "Yes"
nCriticalGlobal := nCriticalGlobal + 1
ELSE
nNonCriticalGlobal := nNonCriticalGlobal + 1
ENDIF
IF aNode[9] = "Yes"
nCritical1Hop := nCritical1Hop + 1
ELSE
nNonCritical1Hop := nNonCritical1Hop + 1
ENDIF
IF aNode[7] = aNode[9]
nAccuracy := nAccuracy + 1
ENDIF
IF aNode[11] = "Yes"
nCritical2Hop := nCritical2Hop + 1
ELSE
nNonCritical2Hop := nNonCritical2Hop + 1
ENDIF
IF aNode[7] = aNode[11]
nAccuracy2 := nAccuracy2 + 1
ENDIF
IF aNode[13] = "Yes"
nCritical3Hop := nCritical3Hop + 1
ELSE
nNonCritical3Hop := nNonCritical3Hop + 1
ENDIF
IF aNode[7] = aNode[13]
nAccuracy3 := nAccuracy3 + 1
ENDIF
nConnections := nConnections + aNode[6]
Next
nIntermediateGlobal := nNonCriticalGlobal - nLeafNodes
nIntermediate1Hop := nNonCritical1Hop - nLeafNodes
nAccuracy := ( nAccuracy / nMax ) * 100
nIntermediate2Hop := nNonCritical2Hop - nLeafNodes
nAccuracy2 := ( nAccuracy2 / nMax ) * 100
nIntermediate3Hop := nNonCritical3Hop - nLeafNodes
nAccuracy3 := ( nAccuracy3 / nMax ) * 100
nAvgNodeDegree := nConnections/nMax
winNodesTable.textAvgNodeDegree.Value := alltrim(str(nAvgNodeDegree))
winNodesTable.textLeafNodes.Value := alltrim(str(nLeafNodes))
winNodesTable.textCriticalGlobal.Value := alltrim(str(nCriticalGlobal))
winNodesTable.textNonCriticalGlobal.Value := alltrim(str(nNonCriticalGlobal))
winNodesTable.textCritical1Hop.Value := alltrim(str(nCritical1Hop))
winNodesTable.textNonCritical1Hop.Value := alltrim(str(nNonCritical1Hop))
winNodesTable.textIntermediateGlobal.Value := alltrim(str(nIntermediateGlobal))
winNodesTable.textIntermediate1Hop.Value := alltrim(str(nIntermediate1Hop))
winNodesTable.textAccuracy.Value := alltrim(str(nAccuracy)) + "%"
winNodesTable.textGlobalAccuracy.Value := "100%"
winNodesTable.textCritical2Hop.Value := alltrim(str(nCritical2Hop))
winNodesTable.textNonCritical2Hop.Value := alltrim(str(nNonCritical2Hop))
winNodesTable.textIntermediate2Hop.Value := alltrim(str(nIntermediate2Hop))
winNodesTable.text2hopAccuracy.Value := alltrim(str(nAccuracy2)) + "%"
winNodesTable.textCritical3Hop.Value := alltrim(str(nCritical3Hop))
winNodesTable.textNonCritical3Hop.Value := alltrim(str(nNonCritical3Hop))
winNodesTable.textIntermediate3Hop.Value := alltrim(str(nIntermediate3Hop))
winNodesTable.text3hopAccuracy.Value := alltrim(str(nAccuracy3)) + "%"
Return 0
Method SaveToTXT Class NodesTable
PutFile := PutFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
IF PutFile == ""
Return 0
ENDIF
nMax  = LEN(self:Nodes)
IF nMax > 0
cStr := ""
FOR x = 1 TO nMax STEP 1
cStr := cStr + CHR(13) + CHR(10) + Alltrim(Str(Self:Nodes[x][2])) + CHR(13) + CHR(10) + alltrim(str(Self:Nodes[x][3]))
Next
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,cStr)
FCLOSE(RPWI_TH)
ENDIF
MyOut := MSGBOX("Network data saved to file " + PutFile," Ok ")
Return 0
Method LoadFromTXT Class NodesTable
GetFile := GetFile ( { {"Text","*.txt"}  } , ;
, ;
, ;
, ;
)
IF .NOT. GetFile == ""
CheckFile := File(GetFile)
IF CheckFile
cStr := FILESTR( GetFile )
nMax = MLCOUNT( cStr , 254 )
IF nMax > 0
Self:Nodes := {}
nCounter := 0
FOR x = 1 TO nMax STEP 2
cLine = MEMOLINE( cStr , 254 , x )
cLine = ALLTRIM ( cLine )
IF .not. cLine == ""
nCounter := nCounter + 1
ELSE
X := X - 1
Loop
ENDIF
nX := cLine
nX = VAL ( nX )
cLine = MEMOLINE( cStr , 254 , x+1 )
cLine = ALLTRIM ( cLine )
nY := cLine
nY = VAL ( nY )
AADD( Self:Nodes , {nCounter,nX,nY,100,"No",0,"No",{},"No",{},"No",{},"No"})
Next
myout = Self:ShowNodesData()
myout = Self:RefreshNodesCount()
ENDIF
myout = Self:DrawNodes()
ENDIF
ENDIF
Return 0
Method Find1HopUsingRules Class NodesTable
Local nMax,aConnections
aConnections := {}
nMax  = LEN(self:Nodes)
IF nMax > 0
aConnections = self:GetAllConnections()
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[8]
nSubCount  = LEN(subNodes)
IF aNode[6] > 1
ActiveNodes := {}
nMax2  = LEN(aConnections)
nNetworkSize  = LEN(ActiveNodes)
myout = self:CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)
nNetworkSize  = LEN(ActiveNodes)
nConnectedNodes := nSubCount + 1
IF nNetworkSize < (nConnectedNodes-1)
aNode[9] := "Yes"
winNodesTable.Grid1.cell(x,8) := aNode[9]
ELSE
aNode[9] := "No"
winNodesTable.Grid1.cell(x,8) := aNode[9]
ENDIF
ENDIF
Next
ENDIF
Return 0
Method Find2HopUsingRules Class NodesTable
Local nMax,aConnections
aConnections := {}
nMax  = LEN(self:Nodes)
IF nMax > 0
aConnections = self:GetAllConnections()
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[10]
nSubCount  = LEN(subNodes)
IF aNode[6] > 1
ActiveNodes := {}
nMax2  = LEN(aConnections)
nNetworkSize  = LEN(ActiveNodes)
myout = self:CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)
nNetworkSize  = LEN(ActiveNodes)
subNodes := aNode[8]
nSubCount  = LEN(subNodes)
nAvoid := 0
FOR t = 1 TO nNetworkSize STEP 1
lFound := False
FOR t2 = 1 TO nSubCount STEP 1
IF ActiveNodes[t] = SubNodes[t2]
lFound := True
Exit
ENDIF
Next
IF lFound = False
nAvoid := nAvoid + 1
ENDIF
Next
nNetworkSize := nNetworkSize - nAvoid
nConnectedNodes := nSubCount + 1
IF nNetworkSize < (nConnectedNodes-1)
aNode[11] := "Yes"
winNodesTable.Grid1.cell(x,9) := aNode[11]
ELSE
aNode[11] := "No"
winNodesTable.Grid1.cell(x,9) := aNode[11]
ENDIF
ENDIF
Next
ENDIF
Return 0
Method RefreshNodesCount Class NodesTable
nMax  = LEN(self:Nodes)
oSettings:nNodes := nMax
Return 0
Method Export2Excel Class NodesTable
PutFile := PutFile ( { {"Excel","*.xls"}  } , ;
, ;
, ;
, ;
)
IF PutFile == ""
Return 0
ENDIF
StartUpFolder := GetStartUpFolder()
Copy File (StartupFolder + "\template.excel") to &PutFile
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Driver={Microsoft Excel Driver (*.xls)};Dbq='+PutFile + " ; ReadOnly=False; " )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from [Sheet1$]",oCon,3,3 )
oRS:MOVEFIRST()
oRS:fields:item(1):value := oSettings:nNodes
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := oSettings:nRange
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textAvgNodeDegree.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textLeafNodes.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textCriticalGlobal.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textNonCriticalGlobal.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textIntermediateGlobal.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textGlobalAccuracy.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textCritical1hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textNonCritical1hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textIntermediate1hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textAccuracy.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textCritical2hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textNonCritical2hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textIntermediate2hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.text2hopAccuracy.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textCritical3hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textNonCritical3hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.textIntermediate3hop.value
oRS:UPDATE()
oRS:MOVENEXT()
oRS:fields:item(1):value := winNodesTable.text3hopAccuracy.value
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done ","Ok ")
Return 0
Method ThreeHops Class NodesTable
myout = self:ShowHops(12,"list3")
Return 0
Method Determine3HopsNeighbors Class NodesTable
Local nMax,x,nMax2,x2,aNode,subNodes
nMax  = LEN(self:Nodes)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[10]
nMax2  = LEN(subNodes)
aNode[12] := {}
FOR x2 = 1 TO nMax2 STEP 1
AADD( aNode[12] , subNodes[x2])
aNode2 := self:Nodes[subNodes[x2]]
subNodes2 := aNode2[8]
nMax3  = LEN(subNodes2)
IF nMax3 > 0
FOR x3 = 1 TO nMax3 STEP 1
IF .not. subNodes2[x3]  = x
AADD( aNode[12] , subNodes2[x3])
ENDIF
Next
ENDIF
Next
Next
ENDIF
Return 0
Method Find3HopUsingRules Class NodesTable
Local nMax,aConnections
aConnections := {}
nMax  = LEN(self:Nodes)
IF nMax > 0
aConnections = self:GetAllConnections()
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[12]
nSubCount  = LEN(subNodes)
IF aNode[6] > 1
ActiveNodes := {}
nMax2  = LEN(aConnections)
nNetworkSize  = LEN(ActiveNodes)
myout = self:CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)
nNetworkSize  = LEN(ActiveNodes)
subNodes := aNode[8]
nSubCount  = LEN(subNodes)
nAvoid := 0
FOR t = 1 TO nNetworkSize STEP 1
lFound := False
FOR t2 = 1 TO nSubCount STEP 1
IF ActiveNodes[t] = SubNodes[t2]
lFound := True
Exit
ENDIF
Next
IF lFound = False
nAvoid := nAvoid + 1
ENDIF
Next
nNetworkSize := nNetworkSize - nAvoid
nConnectedNodes := nSubCount + 1
IF nNetworkSize < (nConnectedNodes-1)
aNode[13] := "Yes"
winNodesTable.Grid1.cell(x,10) := aNode[13]
ELSE
aNode[13] := "No"
winNodesTable.Grid1.cell(x,10) := aNode[13]
ENDIF
ENDIF
Next
ENDIF
Return 0
Method WindowInit Class NodesTable
winNodesTable.Center ( )
myout = Self:ShowNodesData()
myout = Self:DrawNodes()
Return 0
Method DrawNodesProcess Class NodesTable
winArea.Width := oSettings:nWidth
winArea.Height := oSettings:nHeight
nMax  = LEN(self:Nodes)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
nX := aNode[2]
nY := aNode[3]
nX2 := nX + 10
nY2 := nY + 10
DRAW RECTANGLE IN WINDOW winArea;
AT nY,nX;
TO nY2,nX2;
FILLCOLOR {128,0,255}
nY2 := nY + 11
cID := aNode[1]
cID = STR ( cID )
DRAW TEXT IN WINDOW winArea;
AT nY2,nX;
VALUE cID
aNode[6] := 0
aNode[8] := {}
FOR t = 1 TO nMax STEP 1
IF t != x
aNode2 := {}
aNode2 := Self:Nodes[t]
n2X := aNode2[2]
n2Y := aNode2[3]
distance := ((n2x-nx)^2)+((n2y-ny)^2)
distance  = SQRT (distance)
IF distance <= aNode[4]
aNode[5] := "Yes"
aNode[6] := aNode[6] + 1
DRAW RECTANGLE IN WINDOW winArea;
AT nY,nX;
TO nY2,nX2;
FILLCOLOR {128,128,0}
winNodesTable.Grid1.cell(x,5) := aNode[5]
winNodesTable.Grid1.cell(x,6) := alltrim(str(aNode[6]))
DRAW LINE IN WINDOW winArea;
AT nY,nX;
TO n2Y,n2X;
PENCOLOR {128,128,0};
PENWIDTH 2
AADD( aNode[8] , t)
ENDIF
ENDIF
Next
Next
ENDIF
myout = self:FindCriticalNodes()
myout = Self:OneHop()
myout = Self:Determine2HopsNeighbors()
myout = Self:TwoHops()
myout = Self:Determine3HopsNeighbors()
myout = Self:ThreeHops()
myout = self:Find1HopUsingRules()
myout = self:Find2HopUsingRules()
myout = self:Find3HopUsingRules()
myout = self:Statistics()
Return 0
Method GetAllConnections(lShow) Class NodesTable
Local nMax,aConnections
aConnections := {}
nMax  = LEN(self:Nodes)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
aNode := {}
aNode := Self:Nodes[x]
subNodes := aNode[8]
nMax2  = LEN(subNodes)
FOR x2 = 1 TO nMax2 STEP 1
aNode2 := SubNodes[x2]
IF aNode2 > x
AADD( aConnections , {x,aNode2})
IF pCount() > 0
winNodesTable.ListConnections.AddItem ( alltrim(str(x)) + " <---> " + alltrim(str(aNode2)) )
ENDIF
ENDIF
Next
Next
ENDIF
Return aConnections
Method ShowHops(nArrayPos,cListName) Class NodesTable
Local nValue,cItem
nValue := winNodesTable.Grid1.Value
IF nValue > 0
aNode := {}
aNode := Self:Nodes[nValue]
subNodes := aNode[nArrayPos]
nMax  = LEN(subNodes)
winNodesTable.&(cListName).DeleteAllItems ( )
FOR x = 1 TO nMax STEP 1
cItem := subNodes[x]
cItem = STR ( cItem )
cItem = ALLTRIM ( cItem )
winNodesTable.&(cListName).AddItem ( cItem )
Next
ENDIF
Return 0
Method CheckNodes(aConnections,ActiveNodes,subNodes,nSubCount) Class NodesTable
lCont := True
DO WHILE  lCont = True
lCont := False
FOR y = 1 TO nMax2 STEP 1
IF aConnections[y][1] = x .or. aConnections[y][2] = x
Loop
ENDIF
IF pCount() > 2
lFoundInSubX := False
lFoundInSubY := False
FOR nSubScan = 1 TO nSubCount STEP 1
IF aConnections[y][1] = subNodes[nSubScan]
lFoundInSubX := True
ENDIF
IF aConnections[y][2] = subNodes[nSubScan]
lFoundInSubY := True
ENDIF
Next
IF lFoundInSubX = False .or. lFoundInSubY = False
Loop
ENDIF
ENDIF
nNetworkSize  = LEN(ActiveNodes)
IF nNetworkSize = 0
AADD( ActiveNodes , aConnections[y][1])
AADD( ActiveNodes , aConnections[y][2])
lCont := True
ELSE
nFound1 := False
nFound2 := False
FOR t = 1 TO nNetworkSize STEP 1
IF aConnections[y][1] = ActiveNodes[t]
nFound1 := True
ENDIF
IF aConnections[y][2] = ActiveNodes[t]
nFound2 := True
ENDIF
Next
IF nFound1 = True .and. nFound2 = False
AADD( ActiveNodes , aConnections[y][2])
lCont := True
ENDIF
IF nFound2 = True .and. nFound1 = False
AADD( ActiveNodes , aConnections[y][1])
lCont := True
ENDIF
ENDIF
Next
ENDDO
Return 0

End Of Resistance

INIT PROCEDURE Init_NETAPP
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oNetApp of Class NetApp",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSettings of Class Settings",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oNodesTable of Class NodesTable",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oNetApp.ShowWindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class NetApp",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Settings",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method NodesTable",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method WindowInit",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class NetApp",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winNetApp ) , Title : 'NetApp  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:WindowInit",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'New network settings ' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Nodes Table ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Date",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class NetApp",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","winNetApp.Release ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Settings Class NetApp",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oSettings.ShowWindow()",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NodesTable Class NetApp",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oNodesTable.ShowWindow()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WindowInit Class NetApp",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","winNetApp.Maximize ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Settings()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Settings",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Data nWidth Init Value 600",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Data nHeight Init Value 350",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNodes Init Value 3",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Data nRange Init Value 100",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveData",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Method WindowInit",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Settings",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winSettings ) , Title : ' New Network Settings  '",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:WindowInit",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",77,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Area '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Number of nodes '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' Transmission Range '",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Width '",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Height '",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textWidth  )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",121,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textHeight  )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",130,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textNodes  )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",139,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textRange  )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",148,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Run '",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveData",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",159,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Cancel '",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",165,167)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Settings",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","winSettings.Release ( )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveData Class Settings",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","self:nWidth = winSettings.textWidth.Value",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","self:nHeight = winSettings.textHeight.Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNodes = winSettings.textNodes.Value",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","self:nRange = winSettings.textRange.Value",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.CloseWindow()",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oNodesTable.ShowWindow()",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WindowInit Class Settings",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","winSettings.Center ( )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class NodesTable",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Data Header Init Value {'ID','X','Y','Transmission Range','Is connected ?','Number of connections','Is Critical ?','1-Hop Critical','2-Hop Critical','3-Hop Critical'}",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Data Widths Init Value {70,70,70,200,100,200,100,100,100,100}",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Data Nodes Init Value {}",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadNodesData",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowNodesData",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Method DrawNodes",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Method GridChange",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Method FindCriticalNodes",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Method OneHop",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Method Determine2HopsNeighbors",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Method TwoHops",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowNeighbors",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveNetwork",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadNetwork",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Method Statistics",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Method SavetoTXT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadFromTXT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Method Find1HopUsingRules",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Method Find2HopUsingRules",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Method RefreshNodesCount",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Method Export2Excel",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Method ThreeHops",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Method Determine3HopsNeighbors",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Method Find3HopUsingRules",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Method WindowInit",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Method DrawNodesProcess",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Method GetAllConnections",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowHops",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Method CheckNodes",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class NodesTable",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.LoadNodesData()",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winNodesTable ) , Title : ' Nodes Table  '",223,227)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:WindowInit",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",229,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : self:header",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LOSTFOCUS : Action Self:GridChange",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:ShowNeighbors",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",240,247)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' Draw Network '",248,249)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DrawNodes",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",251,253)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '1-Hop Neighbors '",254,255)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",256,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",262,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '2-Hops Neighbors '",267,268)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",269,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",275,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( ListConnections )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",281,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Connections '",286,287)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",288,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSaveNetwork ) , Caption : 'Save network to DBF file '",293,294)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveNetwork",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",296,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLoadNetwork ) , Caption : 'Load network from DBF file '",299,300)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LoadNetwork",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",302,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Average Node Degree '",305,306)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",307,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Leaf Nodes '",312,313)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",314,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'No. of critical nodes '",319,320)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",321,325)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'No. of non-critical nodes '",326,327)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",328,332)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Intermediate non-critical nodes'",333,334)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",335,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : 'global information'",340,341)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",342,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : '1-hop information'",347,348)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",349,353)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAvgNodeDegree  )",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",355,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textLeafNodes  )",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",362,367)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textCriticalGlobal  )",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",369,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textNonCriticalGlobal  )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",376,381)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textCritical1Hop  )",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",383,388)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textNonCritical1Hop  )",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",390,395)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textIntermediateGlobal  )",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",397,402)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textIntermediate1Hop  )",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",404,409)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl16 ) , Caption : 'Accuracy '",410,411)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",412,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAccuracy  )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",418,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textGlobalAccuracy  )",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",425,431)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSaveToTXT ) , Caption : 'Save network to TXT file '",432,433)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveToTXT",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",435,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLoadFromTXT ) , Caption : 'Load network from TXT file '",438,439)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:LoadFromTXT",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",441,443)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2hopinf ) , Caption : '2-hop information'",444,445)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",446,450)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textCritical2Hop  )",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",452,457)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textNonCritical2Hop  )",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",459,464)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textIntermediate2Hop  )",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",466,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2hopAccuracy  )",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",473,478)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnExport2Excel ) , Caption : 'Export to Excel '",479,480)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Export2Excel",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",482,484)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl17 ) , Caption : '3-Hop Neighbors '",485,486)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",487,491)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list3 )",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",493,497)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3hopinf ) , Caption : '3-hop information'",498,499)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",500,504)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textCritical3Hop  )",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",506,511)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textNonCritical3Hop  )",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",513,518)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textIntermediate3Hop  )",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",520,525)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3hopAccuracy  )",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",527,532)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",533,534)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",535,537)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadNodesData Class NodesTable",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","Local aNode,nMax,nMax2",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax != oSettings:nNodes )",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","self:Nodes = {}",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = 0",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax = 0 )",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = oSettings:nNodes",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax2 > 0 )",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax2 Step 1)",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x,x*100,100,oSettings:nRange,'No',0,'No',{},'No',{},'No',{},'No'} To Array Self:Nodes",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","self:Nodes[x][4] = oSettings:nRange",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowNodesData Class NodesTable",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.DeleteAllItems ( )",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[1] = CONVERT aNode[1] TO STRING",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[1] = All Trim aNode[1]",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[2] = CONVERT aNode[2] TO STRING",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[2] = All Trim aNode[2]",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[3] = CONVERT aNode[3] TO STRING",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[3] = All Trim aNode[3]",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[4] = CONVERT aNode[4] TO STRING",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[4] = All Trim aNode[4]",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[6] = CONVERT aNode[6] TO STRING",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[6] = All Trim aNode[6]",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.AddItem ( {aNode[1],aNode[2],aNode[3],aNode[4],aNode[5],aNode[6],aNode[7],aNode[9],aNode[11],aNode[13]} )",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[1] = CONVERT aNode[1] TO Numeric",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[2] = CONVERT aNode[2] TO Numeric",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[3] = CONVERT aNode[3] TO Numeric",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[4] = CONVERT aNode[4] TO Numeric",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[6] = CONVERT aNode[6] TO Numeric",582,582)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",583,583)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DrawNodes Class NodesTable",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aNode,nX,nY,nX2,nY2,cID",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winArea ) , Title : ' Network  '",588,592)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:DrawNodesProcess",593,593)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",594,600)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",601,602)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",603,605)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GridChange Class NodesTable",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","Local nRow,cX,cY",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","nRow = winNodesTable.Grid1.Value",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRow > 0 )",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","cX = winNodesTable.Grid1.cell(nRow,2)",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","cY = winNodesTable.Grid1.cell(nRow,3)",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","cX = CONVERT cX TO Numeric",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","cY = CONVERT cY TO Numeric",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","self:nodes[nrow][2] = cX",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","self:nodes[nrow][3] = cY",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","cRange = winNodesTable.Grid1.cell(nRow,4)",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","cRange = CONVERT cRange TO Numeric",618,618)
SS_ESASTEP("Circuits\Main\Main\Main","self:nodes[nrow][4] = cRange",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class NodesTable",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Release ( )",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method OneHop Class NodesTable",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowHops(8,'list1')",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Determine2HopsNeighbors Class NodesTable",628,628)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,x,nMax2,x2,aNode,subNodes",629,629)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",630,630)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",631,631)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",632,632)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",633,633)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",634,634)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[8]",635,635)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array subNodes",636,636)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[10] = {}",637,637)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To nMax2 Step 1)",638,638)
SS_ESASTEP("Circuits\Main\Main\Main","Add item subNodes[x2] To Array aNode[10]",639,639)
SS_ESASTEP("Circuits\Main\Main\Main","aNode2 = self:Nodes[subNodes[x2]]",640,640)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes2 = aNode2[8]",641,641)
SS_ESASTEP("Circuits\Main\Main\Main","nMax3 = Get Length of String/Variable/Array subNodes2",642,642)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax3 > 0 )",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x3 = 1 To nMax3 Step 1)",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. subNodes2[x3]  = x )",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","Add item subNodes2[x3] To Array aNode[10]",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",652,652)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",653,653)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method TwoHops Class NodesTable",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowHops(10,'list2')",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowNeighbors Class NodesTable",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.OneHop()",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.TwoHops()",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ThreeHops()",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FindCriticalNodes Class NodesTable",662,662)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aConnections",663,663)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aConnections",664,664)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.ListConnections.DeleteAllItems ( )",666,666)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","nConnectedNodes = 0",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","aConnections = Call Function self:GetAllConnections ( True )",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",672,672)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] > 0 )",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","nConnectedNodes = nConnectedNodes + 1",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",676,676)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",677,677)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",678,678)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] > 1 )",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","ActiveNodes = {}",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array aConnections",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.CheckNodes(@aConnections,@ActiveNodes)",684,684)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNetworkSize < (nConnectedNodes-1) )",686,686)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[7] = 'Yes'",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,7) := aNode[7]",688,688)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[7] = 'No'",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,7) := aNode[7]",691,691)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",695,695)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",696,696)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveNetwork Class NodesTable",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",698,702)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( PutFile == '' )",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table &putfile",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Node_X' , Type  : 'N' , Length  : 3",707,711)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Node_Y' , Type  : 'N' , Length  : 3",712,716)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Node_R' , Type  : 'N' , Length  : 3",717,721)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",722,723)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",724,724)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",725,725)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",726,726)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table &putfile",727,727)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",728,728)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field Node_X with Self:Nodes[x][2]",729,729)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field Node_Y with Self:Nodes[x][3]",730,730)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field Node_R with Self:Nodes[x][4]",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",732,732)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",733,733)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",734,734)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Network data saved to file ' + PutFile Title ' Ok ' Type: Message Box",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File TempStru.dbf",736,736)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",737,737)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadNetwork Class NodesTable",738,738)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",739,743)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .NOT. GetFile == '' )",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",746,746)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table &GetFile",747,747)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = Check - End of file",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","Self.Nodes = {}",750,750)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( .NOT. bEOF )",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {Recno(),NODE_X,NODE_Y,NODE_R,'No',0,'No',{},'No',{},'No',{},'No'} To Array Self:Nodes",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = Check - End of file",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowNodesData()",756,756)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RefreshNodesCount()",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.DrawNodes()",759,759)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",760,760)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",761,761)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",762,762)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Statistics Class NodesTable",763,763)
SS_ESASTEP("Circuits\Main\Main\Main","Local nConnections,nMax,x",764,764)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",765,765)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax = 0 )",766,766)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",767,767)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",768,768)
SS_ESASTEP("Circuits\Main\Main\Main","nLeafNodes = 0",769,769)
SS_ESASTEP("Circuits\Main\Main\Main","nCriticalGlobal = 0",770,770)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical1Hop = 0",771,771)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCriticalGlobal = 0",772,772)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical1Hop = 0",773,773)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy = 0",774,774)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical2Hop = 0",775,775)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical2Hop = 0",776,776)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy2 = 0",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","nConnections = 0",778,778)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical3Hop = 0",779,779)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical3Hop = 0",780,780)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy3 = 0",781,781)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",782,782)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",783,783)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] = 1 )",785,785)
SS_ESASTEP("Circuits\Main\Main\Main","nLeafNodes = nLeafNodes + 1",786,786)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",787,787)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[7] = 'Yes' )",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","nCriticalGlobal = nCriticalGlobal + 1",789,789)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCriticalGlobal = nNonCriticalGlobal + 1",791,791)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[9] = 'Yes' )",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical1Hop = nCritical1Hop + 1",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical1Hop = nNonCritical1Hop + 1",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[7] = aNode[9] )",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy = nAccuracy + 1",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[11] = 'Yes' )",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical2Hop = nCritical2Hop + 1",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical2Hop = nNonCritical2Hop + 1",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",805,805)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[7] = aNode[11] )",806,806)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy2 = nAccuracy2 + 1",807,807)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[13] = 'Yes' )",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","nCritical3Hop = nCritical3Hop + 1",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","nNonCritical3Hop = nNonCritical3Hop + 1",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[7] = aNode[13] )",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy3 = nAccuracy3 + 1",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","nConnections = nConnections + aNode[6]",817,817)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",818,818)
SS_ESASTEP("Circuits\Main\Main\Main","nIntermediateGlobal = nNonCriticalGlobal - nLeafNodes",819,819)
SS_ESASTEP("Circuits\Main\Main\Main","nIntermediate1Hop = nNonCritical1Hop - nLeafNodes",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy = ( nAccuracy / nMax ) * 100",821,821)
SS_ESASTEP("Circuits\Main\Main\Main","nIntermediate2Hop = nNonCritical2Hop - nLeafNodes",822,822)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy2 = ( nAccuracy2 / nMax ) * 100",823,823)
SS_ESASTEP("Circuits\Main\Main\Main","nIntermediate3Hop = nNonCritical3Hop - nLeafNodes",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","nAccuracy3 = ( nAccuracy3 / nMax ) * 100",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","nAvgNodeDegree = nConnections/nMax",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textAvgNodeDegree.Value := alltrim(str(nAvgNodeDegree))",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textLeafNodes.Value := alltrim(str(nLeafNodes))",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textCriticalGlobal.Value := alltrim(str(nCriticalGlobal))",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textNonCriticalGlobal.Value := alltrim(str(nNonCriticalGlobal))",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textCritical1Hop.Value := alltrim(str(nCritical1Hop))",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textNonCritical1Hop.Value := alltrim(str(nNonCritical1Hop))",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textIntermediateGlobal.Value := alltrim(str(nIntermediateGlobal))",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textIntermediate1Hop.Value := alltrim(str(nIntermediate1Hop))",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textAccuracy.Value := alltrim(str(nAccuracy)) + '%'",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textGlobalAccuracy.Value := '100%'",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textCritical2Hop.Value := alltrim(str(nCritical2Hop))",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textNonCritical2Hop.Value := alltrim(str(nNonCritical2Hop))",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textIntermediate2Hop.Value := alltrim(str(nIntermediate2Hop))",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.text2hopAccuracy.Value := alltrim(str(nAccuracy2)) + '%'",840,840)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textCritical3Hop.Value := alltrim(str(nCritical3Hop))",841,841)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textNonCritical3Hop.Value := alltrim(str(nNonCritical3Hop))",842,842)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.textIntermediate3Hop.Value := alltrim(str(nIntermediate3Hop))",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.text3hopAccuracy.Value := alltrim(str(nAccuracy3)) + '%'",844,844)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",845,845)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveToTXT Class NodesTable",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",847,851)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( PutFile == '' )",852,852)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",853,853)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",854,854)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",855,855)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",856,856)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = ''",857,857)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",858,858)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Alltrim(Str(Self:Nodes[x][2])) + CHR(13) + CHR(10) + alltrim(str(Self:Nodes[x][3]))) to string (cStr)",859,859)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",860,860)
SS_ESASTEP("Circuits\Main\Main\Main","write String cStr to File PutFile",861,863)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",864,864)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Network data saved to file ' + PutFile Title ' Ok ' Type: Message Box",865,865)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",866,866)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadFromTXT Class NodesTable",867,867)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",868,872)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .NOT. GetFile == '' )",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",874,874)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File GetFile",876,876)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",877,877)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",878,878)
SS_ESASTEP("Circuits\Main\Main\Main","Self.Nodes = {}",879,879)
SS_ESASTEP("Circuits\Main\Main\Main","nCounter = 0",880,880)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 2)",881,881)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",882,882)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",883,883)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. cLine == '' )",884,884)
SS_ESASTEP("Circuits\Main\Main\Main","nCounter = nCounter + 1",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",886,886)
SS_ESASTEP("Circuits\Main\Main\Main","X = X - 1",887,887)
SS_ESASTEP("Circuits\Main\Main\Main","Loop",888,888)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",889,889)
SS_ESASTEP("Circuits\Main\Main\Main","nX = cLine",890,890)
SS_ESASTEP("Circuits\Main\Main\Main","nX = CONVERT nX TO Numeric",891,891)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x+1 FROM MEMO cStr",892,892)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",893,893)
SS_ESASTEP("Circuits\Main\Main\Main","nY = cLine",894,894)
SS_ESASTEP("Circuits\Main\Main\Main","nY = CONVERT nY TO Numeric",895,895)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {nCounter,nX,nY,100,'No',0,'No',{},'No',{},'No',{},'No'} To Array Self:Nodes",896,896)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",897,897)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowNodesData()",898,898)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.RefreshNodesCount()",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",900,900)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.DrawNodes()",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",902,902)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",903,903)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",904,904)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Find1HopUsingRules Class NodesTable",905,905)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aConnections",906,906)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aConnections",907,907)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",908,908)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",909,909)
SS_ESASTEP("Circuits\Main\Main\Main","aConnections = Call Function self:GetAllConnections",910,910)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",911,911)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",912,912)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",913,913)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[8]",914,914)
SS_ESASTEP("Circuits\Main\Main\Main","nSubCount = Get Length of String/Variable/Array subNodes",915,915)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] > 1 )",916,916)
SS_ESASTEP("Circuits\Main\Main\Main","ActiveNodes = {}",917,917)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array aConnections",918,918)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",919,919)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)",920,920)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",921,921)
SS_ESASTEP("Circuits\Main\Main\Main","nConnectedNodes = nSubCount + 1",922,922)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNetworkSize < (nConnectedNodes-1) )",923,923)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[9] = 'Yes'",924,924)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,8) := aNode[9]",925,925)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",926,926)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[9] = 'No'",927,927)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,8) := aNode[9]",928,928)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",929,929)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",930,930)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",931,931)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",932,932)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",933,933)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Find2HopUsingRules Class NodesTable",934,934)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aConnections",935,935)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aConnections",936,936)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",937,937)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",938,938)
SS_ESASTEP("Circuits\Main\Main\Main","aConnections = Call Function self:GetAllConnections",939,939)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",940,940)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",941,941)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",942,942)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[10]",943,943)
SS_ESASTEP("Circuits\Main\Main\Main","nSubCount = Get Length of String/Variable/Array subNodes",944,944)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] > 1 )",945,945)
SS_ESASTEP("Circuits\Main\Main\Main","ActiveNodes = {}",946,946)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array aConnections",947,947)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",948,948)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)",949,949)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",950,950)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[8]",951,951)
SS_ESASTEP("Circuits\Main\Main\Main","nSubCount = Get Length of String/Variable/Array subNodes",952,952)
SS_ESASTEP("Circuits\Main\Main\Main","nAvoid = 0",953,953)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To nNetworkSize Step 1)",954,954)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = False",955,955)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t2 = 1 To nSubCount Step 1)",956,956)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( ActiveNodes[t] = SubNodes[t2] )",957,957)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = True",958,958)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",959,959)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",960,960)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",961,961)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lFound = False )",962,962)
SS_ESASTEP("Circuits\Main\Main\Main","nAvoid = nAvoid + 1",963,963)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",964,964)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",965,965)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = nNetworkSize - nAvoid",966,966)
SS_ESASTEP("Circuits\Main\Main\Main","nConnectedNodes = nSubCount + 1",967,967)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNetworkSize < (nConnectedNodes-1) )",968,968)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[11] = 'Yes'",969,969)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,9) := aNode[11]",970,970)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",971,971)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[11] = 'No'",972,972)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,9) := aNode[11]",973,973)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",974,974)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",975,975)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",976,976)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",977,977)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",978,978)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RefreshNodesCount Class NodesTable",979,979)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",980,980)
SS_ESASTEP("Circuits\Main\Main\Main","oSettings.nNodes = nMax",981,981)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",982,982)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Export2Excel Class NodesTable",983,983)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",984,988)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( PutFile == '' )",989,989)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",990,990)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",991,991)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",992,992)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File (StartupFolder + '\template.excel') to &PutFile",993,993)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",994,994)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={Microsoft Excel Driver (*.xls)};Dbq='+PutFile + ' ; ReadOnly=False; '",995,995)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",996,996)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from [Sheet1$]'",997,999)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",1000,1000)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = oSettings:nNodes",1001,1001)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1002,1002)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1003,1003)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = oSettings:nRange",1004,1004)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1005,1005)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1006,1006)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textAvgNodeDegree.value",1007,1007)
SS_ESASTEP("Circuits\Main\Main\Main","Average Node Degree",1008,1008)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1009,1009)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textLeafNodes.value",1010,1010)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1011,1011)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1012,1012)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textCriticalGlobal.value",1013,1013)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1014,1014)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1015,1015)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textNonCriticalGlobal.value",1016,1016)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1017,1017)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1018,1018)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textIntermediateGlobal.value",1019,1019)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1020,1020)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1021,1021)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textGlobalAccuracy.value",1022,1022)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1023,1023)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1024,1024)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textCritical1hop.value",1025,1025)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1026,1026)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1027,1027)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textNonCritical1hop.value",1028,1028)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1029,1029)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1030,1030)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textIntermediate1hop.value",1031,1031)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1032,1032)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1033,1033)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textAccuracy.value",1034,1034)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1035,1035)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1036,1036)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textCritical2hop.value",1037,1037)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1038,1038)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1039,1039)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textNonCritical2hop.value",1040,1040)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1041,1041)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1042,1042)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textIntermediate2hop.value",1043,1043)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1044,1044)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1045,1045)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.text2hopAccuracy.value",1046,1046)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1047,1047)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1048,1048)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textCritical3hop.value",1049,1049)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1050,1050)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1051,1051)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textNonCritical3hop.value",1052,1052)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1053,1053)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1054,1054)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.textIntermediate3hop.value",1055,1055)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1056,1056)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",1057,1057)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item(1):value = winNodesTable.text3hopAccuracy.value",1058,1058)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",1059,1059)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",1060,1060)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",1061,1061)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done ' Title 'Ok ' Type: Message Box",1062,1062)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1063,1063)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ThreeHops Class NodesTable",1064,1064)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowHops(12,'list3')",1065,1065)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1066,1066)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Determine3HopsNeighbors Class NodesTable",1067,1067)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,x,nMax2,x2,aNode,subNodes",1068,1068)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",1069,1069)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",1070,1070)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",1071,1071)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",1072,1072)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",1073,1073)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[10]",1074,1074)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array subNodes",1075,1075)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[12] = {}",1076,1076)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To nMax2 Step 1)",1077,1077)
SS_ESASTEP("Circuits\Main\Main\Main","Add item subNodes[x2] To Array aNode[12]",1078,1078)
SS_ESASTEP("Circuits\Main\Main\Main","aNode2 = self:Nodes[subNodes[x2]]",1079,1079)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes2 = aNode2[8]",1080,1080)
SS_ESASTEP("Circuits\Main\Main\Main","nMax3 = Get Length of String/Variable/Array subNodes2",1081,1081)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax3 > 0 )",1082,1082)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x3 = 1 To nMax3 Step 1)",1083,1083)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. subNodes2[x3]  = x )",1084,1084)
SS_ESASTEP("Circuits\Main\Main\Main","Add item subNodes2[x3] To Array aNode[12]",1085,1085)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1086,1086)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1087,1087)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1088,1088)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1089,1089)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1090,1090)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1091,1091)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1092,1092)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Find3HopUsingRules Class NodesTable",1093,1093)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aConnections",1094,1094)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aConnections",1095,1095)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",1096,1096)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",1097,1097)
SS_ESASTEP("Circuits\Main\Main\Main","aConnections = Call Function self:GetAllConnections",1098,1098)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",1099,1099)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",1100,1100)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",1101,1101)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[12]",1102,1102)
SS_ESASTEP("Circuits\Main\Main\Main","nSubCount = Get Length of String/Variable/Array subNodes",1103,1103)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode[6] > 1 )",1104,1104)
SS_ESASTEP("Circuits\Main\Main\Main","ActiveNodes = {}",1105,1105)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array aConnections",1106,1106)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",1107,1107)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.CheckNodes(@aConnections,@ActiveNodes,@subNodes,@nSubCount)",1108,1108)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",1109,1109)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[8]",1110,1110)
SS_ESASTEP("Circuits\Main\Main\Main","nSubCount = Get Length of String/Variable/Array subNodes",1111,1111)
SS_ESASTEP("Circuits\Main\Main\Main","nAvoid = 0",1112,1112)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To nNetworkSize Step 1)",1113,1113)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = False",1114,1114)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t2 = 1 To nSubCount Step 1)",1115,1115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( ActiveNodes[t] = SubNodes[t2] )",1116,1116)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = True",1117,1117)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",1118,1118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1119,1119)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1120,1120)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lFound = False )",1121,1121)
SS_ESASTEP("Circuits\Main\Main\Main","nAvoid = nAvoid + 1",1122,1122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1123,1123)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1124,1124)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = nNetworkSize - nAvoid",1125,1125)
SS_ESASTEP("Circuits\Main\Main\Main","nConnectedNodes = nSubCount + 1",1126,1126)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNetworkSize < (nConnectedNodes-1) )",1127,1127)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[13] = 'Yes'",1128,1128)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,10) := aNode[13]",1129,1129)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",1130,1130)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[13] = 'No'",1131,1131)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,10) := aNode[13]",1132,1132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1133,1133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1134,1134)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1135,1135)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1136,1136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1137,1137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WindowInit Class NodesTable",1138,1138)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Center ( )",1139,1139)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ShowNodesData()",1140,1140)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.DrawNodes()",1141,1141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1142,1142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DrawNodesProcess Class NodesTable",1143,1143)
SS_ESASTEP("Circuits\Main\Main\Main","winArea.Width := oSettings:nWidth",1144,1144)
SS_ESASTEP("Circuits\Main\Main\Main","winArea.Height := oSettings:nHeight",1145,1145)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",1146,1146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",1147,1147)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",1148,1148)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",1149,1149)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",1150,1150)
SS_ESASTEP("Circuits\Main\Main\Main","nX = aNode[2]",1151,1151)
SS_ESASTEP("Circuits\Main\Main\Main","nY = aNode[3]",1152,1152)
SS_ESASTEP("Circuits\Main\Main\Main","nX2 = nX + 10",1153,1153)
SS_ESASTEP("Circuits\Main\Main\Main","nY2 = nY + 10",1154,1154)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from nX,nY to nX2,nY2",1155,1159)
SS_ESASTEP("Circuits\Main\Main\Main","nY2 = nY + 11",1160,1160)
SS_ESASTEP("Circuits\Main\Main\Main","cID = aNode[1]",1161,1161)
SS_ESASTEP("Circuits\Main\Main\Main","cID = CONVERT cID TO STRING",1162,1162)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text cID",1163,1166)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[6] = 0",1167,1167)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[8] = {}",1168,1168)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To nMax Step 1)",1169,1169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t != x )",1170,1170)
SS_ESASTEP("Circuits\Main\Main\Main","aNode2 = {}",1171,1171)
SS_ESASTEP("Circuits\Main\Main\Main","aNode2 = Self:Nodes[t]",1172,1172)
SS_ESASTEP("Circuits\Main\Main\Main","n2X = aNode2[2]",1173,1173)
SS_ESASTEP("Circuits\Main\Main\Main","n2Y = aNode2[3]",1174,1174)
SS_ESASTEP("Circuits\Main\Main\Main","distance = ((n2x-nx)^2)+((n2y-ny)^2)",1175,1175)
SS_ESASTEP("Circuits\Main\Main\Main","distance = the square root of a positive number  distance",1176,1176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( distance <= aNode[4] )",1177,1177)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[5] = 'Yes'",1178,1178)
SS_ESASTEP("Circuits\Main\Main\Main","aNode[6] = aNode[6] + 1",1179,1179)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from nX,nY to nX2,nY2",1180,1184)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,5) := aNode[5]",1185,1185)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.Grid1.cell(x,6) := alltrim(str(aNode[6]))",1186,1186)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Line from nX,nY to n2X,n2Y",1187,1192)
SS_ESASTEP("Circuits\Main\Main\Main","Add item t To Array aNode[8]",1193,1193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1194,1194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1195,1195)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1196,1196)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1197,1197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1198,1198)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.FindCriticalNodes()",1199,1199)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.OneHop()",1200,1200)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Determine2HopsNeighbors()",1201,1201)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.TwoHops()",1202,1202)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.Determine3HopsNeighbors()",1203,1203)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.ThreeHops()",1204,1204)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Find1HopUsingRules()",1205,1205)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Find2HopUsingRules()",1206,1206)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Find3HopUsingRules()",1207,1207)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Statistics()",1208,1208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1209,1209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GetAllConnections(lShow) Class NodesTable",1210,1210)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax,aConnections",1211,1211)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aConnections",1212,1212)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array self:Nodes",1213,1213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",1214,1214)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",1215,1215)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",1216,1216)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[x]",1217,1217)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[8]",1218,1218)
SS_ESASTEP("Circuits\Main\Main\Main","nMax2 = Get Length of String/Variable/Array subNodes",1219,1219)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To nMax2 Step 1)",1220,1220)
SS_ESASTEP("Circuits\Main\Main\Main","aNode2 = SubNodes[x2]",1221,1221)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aNode2 > x )",1222,1222)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x,aNode2} To Array aConnections",1223,1223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pCount() > 0 )",1224,1224)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.ListConnections.AddItem ( alltrim(str(x)) + ' <---> ' + alltrim(str(aNode2)) )",1225,1225)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1226,1226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1227,1227)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1228,1228)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1229,1229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1230,1230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return aConnections)",1231,1231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowHops(nArrayPos,cListName) Class NodesTable",1232,1232)
SS_ESASTEP("Circuits\Main\Main\Main","Local nValue,cItem",1233,1233)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winNodesTable.Grid1.Value",1234,1234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",1235,1235)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = {}",1236,1236)
SS_ESASTEP("Circuits\Main\Main\Main","aNode = Self:Nodes[nValue]",1237,1237)
SS_ESASTEP("Circuits\Main\Main\Main","subNodes = aNode[nArrayPos]",1238,1238)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array subNodes",1239,1239)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.&(cListName).DeleteAllItems ( )",1240,1240)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",1241,1241)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = subNodes[x]",1242,1242)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = CONVERT cItem TO STRING",1243,1243)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = All Trim cItem",1244,1244)
SS_ESASTEP("Circuits\Main\Main\Main","winNodesTable.&(cListName).AddItem ( cItem )",1245,1245)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1246,1246)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1247,1247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1248,1248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CheckNodes(aConnections,ActiveNodes,subNodes,nSubCount) Class NodesTable",1249,1249)
SS_ESASTEP("Circuits\Main\Main\Main","lCont = True",1250,1250)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( lCont = True )",1251,1251)
SS_ESASTEP("Circuits\Main\Main\Main","lCont = False",1252,1252)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To nMax2 Step 1)",1253,1253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aConnections[y][1] = x .or. aConnections[y][2] = x )",1254,1254)
SS_ESASTEP("Circuits\Main\Main\Main","Loop",1255,1255)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1256,1256)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pCount() > 2 )",1257,1257)
SS_ESASTEP("Circuits\Main\Main\Main","lFoundInSubX = False",1258,1258)
SS_ESASTEP("Circuits\Main\Main\Main","lFoundInSubY = False",1259,1259)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From nSubScan = 1 To nSubCount Step 1)",1260,1260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aConnections[y][1] = subNodes[nSubScan] )",1261,1261)
SS_ESASTEP("Circuits\Main\Main\Main","lFoundInSubX = True",1262,1262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1263,1263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aConnections[y][2] = subNodes[nSubScan] )",1264,1264)
SS_ESASTEP("Circuits\Main\Main\Main","lFoundInSubY = True",1265,1265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1266,1266)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1267,1267)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lFoundInSubX = False .or. lFoundInSubY = False )",1268,1268)
SS_ESASTEP("Circuits\Main\Main\Main","Loop",1269,1269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1270,1270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1271,1271)
SS_ESASTEP("Circuits\Main\Main\Main","nNetworkSize = Get Length of String/Variable/Array ActiveNodes",1272,1272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNetworkSize = 0 )",1273,1273)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aConnections[y][1] To Array ActiveNodes",1274,1274)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aConnections[y][2] To Array ActiveNodes",1275,1275)
SS_ESASTEP("Circuits\Main\Main\Main","lCont = True",1276,1276)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",1277,1277)
SS_ESASTEP("Circuits\Main\Main\Main","nFound1 = False",1278,1278)
SS_ESASTEP("Circuits\Main\Main\Main","nFound2 = False",1279,1279)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To nNetworkSize Step 1)",1280,1280)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aConnections[y][1] = ActiveNodes[t] )",1281,1281)
SS_ESASTEP("Circuits\Main\Main\Main","nFound1 = True",1282,1282)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1283,1283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aConnections[y][2] = ActiveNodes[t] )",1284,1284)
SS_ESASTEP("Circuits\Main\Main\Main","nFound2 = True",1285,1285)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1286,1286)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1287,1287)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nFound1 = True .and. nFound2 = False )",1288,1288)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aConnections[y][2] To Array ActiveNodes",1289,1289)
SS_ESASTEP("Circuits\Main\Main\Main","lCont = True",1290,1290)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1291,1291)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nFound2 = True .and. nFound1 = False )",1292,1292)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aConnections[y][1] To Array ActiveNodes",1293,1293)
SS_ESASTEP("Circuits\Main\Main\Main","lCont = True",1294,1294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1295,1295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1296,1296)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",1297,1297)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",1298,1298)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1299,1299)
Return
*-------------------------------------------------------------------*
