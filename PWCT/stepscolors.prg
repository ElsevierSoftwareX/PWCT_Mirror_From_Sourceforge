* #define SC_UserStep_BackColor RGB(0,0,255)
* #define SC_UserStep_ForeColor RGB(255,255,255)

DEFINE CLASS GD_StepsColors as Custom

* 1 = All of the steps are Black & White (No more colors)
* 2 = Colors based on the step type (Created , Generated (Root) , Generated (Allow sub) , Generated )
* 3 = Custom (Colors based on component rules ) we advice the component designer to select the colors based on the component type

nColorSystem = 1

SC_Created_BackColor = RGB(184,134,11)
SC_Created_ForeColor = RGB(255,255,255)
SC_Created_FontName = "Arial"
SC_Created_FontSize = 14


SC_Generated_BackColor = RGB(255,255,255)
SC_Generated_ForeColor = RGB(0,0,0)
SC_Generated_FontName = "Arial"
SC_Generated_FontSize = 14

SC_GeneratedRoot_BackColor = RGB(0,0,255)
SC_GeneratedRoot_ForeColor = RGB(255,255,255)
SC_GeneratedRoot_FontName = "Arial"
SC_GeneratedRoot_FontSize = 14

SC_GeneratedAllowSub_BackColor = RGB(0,255,0)
SC_GeneratedAllowSub_ForeColor = RGB(0,0,0)
SC_GeneratedAllowSub_FontName = "Arial"
SC_GeneratedAllowSub_FontSize = 14

PROCEDURE SetStepColor(objGDWindow)

	LOCAL c_TableName,n_Record,nStepType,cOldKey
	
	c_TableName = ALIAS()
	n_Record = RECNO()
	
	cOldKey =   objGDWindow.container1.oletree.SelectedItem.Key
	
	objGDWindow.container1.oletree.Nodes.item(ALLTRIM(T38->STEPID)).Selected = .T.
	
	nStepType = this.DetermineStepType()
		
	DO CASE
		CASE nStepType = 1 && Created
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_Created_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_Created_ForeColor
  			
  			
  	CASE nStepType = 2 && Generated
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_Generated_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_Generated_ForeColor
  			
  	CASE nStepType = 3 && Generated (Root)
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedRoot_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedRoot_ForeColor
  			*objGDWindow.container1.oletree.selectedItem.bold = .t.
  			
  	CASE nStepType = 4 && Generated (AllowSub)
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedAllowSub_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedAllowSub_ForeColor
  ENDCASE
  
  objGDWindow.container1.oletree.Nodes.item(ALLTRIM(cOldKey)).Selected = .T.
  
  SELECT (c_TableName)
  GOTO n_record
  
  
  
RETURN

PROCEDURE DetermineStepType()
	LOCAL myret
	LOCAL c_TableName,n_Record 
	
	c_TableName = ALIAS()
	n_Record = RECNO()
	
	
	IF EMPTY(t38->stepinterid)
		 myret = 1 && Created
	ELSE
		 myret = 2 && Generated
		 IF t38->stepinternum = 1 && Root
		 	myret = 3 && Generated (root)
		 ENDIF
		 IF obj_avoiderrors.CheckNewStep() = .t.
		 	myret = 4 && Generated (Allow Sub)
		 ENDIF
	ENDIF
	
  SELECT (c_TableName)
  GOTO n_record
  		 
RETURN myret

ENDDEFINE