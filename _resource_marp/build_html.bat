@echo off

rem specify markdown filepath via DnD
set mdfile=%1

rem marpCLIexe
set marpexe=marp.exe

rem outputhtmlName (htmlName=mdfilename.pdf)
set htmlName=%~n1.html

echo "htmlName-> %htmlName%"

rem convert md -> html
%~dp0%\%%marpexe% --allow-local-files %mdfile% --output=%~dp1\%htmlName%