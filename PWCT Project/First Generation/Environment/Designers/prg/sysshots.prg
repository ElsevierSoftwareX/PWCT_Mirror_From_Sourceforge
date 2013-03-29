*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\SYSSHOTS.PRG
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
*:   sysshots
*:   shotstart
*:   area2jpg
*!******************************************************************************
*!
*! Procedure SHOTSTART
*!
*!******************************************************************************
FUNCTION shotstart()
	PUBLIC sys_shotid
	sys_shotid = 0
	RETURN

*!******************************************************************************
*!
*! Procedure AREA2JPG
*!
*!******************************************************************************
FUNCTION area2jpg(p1,p2,p3,p4)
	LOCAL retval


	sys_shotid = sys_shotid + 1




	DO gdiplusx_source_v1.20\SYSTEM.APP
	loimage = _SCREEN.SYSTEM.drawing.BITMAP.fromscreen(,p1,p2,p3-p1,p4-p2)
	loimage.SAVE("c:\ssbuild\pwctshots\s"+ ALLTRIM(STR(sys_shotid)) + ".JPG", ;
		_SCREEN.SYSTEM.drawing.imaging.imageformat.jpeg)

	SYS(1104)

	RETURN

