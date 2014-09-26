rem Batch file to build DoubleS (Super Server) Library
rem Author : Mahmoud Fayed <msfclipper@yahoo.com>

set path=%path%;c:\pwct19\ssbuild\borland\bcc55\bin\
CALL sscompile.bat SSLIB  /NL
CALL sscompile.bat errorsys   /NL
CALL sscompile.bat errorsysconsole   /NL
CALL sscompile.bat taxprg   /NL
del sslib.c
del errorsys.c
del errorsysconsole.c
del taxprg.c
Tlib sslib +sslib.obj
Tlib sserror +errorsys.obj
Tlib sserrorconsole +errorsysconsole.obj
Tlib taxprg +taxprg.obj
move sslib.lib c:\pwct19\ssbuild\sslib\lib
move sserror.lib c:\pwct19\ssbuild\sslib\lib
move sserrorconsole.lib c:\pwct19\ssbuild\sslib\lib
move taxprg.lib c:\pwct19\ssbuild\sslib\lib
del sslib.obj
del errorsys.obj
del errorsysconsole.obj
del taxprg.obj
del _temp.rsp

