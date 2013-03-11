FUNCTION shotstart()
	PUBLIC sys_shotid
	sys_shotid = 0
RETURN

FUNCTION area2jpg(p1,p2,p3,p4)
  LOCAL retval
   
   
	sys_shotid = sys_shotid + 1
	
	

 
 DO GDIPlusX_Source_v1.20\system.app
 loImage = _SCREEN.System.Drawing.Bitmap.FromScreen(,P1,P2,P3-P1,P4-P2)
loImage.Save("c:\ssbuild\pwctshots\s"+ ALLTRIM(STR(sys_shotid)) + ".JPG", ;
 _SCREEN.System.Drawing.Imaging.ImageFormat.JPEG)
 
	SYS(1104)

RETURN

