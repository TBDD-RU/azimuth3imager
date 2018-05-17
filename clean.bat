@echo off
cd src
mingw32-make.exe release-distclean debug-distclean
cd ..
rd /s /q src\release
rd /s /q build
pause
@echo on
