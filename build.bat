@echo off
cd src
qmake
mingw32-make
cd ..
mkdir build
move azimuth3imager.exe build
copy %LIBBOOST_LIBPATH%\%LIBBOOST_SYSTEM_BINARY_NAME%.dll build\
copy %LIBBOOST_LIBPATH%\%LIBBOOST_FILESYSTEM_BINARY_NAME%.dll build\
copy %LIBBOOST_LIBPATH%\%LIBBOOST_IOSTREAMS_BINARY_NAME%.dll build\
copy %LIBBOOST_LIBPATH%\%LIBBOOST_BZIP2_BINARY_NAME%.dll build\
cd build
windeployqt azimuth3imager.exe
cd ..
iscc setup.iss
pause
@echo on
