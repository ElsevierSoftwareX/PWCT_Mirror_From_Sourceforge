set path=%path%;c:\ssbuild\borland\bcc55\bin\

del sslib.obj
del errorsys.obj
del taxprg.obj
del sslib.lib
del sserror.lib
del taxprg.lib
CALL sscompile.bat SSLIB  /ND
CALL sscompile.bat errorsys   /ND
CALL sscompile.bat taxprg   /ND
del sslib.c
del errorsys.c
del taxprg.c
del sslib.exe
del errorsys.exe
del taxprg.exe
cd\
cd bcc55
cd bin
del sslib.obj
del errorsys.obj
del taxprg.obj
del sslib.lib
del sserror.lib
del taxprg.lib
copy c:\ssbuild\sslib\sslib.obj
copy c:\ssbuild\sslib\errorsys.obj
copy c:\ssbuild\sslib\taxprg.obj
Tlib sslib +sslib.obj
Tlib sserror +errorsys.obj
Tlib taxprg +taxprg.obj
copy sslib.lib c:\ssbuild\sslib\lib
copy sserror.lib c:\ssbuild\sslib\lib
copy taxprg.lib c:\ssbuild\sslib\lib
cd\
cd ssbuild
cd sslib
del sslib.obj
del errorsys.obj
del taxprg.obj
del _temp.rsp

