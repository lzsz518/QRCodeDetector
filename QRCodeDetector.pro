#-------------------------------------------------
#
# Project created by QtCreator 2019-09-11T21:56:20
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QRCodeDetector
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        widget.cpp

HEADERS += \
        widget.h

FORMS += \
        widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/release/ -lopencv_core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/debug/ -lopencv_core
else:unix: LIBS += -L$$PWD/../../../../usr/local/lib64/ -lopencv_core

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/release/ -lopencv_imgproc
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/debug/ -lopencv_imgproc
else:unix: LIBS += -L$$PWD/../../../../usr/local/lib64/ -lopencv_imgproc


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/release/ -lopencv_imgcodecs
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/debug/ -lopencv_imgcodecs
else:unix: LIBS += -L$$PWD/../../../../usr/local/lib64/ -lopencv_imgcodecs


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/release/ -lopencv_highgui
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/debug/ -lopencv_highgui
else:unix: LIBS += -L$$PWD/../../../../usr/local/lib64/ -lopencv_highgui


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/release/ -lopencv_objdetect
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib64/debug/ -lopencv_objdetect
else:unix: LIBS += -L$$PWD/../../../../usr/local/lib64/ -lopencv_objdetect

