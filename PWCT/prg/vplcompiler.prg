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
							 		 * Nothing to do for this type of steps

										CASE nsteptype = 3 && Generated (Root)
										
									 

										CASE nsteptype = 4 && Generated (AllowSub)

							 


										CASE nsteptype = 5 && Generated leaf
										* Nothing to do for this type of steps
							 

										CASE nsteptype = 6 && Generated Allow Sub & leaf
										* Nothing to do for this type of steps
							 


					 ENDCASE
												
					
					
					
	    ELSE
	    
	    	  syslogmsg( " Ignore Step : " + ALLTRIM(t38->stepname) )
	    	  				
			ENDIF
					
		ENDSCAN
		
		* Operation done ... Display Number of Errors 
		objGDWindow.list1.Additem( " =========================================" )
		objGDWindow.list1.Additem( " Compiling Time (Seconds) : " + ALLTRIM(STR(SECONDS()-nSeconds)) )
	  objGDWindow.list1.Additem( " Number of Steps : " + ALLTRIM(STR(RECCOUNT())) )
		objGDWindow.list1.Additem( " Number of Errors : " + ALLTRIM(STR(nErrors)) )
		DOEVENTS
					
		SELECT (cAlias)
		GOTO nRecord
	
	RETURN
	

ENDDEFINE
