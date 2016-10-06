QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

TRANSLATIONS = \
    lang_en.ts \
    lang_fr.ts \
    lang_es.ts

lupdate_only {
    SOURCES += \
        *.qml
}
