FUNCTION sys_autonumber(p1)
LOCAL myfile,idf_file
myalias = ALIAS()
	IF AT("<AUTONUMBER>",UPPER(p1)) > 0
	myfile = MLINE(m_files,apage)
	idf_file = alltrim(myfile)
			 			MESSAGEBOX(idf_file)
			 		ENDIF
			 		SELECT (myalias)
RETURN p1
			 		