TARGET = QtUiPlugin
CONFIG += no_private_module header_module
QT += widgets

MODULE_CONFIG = designer_defines
load(qt_module)
CONFIG-=create_cmake


INCLUDEPATH += \
    $$dirname(_QMAKE_CONF_)/../include \
    $$dirname(_QMAKE_CONF_)/../include/QtDesigner \
    $$dirname(_QMAKE_CONF_)/../include/QtDesigner/5.13.0

