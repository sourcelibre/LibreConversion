/**
 * Unit conversion app.
 * For Android and iOS.
 * Multilingual.
 */

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    QTranslator translator;
    // Load translation in each language:
    translator.load(":/lang_fr"); // French
    app.installTranslator(&translator);

    return app.exec();
}
