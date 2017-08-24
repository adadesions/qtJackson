#ifndef DEMO_HPP
#define DEMO_HPP

#include <QObject>
#include <QString>
#include "opencv2/opencv.hpp"

class Demo : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)

public:
    explicit Demo(QObject *parent = 0);
    QString userName();
    void setUserName( const QString &userName );
    Q_INVOKABLE QString showImage( const QString filename );

signals:
    void userNameChanged();

private:
    QString m_userName;

};

#endif // DEMO_HPP
