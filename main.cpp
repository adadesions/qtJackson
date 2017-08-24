#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "cv.hpp"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

//    qmlRegisterType<CV>("Ada.CV", 1, 0, "CV");
    CV cv_left, cv_right;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("leftCV", (QObject *) &cv_left);
    engine.rootContext()->setContextProperty("rightCV", (QObject *) &cv_right);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
