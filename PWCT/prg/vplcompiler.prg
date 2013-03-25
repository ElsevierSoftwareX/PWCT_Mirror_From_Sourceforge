DEFINE CLASS GD_VPLCompiler as Custom

	PROCEDURE CompileVisualSource(objGDWindow)
	
		LOCAL cAlias,nRecord
		LOCAL nStepType
		
		cAlias = ALIAS()
		nRecord = recno()
		
		SELECT T38
		
		SCAN
		
			* Don't work on created step (not generated) 
			* Don't work on disabled step
			
			IF .not. ( EMPTY(ALLTRIM(t38->StepInterID)) .or. t38->StepDis = .t. )
					objGDWindow.list1.Additem( " Compiling Step : " + ALLTRIM(t38->stepname) )
					DOEVENTS
					
					nsteptype = obj_stepscolors.determinesteptype(objgdwindow)
	    ELSE
	    	  objGDWindow.list1.Additem( " Ignore Step : " + ALLTRIM(t38->stepname) )				
			ENDIF
					
		ENDSCAN
		
		
		SELECT (cAlias)
		GOTO nRecord
	
	RETURN
	

ENDDEFINE
