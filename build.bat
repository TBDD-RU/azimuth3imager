@echo off
cd src
qmake.exe
mingw32-make.exe
cd ..
mkdir build
move azimuth3imager.exe build
cd build
windeployqt azimuth3imager.exe
cd ..
iscc setup.iss
pause
@echo on
