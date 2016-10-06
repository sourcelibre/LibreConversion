QT += qml quick

CONFIG += console
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc i18n.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

TRANSLATIONS = \
    translations/libreconversion_de.ts \
    translations/libreconversion_en.ts \
    translations/libreconversion_es.ts \
    translations/libreconversion_fr.ts \
    translations/libreconversion_pt.ts \
    translations/libreconversion_zh_HANS.ts \
    translations/libreconversion_zh_HANT.ts


lupdate_only {
    SOURCES += \
        *.qml
}
