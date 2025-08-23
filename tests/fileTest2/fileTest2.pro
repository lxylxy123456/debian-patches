QT += testlib
QT -= gui
TARGET = fileTest2
CONFIG += qt warn_on depend_includepath testcase
CONFIG += c++11 cmdline
TEMPLATE = app
include (../../global.pri)
SOURCES += filetest2.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"
INCLUDEPATH += . ../../library/include
DESTDIR = ../../build/bin
static:DEFINES+=DRUMSTICK_STATIC

macx:!static {
    QMAKE_LFLAGS += -F$$OUT_PWD/../../build/lib -L$$OUT_PWD/../../build/lib
    LIBS += -framework drumstick-file
} else {
    LIBS += -L$$OUT_PWD/../../build/lib \
            -l$$drumstickLib(drumstick-file)
}
