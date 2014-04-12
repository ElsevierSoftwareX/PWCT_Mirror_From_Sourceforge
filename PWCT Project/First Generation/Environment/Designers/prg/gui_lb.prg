DEFINE CLASS tr_listbox AS ListBox 

	PROCEDURE gotfocus
			TRY 
				runtrfref.sys_isList1.visible = .f.
				runtrfref.sys_isList1.refresh
			CATCH
			ENDTRY 
		RETURN 
		
	PROCEDURE rightclick
		
		LOCAL x,nMax,cList,cItem
		nMax = this.ListCount 
		cList = ""
		FOR x = 1 TO nMax
			cItem = this.ListItem(x)
			cList = cList + CHR(9) + cItem + CHR(13) + CHR(10)
		NEXT 
		STRTOFILE(cList,"c:\users\mahmoud\desktop\nice.txt")
	RUN /N NOTEPAD "c:\users\mahmoud\desktop\nice.txt"
		
		
	RETURN
		

ENDDEFINE 