###################################################################
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 2
#  of the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, see http://gnu.org/licenses/
#
#
#  Copyright (C) 2009, Justin Davis <tuxdavis@gmail.com>
#  Copyright (C) 2009-2018 ImageWriter developers
#                 https://sourceforge.net/projects/win32diskimager/
#  Copyright (C) 2018 TBDD, LLC <info@tbdd.ru>
###################################################################

TEMPLATE = app
TARGET = ../../azimuth3imager
DEPENDPATH += .
INCLUDEPATH += $$(LIBBOOST_INCLUDE)
LIBS += -L$$(LIBBOOST_LIBPATH) -l$$(LIBBOOST_IOSTREAMS_BINARY_NAME) \
                               -l$$(LIBBOOST_SYSTEM_BINARY_NAME) \
                               -l$$(LIBBOOST_FILESYSTEM_BINARY_NAME)
#CONFIG += release
#CONFIG += static
DEFINES -= UNICODE
QT += widgets
VERSION = $$(version)
VERSTR = '\\"$$(VERSION)\\"'
DEFINES += VER=\"$${VERSTR}\"
DEFINES += WINVER=0x0601
DEFINES += _WIN32_WINNT=0x0601
QMAKE_TARGET_PRODUCT = "Azimuth 3 Image Writer"
QMAKE_TARGET_DESCRIPTION = "Azimuth 3 Image Writer for Windows to write USB images"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2018 TBDD, LLC"

# Input
HEADERS += disk.h\
           mainwindow.h\
           droppablelineedit.h \
           elapsedtimer.h

FORMS += mainwindow.ui

SOURCES += disk.cpp\
           main.cpp\
           mainwindow.cpp\
           droppablelineedit.cpp \
           elapsedtimer.cpp

RESOURCES += gui_icons.qrc #translations.qrc

RC_FILE = DiskImager.rc

LANGUAGES  = ru

defineReplace(prependAll) {
 for(a,$$1):result += $$2$${a}$$3
 return($$result)
}

TRANSLATIONS = 
TRANSLATIONS_FILES = 
