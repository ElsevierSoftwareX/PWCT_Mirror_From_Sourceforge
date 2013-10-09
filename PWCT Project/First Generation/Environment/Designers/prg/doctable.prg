*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\DOCTABLE.PRG
*:
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	Mahmoud Fayed
*:	Programming without coding technology 1.8 (Smart)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.8 (Smart)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   doctable
*:   testdoctable
*:   startdoctable
*:   addtodoctable
*:   writedoctable
* TESTDOCTABLE()

*!******************************************************************************
*!
*! Procedure TESTDOCTABLE
*!
*!******************************************************************************
FUNCTION testdoctable()
	? "test documentation table functions"
	startdoctable()
	addtodoctable(1,1,"The First Step","")
	addtodoctable(2,2,"Print Text","Print Text to Console")
	addtodoctable(3,3,"","")
	addtodoctable(1,4,"The First Step","")
	addtodoctable(2,5,"Console","Wait (Key/Seconds)")
	addtodoctable(3,6,"","")
	addtodoctable(1,7,"The First Step","")
	writedoctable()
	? "operation done..."
	RETURN



*!******************************************************************************
*!
*! Procedure STARTDOCTABLE
*!
*!******************************************************************************
FUNCTION startdoctable()
	PUBLIC sys_doctable
	DIMENSION sys_doctable(1,4)
	sys_doctable(1,1) = 0 && 1 - steps tree 2 - Components browser 3 - Interaction Page 4 - form designer 5 - FINAL STEPS TREE
	sys_doctable(1,2) = 0 && screen shot image number
	sys_doctable(1,3) = "" && Reg1 : Step Name (Type = 1) or Domain Name (Type = 2)
	sys_doctable(1,4) = "" && Reg2 : Component Name (Type = 2)
	RETURN

*!******************************************************************************
*!
*! Procedure ADDTODOCTABLE
*!
*!******************************************************************************
FUNCTION addtodoctable(p1,p2,p3,p4) && p1 = type , p2 = number , p3 = reg1 and p4 = reg2
	LOCAL mymax
	mymax = ALEN(sys_doctable,1)
	mymax = mymax + 1
	DIMENSION sys_doctable(mymax,4)
	sys_doctable(mymax,1) = p1
	sys_doctable(mymax,2) = p2
	sys_doctable(mymax,3) = p3
	sys_doctable(mymax,4) = p4
	RETURN

*!******************************************************************************
*!
*! Procedure WRITEDOCTABLE
*!
*!******************************************************************************
FUNCTION writedoctable()

	LOCAL myalias,myrec,mymax
	myalias = ALIAS()
	myrec = RECNO()
	SELECT 0
	CREATE CURSOR newdoctable ( f_type N(1) , f_number N(5) , f_reg1 c(100) , f_reg2 c(100) )

	mymax = ALEN(sys_doctable,1)
	FOR x = 2 TO mymax
		APPEND BLANK
		REPLACE f_type WITH sys_doctable(x,1)
		REPLACE f_number WITH sys_doctable(x,2)
		REPLACE f_reg1 WITH sys_doctable(x,3)
		REPLACE f_reg2 WITH sys_doctable(x,4)

	NEXT

	COPY TO fixfolderpath("c:\ssbuild\pwctshots\details.dbf")
	USE

	IF .NOT. EMPTY(ALLTRIM(myalias))
		SELECT (myalias)
	ENDIF


	RETURN
