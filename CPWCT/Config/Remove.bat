echo off
cls
echo Remove the VPL 
for /f %%a IN ('dir /b *.txt') do if exist c:\ssbuild\pwct18\vpls\%%a del c:\ssbuild\pwct18\vpls\%%a
echo set active VPL to HarbourPWCT 
if exist c:\ssbuild\pwct18\chpath.txt del c:\ssbuild\pwct18\chpath.txt

