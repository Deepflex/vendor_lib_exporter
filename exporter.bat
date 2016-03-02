@echo off

set sourcedir=c:\system folder
set destdir=c:\destination folder

for /F "eol=; tokens=1* delims=|" %%i in (proprietary-files.txt) do (
echo F | xcopy "%sourcedir%\%%i" "%destdir%\%%i" /y /q /f
)