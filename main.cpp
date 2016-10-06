/**
 * Unit conversion app.
 * For Android and iOS.
 * Multilingual.
 */

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>
#include <QTextStream>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QTranslator translator;
    // Load translation in each language:
    qInfo(QLocale::system().name().toStdString().c_str());
    // Example: translations/libreconversion_fr.qm
    bool ok = translator.load(
                QLocale() /*::system() */,
                "libreconversion", "_",
                ":/translations");
    if (ok) {
        qInfo("Successfully loaded translation.");
        app.installTranslator(&translator);
    } else {
        qCritical("Could not load translation.");
    }
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
