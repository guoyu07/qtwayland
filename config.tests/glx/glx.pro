TARGET = glx
QT = core

!contains(QT_CONFIG, opengl): error("glx support requires Qt configured with OpenGL")

!contains(QT_CONFIG, no-pkg-config) {
    CONFIG += link_pkgconfig
    PKGCONFIG += x11 gl
} else {
    LIBS += -lX11 -lGL
}

# Input
SOURCES += main.cpp
