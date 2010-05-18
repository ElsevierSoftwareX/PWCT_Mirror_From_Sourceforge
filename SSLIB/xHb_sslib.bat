del sslib.obj
del errorsys.obj
del taxprg.obj
del sslib.lib
del sserror.lib
del taxprg.lib
CALL sscompile.bat SSLIB /x /ND
CALL sscompile.bat errorsys /x  /ND
CALL sscompile.bat taxprg /X /ND
del sslib.exe
del errorsys.exe
del taxprg.exe
del sslib.c
del errorsys.c
del taxprg.c
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
lib sslib +sslib.obj
lib sserror +errorsys.obj
lib taxprg +taxprg.obj
copy sslib.lib c:\ssbuild\sslib\xlib
copy sserror.lib c:\ssbuild\sslib\xlib
copy taxprg.lib c:\ssbuild\sslib\xlib
cd\
cd ssbuild
cd sslib
del sslib.obj
del errorsys.obj
del taxprg.obj
del _temp.rsp

