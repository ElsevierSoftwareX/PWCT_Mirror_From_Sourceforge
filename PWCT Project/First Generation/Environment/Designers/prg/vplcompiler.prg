DEFINE CLASS GD_VPLCompiler AS VPLRulesBase OF VPLRules.prg

	UIObject = "" 
	
	PROCEDURE CompileVisualSource(objGDWindow)
	
		LOCAL cAlias,nRecord
		LOCAL nStepType
		LOCAL nErrors
		LOCAL nSeconds
		LOCAL nInteractions
		
		cAlias = ALIAS()
		nRecord = recno()

		this.UIObject = objGDWindow
		
		nErrors = 0 && Number of errors during the compiling process
		
		nSeconds = SECONDS() && to calculate the processing time
	
		THIS.Additem( " Compiling... " )
		DOEVENTS
	
	
	  obj_stepscolors.lFindUsingIndex = .t.
  
 	 obj_stepscolors.createMyIndex()
  
  	this.deleteOLDInteractions()
  
  	SELECT t46
  	
  	nInteractions = RECCOUNT()
  	
  	SCAN
  	
  	ENDSCAN
  	
  
		SELECT T38
		
		SCAN
		
			* Don't work on created step (not generated) 
			* Don't work on disabled step
			
			IF .not. ( EMPTY(ALLTRIM(t38->StepInterID)) .or. t38->StepDis = .t. )
			
					
						syslogmsg( " Compile Step : " + ALLTRIM(t38->stepname) )
						
						nsteptype = obj_stepscolors.determinesteptype()
					
						DO CASE

										CASE nsteptype = 1 && Created
										* Nothing to do for this type of steps
										 

										CASE nsteptype = 2 && Generated
										 							
										* Check child
							  			IF this.checkchild() = .t.
													THIS.Additem( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) Contains Substeps " )
													nErrors = nErrors + 1
											ENDIF			
					
							  
							  
										CASE nsteptype = 3 && Generated (Root)
										
										* Check That the parent is correct for this step
									 
							 

										CASE nsteptype = 4 && Generated (AllowSub)
										
								 

										CASE nsteptype = 5 && Generated leaf
										
							 		 
							 

										CASE nsteptype = 6 && Generated Allow Sub & leaf
						 
							 


					 ENDCASE
									
									
					
	    ELSE
	    
	    	  syslogmsg( " Ignore Step : " + ALLTRIM(t38->stepname) )
	    	  				
			ENDIF
					
		ENDSCAN

			  
		obj_stepscolors.DeleteMyIndex()
			  
	  obj_stepscolors.lFindUsingIndex = .f.
		
		SELECT t38
		
		* Operation done ... Display Number of Errors 
		THIS.Additem( " =========================================" )
		THIS.Additem( " Compiling Time (Seconds) : " + ALLTRIM(STR(SECONDS()-nSeconds)) )
		THIS.Additem( " Number of Interactions : " + ALLTRIM(STR(nInteractions)) )
	  THIS.Additem( " Number of Steps : " + ALLTRIM(STR(RECCOUNT())) )
		THIS.Additem( " Number of Errors : " + ALLTRIM(STR(nErrors)) )
		DOEVENTS
					
		SELECT (cAlias)
		GOTO nRecord
	
	RETURN
	
	PROCEDURE CHECKCHILD()
	
		LOCAL cTableName,nRecord,nRecord2,nID
		LOCAL lRet
		LOCAL cInterID,nStepInterNum
		
		cTableNAME = ALIAS()
		nRecord = RECNO()
	
		SELECT t38
		nRecord2 = RECNO()
		nID = ALLTRIM(T38->StepID)
		cInterID = ALLTRIM(T38->stepinterid)
		nStepInterNum = T38->stepinternum
		
		LOCATE FOR ALLTRIM(t38->parentid) == nID .and. .not. ( ALLTRIM(T38->stepinterid) = cInterID .and. T38->stepinternum = nStepInterNum + 1 )
		
		IF FOUND()
			lRet = .T.
		ELSE
			lRet = .f.
		ENDIF
		
		
		GOTO nRecord2
		
	
		SELECT (cTableName)
		GOTO nRecord
		
	RETURN lRet
	
	PROCEDURE AddItem(cItem)
	 
		this.UIObject.edit1.value = this.UIObject.edit1.value + cItem + CHR(13) + CHR(10)
		
	RETURN
	
	
	PROCEDURE deleteOLDInteractions()
	
		LOCAL cTableName,nRecord,cID
		
		cTableName = ALIAS()
		nRecord = RECNO()
			
		SELECT t46
		SCAN
				
			cID = ALLTRIM(t46->f_iid)
			THIS.IndexFindStepInterID(cID)
			
			IF .NOT. FOUND()
				 	SELECT t46
	 				DELETE
	 	 ELSE
	 	 		 SELECT t46
			ENDIF
		 
			
		ENDSCAN
		
		PACK
		
		GOTO BOTTOM
		
  	SELECT (cTableName)
		GOTO nRecord
	
	RETURN
	
	
ENDDEFINE
