TARGET = QtUiTools
CONFIG += static
CONFIG-=create_cmake

include(../lib/uilib/uilib.pri)

QMAKE_DOCS = $$PWD/doc/qtuitools.qdocconf

HEADERS += quiloader.h
SOURCES += quiloader.cpp

DEFINES += \
    QFORMINTERNAL_NAMESPACE \
    QT_DESIGNER_STATIC

# QtUiPlugins end up in designer for historical reasons. However, if
# designer isn't actually built, we need to claim the plugin type here.
!qtBuildPart(tools): \
    MODULE_PLUGIN_TYPES = designer

load(qt_module)
CONFIG-=create_cmake

INCLUDEPATH += \
    $$dirname(_QMAKE_CONF_)/../include \
    $$dirname(_QMAKE_CONF_)/../include/QtDesigner \
    $$dirname(_QMAKE_CONF_)/../include/QtDesigner/5.13.0

