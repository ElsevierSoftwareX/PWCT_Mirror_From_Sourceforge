* command3 : move up
* command4 : move down
* command10 : cut
* command8 : copy
* check1 : ignore
* command2 : delete
* COMMAND5 : Interact

DEFINE CLASS GD_AvoidErrors as Custom

lVisualCompiler = .t.

PROCEDURE AvoidGeneratedStepErrors(objGDWindow)
LOCAL objgdwindow as Form
LOCAL result

IF .not. EMPTY(t38->stepinterid) .and. t38->stepinternum != 1 .and. this.lVisualCompiler = .t.
		objgdwindow.command3.enabled = .f.
		objgdwindow.command4.enabled = .f.
		objgdwindow.command10.enabled = .f.
		objgdwindow.command8.enabled = .f.
		objgdwindow.check1.enabled = .f.
		objgdwindow.command2.enabled = .f.
ELSE
		objgdwindow.command3.enabled = .t.
		objgdwindow.command4.enabled = .t.
		objgdwindow.command10.enabled = .t.
		objgdwindow.command8.enabled = .t.
		objgdwindow.check1.enabled = .t.
		objgdwindow.command2.enabled = .t.
ENDIF

IF .not. EMPTY(t38->stepinterid) .and. this.lVisualCompiler = .t.

  result = this.checknewstep()
  
	* new step
	objgdwindow.command1.enabled = result
	* Interact
	objgdwindow.command5.enabled = result
	* paste
	objgdwindow.command9.enabled = result
ELSE
  * new step
	objgdwindow.command1.enabled = .t.
	* Interact
	objgdwindow.command5.enabled = .t.
	* paste
	objgdwindow.command9.enabled = .t.
ENDIF

* MOVE DOWN
IF objgdwindow.command4.enabled = .T.
	IF ISNULL( objgdwindow.CONtainer1.OLETREE.Nodes.ITEM(objgdwindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Next )
	  		objgdwindow.command4.enabled = .f.
	ENDIF
ENDIF
 
* MOVE UP
IF objgdwindow.command3.enabled = .T.
	IF ISNULL( objgdwindow.CONtainer1.OLETREE.Nodes.ITEM(objgdwindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Previous )
			objgdwindow.command3.enabled = .f.
	ENDIF
ENDIF




RETURN

PROCEDURE TaskonStepsInTheSameInteraction(oGDWindow,cProcName)
LOCAL prec,mykeyrecarr,looprs,loopre,myid,myres,myend,x,myrecnum,mynewlooprs,myrec,t
LOCAL c_table,n_record
LOCAL myiid

c_table = ALIAS()
n_record = RECNO()

  		 	 		SELECT t38
																					
													*********************************************************
				 								 prec = RECNO()
												  DIMENSION mykeyrecarr(1,4)
												  mykeyrecarr(1,1) = t38->stepid
												  mykeyrecarr(1,2) = prec
												  mykeyrecarr(1,3) = t38->stepinterid
												  mykeyrecarr(1,4) = t38->stepinternum
												  
			 						 		  looprs = ALEN(mykeyrecarr,1)
		 	 								  loopre = 0
				 				 			  SELECT t38
												  SET FILTER TO UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle))
												  GOTO top
	    								    DO WHILE looprs != loopre
  	 															looprs = ALEN(mykeyrecarr,1)
 																	SELECT t38
  																 SCAN
   																		* search if item is in select branch of tree or belong to the same interaction
  																			myid = t38->parentid
  																			myiid = t38->stepinterid
  																			myres = .f.
  																			myend = ALEN(mykeyrecarr,1)
 																		 	FOR x = 1 TO myend
  																						IF UPPER(ALLTRIM(mykeyrecarr(x,1))) == UPPER(ALLTRIM(myid)) 
  																									myres = .t.
	  																								EXIT
  																						ENDIF
  																						IF .not. EMPTY(ALLTRIM(myiid))
  																						if UPPER(ALLTRIM(mykeyrecarr(x,3))) == UPPER(ALLTRIM(myiid))
  																									myres = .t.
	  																								EXIT
  																						ENDIF
  																						
  																						ENDIF
  																						
  							  											NEXT
   																		 *******************************  	
   																		 * be sure that this record is not added before
    																		myrecnum = RECNO()
    																		myend = ALEN(mykeyrecarr,1)
    																		FOR x = 1 TO myend
  																					IF mykeyrecarr(x,2) = myrecnum
  																								myres = .f.
	 																					 		EXIT
 																			 		ENDIF
																		  	NEXT
   								 										IF myres = .t.
   																					 mynewlooprs = ALEN(mykeyrecarr,1) + 1
   																					 DIMENSION mykeyrecarr(mynewlooprs,4)
   																				   mykeyrecarr(mynewlooprs,1) = t38->stepid
   																					 mykeyrecarr(mynewlooprs,2) = myrecnum
   																					 mykeyrecarr(mynewlooprs,3) = t38->stepinterid
												 										 mykeyrecarr(mynewlooprs,4) = t38->stepinternum
  																		  ENDIF
  																 ENDSCAN
  																 GOTO bottom
 																 loopre = ALEN(mykeyrecarr,1)
 				 								enddo 
													MYEND = ALEN(mykeyrecarr,1)
													
											 
													FOR t = MYEND TO 1 STEP -1
																	myrec = mykeyrecarr(t,2)
																	IF .not. myrec = 0
																					SELECT t38
																					GOTO myrec
																			
																			
																		************** Task

																		&cProcName(oGDWindow)
																	
																												  
																		****************************
																		   
  																		      		
																	ENDIF
													NEXT
					 
											
  				*--------------------------*
  				
  				SELECT (c_table)
  				GOTO n_record
  				
RETURN

PROCEDURE IgnoreStep(oGDWindow)

  		SELECT t38
			replace stepdis WITH oGDWindow.check1.Value
			
			TRY && AVOID ERROR WHEN CANN'T SELECT A REMOVED STEP (STEP REMOVED BY COLORS SYSTEM (READ MODE) )
				oGDWindow.oletree.Nodes.item(ALLTRIM(stepid)).Selected = .T.
				IF  oGDWindow.check1.Value = .t.
					oGDWindow.container1.oletree.selectedItem.Image = "ignore"
				ELSE

					IF empty(ALLTRIM(stepinterid))
				 	 oGDWindow.container1.oletree.selectedItem.image = "person"
					else
				 	 oGDWindow.container1.oletree.selectedItem.image = "cmd"
					endif
				ENDIF
			CATCH
			ENDTRY
			
RETURN

PROCEDURE DeleteStep(oGDWindow)
 		IF DELETED() = .f.
 					 
 					 TRY && AVOID ERROR WHEN CANN'T SELECT A REMOVED STEP (STEP REMOVED BY COLORS SYSTEM (READ MODE) )
							oGDWindow.oleTree.Nodes.Remove(UPPER(ALLTRIM(stepid)))
						CATCH
						ENDTRY
						
  					DELETE
     ENDIF
RETURN

PROCEDURE CheckNewStep()

LOCAL c_Table,n_Record

LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule

IF this.lVisualCompiler = .f.
	RETURN .t.
ENDIF
 
c_table = ALIAS()
n_record = RECNO()
 
* Don't allow creating new step from a disabled component
SELECT t38
IF t38->stepdis = .t.
	 	SELECT (c_table)
	 	GOTO n_record	
 		RETURN .f.
ENDIF
********************************************************* 
 
		myret = .f.
			
		cInterNum = ALLTRIM(STR(t38->stepinternum))
			
		SELECT t46
		
		IF .not. EMPTY(t38->stepinterid)
		
		  GOTO top
		  
			locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			
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
		  					  					
		  		ELSE
			  	  		 STMSG( " (Check New Step) Cann't find the Rules file : " + cFile )
			  	  		 myret = .t.	
		  		ENDIF
		  		
		  	ENDIF
		  
		  ENDIF

		  
		ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret


PROCEDURE IsThisStepIsTheRoot()

				LOCAL  c_Table,n_Record,n_Record2
				LOCAL myret,lCont,cParent

				myret = .f.

  			c_table = ALIAS()
				n_record = RECNO()
			
  			SELECT t38
  			
				n_record2 = RECNO()
  			
  			
  			IF  EMPTY(t38->stepinterid)
  			
  				myret = .t.
  			
  				lCont = .T.
  			  cParent = t38->ParentID
  		  
  				DO WHILE lCont = .t.
  		
  					GOTO top
  							  				
  					LOCATE for ALLTRIM(t38->stepid) == ALLTRIM(cParent)
  					
  						IF FOUND()
  						
  							IF .not. EMPTY(t38->stepinterid)
  								myret = .f.
  								lcont = .f.
  							ELSE
  								lcont = .t.
  								cParent = t38->ParentID
  							ENDIF
  						ENDIF
  					
  						IF UPPER(ALLTRIM(cParent)) == "SP_"
  							lcont = .f.
  						ENDIF
  					
  					
 	 			ENDDO
  			ENDIF
  			
				GOTO n_record2
				
				
				SELECT (c_table)
				GOTO n_record	
	
				
RETURN myret


PROCEDURE CheckSubComponent(cComponentFile)

LOCAL c_Table,n_Record
LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule,T
LOCAL cACFile

* this procedure is called from the components browser window

* if the syntax directed editor is disabled 
IF this.lVisualCompiler = .f. .or. this.IsThisStepIsTheRoot() = .t.
	RETURN .t.
ENDIF
 
 
c_table = ALIAS()
n_record = RECNO()
 
myret = .f.


* Load the rules of the active component (will be the parent) and save the component file to variable cACFile 	

			cInterNum = ALLTRIM(STR(t38->stepinternum))
				
			SELECT t46
			GOTO top
			
			IF .not. EMPTY(t38->stepinterid)
				locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
				
			  IF FOUND()
			  
			  	cHis = f_myhis
			  	cFile = UPPER(ALLTRIM(MLINE(cHis,9)))
			  	cACFile = cFile
			  	
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
			  			 		
			  			 		
			  			 			FOR T = x TO nMax
			  			
							  				cLine = MLINE(cRules,T)
							  				cLine = UPPER(ALLTRIM(cLine))
							  				
							  				cRule = "SCOPE:"
							  				IF LEFT(cLine,6) == cRule
							  					cLine = SUBSTR(cLine,7)
							  					cLine = ALLTRIM(cLine)
							  					IF cLine == "GENERAL"
							  						myret = .t.
							  						EXIT
							  					ENDIF
							  				ENDIF
							  				
							  				cRule = "ALLOW:"
							  				IF LEFT(cLine,6) == cRule
							  				   cLine = SUBSTR(cLine,7)
							  				   cLine = ALLTRIM(cLine)
							  				   cLine = cLine + ".TRF"
							  				   IF RIGHT(UPPER(ALLTRIM(cComponentFile)),LEN(cLine)) == cLine
							  					   myret = .t.
							  			 			EXIT
							  			 		ELSE
							  			 	  	LOOP
							  				   ENDIF
							  			  ENDIF  
							  			  
							  			  cRule = "END"
							  			  IF LEFT(cLine,3) == cRule
							  			  	EXIT
							  			  ENDIF
							  			  	
							  			NEXT
			  			 		
			  			 		EXIT
			  			 		
			  			  ENDIF  
			  			NEXT
			  			
			  			
			      ELSE
			  	  		 STMSG( " (Check Sub Component) Cann't find the Rules file : " + cFile )
			  	  		 myret = .t.			
			  		ENDIF
			  	ENDIF
			  
			  ENDIF
			ENDIF
				
			SELECT (c_table)
			GOTO n_record	
	
RETURN myret

PROCEDURE CheckParentComponent()

LOCAL c_Table,n_Record
LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule,T
LOCAL cComponentFile
LOCAL lcont,cParent

* Used by (Goal Designer - Ignore Step) to determine is this operation is allowed or not

* Checking starts from the child 

* If the syntax directed editor is disabled , return true

IF this.lVisualCompiler = .f.
	RETURN .t.
ENDIF
 

cComponentFile = "NoComponentFile"

c_table = ALIAS()
n_record = RECNO()
 
myret = .T.

* Load the rules of the current component to the variable cRules
	
cInterNum = ALLTRIM(STR(t38->stepinternum))
	
SELECT t46
GOTO top
IF .not. EMPTY(t38->stepinterid)
	locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
	
  IF FOUND()
  
  	cHis = f_myhis
  	cFile = UPPER(ALLTRIM(MLINE(cHis,9)))
  	IF FILE(cFile)
  		cFile = STRTRAN(cFile,".TRF",".RULES")
  		IF FILE(cFile)
  			cRules = FILETOSTR(cFile)
  			cRules = UPPER(cRules)
  			
  			************* Determine component name
  			* Get the file name of the parent component then load the parent component rules 
  			* the parent component must be active (not disabled)
  			* when you get the parent component store it in the variable : cComponentFile
  			
  			SELECT t38
  			
  			lCont = .T.
  		  cParent = t38->ParentID
  		  
  			DO WHILE lCont = .t.
  				  GOTO top
  				  				
  					LOCATE for UPPER(ALLTRIM(t38->stepid)) == UPPER(ALLTRIM(cParent))
  					
  						IF FOUND()
  						
  							IF t38->stepdis = .f.
  								lcont = .f.
  							ELSE
  								lcont = .t.
  								cParent = t38->ParentID
  							ENDIF
  						ENDIF
  					
  						IF UPPER(ALLTRIM(cParent)) == "SP_"
  							lcont = .f.
  						ENDIF
  					
  					
  			ENDDO
  			
  			cParent = UPPER(ALLTRIM(cParent))
  			IF .not. EMPTY(cParent) 
  			IF .not. cParent == "SP_" 
  				
  				SELECT t46
					GOTO top
					IF .not. EMPTY(t38->stepinterid)
							locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
  						IF FOUND()
  							cComponentFile = ALLTRIM(MLINE(f_myhis,9))
  						ENDIF
  				ENDIF
  						
  	  	ENDIF 		
  			ENDIF
  			
  			SELECT t38
  			GOTO n_Record
  			
  			*************
  			* Now you have the component rules stored in the variable : cRules
  			* And you have the parent component stored in the varaible : cComponentFile
  			* Check the rules to know if this parent component is allowed or not
  			
  			
  			nMax = MEMLINES(cRules)
  			FOR X = 1 TO nMax
  				cLine = MLINE(cRules,x)
  				cLine = ALLTRIM(cLine)
  				cRule = "ALLOWPARENT:"
  				IF  left(UPPER(ALLTRIM(cLine)),12) == UPPER(ALLTRIM(cRule))
  			 		
  			 		 			cLine = SUBSTR(cLine,13)
				  					cLine = UPPER(ALLTRIM(cLine))
				  					IF cLine == "GENERAL"
				  						myret = .t.
				  						EXIT
				  					ELSE
				  						myret = .F.
				  					ENDIF
				  		 
						
						FOR T = x TO nMax
  			
				  				cLine = MLINE(cRules,T)
				  				cLine = UPPER(ALLTRIM(cLine))
				  								  				
				  				cRule = "ALLOW:"
				  				IF LEFT(cLine,6) == cRule
				  				   cLine = SUBSTR(cLine,7)
				  				   cLine = ALLTRIM(cLine)
				  				   cLine = cLine + ".TRF"
				  				   IF RIGHT(UPPER(ALLTRIM(cComponentFile)),LEN(cLine)) == cLine
				  					   myret = .t.
				  			 			EXIT
				  			 		ELSE
				  			 	  	LOOP
				  				   ENDIF
				  			  ENDIF  
				  			  
				  			  cRule = "END"
				  			  IF LEFT(cLine,3) == cRule
				  			  	EXIT
				  			  ENDIF
				  			  	
				  			NEXT
  			 		
  			 		EXIT
  			 		
  			  ENDIF  
  			NEXT
  			
  		ELSE
			  	  		 STMSG( " (Check Parent Component) Cann't find the Rules file : " + cFile )
			  	  		 myret = .t.	
  		ENDIF
  	ENDIF
  
  ENDIF
ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

PROCEDURE IsParentAllowedForComponent(cComponentFile)

			LOCAL cFile,cRules,myret,nMax,X,cLine,cRule
			LOCAL c_Table,n_Record
			LOCAL cParentComponentFile
			
			* written to be called from the components browser
		  * checking starts while the active step in the steps tree is the parent 
		  * the child is not added yet, this check called before adding the child to be sure that it's allowed
		  
		  * called also from (Goal Designer - Paste button)
			
			myret = .f.
			
			c_table = ALIAS()
			n_record = RECNO()
			
			* Get the parent
			
			cParentComponentFile = "NoComponent"
			
			SELECT t46
			GOTO top
			IF .not. EMPTY(t38->stepinterid)
					locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
					IF FOUND()
						cParentComponentFile = ALLTRIM(MLINE(f_myhis,9))
					ENDIF
			ENDIF
			
			
			cFile = STRTRAN(cComponentFile,".TRF",".RULES")
			
      **** Written to avoid problem when the component is EXE file , not TRF File
			IF cFile == cComponentFile
					RETURN .f.
			ENDIF
			********************************
			
  		IF FILE(cFile)
  		
  			cRules = FILETOSTR(cFile)
  			cRules = UPPER(cRules)
  			
  			nMax = MEMLINES(cRules)
  			
  			FOR X = 1 TO nMax
  			
  				cLine = MLINE(cRules,x)
  				cLine = ALLTRIM(cLine)
  				
  				cRule = "ALLOWPARENT:"
  				
  				IF  left(UPPER(ALLTRIM(cLine)),12) == UPPER(ALLTRIM(cRule))
  			 		
  			 		 			cLine = SUBSTR(cLine,13)
				  					cLine = UPPER(ALLTRIM(cLine))
				  					IF cLine == "GENERAL"
				  						myret = .t.
				  						EXIT
				  					ELSE
				  						myret = .F.
				  					ENDIF
							
										FOR T = x TO nMax
		  			
						  				cLine = MLINE(cRules,T)
						  				cLine = UPPER(ALLTRIM(cLine))
						  								  				
						  				cRule = "ALLOW:"
						  				IF LEFT(cLine,6) == cRule
						  				   cLine = SUBSTR(cLine,7)
						  				   cLine = ALLTRIM(cLine)
						  				   cLine = cLine + ".TRF"
						  				   IF RIGHT(UPPER(ALLTRIM(cParentComponentFile)),LEN(cLine)) == cLine
						  					   myret = .t.
						  			 			EXIT
						  			 		ELSE
						  			 	  	LOOP
						  				   ENDIF
						  			  ENDIF  
						  			  
						  			  cRule = "END"
						  			  IF LEFT(cLine,3) == cRule
						  			  	EXIT
						  			  ENDIF
						  			  	
						  			NEXT
  			 		
  			 					 EXIT
  			 		
  			 ENDIF  
  			 
  			NEXT
  			
			ELSE
			  	  		 STMSG( " (Check Parent Component) Cann't find the Rules file : " + cFile  )
			  	  		 myret = .t.		
			Endif

			SELECT (c_table)
			GOTO n_record	

RETURN myret



*-----------------------------*
* Navigation (Next/Previous)
* Used to move from step to another step in the same interaction
* Useful for moving from event step to event procedure step
*-----------------------------*
 
PROCEDURE MoveToStepInTheSameInteraction(oGDWindow,nStepsToMove)

	LOCAL n_Record
	LOCAL cInteractionID,nInteractionNumber

	SELECT t38

	n_record = RECNO()

	cInteractionID = t38->stepinterid
	nInteractionNumber = t38->stepinternum
  
  nInteractionNumber = nInteractionNumber + nStepsToMove
   
	IF .not. EMPTY(cInteractionID)
		
		GOTO top
		
		locate FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(cInteractionID)) .and. t38->stepinternum = nInteractionNumber 

		IF .not. FOUND()
		
			GOTO n_record	
			
		ENDIF
	
		oGDWindow.oletree.Nodes.item(ALLTRIM(t38->stepid)).Selected = .T.
		
	ENDIF
	
	
RETURN

PROCEDURE CheckMoveToStepInTheSameInteraction(oGDWindow,nStepsToMove)

	LOCAL myret
	LOCAL c_Table,n_Record,nRecord2
	
	myret = .f.
	
	c_Table = ALIAS()
	n_Record = RECNO()
	
	
  SELECT t38
	
	n_Record2 = RECNO()
	
	cInteractionID = t38->stepinterid
	nInteractionNumber = t38->stepinternum
  
  nInteractionNumber = nInteractionNumber + nStepsToMove
   
	IF .not. EMPTY(cInteractionID)

		GOTO top
		
		locate FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(cInteractionID)) .and. t38->stepinternum = nInteractionNumber 

		IF FOUND()

			myret = .t.
			
		
		ENDIF
	
		GOTO n_record2
		
	ENDIF
	
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

*******************************************

PROCEDURE GetNodeChilds(oNode, objGDWindow)

LOCAL n

SELECT t38
GOTO top

LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(oNode.Key))
IF FOUND()
cTheStepsCode = cTheStepsCode + CHR(13) + CHR(10) + T38->STEPCODE
ENDIF


lcKeys = lcKeys + oNode.Key + [/]
	nKeysCount = nKeysCount + 1
IF oNode.Children > 0
   n = oNode.Child.Index
   DO WHILE n # oNode.LastSibling.Index
      this.GetNodeChilds(objGDWindow.container1.oletree.Nodes(n),objGDWindow)
      IF NOT ISNULL(objGDWindow.container1.oletree.Nodes(n).Next)
         n = objGDWindow.container1.oleTree.Nodes(n).Next.Index
      ELSE
         EXIT
      ENDIF
   ENDDO
ENDIF

RETURN

PROCEDURE AllNodesInOrder(oGDWindow)
	LOCAL vfile
	
	PRIVATE lcKeys  , nKeysCount , cTheStepsCode
	
	nKeysCount = 0
	cTheStepsCode = ""
	lcKeys = []
	
	oGDWindow.container1.oletree.nodes.item("SP_").SELECTED = .T.

	oNode = oGDWindow.container1.oletree.SELECTEDITEM

	this.GetNodeChilds(oNode , oGDWindow)

	vfile = GETFILE("*.prg")
	STRTOFILE(cTheStepsCode,vFile)
	
	MESSAGEBOX(ALLTRIM(STR(nKeysCount)),0,"wow")
	
RETURN

**********************************************************************


PROCEDURE MoveStepUp(oGDWindow)

		LOCAL X,PLIST
		
		* When you change the parent of the node to the same parent the node is moved to be the first node in the same level
		* to move step up
		* 1 - move the first previous node
		* 2 - move the step that we want to move up
		* 3 - move the second previous node (if found)
		* 4 - move the third previous  node (if found) and so on 

		IF .NOT. ISNULL( oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Previous )

			oGDWindow.LockScreen = .t.
			
			DIMENSION PLIST(1)
			PLIST(1) = oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Previous.Key 

			* CREATE LIST OF PREVIOUS NODES
			
			DO WHILE .NOT. ISNULL( oGDWindow.CONtainer1.OLETREE.Nodes.ITEM( PLIST(ALEN(PLIST,1)) ).Previous )

				DIMENSION PLIST(ALEN(PLIST,1)+1)

				PLIST(ALEN(PLIST,1)) = oGDWindow.CONtainer1.OLETREE.Nodes.ITEM( PLIST(ALEN(PLIST,1)-1) ).Previous.Key
			
			ENDDO
			
			oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(PLIST(1)).parent = oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(PLIST(1)).parent
			oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).parent = oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).parent
			
			IF ALEN(PLIST,1) > 1
				FOR X = 2 TO ALEN(PLIST,1)
					oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(PLIST(X)).parent = oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(PLIST(X)).parent
				NEXT
			ENDIF
			
		  oGDWindow.LockScreen = .f.
			
		ENDIF


RETURN

PROCEDURE MoveStepDown(oGDWindow)

	* instead of writing new algorithm from scratch to move the step down 
	* we will move the next step up 
	
	LOCAL cKey
	
	IF .NOT. ISNULL( oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Next )

		cKey = oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY

		oGDWindow.CONtainer1.OLETREE.Nodes.ITEM( oGDWindow.CONtainer1.OLETREE.Nodes.ITEM(oGDWindow.CONTAINER1.OLETREE.SELECTEDItem.KEY).Next.KEY ).selected = .T.

		THIS.MOVESTEPUP(oGDWindow)

		oGDWindow.CONtainer1.OLETREE.Nodes.ITEM( cKey ).selected = .T.

	ENDIF


RETURN


ENDDEFINE


			

