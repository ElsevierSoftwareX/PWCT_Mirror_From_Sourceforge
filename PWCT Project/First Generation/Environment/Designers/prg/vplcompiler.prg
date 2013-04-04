DEFINE CLASS GD_VPLCompiler AS VPLRulesBase OF VPLRules.prg

	UIObject = "" 
	lMarkErrors = .f.
	
	PROCEDURE CompileVisualSource(objGDWindow)
	
		LOCAL cAlias,nRecord
		LOCAL nStepType
		LOCAL nErrors
		LOCAL nSeconds
		LOCAL nInteractions
		LOCAL nRecord2,cStepID,nMax,x,lCheck,lStatus
		
		cAlias = ALIAS()
		nRecord = recno()

		this.UIObject = objGDWindow
		
		this.startErrorSystem()
		
		nSeconds = SECONDS() && to calculate the processing time
	
		THIS.Additem( " Compiling... " )
		DOEVENTS
	
		IF this.lMarkErrors = .t.
		
					SELECT t38
					SCAN
							TRY 
							obj_stepscolors.setstepcolor(mygdform)
							CATCH
							ENDTRY 
					ENDSCAN
					GOTO bottom
				
		ENDIF
		
	  obj_stepscolors.lFindUsingIndex = .t.
  
 	 obj_stepscolors.createMyIndex()
  
  	this.deleteOLDInteractions()
  
  	SELECT t46
  	
  	nInteractions = RECCOUNT()
  	
  	SCAN
  	
  		SELECT t38
  		
  		nEnableDisable = 0
  		nStepNumber = 0
  		scan for ALLTRIM(t38->stepinterid) == ALLTRIM(t46->f_iid)
  		
  		IF nEnableDisable = 0
  			IF t38->stepdis = .t.
  				nEnableDisable = 1
  			ELSE
  				nEnableDisable = 2
  			ENDIF
			ELSE
				IF ( nEnableDisable = 1 .and. t38->stepdis = .f. ) .or. ( nEnableDisable = 2 .and. t38->stepdis = .t. )
						* Error in Enable/Disable a generated step without doing the same operation for other steps generated from the same interaction
	  				THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) Enable/Ignore status is not correct " )
						 
						this.MarkError()
				ENDIF
  		ENDIF
  		
  		IF t38->stepinternum > nStepNumber
  			IF t38->stepinternum = nStepNumber + 1
	  			nStepNumber = t38->stepinternum
	  		ELSE
		  		* Error in steps order
		  		nStepNumber = t38->stepinternum
		  		THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) is not expected to be in this order " )
				 
					this.MarkError()
	  		ENDIF
	  		
	  	ELSE
	  		* Error in steps order
	  		THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) order is not correct " )
			 
				this.MarkError()
	  	endif		
  		
  		ENDSCAN
  			
  		SELECT t46
  		
  	ENDSCAN
  	GOTO bottom
  	
  
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
													THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) Contains Substeps " )
											 
													this.MarkError()
											ENDIF			
					
							  
							  
										CASE nsteptype = 3 && Generated (Root)
								
								
										* Check child
							  			IF this.checkchild() = .t.
													THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) Contains Substeps " )
											 
													this.MarkError()
											ENDIF	
										
										* Check That the parent is correct for this step
									 
							 

										CASE nsteptype = 4 && Generated (AllowSub)
										
										* Check that the all of the child steps are correct
										
										 		nRecord2 = RECNO()
										 		DIMENSION aChilds(1,2)
										 		aChilds(1,1) = ""   && component file
										 		aChilds(1,2) = ""	 && step name 
										 		cStepID = ALLTRIM(t38->stepid)
										 		
										 		SCAN FOR ALLTRIM(t38->parentid) == cStepID
										 		
										 				IF .not. EMPTY(ALLTRIM(stepinterid))
										 				
										 					SELECT t46
										 					*LOCATE FOR ALLTRIM(F_IID) == ALLTRIM(t38->stepinterid)
										 					this.IndexFindIID(ALLTRIM(t38->stepinterid))
										 					IF FOUND()
										 						
														 				nMax = ALEN(aChilds,1)
														 				nMax = nMax + 1
														 				DIMENSION aChilds(nMax,2)
														 				aChilds(nMax,1) = ALLTRIM(MLINE(f_myhis,9))
														 				aChilds(nMax,2) = ALLTRIM(t38->stepname)
														 	ENDIF
											 				
											 				SELECT t38
											 				
											 			ENDIF
										 				
										 		
										 		ENDSCAN
										 		GOTO bottom
										 		
												 SELECT t38
										 											 	
										 		GOTO nRecord2
								 	
								 				 nMax = ALEN(aChilds,1)
													IF nMax > 1
													
														FOR x = 2 TO nMax
														
																lStatus = obj_avoiderrors.lVisualCompiler
																obj_avoiderrors.lVisualCompiler = .t. && to avoid canceling the check because the syntax directed editor is off
																lCheck = obj_avoiderrors.CheckSubComponent( aChilds(x,1) ) 
																obj_avoiderrors.lVisualCompiler = lStatus && return the status of the syntax directed editor
																
																IF lCheck = .f.
															
																	THIS.AddError( " Error : Step ( " + ALLTRIM(t38->stepname) + " ) Contains bad Substep ( " + aChilds(x,2) + ")" )
																 
																	this.MarkError()
																	
																ENDIF
																
														NEXT
														
													
													ENDIF
													
													SELECT t38
										 											 	
										 	 	GOTO nRecord2
													
													
										CASE nsteptype = 5 && Generated leaf
										
							 		 
							 

										CASE nsteptype = 6 && Generated Allow Sub & leaf
						 
							 


					 ENDCASE
									
									
					
	    ELSE
	    
	    	  syslogmsg( " Ignore Step : " + ALLTRIM(t38->stepname) )
	    	  				
			ENDIF
					
		ENDSCAN
		GOTO bottom
			  
		obj_stepscolors.DeleteMyIndex()
			  
	  obj_stepscolors.lFindUsingIndex = .f.
		
		this.ShowErrors()
		
		SELECT t38
		
		nErrors = ALEN(aCompileErrors,1) - 1
		
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
	
	PROCEDURE AddErrorToList(cItem)
	 
		this.UIObject.list1.additem(cItem)
		
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
	
	
	PROCEDURE MarkError()
				
			 
				IF this.lMarkErrors = .t.
				
						TRY
						
							mygdForm.container1.oletree.nodes.ITEM(ALLTRIM(t38->stepid)).BACKCOLOR =  RGB(255,0,0)
							mygdForm.container1.oletree.nodes.ITEM(ALLTRIM(t38->stepid)).FORECOLOR =  RGB(255,255,255)
							
				 	 CATCH
				 	 ENDTRY
				 	 
				ENDIF 
		 		
	RETURN
	
	PROCEDURE StartErrorSystem()
	
				PUBLIC aCompileErrors
				DIMENSION aCompileErrors(1,2) && record number & error message
				aCompileErrors(1,1) = 0   && record number 
				aCompileErrors(1,2) = ""  && message 		
				
	RETURN
	
	
	PROCEDURE addError(cMsg)
	
			 LOCAL nMax,cTableName
			 
			 cTableName = ALIAS()
			 
			 SELECT t38
			 
			 nMax = ALEN(aCompileErrors,1)
			 nMax = nMax + 1
			 DIMENSION aCompileErrors(nMax,2)
			 aCompileErrors(nMax,1) = RECNO()   && record number 
			 aCompileErrors(nMax,2) = cMsg  && message 
			 
			 SELECT (cTableName)
			 
	RETURN
	
	PROCEDURE ShowErrors()
	
			 LOCAL nMax,x
			 
			  
			 ASORT(aCompileErrors,1)
			 
	 		nMax = ALEN(aCompileErrors,1)
	 		
			 IF nMax > 1
			 
			 		FOR x = 2 TO nMax
			 					this.AddItem(aCompileErrors(x,2))
			 					this.AddErrorToList(aCompileErrors(x,2))
			 		NEXT
			 		
			 ENDIF
			 
	RETURN
	
	
	
	
ENDDEFINE
