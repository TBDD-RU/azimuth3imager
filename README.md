
Azimuth 3 Image Writer
=====

Azimuth 3 image flasher for Windows, [Win32 Disk Imager](https://sourceforge.net/p/win32diskimager/code/ci/master/tree/) fork (reskin).

### Build requirements

* [Qt](https://www.qt.io/download), 5.7 tested
* MinGW, 5.3 tested
* [libboost](https://www.boost.org/users/download), 1.67.0 tested
* [bzip2](http://www.bzip.org/downloads.html), 1.0.6 tested

##### Optional

* [Inno Setup](http://www.jrsoftware.org/isdl.php), 5.5 tested — installer creation software

##### Also might be useful

* [Git for Windows](https://git-scm.com/download/win)

### Build instructions

* Install Qt SDK with bundled MinGW.
* Make sure Qt and MinGW bin folders included in _%Path%_.
* Build libboost-iostreams with bzip2 support:

```console
cd %libbooost_dir%

bootstrap.bat gcc

b2 toolset=gcc link=shared ^
    --with-iostreams -s BZIP2_SOURCE=%bzip2_dir% ^
    --prefix=%output_dir% install
```

* Set environment variables:

  * `LIBBOOST_INCLUDE` — boost include dir.
  * `LIBBOOST_LIBPATH` — boost lib dir.
  * `LIBBOOST_SYSTEM_BINARY_NAME` — system DLL file name (without extension).
  * `LIBBOOST_FILESYSTEM_BINARY_NAME` — filesystem DLL file name (without extension).
  * `LIBBOOST_IOSTREAMS_BINARY_NAME` — iostreams DLL file name (without extension).
  * `LIBBOOST_BZIP2_BINARY_NAME` — bzip2 DLL file name (without extension).

* Build options:

  * Build with Qt Creator.
  * Or run _compile.bat_ in the project folder.
  * Or run _build.bat_ in the project folder to create an installer (Inno Setup should be in _%Path%_).
