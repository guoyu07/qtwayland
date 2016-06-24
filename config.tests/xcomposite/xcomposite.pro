TARGET = xcomposite
QT = core

!contains(QT_CONFIG, opengl): error("xcomposite support requires Qt configured with OpenGL")

!contains(QT_CONFIG, no-pkg-config) {
    CONFIG += link_pkgconfig
    PKGCONFIG += xcomposite
} else {
    LIBS += -lXcomposite
}

# Input
SOURCES += main.cpp
