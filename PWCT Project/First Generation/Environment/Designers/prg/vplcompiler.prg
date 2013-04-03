DEFINE CLASS GD_VPLCompiler as Custom

	PROCEDURE CompileVisualSource(objGDWindow)
	
		LOCAL cAlias,nRecord
		LOCAL nStepType
		LOCAL nErrors
		LOCAL nSeconds
		
		cAlias = ALIAS()
		nRecord = recno()

		nErrors = 0 && Number of errors during the compiling process
		
		nSeconds = SECONDS() && to calculate the processing time
	
		objGDWindow.list1.Additem( " Compiling... " )
		DOEVENTS
	
	
	  obj_stepscolors.lFindUsingIndex = .t.
  
 	 obj_stepscolors.createMyIndex()
  
		SELECT T38
		
		SCAN
		
			* Don't work on created step (not generated) 
			* Don't work on disabled step
			
			IF .not. ( EMPTY(ALLTRIM(t38->StepInterID)) .or. t38->StepDis = .t. )
			
					
						syslogmsg( " Compile Step : " + ALLTRIM(t38->stepname) )
						
*!*									IF obj_avoiderrors.checksubcomponent(serverexe) = .T. .OR. mygdform.docthisgoal = .T.

*!*					IF obj_AvoidErrors.nParentScope = 0 .or.  obj_AvoidErrors.nParentScope = 1  && not determined or General  (Not Custom)
*!*			
*!*							IF obj_avoiderrors.isparentallowedforcomponent(serverexe) = .T. .OR. mygdform.docthisgoal = .T.
*!*							
						nsteptype = obj_stepscolors.determinesteptype()
					
						DO CASE

										CASE nsteptype = 1 && Created
										* Nothing to do for this type of steps
										 

										CASE nsteptype = 2 && Generated
										
										* check that the parent is correct
										
							  
										CASE nsteptype = 3 && Generated (Root)
										
										* Check That the parent is correct for this step
									 
									  * check that no child

										CASE nsteptype = 4 && Generated (AllowSub)
										
										* Check That the child is correct for this step
							 
										* Check that the child is correct

										CASE nsteptype = 5 && Generated leaf
										
							 		 * check 
							 

										CASE nsteptype = 6 && Generated Allow Sub & leaf
										
							 	 	* Check that the order is correct
							 	 	
							 		 * check that the parent is correct 
							 


					 ENDCASE
									
									
										* check that no child
									IF .not. (nStepType = 4 .or. nStepType = 1 .or. nStepType = 3)
									
											IF this.checkchild() = .t.
													objGDWindow.list1.Additem( " Error : Step ( " + t38->stepname + " ) has a child " )
													nErrors = nErrors + 1
											ENDIF			
					
									ENDIF
									
					
	    ELSE
	    
	    	  syslogmsg( " Ignore Step : " + ALLTRIM(t38->stepname) )
	    	  				
			ENDIF
					
		ENDSCAN

			  
		obj_stepscolors.DeleteMyIndex()
			  
	  obj_stepscolors.lFindUsingIndex = .f.
		
		SELECT t38
		
		* Operation done ... Display Number of Errors 
		objGDWindow.list1.Additem( " =========================================" )
		objGDWindow.list1.Additem( " Compiling Time (Seconds) : " + ALLTRIM(STR(SECONDS()-nSeconds)) )
	  objGDWindow.list1.Additem( " Number of Steps : " + ALLTRIM(STR(RECCOUNT())) )
		objGDWindow.list1.Additem( " Number of Errors : " + ALLTRIM(STR(nErrors)) )
		DOEVENTS
					
		SELECT (cAlias)
		GOTO nRecord
	
	RETURN
	
	PROCEDURE CHECKCHILD()
	
		LOCAL cTableName,nRecord,nRecord2,nID
		LOCAL lRet
		
		cTableNAME = ALIAS()
		nRecord = RECNO()
	
		SELECT t38
		nRecord2 = RECNO()
		nID = ALLTRIM(T38->StepID)
		
		LOCATE FOR ALLTRIM(t38->parentid) == nID
		
		IF FOUND()
			lRet = .T.
		ELSE
			lRet = .f.
		ENDIF
		
		
		GOTO nRecord2
		
	
		SELECT (cTableName)
		GOTO nRecord
		
	RETURN lRet
	
ENDDEFINE
