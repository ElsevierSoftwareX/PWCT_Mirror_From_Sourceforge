proc load_sysdata

	Public True,False 
	Public SysSwitch,WinsCount,WinShow,FilesList
	Public srccodefile,srccodeline,myChar,myStack,myRealStack,myRule,mydataflag,mydatachar
	Public myTokens,Tokenmap,rulesmap,RULESDI,RULESDVD,RULESCAVD,RULESPVC,RULESI,myfetchopstar,myfetchopend
	Public mySwitches,myRules,myTransform2,myTransform,myOperations,myExecutable,myCmd,myCmdRule,myData
	Public ProgramCounter,myopcode,myopdata,myopproc,myoplevel,myactiveproc
	Public myactivelevel,myopobjsmap,myopwinname,myopprocstack
	Public ObjsCount,MyOpObjectName,initpara1,ObjSelArray,initpara2,initpara3
	Public RT_GUI_Statusbar,RT_GUI_Menubar
	Public RT_DATA,RT_LS_DATA,RT_RS_DATA
	Public RT_Counters
	Public RT_LoopSwitch
	Public RT_LoopVars,RT_LoopCondition,RT_ActiveLoops
	Public RT_PCStack
	Public RT_ExprParse
	Public RT_DLLNAME
	Public RT_COMOBJNAME,RT_COMOBJS
	True = .T. 
	False = .F.
	SysSwitch := True
	WinsCount := 0
	FilesList := {}
	mychar := " "
	myStack := ""
	myRealStack := ""
	myRule := "S"
	myTokens := {}
	myRules := {}
	myOperations := {}
	myExecutable := {}
	mySwitches := {}
	myCmd := ""
	myCmdRule := ""
	myData := {}
	myopproc := "baseproc"
	myoplevel := 0
	myopcode := 0
	myopdata := {}
	mydataflag := false
	mydatachar := "."
	WinShow := True
	myactiveproc := "baseproc"
	myactivelevel := 0
	MyOpObjsMap := {"ObjectType","InternalCodeName","UserCodeName","EventsFlag","ParentWindow"}
	myopwinname := "NULL"
	MyOpObjectName := "NULL"
	ObjsCount := 0
	initpara1 := "000"
	ObjSelArray := {}
	FOR x = 1 TO 14 STEP 1
		AADD( ObjSelArray , "NULL")
	Next
	RT_GUI_Statusbar := {}
	RT_GUI_Menubar := {}
	RT_DATA := {}
	myTransform := {}
	myTransform2 := {}
	AADD( RT_Data , {"Variable Name","Variable Value"})
	RT_LS_DATA := {}
	RT_RS_DATA := {}
	myopprocstack := {}
	RT_Counters := {}
	AADD( RT_Counters , {"Name","Start","End","Step","Value"})
	RT_LoopSwitch := False
	RT_LoopVars := 0
	RT_LoopCondition := {}
	RT_ActiveLoops := {}
	srccodeline := 0
	srccodefile := ""
	ProgramCounter := 0
	RT_PCStack := {}
	RT_ExprParse := {}
	initpara2 := true
	initpara3 := false
	RT_DLLNAME := ""
	RT_COMOBJNAME := 0
	RT_COMOBJS := {}
	DO RTE_Load


return
