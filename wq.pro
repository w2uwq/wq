QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    3rd/md5.cpp \
    main.cpp

HEADERS += \
    3rd/md5.h \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

####################### 界面 #########################
include($$PWD/UI/UI.pri)

###################### 第三方库 ######################
#OpenCV
INCLUDEPATH += E:\opencv\opencv\build\include
               E:\opencv\opencv\build\include\opencv2
#LIBS += D:\Dependencies\opencv\mingw_build_qt\lib\libopencv_*.a
LIBS += E:\opencv\opencv\build\x64\vc16\bin\opencv_world480.dll




