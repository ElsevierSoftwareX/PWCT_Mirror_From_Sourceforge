rem Batch file to build DoubleS (Super Server) Library
rem Author : Mahmoud Fayed <msfclipper@yahoo.com>

set path=%path%;c:\ssbuild\borland\bcc55\bin\
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
move sslib.lib lib\
move sserror.lib lib\
move sserrorconsole.lib lib\
move taxprg.lib lib\
del sslib.obj
del errorsys.obj
del errorsysconsole.obj
del taxprg.obj
del _temp.rsp

