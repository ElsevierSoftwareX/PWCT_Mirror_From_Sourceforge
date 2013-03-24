* #define SC_UserStep_BackColor RGB(0,0,255)
* #define SC_UserStep_ForeColor RGB(255,255,255)

DEFINE CLASS GD_StepsColors as Custom

* 1 = All of the steps are Black & White (No more colors)
* 2 = Colors based on the step type (Created , Generated (Root) , Generated (Allow sub) , Generated )
* 3 = Custom (Colors based on component rules ) we advice the component designer to select the colors based on the component type

nColorSystem = 1
nHiddenSteps = 0

SC_Created_BackColor = RGB(184,134,11)
SC_Created_ForeColor = RGB(255,255,255)

SC_Generated_BackColor = RGB(255,255,255)
SC_Generated_ForeColor = RGB(0,0,0)

SC_GeneratedRoot_BackColor = RGB(0,0,255)
SC_GeneratedRoot_ForeColor = RGB(255,255,255)

SC_GeneratedAllowSub_BackColor = RGB(0,255,0)
SC_GeneratedAllowSub_ForeColor = RGB(0,0,0)

SC_GeneratedLeaf_BackColor = RGB(255,255,255)
SC_GeneratedLeaf_ForeColor = RGB(0,0,0)

SC_GeneratedAllowSubLeaf_BackColor = RGB(0,255,0)
SC_GeneratedAllowSubLeaf_ForeColor = RGB(0,0,0)

PROCEDURE CheckSameColor()

	LOCAL lRet

	lRet = .f.
	
	IF this.SC_Created_BackColor = this.SC_Generated_BackColor .and. ;
	this.SC_Generated_BackColor = this.SC_GeneratedRoot_BackColor .and. ;
	this.SC_GeneratedRoot_BackColor = this.SC_GeneratedAllowSub_BackColor .and. ;
	this.SC_GeneratedAllowSub_BackColor = this.SC_GeneratedLeaf_BackColor .and. ;
	this.SC_GeneratedLeaf_BackColor = this.SC_GeneratedAllowSubLeaf_BackColor .and. ;
	this.SC_Created_ForeColor = this.SC_Generated_ForeColor .and. ;
	this.SC_Generated_ForeColor = this.SC_GeneratedRoot_ForeColor .and. ;
	this.SC_GeneratedRoot_ForeColor = this.SC_GeneratedAllowSub_ForeColor .and. ;
	this.SC_GeneratedAllowSub_ForeColor = this.SC_GeneratedLeaf_ForeColor .and. ;
	this.SC_GeneratedLeaf_ForeColor= this.SC_GeneratedAllowSubLeaf_ForeColor
	
		lRet = .t.
	
	ENDIF
	
	
RETURN lRet


PROCEDURE SetStepColor(objGDWindow)

	LOCAL nStepType
	LOCAL cMyKey
	
	cMyKey = ALLTRIM(T38->STEPID)

	IF this.checkSameColor() = .f.	
	
				nStepType = this.DetermineStepType(objGDWindow)
					
				DO CASE
				
					CASE nStepType = 1 && Created
						 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_Created_BackColor
			  			objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_Created_ForeColor
			    			
			  	CASE nStepType = 2 && Generated
			  	 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_Generated_BackColor
			  			objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_Generated_ForeColor
			  	  			
			  	CASE nStepType = 3 && Generated (Root)
			  		 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_GeneratedRoot_BackColor
			  			objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_GeneratedRoot_ForeColor
			    			
			  	CASE nStepType = 4 && Generated (AllowSub)
			  		 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_GeneratedAllowSub_BackColor
			  			objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_GeneratedAllowSub_ForeColor
			  	 
			  			
					CASE nStepType = 5 && Generated leaf
							 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_GeneratedLeaf_BackColor
							objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_GeneratedLeaf_ForeColor
					 
							
							* hide steps that uses that same font color and backcolor
			  			IF this.SC_GeneratedLeaf_BackColor = this.SC_GeneratedLeaf_ForeColor
			 					objGDWindow.container1.oletree.Nodes.Remove(cMyKEY)
			 					this.nHiddenSteps = this.nHiddenSteps + 1
							ENDIF
			 
					CASE nStepType = 6 && Generated Allow Sub & leaf
						 
							objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_GeneratedAllowSubLeaf_BackColor
							objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_GeneratedAllowSubLeaf_ForeColor
				 
			 			* hide steps that uses that same font color and backcolor
			  			IF this.SC_GeneratedAllowSubLeaf_BackColor = this.SC_GeneratedAllowSubLeaf_ForeColor
			 					objGDWindow.container1.oletree.Nodes.Remove(cMyKey)
			 					this.nHiddenSteps = this.nHiddenSteps + 1
							ENDIF
			 
					
			  ENDCASE

	 ELSE

			  	objGDWindow.container1.oletree.Nodes.item(cMyKey).backcolor = this.SC_Created_BackColor
			  	objGDWindow.container1.oletree.Nodes.item(cMyKey).ForeColor = this.SC_Created_ForeColor
			  	
 	ENDIF
  	
  
RETURN nStepType

****************************************************************

PROCEDURE DetermineStepType(objGDWindow)

	LOCAL myret
	LOCAL c_TableName,n_Record
	LOCAL cStepID
	
	LOCAL cKey
	
	c_TableName = ALIAS()
	
	SELECT t38
	cStepID = t38->stepid
	n_Record = RECNO()
	
	IF EMPTY(t38->stepinterid)
		 myret = 1 && Created
	ELSE

		 myret = 2 && Generated
		 
		 IF t38->stepinternum = 1 && Root
		 
		 	myret = 3 && Generated (root)
  		 
		 ENDIF
		 
	   IF THIS.CheckNewStep() = .t.
		 	
		 	myret = 4 && Generated (Allow Sub)
		 	
		 	SELECT t38
  		 GOTO top
  	
  	   
				 	LOCATE FOR ALLTRIM(t38->parentid) == ALLTRIM(cStepID)
				 	
				 	IF .not. FOUND()
				 		myret = 6 && Generated Allow Sub & Leaf
				 	ENDIF
		
		 	
		 ENDIF
		 
		 IF myret = 2 
		 
		
		 
		   	SELECT t38
		 		GOTO TOP  	
			 	LOCATE FOR ALLTRIM(t38->parentid) == ALLTRIM(cStepID)
			 	IF .not. FOUND()
			 		myret = 5 && Generated (Leaf)
			 	ENDIF
		 	
		 	
		 ENDIF
		 
	ENDIF
	
	SELECT t38
	GOTO n_record
	
  SELECT (c_TableName)
  
  		 
RETURN myret


PROCEDURE CheckNewStep()

LOCAL c_Table,n_Record

LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule
LOCAL cInterID

c_table = ALIAS()
n_record = RECNO()
 
		myret = .f.
			
		IF .not. EMPTY(t38->stepinterid)
		
			cInterNum = ALLTRIM(STR(t38->stepinternum))
			cInterID = ALLTRIM(t38->stepinterid)
			
			SELECT t46
			
		  GOTO top
		  
			locate FOR ALLTRIM(f_iid) == ALLTRIM(cInterID)
			
		  IF FOUND()
		  
		  	cHis = f_myhis
		  	cFile = UPPER(ALLTRIM(MLINE(cHis,9)))
		  	
		  	IF FILE(cFile)
		  	
		  		cFile = STRTRAN(cFile,".TRF",".RULES")
		  		
		  		IF FILE(cFile)
		  		
		  			cRules = FILETOSTR(cFile)
		  			cRules = UPPER(cRules)
		  			
		  			nMax = MEMLINES(cRules)
		  			
		  			FOR X = 1 TO nMax
		  			
		  				cLine = MLINE(cRules,x)
		  				cLine = ALLTRIM(cLine)
		  				cRule = "AllowInteraction: " + cInterNum
		  				
		  				IF UPPER(ALLTRIM(cLine)) == UPPER(ALLTRIM(cRule))
		  			 		myret = .t.
		  			 		EXIT
		  			  ENDIF  
		  			  
		  			NEXT
		  					  					
		  		ENDIF
		  		
		  	ENDIF
		  
		  ENDIF

		  
		ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

ENDDEFINE