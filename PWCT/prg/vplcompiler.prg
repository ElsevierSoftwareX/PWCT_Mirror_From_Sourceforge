DEFINE CLASS GD_VPLCompiler as Custom

	PROCEDURE CompileVisualSource(obj_GDWindow)
	
		LOCAL cAlias,nRecord
		
		cAlias = ALIAS()
		nRecord = recno()
		
		SELECT T38
		
		SCAN
		
			obj_GDWindow.list1.Additem( " Compiling Step : " + ALLTRIM(t38->stepname) )
			DOEVENTS
			
		
		ENDSCAN
		
		
		SELECT (cAlias)
		GOTO nRecord
	
	RETURN
	

ENDDEFINE
