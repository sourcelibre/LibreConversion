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
    bool ok = translator.load(":/lang_fr.qm"); // French
    if (ok) {
        qInfo("Successfully loaded French translation.");
        app.installTranslator(&translator);
    } else {
        qCritical("Could not load French translation.");
    }
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
