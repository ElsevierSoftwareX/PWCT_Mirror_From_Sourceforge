* command3 : move up
* command4 : move down
* command10 : cut
* command8 : copy
* check1 : ignore
* command2 : delete
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
RETURN

PROCEDURE DeleteStep(oGDWindow)
 		IF DELETED() = .f.
						oGDWindow.oleTree.Nodes.Remove(UPPER(ALLTRIM(stepid)))
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
 	RETURN .f.
ENDIF
********************************************************* 
 
 
myret = .f.
	
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
  			
  			nMax = MEMLINES(cRules)
  			FOR X = 1 TO nMax
  				cLine = MLINE(cRules,x)
  				cLine = ALLTRIM(cLine)
  				cRule = "AllowInteraction: " + cInterNum
  				IF UPPER(ALLTRIM(cLine)) == UPPER(ALLTRIM(cRule))
  			 		myret = .t.
  			  ENDIF  
  			NEXT
  			
  					
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
  				  				
  					LOCATE for UPPER(ALLTRIM(t38->stepid)) == UPPER(ALLTRIM(cParent))
  					
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

*!*	IF this.IsThisStepIsTheRoot() = .t.
*!*		myret = this.IsParentAllowedForComponent("THISSTEPISTHEROOT",cComponentFile)
*!*	endif

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
			  			
			  		
			  			
			  					
			  		ENDIF
			  	ENDIF
			  
			  ENDIF
			ENDIF
				
			SELECT (c_table)
			GOTO n_record	
	
	* if the parent component allow this component as a child
	* check the child to know if the child allow this component as a parent
	
*!*		IF myret = .t.
*!*				myret = this.IsParentAllowedForComponent(cACFile,cComponentFile)
*!*		endif
*!*		
	
RETURN myret

PROCEDURE CheckParentComponent()

LOCAL c_Table,n_Record
LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule,T
LOCAL cComponentFile
LOCAL lcont,cParent

* Used by (Goal Designer - Ignore Step) to determine is this operation is allowed or not

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
  			
  		ENDIF
  	ENDIF
  
  ENDIF
ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

PROCEDURE IsParentAllowedForComponent(cParentComponentFile,cComponentFile)

			LOCAL cFile,cRules,myret,nMax,X,cLine,cRule
			
			myret = .f.
			
			cFile = STRTRAN(cComponentFile,".TRF",".RULES")
			
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
				  		 
										IF myret = .f. .and. cParentComponentFile = "THISSTEPISTHEROOT"
												EXIT
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
  			
			Endif

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

		locate FOR UPPER(ALLTRIM(t38->stepinterid)) == UPPER(ALLTRIM(cInteractionID)) .and. t38->stepinternum = nInteractionNumber 

		IF FOUND()

			myret = .t.
			
		
		ENDIF
	
		GOTO n_record2
		
	ENDIF
	
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

ENDDEFINE


			

